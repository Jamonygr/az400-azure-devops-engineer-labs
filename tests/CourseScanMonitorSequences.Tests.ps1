#Requires -Version 7.4
BeforeAll {
    $script:courseRoot=Split-Path -Parent $PSScriptRoot
    $script:course=(Get-Content (Join-Path $script:courseRoot 'curriculum/lab-content.yml') -Raw|ConvertFrom-Json).labs
    # Provider and Trivy/Docker responses are explicit contract fixtures. Real
    # .NET inventory/advisory requests and Gitleaks evaluate the source locally.
    function global:gh {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -match '^api repos/') {return (@{name=$global:ScanFixture.repo;visibility='private';security=@{}}|ConvertTo-Json)}
        throw "Unexpected GitHub call in scan/monitor fixture: $line"
    }
    function global:az {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -match '^security pricing list '){return '[{"name":"VirtualMachines","tier":"Free","subPlan":null}]'}
        if($line -match '^monitor log-analytics workspace (create|show) '){return (@{id="$($global:ScanFixture.scope)/providers/Microsoft.OperationalInsights/workspaces/fixture";retentionInDays=30}|ConvertTo-Json)}
        if($line -match '^monitor app-insights component (create|show) '){return (@{id="$($global:ScanFixture.scope)/providers/Microsoft.Insights/components/fixture";workspaceResourceId="$($global:ScanFixture.scope)/providers/Microsoft.OperationalInsights/workspaces/fixture"}|ConvertTo-Json)}
        if($line -match '^monitor metrics list-definitions '){return '[{"name":"requests/duration","unit":"MilliSeconds","aggregation":"Average"}]'}
        if($line -match '^monitor metrics alert create '){$global:ScanFixture.alert=$true;return '{"enabled":true,"windowSize":"PT5M","actions":[]}'}
        if($line -match '^monitor metrics alert update '){$global:ScanFixture.alert=$line -match '--enabled true';return '{}'}
        if($line -match '^monitor metrics alert show '){return (@{enabled=$global:ScanFixture.alert;windowSize='PT5M';actions=@()}|ConvertTo-Json)}
        throw "Unexpected Azure call in scan/monitor fixture: $line"
    }
    function global:docker {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -match '^image inspect '){
            if(-not $global:ScanFixture.image){$global:LASTEXITCODE=1;return}
            if($line -match '\{\{\.Id\}\}'){return ('sha256:'+'a'*64)}
            return $global:ScanFixture.run
        }
        if($line -match '^build '){
            if($line -notmatch [regex]::Escape("--label az400.run=$($global:ScanFixture.run)")){throw 'Missing exact image ownership label.'}
            $global:ScanFixture.image=$true;return
        }
        if($line -match '^image rm '){$global:ScanFixture.image=$false;return}
        throw "Unexpected Docker operation in fixture: $line"
    }
    function global:trivy {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        $output=$args[[Array]::IndexOf($args,'--output')+1]
        if($line -match '^image --scanners vuln '){
            @{ArtifactName="az400-lab22:$($global:ScanFixture.run)";Results=@(@{Vulnerabilities=@(@{VulnerabilityID='CVE-FIXTURE';Severity='HIGH'})})}|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $output
            return
        }
        if($line -match '^fs --scanners license '){
            @{ArtifactName='explicit-local-fixture';Results=@(@{Licenses=@(@{PkgName='known';Name='MIT'},@{PkgName='unknown';Name='UNKNOWN'})})}|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $output
            return
        }
        throw "Unexpected Trivy operation in fixture: $line"
    }
}
Describe 'Complete scan/monitor sequence <LabId> with explicit provider doubles' -ForEach @(@{LabId='22'},@{LabId='23'},@{LabId='24'}) {
    It 'executes all tasks and retains final invariants after fault and repair' {
        $RepoRoot=$script:courseRoot;$RunId='offline-scan';$GhRepo='fixture/owned';$AdoProject='owned-project';$AdoOrganization='https://dev.azure.com/fixture'
        $SubscriptionId='44444444-4444-4444-8444-444444444444';$ResourceGroup="rg-az400-$LabId-$RunId";$Location='westeurope'
        $lab=$script:course|Where-Object id -eq $LabId;$LabRoot=Join-Path $RepoRoot "labs/$($lab.slug)";$WorkRoot=Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Path $WorkRoot|Out-Null
        $global:ScanFixture=@{repo=$GhRepo;run=$RunId;scope="/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup";alert=$false;image=$false}
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.commands))|Out-Null; & ([scriptblock]::Create($cp.validate)) }
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
        if($LabId -eq '22'){
            $global:ScanFixture.image|Should -BeFalse
            (Get-Content (Join-Path $WorkRoot 'container-gate.json') -Raw|ConvertFrom-Json).releaseAllowed|Should -BeFalse
            @( (Get-Content (Join-Path $WorkRoot 'license-review.json') -Raw|ConvertFrom-Json).review|Where-Object status -eq 'manual-review').Count|Should -Be 1
        }
        & ([scriptblock]::Create($lab.breakFix.assert)); & ([scriptblock]::Create($lab.breakFix.trigger))
        { & ([scriptblock]::Create($lab.breakFix.assert)) }|Should -Throw "*$($lab.breakFix.expectedFailure)*"
        & ([scriptblock]::Create($lab.breakFix.repair)); & ([scriptblock]::Create($lab.breakFix.assert))
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
    }
}
AfterAll {
    foreach($name in @('gh','az','docker','trivy')){Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue}
    Remove-Variable ScanFixture -Scope Global -ErrorAction SilentlyContinue
}
