#Requires -Version 7.4
BeforeAll {
    $script:courseRoot=Split-Path -Parent $PSScriptRoot
    $script:course=(Get-Content (Join-Path $script:courseRoot 'curriculum/lab-content.yml') -Raw|ConvertFrom-Json).labs
    $script:azure=(Get-Command az -CommandType Application|Select-Object -First 1).Source
    # Only Bicep lint/build can reach the actual CLI; every provider operation
    # is a stateful double. Local publishing, EF generation and tests are real.
    function global:gh {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -eq 'api user'){return '{"id":123,"login":"fixture"}'}
        if($line -match '^api --method PUT repos/.+/environments/'){
            $policy=Get-Content -LiteralPath $args[[Array]::IndexOf($args,'--input')+1] -Raw|ConvertFrom-Json
            $global:ReleaseFixture.environment=@{name="release-$($global:ReleaseFixture.run)";deployment_branch_policy=$policy.deployment_branch_policy;protection_rules=@(@{type='required_reviewers';prevent_self_review=$policy.prevent_self_review})}
            return ($global:ReleaseFixture.environment|ConvertTo-Json -Depth 8)
        }
        if($line -match '^api repos/.+/environments/'){return ($global:ReleaseFixture.environment|ConvertTo-Json -Depth 8)}
        throw "Unexpected GitHub operation in offline release sequence: $line"
    }
    function global:az {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -match '^bicep (build|lint) '){ & $global:ReleaseFixture.azure @args; if($LASTEXITCODE){throw 'Offline Bicep failed.'};return }
        if($line -eq 'webapp list-runtimes --os linux -o tsv'){return 'DOTNETCORE:10.0'}
        if($line -match '^appservice plan create '){return '{"sku":{"name":"S1"}}'}
        if($line -match '^webapp (create|show) '){return '{"state":"Running"}'}
        if($line -match '^webapp deployment slot create '){$global:ReleaseFixture.slot=$true;return '{}'}
        if($line -match '^webapp deployment slot list '){
            if(-not $global:ReleaseFixture.slot){return '[]'}
            return (ConvertTo-Json -InputObject @(@{name="az400-l15-$($global:ReleaseFixture.run)/staging"}))
        }
        if($line -match '^webapp deploy '){
            $zip=$args[[Array]::IndexOf($args,'--src-path')+1]
            if(-not(Test-Path -LiteralPath $zip)){throw 'Deployment requested a missing package.'}
            $global:ReleaseFixture.digests+=@(Get-FileHash -LiteralPath $zip).Hash;return '{}'
        }
        if($line -match '^webapp config appsettings set '){return}
        if($line -match '^webapp traffic-routing set '){
            if($line -notmatch 'staging=(\d+)'){throw 'Missing staging distribution.'}
            $global:ReleaseFixture.routing=[int]$Matches[1]
            return (@{staging=$global:ReleaseFixture.routing}|ConvertTo-Json)
        }
        if($line -match '^webapp traffic-routing show '){return (@{staging=$global:ReleaseFixture.routing}|ConvertTo-Json)}
        if($line -match '^appconfig (create|show) '){return (@{id="$($global:ReleaseFixture.scope)/providers/Microsoft.AppConfiguration/configurationStores/fixture";disableLocalAuth=$true;tags=@{'az400-run'=$global:ReleaseFixture.run}}|ConvertTo-Json -Depth 5)}
        if($line -eq 'ad signed-in-user show --query id -o tsv'){return '11111111-1111-4111-8111-111111111111'}
        if($line -match '^role assignment create '){return (@{scope=$args[[Array]::IndexOf($args,'--scope')+1]}|ConvertTo-Json)}
        if($line -match '^appconfig feature set '){$global:ReleaseFixture.feature='off';return '{}'}
        if($line -match '^appconfig feature enable '){$global:ReleaseFixture.feature='on';return '{}'}
        if($line -match '^appconfig feature disable '){$global:ReleaseFixture.feature='off';return '{}'}
        if($line -match '^appconfig feature show '){return (@{name='TodoWrites';state=$global:ReleaseFixture.feature}|ConvertTo-Json)}
        if($line -match '^deployment group validate '){return '{"properties":{"provisioningState":"Succeeded"}}'}
        if($line -match '^deployment group what-if '){return (@{status='Succeeded';changes=@(@{resourceId="$($global:ReleaseFixture.scope)/providers/Microsoft.Storage/storageAccounts/fixture";changeType='NoChange'})}|ConvertTo-Json -Depth 5)}
        if($line -match '^deployment group create '){$global:ReleaseFixture.runTag=$global:ReleaseFixture.run}
        if($line -match '^deployment group (create|show) '){
            return (@{id="$($global:ReleaseFixture.scope)/providers/Microsoft.Resources/deployments/core";properties=@{provisioningState='Succeeded';mode='Incremental';outputs=@{storageAccountId=@{value="$($global:ReleaseFixture.scope)/providers/Microsoft.Storage/storageAccounts/fixture"};identityId=@{value="$($global:ReleaseFixture.scope)/providers/Microsoft.ManagedIdentity/userAssignedIdentities/fixture"};identityPrincipalId=@{value='22222222-2222-4222-8222-222222222222'}}}}|ConvertTo-Json -Depth 8)
        }
        if($line -match '^storage account show '){return (@{enableHttpsTrafficOnly=$true;minimumTlsVersion='TLS1_2';allowSharedKeyAccess=$false;publicNetworkAccess='Disabled';tags=@{'az400-run'=$global:ReleaseFixture.runTag}}|ConvertTo-Json -Depth 5)}
        if($line -match '^identity show '){return (@{principalId='22222222-2222-4222-8222-222222222222';tags=@{'az400-run'=$global:ReleaseFixture.run}}|ConvertTo-Json -Depth 5)}
        if($line -match '^tag update '){$global:ReleaseFixture.runTag='wrong-run';return '{}'}
        throw "Unexpected Azure operation in offline release sequence: $line"
    }
}
Describe 'Complete offline release sequence <LabId>' -ForEach (13..17|ForEach-Object{@{LabId=[string]$_}}) {
    BeforeEach {
        Mock Invoke-WebRequest { throw 'Unexpected remote request in offline release sequence.' }
        Mock Invoke-WebRequest { [pscustomobject]@{StatusCode=200} } -ParameterFilter { $Uri -match '^https://az400-l15-offline-release(?:-staging)?\.azurewebsites\.net/health/ready$' }
    }
    It 'executes each task and final validator, then detects and repairs the named fault' {
        $RepoRoot=$script:courseRoot;$RunId='offline-release';$GhRepo='fixture/owned';$AdoOrganization='https://dev.azure.com/fixture';$AdoProject='owned-project'
        $SubscriptionId='44444444-4444-4444-8444-444444444444';$ResourceGroup="rg-az400-$LabId-$RunId";$Location='westeurope'
        $lab=$script:course|Where-Object id -eq $LabId;$LabRoot=Join-Path $RepoRoot "labs/$($lab.slug)";$WorkRoot=Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Path $WorkRoot|Out-Null
        $global:ReleaseFixture=@{azure=$script:azure;run=$RunId;runTag=$RunId;scope="/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup";routing=0;slot=$false;digests=@();feature='off'}
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.commands))|Out-Null; & ([scriptblock]::Create($cp.validate)) }
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
        if($LabId -eq '15'){@($global:ReleaseFixture.digests).Count|Should -Be 2; @($global:ReleaseFixture.digests|Select-Object -Unique).Count|Should -Be 1}
        & ([scriptblock]::Create($lab.breakFix.assert))
        & ([scriptblock]::Create($lab.breakFix.trigger))
        { & ([scriptblock]::Create($lab.breakFix.assert)) }|Should -Throw "*$($lab.breakFix.expectedFailure)*"
        & ([scriptblock]::Create($lab.breakFix.repair)); & ([scriptblock]::Create($lab.breakFix.assert))
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
    }
}
AfterAll {
    foreach($name in @('gh','az')){Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue}
    Remove-Variable ReleaseFixture -Scope Global -ErrorAction SilentlyContinue
}
