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
