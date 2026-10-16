#requires -Version 7.4
BeforeAll {
    $script:CourseRoot = Split-Path -Parent $PSScriptRoot
    $script:CourseLabs = (Get-Content (Join-Path $script:CourseRoot 'curriculum/lab-content.yml') -Raw | ConvertFrom-Json).labs
    # Provider doubles implement the observable state transitions. No CLI call
    # can fall through to a real GitHub, Azure, or Azure DevOps account.
    function global:gh {
        $line = @($args) -join ' '
        $global:LASTEXITCODE = 0
        if ($line -match '^issue edit') {
            $index = [array]::IndexOf($args, '--body')
            $global:Az400FaultState.issueBody = [string]$args[$index + 1]
            return
        }
        if ($line -match '^issue view') { return (@{ body = $global:Az400FaultState.issueBody } | ConvertTo-Json) }
        if ($line -match '^api .*required_pull_request_reviews') {
            if ($line -match 'required_approving_review_count=(\d+)') { $global:Az400FaultState.reviewCount = [int]$Matches[1] }
            return (@{ required_approving_review_count = $global:Az400FaultState.reviewCount } | ConvertTo-Json)
        }
        throw "Unexpected GitHub command in offline fault test: $line"
    }
    function global:az {
        $line = @($args) -join ' '
        $global:LASTEXITCODE = 0
        if ($line -match '^webapp traffic-routing set') {
            if ($line -notmatch 'staging=(\d+)') { throw 'Mock expected a slot distribution.' }
            $global:Az400FaultState.staging = [int]$Matches[1]
            return
        }
        if ($line -match '^webapp traffic-routing show') { return (@{ staging = $global:Az400FaultState.staging } | ConvertTo-Json) }
        if ($line -match '^appconfig feature enable') { $global:Az400FaultState.featureState = 'on'; return }
        if ($line -match '^appconfig feature disable') { $global:Az400FaultState.featureState = 'off'; return }
        if ($line -match '^appconfig feature show') { return (@{ name = 'TodoWrites'; state = $global:Az400FaultState.featureState } | ConvertTo-Json) }
        if ($line -match '^tag update') { $global:Az400FaultState.storageRun = 'wrong-run'; return }
        if ($line -match '^deployment group create') { $global:Az400FaultState.storageRun = $global:Az400FaultState.runId; return }
        if ($line -match '^storage account show') { return (@{ tags = @{ 'az400-run' = $global:Az400FaultState.storageRun } } | ConvertTo-Json) }
        if ($line -match '^monitor metrics alert update') { $global:Az400FaultState.alertEnabled = $line -match '--enabled true'; return }
        if ($line -match '^monitor metrics alert show') { return (@{ enabled = $global:Az400FaultState.alertEnabled } | ConvertTo-Json) }
        if ($line -match '^monitor log-analytics query') {
            $rows = @(@{ operation_Id = 'op1'; target = 'sqlite' })
            if ($line -notmatch 'kind=inner') { $rows += @{ operation_Id = 'op2'; target = '' } }
            return (ConvertTo-Json -InputObject $rows)
        }
        throw "Unexpected Azure command in offline fault test: $line"
    }
    function global:dotnet {
        if ((@($args) -join ' ') -match '^restore ') {
            $project = Join-Path $global:Az400FaultState.workRoot 'Package.Consumer/Package.Consumer.csproj'
            if ((Get-Content $project -Raw) -notmatch 'Version="1.2.0"') { throw 'Fixture feed cannot restore another version.' }
            $global:LASTEXITCODE = 0
            return
        }
        if ((@($args) -join ' ') -notmatch '^build ') { throw 'Only compiler and package-feed contracts are mocked here.' }
        $global:LASTEXITCODE = if (Test-Path (Join-Path $global:Az400FaultState.workRoot 'github-ci/samples/DevOps.Api/Broken.cs')) { 1 } else { 0 }
    }
    function Write-Fixture {
        param([string]$RelativePath, [string]$Text)
        $path = Join-Path $WorkRoot $RelativePath
        New-Item -ItemType Directory -Force (Split-Path -Parent $path) | Out-Null
        Set-Content -LiteralPath $path -Value $Text -Encoding utf8
    }
    function Write-JsonFixture {
        param([string]$RelativePath, [object]$Value)
        Write-Fixture $RelativePath (ConvertTo-Json -InputObject $Value -Depth 20)
    }
}

Describe 'Course fault contract <LabId>' -ForEach (0..27 | ForEach-Object { @{ LabId = ('{0:d2}' -f $_) } }) {
    BeforeEach {
        $RepoRoot = $script:CourseRoot
        $RunId = 'offline-fault'
        $GhRepo = 'training/owned-sandbox'
        $AdoOrganization = 'https://dev.azure.com/offline-fixture'
        $AdoProject = 'owned-project'
        $SubscriptionId = '11111111-1111-4111-8111-111111111111'
        $ResourceGroup = "rg-az400-$LabId-$RunId"
        $Location = 'westeurope'
        $WorkRoot = Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Force $WorkRoot | Out-Null
        $lab = $script:CourseLabs | Where-Object id -eq $LabId
        $LabRoot = Join-Path $RepoRoot "labs/$($lab.slug)"
        $global:Az400FaultState = @{ runId = $RunId; workRoot = $WorkRoot; issueBody = 'Acceptance: HTTP200; Boards https://example.invalid/task/1'; reviewCount = 1; staging = 10; featureState = 'off'; storageRun = $RunId; alertEnabled = $true }
        Write-JsonFixture 'boundary.json' @{ runId = $RunId }
        Write-Fixture 'issue-number.txt' '1'
        Write-Fixture 'board-url.txt' 'https://example.invalid/task/1'
        Write-JsonFixture 'observations.json' @(@{ leadMinutes = 120; cycleMinutes = 70 })
        Write-JsonFixture 'webhook-proposal.json' @{ active = $false; config = @{ url = 'https://receiver.example.invalid'; insecure_ssl = '0' } }
        Write-Fixture 'recovery/service.txt' 'healthy'
        Write-Fixture 'Package.Consumer/Package.Consumer.csproj' '<Project Sdk="Microsoft.NET.Sdk"><PropertyGroup><TargetFramework>net10.0</TargetFramework></PropertyGroup><ItemGroup><PackageReference Include="Versioned.Library" Version="1.2.0" /></ItemGroup></Project>'
        Write-JsonFixture 'coverage-gate.json' @{ minimum = 0.65; actual = 0.84; passed = $true }
        Write-Fixture 'github-ci/samples/DevOps.Api/Healthy.cs' 'class Healthy {}'
        Write-Fixture 'github-ci/samples/DevOps.slnx' '<Solution />'
        Write-Fixture 'azure-ci/samples/DevOps.slnx' '<Solution />'
        Write-Fixture 'azure-ci/azure-pipelines.yml' 'steps: [{script: "dotnet test samples/DevOps.slnx"}]'
        Write-JsonFixture 'job-graph.json' @(@{ job = 'build'; needs = @() }, @{ job = 'test'; needs = @('build') }, @{ job = 'package'; needs = @('test') })
        Write-Fixture 'execution-order.txt' "build`ntest`npackage"
        Write-JsonFixture 'runner-design.json' @{ untrustedPR = 'hosted ephemeral'; credentialLifetime = 'job' }
        Write-JsonFixture 'environment-policy.json' @{ prevent_self_review = $true; reviewers = @(@{ id = 123; type = 'User' }) }
        Write-Fixture 'release-order.txt' "schema-expand`napplication-deploy`nreadiness-check`nschema-contract-later"
        Write-Fixture 'app-name.txt' 'az400-l15-offline-fault'
        Write-JsonFixture 'core-deployment.json' @{ properties = @{ outputs = @{ storageAccountId = @{ value = '/subscriptions/fixture/resourceGroups/owned/providers/Microsoft.Storage/storageAccounts/owned' } } } }
        Write-JsonFixture 'desired-state.json' @{ files = @(@{ path = 'service.conf'; content = 'mode=training' }) }
        Write-Fixture 'service.conf' 'mode=training'
        Write-JsonFixture 'retention.json' @{ prLogsDays = 7; releaseArtifactsDays = 30; keepLastGoodRelease = $true }
        Write-JsonFixture 'identity-matrix.json' @{ githubBuild = 'GITHUB_TOKEN contents:read' }
        Write-Fixture 'redacted-log.txt' 'status=complete; value=<redacted>'
        Write-Fixture 'scan-fixture.txt' 'public-setting=training'
        Write-JsonFixture 'triage.json' @{ severity = 'high'; reachable = $true; dismissed = $false }
        Write-Fixture 'workspace-customer-id.txt' '22222222-2222-4222-8222-222222222222'
        Write-Fixture 'correlation.kql' 'requests | join kind=leftouter dependencies on operation_Id'
        Write-Fixture 'capstone-sha.txt' ('a' * 40)
        Write-JsonFixture 'release-dossier.json' @{ issue = 'https://example.invalid/issue/1'; commit = ('a' * 40); run = '42'; result = 'succeeded'; cloudDeployed = $false; cleanupRequired = $true }
        foreach ($name in @('repository-admin', 'azure-ci', 'recovery')) {
            $gitRoot = Join-Path $WorkRoot $name
            New-Item -ItemType Directory -Force $gitRoot | Out-Null
            git init --initial-branch=main $gitRoot | Out-Null
            git -C $gitRoot config user.name 'Offline fixture'
            git -C $gitRoot config user.email 'fixture@example.invalid'
            if ($name -eq 'repository-admin') { Write-Fixture 'repository-admin/.gitattributes' '*.bin filter=lfs diff=lfs merge=lfs -text' }
            git -C $gitRoot add .
            git -C $gitRoot commit -m 'Independent healthy fault fixture' | Out-Null
        }
    }

    It 'passes healthy, rejects the named injected fault, and passes after repair' {
        $lab.breakFix.assert | Should -Not -BeNullOrEmpty
        $lab.breakFix.expectedFailure | Should -Match '^AZ400-L\d{2}-'
        { & ([scriptblock]::Create($lab.breakFix.assert)) } | Should -Not -Throw
        & ([scriptblock]::Create($lab.breakFix.trigger)) | Out-Null
        { & ([scriptblock]::Create($lab.breakFix.assert)) } | Should -Throw -ExpectedMessage "*$($lab.breakFix.expectedFailure)*"
        & ([scriptblock]::Create($lab.breakFix.repair)) | Out-Null
        { & ([scriptblock]::Create($lab.breakFix.assert)) } | Should -Not -Throw
    }
}

AfterAll {
    foreach ($name in @('gh', 'az', 'dotnet')) { Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue }
    Remove-Variable -Name Az400FaultState -Scope Global -ErrorAction SilentlyContinue
}
