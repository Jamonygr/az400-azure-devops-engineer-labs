Import-Module (Join-Path $PSScriptRoot '../tools/Az400.Lifecycle.psm1') -Force

Describe 'Verified rehearsal and authorization evidence' {
    InModuleScope Az400.Lifecycle {
        BeforeEach {
            $script:definition = Join-Path $TestDrive ([Guid]::NewGuid().ToString('N') + '/labs/01-test/lab.yml')
            $script:lab = @{id='01';cost='none';platforms=@();checkpoints=@(1..5 | ForEach-Object { @{id="CP$_";title='Local task';commands='$true';validate='$true'} })}
            $script:lab.breakFix = @{assert='if(Test-Path (Join-Path $WorkRoot "fault")){throw "EXPECTED_FAULT"}';expectedFailure='EXPECTED_FAULT';trigger='Set-Content (Join-Path $WorkRoot "fault") broken';repair='Remove-Item (Join-Path $WorkRoot "fault") -ErrorAction SilentlyContinue'}
            Save-LabJson $script:definition $script:lab
        }

        It 'previews break/fix without creating state or injecting a fault' {
            $result = Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run
            $result.status | Should -Be preview
            $ctx = Get-Az400Context -Definition $script:definition -RunId test-run
            Test-Path $ctx.workRoot | Should -BeFalse
        }

        It 'records the complete healthy, fault, repair sequence and validates it' {
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute
            (Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId test-run).status | Should -Be partial
            (Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute).status | Should -Be passed
            $result = Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId test-run
            $result.status | Should -Be passed
            $result.breakFix | Should -Be passed
        }

        It 'rejects a fault invisible to its assertion and still attempts repair' {
            $script:lab.breakFix.assert='$true'
            Save-LabJson $script:definition $script:lab
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute
            { Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute } | Should -Throw '*not detected*'
            $ctx = Get-Az400Context -Definition $script:definition -RunId test-run
            Test-Path (Join-Path $ctx.workRoot 'fault') | Should -BeFalse
            (Read-LabJournal $ctx).breakFix.status | Should -Be failed
        }

        It 'does not accept an unrelated error as proof of the expected fault' {
            $script:lab.breakFix.assert='if(Test-Path (Join-Path $WorkRoot "fault")){throw "NETWORK_ERROR"}'
            Save-LabJson $script:definition $script:lab
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute
            { Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute } | Should -Throw '*unexpected*'
            $ctx = Get-Az400Context -Definition $script:definition -RunId test-run
            (Read-LabJournal $ctx).breakFix.failureObserved | Should -BeFalse
        }

        It 'invalidates prior rehearsal when the fault contract changes' {
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute
            Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute
            $script:lab.breakFix.trigger += '; Write-Verbose "changed"'
            Save-LabJson $script:definition $script:lab
            (Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId test-run).status | Should -Be partial
        }

        It 'retains paid-feature authorization for later read-only validation' {
            $script:lab.checkpoints[0].requiresPaidFeatures=$true
            Save-LabJson $script:definition $script:lab
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute -AllowPaidFeatures
            Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute
            (Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId test-run).status | Should -Be passed
        }

        It 'keeps a capstone partial when its required integration is missing' {
            $script:lab.integration=@{requiredForCompletion=$true;commands='$true';validate='$true'}
            Save-LabJson $script:definition $script:lab
            Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId test-run -Execute
            Invoke-Az400Lab -Operation BreakFix -Definition $script:definition -RunId test-run -Execute
            $result=Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId test-run
            $result.status | Should -Be partial
            $result.integration | Should -Be missing
        }

        It 'checks the active Azure subscription before commands that omit subscription arguments' {
            $script:lab.platforms=@('azure')
            Save-LabJson $script:definition $script:lab
            Mock Get-Command { @{Name='fixture'} }
            Mock Invoke-LabNative { '{"id":"22222222-2222-4222-8222-222222222222"}' }
            { Invoke-Az400Lab -Operation Preflight -Definition $script:definition -RunId test-run -SubscriptionId 11111111-1111-4111-8111-111111111111 } | Should -Throw '*subscription context mismatch*'
            Should -Invoke Invoke-LabNative -Times 1 -ParameterFilter { $File -eq 'az' -and $Arguments[0] -eq 'account' -and $Arguments -notcontains '--subscription' }
        }
    }
}
