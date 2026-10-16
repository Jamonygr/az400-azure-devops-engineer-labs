BeforeAll {
    $script:gate = Join-Path $PSScriptRoot '../labs/26-capstone-github/artifacts/deployment/scripts/Verify-Release.ps1'
    function az { }
}

Describe 'Measured release gate evidence' {
    BeforeEach {
        $script:revision = 'a' * 40
        $script:evidence = Join-Path $TestDrive 'release.json'
        Mock Invoke-WebRequest { [pscustomobject]@{ StatusCode = 200 } }
        Mock Invoke-RestMethod { [pscustomobject]@{ revision = 'a' * 40 } }
        Mock az { '[{"Requests":10,"Failures":0,"FailureRate":0.0,"P95Ms":50.0}]' }
        Mock Start-Sleep { }
    }

    It 'requires measured telemetry after matching the deployed revision' {
        & $script:gate -AppUrl 'https://example.azurewebsites.net' -ExpectedRevision $script:revision -WorkspaceId '11111111-1111-1111-1111-111111111111' -EvidencePath $script:evidence
        $report = Get-Content $script:evidence -Raw | ConvertFrom-Json
        $report.status | Should -Be passed
        $report.healthPassed | Should -BeTrue
        $report.telemetryPassed | Should -BeTrue
        $report.telemetry.requests | Should -Be 10
        Should -Invoke Invoke-WebRequest -Times 11 -Exactly -ParameterFilter { $Headers.'X-Az400-Release' -eq ('a' * 40) }
    }

    It 'retains failed partial evidence when the assembly revision is wrong' {
        Mock Invoke-RestMethod { [pscustomobject]@{ revision = 'b' * 40 } }
        { & $script:gate -AppUrl 'https://example.azurewebsites.net' -ExpectedRevision $script:revision -WorkspaceId '11111111-1111-1111-1111-111111111111' -EvidencePath $script:evidence } | Should -Throw '*revision differs*'
        $report = Get-Content $script:evidence -Raw | ConvertFrom-Json
        $report.status | Should -Be failed
        $report.healthPassed | Should -BeFalse
        $report.telemetryPassed | Should -BeFalse
        Should -Invoke az -Times 0 -Exactly
    }

    It 'retains health success but fails promotion for measured latency violations' {
        Mock az { '[{"Requests":10,"Failures":0,"FailureRate":0.0,"P95Ms":1500.0}]' }
        { & $script:gate -AppUrl 'https://example.azurewebsites.net' -ExpectedRevision $script:revision -WorkspaceId '11111111-1111-1111-1111-111111111111' -EvidencePath $script:evidence } | Should -Throw '*violated*'
        $report = Get-Content $script:evidence -Raw | ConvertFrom-Json
        $report.status | Should -Be failed
        $report.healthPassed | Should -BeTrue
        $report.telemetryPassed | Should -BeFalse
        $report.telemetry.p95Ms | Should -Be 1500
    }
}

Describe 'Exact workload ownership contract' {
    BeforeAll {
        $script:scopeGate=Join-Path $PSScriptRoot '../labs/26-capstone-github/artifacts/deployment/scripts/Assert-OwnedWorkload.ps1'
        $script:scopeParameters=@{SubscriptionId='11111111-1111-4111-8111-111111111111';ResourceGroup='owned-group';RunId='fixture-run';OwnerToken=('a'*32);AppName='owned-api';WorkspaceId='22222222-2222-4222-8222-222222222222'}
    }
    BeforeEach {
        $global:Az400OwnershipFixtureCase='healthy'
        Mock az {
            $line=$args -join ' '
            $tags=@{'az400-owner'=if($global:Az400OwnershipFixtureCase -eq 'group'){'f'*32}else{'a'*32};'az400-run'='fixture-run';'az400-lab'='26'}
            if($line -match '^account show '){return '{"id":"11111111-1111-4111-8111-111111111111"}'}
            if($line -match '^group show '){return (@{tags=$tags}|ConvertTo-Json)}
            if($line -match '^webapp show '){
                $tags['az400-owner']=if($global:Az400OwnershipFixtureCase -eq 'app'){'f'*32}else{'a'*32}
                $group=if($global:Az400OwnershipFixtureCase -eq 'scope'){'outside-group'}else{'owned-group'}
                return (@{id="/subscriptions/11111111-1111-4111-8111-111111111111/resourceGroups/$group/providers/Microsoft.Web/sites/owned-api";tags=$tags}|ConvertTo-Json)
            }
            if($line -match '^monitor log-analytics workspace list '){
                $tags['az400-owner']=if($global:Az400OwnershipFixtureCase -eq 'workspace'){'f'*32}else{'a'*32}
                return (ConvertTo-Json -InputObject @(@{customerId='22222222-2222-4222-8222-222222222222';tags=$tags}))
            }
            throw 'The scope fixture refuses every unexpected or mutating Azure operation.'
        }
    }
    It 'accepts actual lifecycle tags without inventing a group managedBy prerequisite' {
        { & $script:scopeGate @script:scopeParameters }|Should -Not -Throw
    }
    It 'refuses an incorrect owner marker on the group' {
        $global:Az400OwnershipFixtureCase='group'
        { & $script:scopeGate @script:scopeParameters }|Should -Throw '*ownership tags differ*'
    }
    It 'refuses an incorrect owner marker on the application' {
        $global:Az400OwnershipFixtureCase='app'
        { & $script:scopeGate @script:scopeParameters }|Should -Throw '*outside the exact owned workload*'
    }
    It 'refuses an application ID outside the exact owned group' {
        $global:Az400OwnershipFixtureCase='scope'
        { & $script:scopeGate @script:scopeParameters }|Should -Throw '*outside the exact owned workload*'
    }
    It 'refuses an incorrect owner marker on the telemetry workspace' {
        $global:Az400OwnershipFixtureCase='workspace'
        { & $script:scopeGate @script:scopeParameters }|Should -Throw '*workspace is outside*'
    }
}

AfterAll { Remove-Variable Az400OwnershipFixtureCase -Scope Global -ErrorAction SilentlyContinue }
