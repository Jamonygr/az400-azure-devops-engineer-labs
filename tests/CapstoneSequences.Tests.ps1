#Requires -Version 7.4
BeforeAll {
    $script:root = Split-Path -Parent $PSScriptRoot
    $script:course = (Get-Content (Join-Path $script:root 'curriculum/lab-content.yml') -Raw | ConvertFrom-Json).labs
    $script:gitExe = (Get-Command git -CommandType Application | Select-Object -First 1).Source
    $script:dotnetExe = if (Test-Path (Join-Path $script:root '.cache/dotnet/dotnet.exe')) { Join-Path $script:root '.cache/dotnet/dotnet.exe' } else { (Get-Command dotnet -CommandType Application | Select-Object -First 1).Source }
    $bundledPython = Join-Path ([Environment]::GetFolderPath('UserProfile')) '.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe'
    $script:pythonExe = if ($env:AZ400_TEST_PYTHON) { (Get-Item -LiteralPath $env:AZ400_TEST_PYTHON).FullName } elseif (Test-Path $bundledPython) { $bundledPython } else { (Get-Command python -CommandType Application | Select-Object -First 1).Source }
    function global:Get-CapstoneArgument([object[]]$Arguments, [string]$Name) {
        $index = [array]::IndexOf($Arguments, $Name)
        if ($index -lt 0) { throw "Offline contract expected argument $Name" }
        return [string]$Arguments[$index + 1]
    }
    function global:Write-CapstoneJson([string]$Path, [object]$Value) {
        [void][IO.Directory]::CreateDirectory((Split-Path $Path))
        ConvertTo-Json -InputObject $Value -Depth 16 | Set-Content -LiteralPath $Path -Encoding utf8
    }
    function global:Write-CapstoneReleaseEvidence([string]$Path, [object]$Run) {
        $revision = if ($Run.action -eq 'rollback') { $global:CapstoneFixture.baseline } else { $global:CapstoneFixture.head }
        Write-CapstoneJson (Join-Path $Path 'release-evidence.json') @{status='passed';revision=$revision;healthPassed=$true;telemetryPassed=$true;telemetry=@{requests=12;failureRate=0.0;p95Ms=50};fixtureOnly=$true}
    }
    function global:git {
        $forward = @($args)
        $fixture = $global:CapstoneFixture
        if ($forward[0] -eq 'clone') {
            if ($forward[1] -cne $fixture.remoteUrl) { throw 'Offline clone target does not match the exact owned repository.' }
            & $fixture.git init --initial-branch=main $forward[2] | Out-Null
            & $fixture.git -C $forward[2] remote add origin $fixture.remoteUrl
            & $fixture.git -C $forward[2] config core.autocrlf false
            $global:LASTEXITCODE = 0
            return
        }
        if ($forward[0] -ne '-C' -or -not ([IO.Path]::GetFullPath([string]$forward[1])).StartsWith($fixture.workRoot,[StringComparison]::OrdinalIgnoreCase)) { throw 'Git escaped the isolated capstone workspace.' }
        $verb = [string]$forward[2]
        if ($verb -eq 'push') {
            $index = [array]::IndexOf($forward,'origin')
            if ($index -lt 0) { throw 'Offline push requires the exact owned origin alias.' }
            $forward[$index] = $fixture.bare
        } elseif ($verb -notin @('config','add','commit','branch','rev-parse','diff','remote','hash-object','show')) { throw "Unapproved Git operation in capstone fixture: $verb" }
        & $fixture.git @forward
        $global:LASTEXITCODE = $LASTEXITCODE
        if ($LASTEXITCODE) { throw "Local Git capstone operation failed: $verb" }
        if ($verb -eq 'push') { $fixture.head = (& $fixture.git -C $args[1] rev-parse HEAD).Trim() }
    }
    function global:python {
        if ([IO.Path]::GetFileName([string]$args[0]) -cne 'package_capstone.py') { throw 'Only the real local packaging helper is allowed by this fixture.' }
        & $global:CapstoneFixture.python @args
        $global:LASTEXITCODE = $LASTEXITCODE
        if ($LASTEXITCODE) { throw 'Local capstone packaging failed.' }
    }
    function global:dotnet {
        if ($args[0] -notin @('restore','test')) { throw 'Unexpected .NET command in the capstone fixture.' }
        & $global:CapstoneFixture.dotnet @args
        $global:LASTEXITCODE = $LASTEXITCODE
        if ($LASTEXITCODE) { throw 'Real local capstone application verification failed.' }
    }
    function global:gh {
        $null = @($input) # Consume a synthetic piped secret without echoing its content.
        $line = $args -join ' '; $global:LASTEXITCODE = 0; $fixture = $global:CapstoneFixture
        if ($line -match '^repo clone ') {
            $target = [string]$args[3]
            & $fixture.git init --initial-branch=main $target | Out-Null
            & $fixture.git -C $target remote add origin $fixture.remoteUrl
            & $fixture.git -C $target config core.autocrlf false
            return
        }
        if ($line -match '^issue list ') { return '[]' }
        if ($line -match '^issue create ') { $fixture.issueBody=Get-CapstoneArgument $args '--body'; return "https://github.com/$($fixture.repo)/issues/1" }
        if ($line -match '^issue view ') { return (@{body=$fixture.issueBody;state='OPEN'} | ConvertTo-Json) }
        if ($line -match '^api repos/.+/environments/') { return '{"protection_rules":[{"type":"required_reviewers","prevent_self_review":true,"reviewers":[{"type":"User","reviewer":{"id":7}}]}]}' }
        if ($line -match '^variable set ') { $fixture.variables[[string]$args[2]]=Get-CapstoneArgument $args '--body'; return }
        if ($line -match '^secret set SQL_MIGRATION_CONNECTION ') { $fixture.secretWritten=$true; return }
        if ($line -match '^run list ') {
            if ($line -match '--workflow release.yml') { return (ConvertTo-Json -Depth 8 -InputObject @($fixture.releaseRuns)) }
            $revision = Get-CapstoneArgument $args '--commit'
            $id = if ($revision -eq $fixture.baseline) { 42 } else { 43 }
            $fixture.runs[$id]=@{databaseId=$id;headSha=$revision;status='completed';conclusion='success';workflowName='Capstone CI'}
            return (ConvertTo-Json -InputObject @($fixture.runs[$id]))
        }
        if ($line -match '^run watch ') { return }
        if ($line -match '^run view ') {
            $run=$fixture.runs[[int]$args[2]]
            if (-not $run) { throw 'The requested fixture run ID is unknown.' }
            if ($fixture.badProviderSource -and $run.action) { $run=@{}+$run; $run.headSha='f'*40 }
            return ($run | ConvertTo-Json)
        }
        if ($line -match '^workflow run release.yml ') {
            $action = [regex]::Match($line,'(?:^| )action=(deploy|rollback)(?: |$)').Groups[1].Value
            if (-not $action) { throw 'Expected a distinct deploy or rollback action.' }
            $id=44+$fixture.releaseRuns.Count
            $run=@{databaseId=$id;headSha=$fixture.head;status='completed';conclusion='success';workflowName='Protected immutable release';action=$action}
            $fixture.releaseRuns.Add($run); $fixture.runs[$id]=$run; return
        }
        if ($line -match '^run download ') {
            $run=$fixture.runs[[int]$args[2]]
            Write-CapstoneReleaseEvidence (Get-CapstoneArgument $args '--dir') $run
            return
        }
        throw "Unrecognized GitHub operation: offline provider cannot fall through: $line"
    }
    function global:az {
        $line=$args -join ' '; $global:LASTEXITCODE=0; $fixture=$global:CapstoneFixture
        if ($line -match '^account show ') { return (@{id=$fixture.subscription} | ConvertTo-Json) }
        if ($line -match '^group show ') { return (@{tags=@{'az400-run'=$fixture.run;'az400-owner'=$(if($fixture.badOwner){'f'*32}else{$fixture.ownerToken});'az400-lab'=$fixture.labId}} | ConvertTo-Json) }
        if ($line -match '^webapp show ') { return (@{id=$fixture.appId;tags=@{'az400-run'=$fixture.run;'az400-owner'=$fixture.ownerToken}} | ConvertTo-Json) }
        if ($line -match '^monitor log-analytics workspace list ') { return (ConvertTo-Json -InputObject @(@{customerId=$fixture.workspace;tags=@{'az400-run'=$fixture.run;'az400-owner'=$fixture.ownerToken}})) }
        if ($line -match '^repos list ') { return (ConvertTo-Json -Depth 6 -InputObject @(@{id='owned-repo';name='owned';remoteUrl=$fixture.remoteUrl;project=@{name=$fixture.project}})) }
        if ($line -match '^boards work-item create ') { return '{"id":7}' }
        if ($line -match '^boards work-item show ') { return (@{id=7;fields=@{'System.TeamProject'=$fixture.project}} | ConvertTo-Json) }
        if ($line -match '^pipelines list ') {
            $name=Get-CapstoneArgument $args '--name'
            return (ConvertTo-Json -Depth 8 -InputObject @($fixture.definitions.Values | Where-Object name -eq $name))
        }
        if ($line -match '^pipelines create ') {
            $name=Get-CapstoneArgument $args '--name'; $path=Get-CapstoneArgument $args '--yml-path'
            $id=if ($path -eq 'azure-pipelines.yml') {17} else {18}
            $definition=@{id=$id;name=$name;repository=@{id='owned-repo'};project=@{name=$fixture.project};process=@{yamlFilename=$path}}
            $fixture.definitions[$id]=$definition; return ($definition | ConvertTo-Json -Depth 8)
        }
        if ($line -match '^pipelines show ') {
            $definition=$fixture.definitions[[int](Get-CapstoneArgument $args '--id')]
            if (-not $definition) { throw 'Unknown fixture definition ID.' }
            return ($definition | ConvertTo-Json -Depth 8)
        }
        if ($line -match '^pipelines variable list ') { return '{}' }
        if ($line -match '^pipelines variable (create|update) ') {
            $name=Get-CapstoneArgument $args '--name'
            if ($name -eq 'SqlMigrationConnection') {
                if (-not $env:AZURE_DEVOPS_EXT_PIPELINE_VAR_SqlMigrationConnection) { throw 'Protected secret input was not passed through the supported environment variable.' }
                $fixture.secretWritten=$true
            } else { $fixture.variables[$name]=Get-CapstoneArgument $args '--value' }
            return
        }
        if ($line -match '^pipelines run ') {
            $definitionId=[int](Get-CapstoneArgument $args '--id')
            if ($definitionId -eq 17) { $id=if ($fixture.head -eq $fixture.baseline) {42} else {43}; $action=$null }
            elseif ($definitionId -eq 18) {
                $action=[regex]::Match($line,'(?:^| )action=(deploy|rollback)(?: |$)').Groups[1].Value
                if (-not $action) { throw 'A protected run must specify its exact release action.' }
                $id=44+$fixture.releaseRuns.Count
            } else { throw 'Pipeline queue escaped the exact owned definition.' }
            $run=@{id=$id;status='completed';result='succeeded';sourceVersion=$fixture.head;definition=@{id=$definitionId};action=$action}
            $fixture.runs[$id]=$run
            if ($action) { $fixture.releaseRuns.Add($run) }
            return ($run | ConvertTo-Json -Depth 8)
        }
        if ($line -match '^pipelines runs show ') {
            $run=$fixture.runs[[int](Get-CapstoneArgument $args '--id')]
            if (-not $run) { throw 'Unknown fixture build run ID.' }
            if ($fixture.badProviderSource -and $run.action) { $run=@{}+$run; $run.sourceVersion='f'*40 }
            return ($run | ConvertTo-Json -Depth 8)
        }
        if ($line -match '^pipelines runs artifact download ') {
            $run=$fixture.runs[[int](Get-CapstoneArgument $args '--run-id')]
            Write-CapstoneReleaseEvidence (Get-CapstoneArgument $args '--path') $run
            return
        }
        throw "Unrecognized Azure/ADO operation: offline provider cannot fall through: $line"
    }
}

Describe 'Full isolated capstone sequence <LabId>' -ForEach @(@{LabId='26'},@{LabId='27'}) {
    It 'builds and publishes CI, remains incomplete before integration, proves ordered release and rollback, and rejects false evidence' {
        $RepoRoot=$script:root; $RunId='offline-capstone'; $GhRepo='fixture/owned'; $AdoOrganization='https://dev.azure.com/offline-fixture'; $AdoProject='owned-project'
        $SubscriptionId='11111111-1111-4111-8111-111111111111'; $ResourceGroup="rg-az400-$LabId-$RunId"; $Location='westeurope'
        $lab=$script:course | Where-Object id -eq $LabId; $LabRoot=Join-Path $RepoRoot "labs/$($lab.slug)"; $WorkRoot=Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Path $WorkRoot | Out-Null
        $bare=Join-Path $WorkRoot 'provider.git'; & $script:gitExe init --bare --initial-branch=main $bare | Out-Null
        $remote=if ($LabId -eq '26') {"https://github.com/$GhRepo.git"} else {"$AdoOrganization/$AdoProject/_git/owned"}
        $appId="/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup/providers/Microsoft.Web/sites/owned-api"
        $global:CapstoneFixture=@{git=$script:gitExe;dotnet=$script:dotnetExe;python=$script:pythonExe;workRoot=[IO.Path]::GetFullPath($WorkRoot);bare=$bare;remoteUrl=$remote;repo=$GhRepo;project=$AdoProject;subscription=$SubscriptionId;run=$RunId;head='';baseline='';runs=@{};definitions=@{};variables=@{};releaseRuns=[Collections.Generic.List[object]]::new();appId=$appId;workspace='22222222-2222-4222-8222-222222222222';secretWritten=$false;badProviderSource=$false;ownerToken=('a'*32);badOwner=$false;labId=$LabId}
        Mock Start-Sleep { throw 'A completed offline provider fixture must never poll or sleep.' }
        $environment=@{}
        foreach ($name in @('AZ400_SQL_MIGRATION_CONNECTION','AZ400_MIGRATION_CLIENT_ID','AZ400_DEPLOYMENT_CLIENT_ID','AZ400_TENANT_ID')) {
            $environment[$name]=[Environment]::GetEnvironmentVariable($name)
            $fixtureValue=if ($name -eq 'AZ400_SQL_MIGRATION_CONNECTION') {'Server=tcp:fixture.invalid;Database=Synthetic;Authentication=Active Directory Default;Encrypt=True;TrustServerCertificate=False'} else {'33333333-3333-4333-8333-333333333333'}
            [Environment]::SetEnvironmentVariable($name,$fixtureValue)
        }
        try {
            foreach ($cp in $lab.checkpoints) {
                & ([scriptblock]::Create($cp.commands)) | Out-Null
                if ($cp.id -eq 'CP3') { $global:CapstoneFixture.baseline=$global:CapstoneFixture.head }
                & ([scriptblock]::Create($cp.validate))
            }
            foreach ($cp in $lab.checkpoints) { & ([scriptblock]::Create($cp.validate)) }
            $dossier=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw | ConvertFrom-Json
            $dossier.cloudDeployed | Should -BeFalse
            $lab.integration.requiredForCompletion | Should -BeTrue
            { $ErrorActionPreference='Stop'; & ([scriptblock]::Create($lab.integration.validate)) } | Should -Throw
            & ([scriptblock]::Create($lab.breakFix.assert))
            & ([scriptblock]::Create($lab.breakFix.trigger))
            { & ([scriptblock]::Create($lab.breakFix.assert)) } | Should -Throw "*$($lab.breakFix.expectedFailure)*"
            & ([scriptblock]::Create($lab.breakFix.repair))
            & ([scriptblock]::Create($lab.breakFix.assert))
            Write-CapstoneJson (Join-Path $WorkRoot 'workload-outputs.json') @{appResourceId=@{value=$appId};appName=@{value='owned-api'};appUrl=@{value='https://owned-api.azurewebsites.net'};workspaceCustomerId=@{value=$global:CapstoneFixture.workspace}}
            Write-CapstoneJson (Join-Path $WorkRoot 'run.json') @{ownerToken=$global:CapstoneFixture.ownerToken}
            $global:CapstoneFixture.badOwner=$true
            { & ([scriptblock]::Create($lab.integration.commands)) } | Should -Throw '*ownership tags differ*'
            $global:CapstoneFixture.releaseRuns.Count | Should -Be 0
            $global:CapstoneFixture.secretWritten | Should -BeFalse
            $global:CapstoneFixture.badOwner=$false
            & ([scriptblock]::Create($lab.integration.commands)) | Out-Null
            & ([scriptblock]::Create($lab.integration.validate))
            @($global:CapstoneFixture.releaseRuns | ForEach-Object action) | Should -Be @('deploy','rollback')
            $global:CapstoneFixture.secretWritten | Should -BeTrue
            $integration=Get-Content (Join-Path $WorkRoot 'integration-evidence.json') -Raw | ConvertFrom-Json
            $integration.currentRevision | Should -Not -Be $integration.baselineRevision
            # Ordinary historical source/CI checks must remain valid after explicit activation.
            foreach ($cp in $lab.checkpoints) { & ([scriptblock]::Create($cp.validate)) }
            $global:CapstoneFixture.badProviderSource=$true
            { & ([scriptblock]::Create($lab.integration.validate)) } | Should -Throw '*Provider release*'
            $global:CapstoneFixture.badProviderSource=$false
            $evidencePath=$integration.releases[0].evidencePath
            $healthy=Get-Content $evidencePath -Raw
            $report=$healthy | ConvertFrom-Json; $report.healthPassed=$false
            Write-CapstoneJson $evidencePath $report
            { & ([scriptblock]::Create($lab.integration.validate)) } | Should -Throw '*unverified*'
            $report=$healthy | ConvertFrom-Json; $report.telemetry.p95Ms=1500
            Write-CapstoneJson $evidencePath $report
            { & ([scriptblock]::Create($lab.integration.validate)) } | Should -Throw '*telemetry violates*'
            $report=$healthy | ConvertFrom-Json; $report.telemetry.requests=0
            Write-CapstoneJson $evidencePath $report
            { & ([scriptblock]::Create($lab.integration.validate)) } | Should -Throw '*telemetry violates*'
            Set-Content -LiteralPath $evidencePath -Value $healthy -Encoding utf8
            & ([scriptblock]::Create($lab.integration.validate))
        }
        finally { foreach ($name in $environment.Keys) { [Environment]::SetEnvironmentVariable($name,$environment[$name]) } }
    }
}

AfterAll {
    foreach ($name in @('git','gh','az','dotnet','python','Get-CapstoneArgument','Write-CapstoneJson','Write-CapstoneReleaseEvidence')) { Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue }
    Remove-Variable CapstoneFixture -Scope Global -ErrorAction SilentlyContinue
}
