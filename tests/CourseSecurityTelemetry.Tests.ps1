#Requires -Version 7.4
BeforeAll {
    $script:courseRoot=Split-Path -Parent $PSScriptRoot
    $script:course=(Get-Content (Join-Path $script:courseRoot 'curriculum/lab-content.yml') -Raw|ConvertFrom-Json).labs
    # Fail-closed provider doubles. The trace test, file operations and fixture
    # arithmetic run for real; these functions never invoke a cloud executable.
    function global:gh {
        $line=$args -join ' '; $global:LASTEXITCODE=0
        if($line -match '^run list '){return '[{"databaseId":42,"status":"completed","conclusion":"success"}]'}
        if($line -match '^repo view '){return (@{nameWithOwner=$global:SequenceState.repo;viewerPermission='ADMIN';visibility='PRIVATE'}|ConvertTo-Json)}
        if($line -match '^api repos/.+/collaborators '){return '[{"login":"fixture","role":"admin"}]'}
        throw "Unexpected GitHub command in offline sequence: $line"
    }
    function global:az {
        $line=$args -join ' '; $global:LASTEXITCODE=0
        if($line -match '^devops team list '){return '[{"id":"fixture-team","name":"Fixture team"}]'}
        if($line -match '^devops project show '){return (@{id='fixture-project';name=$global:SequenceState.project;visibility='private'}|ConvertTo-Json)}
        if($line -match '^identity (create|show) '){return (@{id="$($global:SequenceState.scope)/providers/Microsoft.ManagedIdentity/userAssignedIdentities/fixture";principalId='11111111-1111-4111-8111-111111111111';clientId='22222222-2222-4222-8222-222222222222'}|ConvertTo-Json)}
        if($line -match '^identity federated-credential create '){
            $global:SequenceState.federation=@{subject=$args[[Array]::IndexOf($args,'--subject')+1];issuer=$args[[Array]::IndexOf($args,'--issuer')+1];audiences=@('api://AzureADTokenExchange')}
            return ($global:SequenceState.federation|ConvertTo-Json)
        }
        if($line -match '^identity federated-credential show '){return ($global:SequenceState.federation|ConvertTo-Json)}
        if($line -match '^role assignment create '){
            $scope=$args[[Array]::IndexOf($args,'--scope')+1]
            if($scope -cne $global:SequenceState.scope -or $line -notmatch '--role Reader '){throw 'Assignment did not request the exact owned scope/Reader role.'}
            $global:SequenceState.assignment=@{scope=$scope;roleDefinitionId='/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7'}
            return ($global:SequenceState.assignment|ConvertTo-Json)
        }
        if($line -match '^role assignment list '){return (ConvertTo-Json -InputObject @($global:SequenceState.assignment))}
        if($line -match '^role definition list '){return '[{"name":"acdd72a7-3385-48ef-bd42-f606fba81ae7","permissions":[{"actions":["*/read"],"dataActions":[]}]}]'}
        if($line -match '^monitor log-analytics workspace (create|show) '){return (@{customerId='33333333-3333-4333-8333-333333333333';id="$($global:SequenceState.scope)/providers/Microsoft.OperationalInsights/workspaces/fixture"}|ConvertTo-Json)}
        if($line -match '^monitor log-analytics query '){
            if($line -match 'summarize requests=count'){return '[{"requests":3,"failures":1,"p95Ms":100}]'}
            if($line -match 'join kind=inner'){return '[{"operation_Id":"op1","target":"sqlite","durationMs":12}]'}
            if($line -match 'join kind=leftouter'){return '[{"operation_Id":"op1","target":"sqlite","durationMs":12},{"operation_Id":"op2","target":"","durationMs":null}]'}
        }
        throw "Unexpected Azure command in offline sequence: $line"
    }
}

Describe 'Complete offline sequence for lab <LabId>' -ForEach @(@{LabId='02'},@{LabId='20'},@{LabId='21'},@{LabId='25'}) {
    It 'executes all tasks, validates final state and observes named fault and repair' {
        $RepoRoot=$script:courseRoot;$RunId='offline-sequence';$GhRepo='fixture/owned-sandbox';$AdoProject='owned-project';$AdoOrganization='https://dev.azure.com/offline-fixture'
        $SubscriptionId='44444444-4444-4444-8444-444444444444';$Location='westeurope';$ResourceGroup="rg-az400-$LabId-$RunId"
        $lab=$script:course|Where-Object id -eq $LabId
        $LabRoot=Join-Path $RepoRoot "labs/$($lab.slug)";$WorkRoot=Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Path $WorkRoot|Out-Null
        $global:SequenceState=@{repo=$GhRepo;project=$AdoProject;scope="/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup"}
        foreach($checkpoint in $lab.checkpoints){
            & ([scriptblock]::Create($checkpoint.commands))|Out-Null
            { & ([scriptblock]::Create($checkpoint.validate)) }|Should -Not -Throw
        }
        foreach($checkpoint in $lab.checkpoints){ & ([scriptblock]::Create($checkpoint.validate)) }
        & ([scriptblock]::Create($lab.breakFix.assert))
        & ([scriptblock]::Create($lab.breakFix.trigger))
        { & ([scriptblock]::Create($lab.breakFix.assert)) }|Should -Throw "*$($lab.breakFix.expectedFailure)*"
        & ([scriptblock]::Create($lab.breakFix.repair))
        & ([scriptblock]::Create($lab.breakFix.assert))
        foreach($checkpoint in $lab.checkpoints){ & ([scriptblock]::Create($checkpoint.validate)) }
    }
}

AfterAll {
    foreach($name in @('gh','az')){Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue}
    Remove-Variable SequenceState -Scope Global -ErrorAction SilentlyContinue
}
