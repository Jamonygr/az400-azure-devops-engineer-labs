Import-Module (Join-Path $PSScriptRoot '../tools/Az400.Lifecycle.psm1') -Force

Describe 'Lifecycle safety and recovery' {
    InModuleScope Az400.Lifecycle {
        BeforeEach {
            $script:testBase = Join-Path $TestDrive ([Guid]::NewGuid().ToString('N'))
            $script:testLab = Join-Path $script:testBase 'labs/01-test'
            [void][IO.Directory]::CreateDirectory($script:testLab)
            $script:definition = Join-Path $script:testLab 'lab.yml'
            $script:lab = @{id='01';slug='01-test';cost='none';platforms=@();checkpoints=@(1..5 | ForEach-Object { @{id="CP$_";title="Task $_";commands='$true';validate='if (-not $true) { throw "failed" }'} })}
            Save-LabJson $script:definition $script:lab
            $script:context = Get-Az400Context -Definition $script:definition -RunId demo-run -GithubOwner learner -AdoOrganization https://dev.azure.com/training -SubscriptionId 00000000-0000-0000-0000-000000000000
            $script:context.adoProfileId = 'fixture-user'
            Mock Get-LabAdoProfileId { 'fixture-user' }
        }

        It 'previews setup without making native calls or writing a journal' {
            Mock Invoke-LabNative { throw 'Native mutation must not occur in preview' }
            $result = Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId demo-run
            $result.status | Should -Be preview
            Test-Path (Join-Path $script:context.workRoot 'run.json') | Should -BeFalse
            Should -Invoke Invoke-LabNative -Times 0
        }

        It 'refuses a changed subscription against a saved run' {
            $journal = Read-LabJournal $script:context
            Save-LabJournal $script:context $journal
            { Get-Az400Context -Definition $script:definition -RunId demo-run -GithubOwner learner -AdoOrganization https://dev.azure.com/training -SubscriptionId 11111111-1111-1111-1111-111111111111 } | Should -Throw '*Context mismatch*'
        }

        It 'refuses an invalid organization URL before any API request' {
            { Get-Az400Context -Definition $script:definition -RunId demo-run -AdoOrganization 'https://example.com/real-project' } | Should -Throw '*exact https*'
        }

        It 'refuses to adopt an existing GitHub repository' {
            Mock Test-LabRemoteAbsent { $false }
            Mock Invoke-LabNative { throw 'Must not create or delete' }
            $journal = Read-LabJournal $script:context
            { New-LabBoundary $script:context $journal github-repository $script:context.ghRepo } | Should -Throw '*already exists*'
            Should -Invoke Invoke-LabNative -Times 0
        }

        It 'checks GitHub IDs and markers before deletion' {
            Mock Get-LabRemoteObject { @{id='different-id';marker='owned-marker'} }
            $entry = @{kind='github-repository';name=$script:context.ghRepo;id='expected-id'}
            { Assert-LabOwnership $script:context $entry owned-marker } | Should -Throw '*Ownership refusal*'
        }

        It 'checks Azure tags before deletion' {
            Mock Get-LabRemoteObject { @{id='exact-id';marker='somebody-else'} }
            $entry = @{kind='azure-resource-group';name=$script:context.resourceGroup;id='exact-id'}
            { Assert-LabOwnership $script:context $entry mine } | Should -Throw '*Ownership refusal*'
        }

        It 'checks Azure DevOps project ID before deletion' {
            Mock Get-LabRemoteObject { @{id='wrong-project';marker='mine'} }
            $entry = @{kind='ado-project';name=$script:context.adoProject;id='expected-project'}
            { Assert-LabOwnership $script:context $entry mine } | Should -Throw '*Ownership refusal*'
        }

        It 'rejects a journal entry outside the derived name even if it has a marker' {
            Mock Get-LabRemoteObject { throw 'Must refuse locally first' }
            $entry = @{kind='github-repository';name='learner/production';id='42'}
            { Assert-LabOwnership $script:context $entry mine } | Should -Throw '*outside this run*'
            Should -Invoke Get-LabRemoteObject -Times 0
        }

        It 'saves planned state before a failed create for recoverable partial setup' {
            Mock Test-LabRemoteAbsent { $true }
            Mock Invoke-LabNative { throw 'Network failure after request' }
            $journal = Read-LabJournal $script:context
            { New-LabBoundary $script:context $journal github-repository $script:context.ghRepo } | Should -Throw
            $saved = Read-LabJournal $script:context
            $saved.objects[0].state | Should -Be planned
            $saved.ownerToken.Length | Should -Be 32
        }

        It 'recovers a planned create only with its original marker' {
            $journal = Read-LabJournal $script:context
            $journal.objects += @{kind='github-repository';name=$script:context.ghRepo;id='';state='planned'}
            Save-LabJournal $script:context $journal
            Mock Test-LabRemoteAbsent { $false }
            Mock Get-LabRemoteObject { @{id='recovered-id';marker=$journal.ownerToken} }
            Mock Invoke-LabNative { throw 'Creation must not repeat' }
            New-LabBoundary $script:context $journal github-repository $script:context.ghRepo
            $journal.objects[0].id | Should -Be recovered-id
            Should -Invoke Invoke-LabNative -Times 0
        }

        It 'does not reinterpret an authentication failure as absence' {
            Mock Invoke-LabNative { throw '401 denied' }
            { Test-LabRemoteAbsent $script:context @{kind='github-repository';name=$script:context.ghRepo} } | Should -Throw '*401*'
        }

        It 'refuses GitHub absence proof after an account switch' {
            Mock Invoke-LabNative { 'another-person' }
            { Test-LabRemoteAbsent $script:context @{kind='github-repository';name=$script:context.ghRepo} } | Should -Throw '*authentication changed*'
        }

        It 'refuses Azure DevOps absence proof after an identity switch' {
            Mock Get-LabAdoProfileId { 'different-profile' }
            Mock Invoke-LabNative { throw 'Must stop before listing projects' }
            { Test-LabRemoteAbsent $script:context @{kind='ado-project';name=$script:context.adoProject} } | Should -Throw '*authentication changed*'
            Should -Invoke Invoke-LabNative -Times 0
        }

        It 'uses a recovered exact Azure DevOps ID when cleaning a planned create' {
            $script:checks = 0
            Mock Test-LabRemoteAbsent { $script:checks++; return ($script:checks -gt 1) }
            Mock Assert-LabOwnership { @{id='recovered-project';marker='mine'} }
            Mock Invoke-LabNative { '' }
            $entry = @{kind='ado-project';name=$script:context.adoProject;id='';state='planned'}
            Remove-LabBoundary $script:context $entry mine
            $entry.id | Should -Be recovered-project
            Should -Invoke Invoke-LabNative -Times 1 -ParameterFilter { $Arguments -contains 'recovered-project' }
        }

        It 'resumes setup without replaying completed checkpoints' {
            $context = Get-Az400Context -Definition $script:definition -RunId resume-run
            $journal = Read-LabJournal $context
            $journal.checkpoints = @(@{id='CP1';status='executed'})
            Save-LabJournal $context $journal
            $script:lab.checkpoints[0].commands = 'throw "Completed checkpoint replayed"'
            Save-LabJson $script:definition $script:lab
            $result = Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId resume-run -Execute
            $result.status | Should -Be configured
            @((Read-LabJournal $context).checkpoints).Count | Should -Be 5
        }

        It 'stops at a failed native command and preserves the active checkpoint' {
            $script:lab.checkpoints[0].commands = '& (Get-Command pwsh).Source -NoProfile -Command "exit 17"'
            Save-LabJson $script:definition $script:lab
            { Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId native-fail -Execute } | Should -Throw
            $context = Get-Az400Context -Definition $script:definition -RunId native-fail
            $journal = Read-LabJournal $context
            $journal.status | Should -Be failed
            $journal.activeCheckpoint | Should -Be CP1
            @($journal.checkpoints).Count | Should -Be 0
        }

        It 'searches later Azure DevOps pages before claiming absence' {
            $script:pageNumber = 0
            Mock Invoke-LabNative {
                $script:pageNumber++
                if ($script:pageNumber -eq 1) { return '{"value":[],"continuationToken":"next"}' }
                return (@{value=@(@{name=$script:context.adoProject;state='wellFormed'})} | ConvertTo-Json -Depth 4)
            }
            Test-LabRemoteAbsent $script:context @{kind='ado-project';name=$script:context.adoProject} | Should -BeFalse
            Should -Invoke Invoke-LabNative -Times 2
        }

        It 'refuses a repeated Azure DevOps continuation token' {
            Mock Invoke-LabNative { '{"value":[],"continuationToken":"same"}' }
            { Test-LabRemoteAbsent $script:context @{kind='ado-project';name=$script:context.adoProject} } | Should -Throw '*pagination did not advance*'
        }

        It 'allows repeated cleanup of an already absent object without a delete' {
            Mock Test-LabRemoteAbsent { $true }
            Mock Invoke-LabNative { throw 'Must not delete absent object' }
            $entry = @{kind='ado-project';name=$script:context.adoProject;id='project';state='deleted'}
            Remove-LabBoundary $script:context $entry marker
            Remove-LabBoundary $script:context $entry marker
            $entry.state | Should -Be deleted
            Should -Invoke Invoke-LabNative -Times 0
        }

        It 'reports unknown instead of passed when a managed object becomes invisible before deletion' {
            Mock Test-LabRemoteAbsent { $true }
            Mock Invoke-LabNative { throw 'Must not infer a successful delete' }
            $entry = @{kind='github-repository';name=$script:context.ghRepo;id='42';state='created'}
            { Remove-LabBoundary $script:context $entry marker } | Should -Throw '*no successful delete*'
            $entry.state | Should -Be created
        }

        It 'completes a previously successful deletion after an asynchronous listing clears' {
            Mock Test-LabRemoteAbsent { $true }
            Mock Invoke-LabNative { throw 'Do not repeat successful deletion' }
            $entry = @{kind='ado-project';name=$script:context.adoProject;id='project';state='created';deleteSucceeded=$true}
            Remove-LabBoundary $script:context $entry marker
            $entry.state | Should -Be deleted
        }

        It 'reports a residual when deletion is asynchronous' {
            Mock Test-LabRemoteAbsent { $false }
            Mock Assert-LabOwnership { @{id='project';marker='mine'} }
            Mock Invoke-LabNative { '' }
            $entry = @{kind='ado-project';name=$script:context.adoProject;id='project';state='created'}
            { Remove-LabBoundary $script:context $entry mine } | Should -Throw '*not completed*'
            $entry.state | Should -Be created
        }

        It 'requires cost acknowledgement before provisioning' {
            $script:lab.cost = 'moderate'; Save-LabJson $script:definition $script:lab
            { Invoke-Az400Lab -Operation Setup -Definition $script:definition -RunId demo-run -Execute } | Should -Throw '*AcknowledgeCost*'
        }

        It 'reports skipped paid validation as partial instead of passing' {
            $script:lab.id='23'; Save-LabJson $script:definition $script:lab
            $context = Get-Az400Context -Definition $script:definition -RunId paid-run
            $journal = Read-LabJournal $context; $journal.status='provisioned'; Save-LabJournal $context $journal
            $result = Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId paid-run
            $result.status | Should -Be partial
            @($result.checkpoints | Where-Object status -eq skipped).Count | Should -Be 5
        }

        It 'does not export credentials or context in validation results' {
            $context = Get-Az400Context -Definition $script:definition -RunId clean-run
            $journal = Read-LabJournal $context; $journal.status='provisioned'; Save-LabJournal $context $journal
            $result = Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId clean-run
            $text = $result | ConvertTo-Json -Depth 8
            $text | Should -Not -Match 'subscriptionId|ownerToken|githubOwner|adoOrganization'
            $result.status | Should -Be passed
        }

        It 'refuses validation from cleaned or initialized journals even with cached evidence' {
            $context = Get-Az400Context -Definition $script:definition -RunId stale-run
            $journal = Read-LabJournal $context; Save-LabJournal $context $journal
            { Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId stale-run } | Should -Throw '*current provisioned run*'
            $journal.status='cleaned'; Save-LabJournal $context $journal
            { Invoke-Az400Lab -Operation Validate -Definition $script:definition -RunId stale-run } | Should -Throw '*current provisioned run*'
        }
    }
}
