#requires -Version 7.4
BeforeAll {
    $script:CourseRoot = Split-Path -Parent $PSScriptRoot
    $script:CourseLabs = (Get-Content (Join-Path $script:CourseRoot 'curriculum/lab-content.yml') -Raw | ConvertFrom-Json).labs
    $script:ActualAzureCli = (Get-Command az -CommandType Application | Select-Object -First 1).Source
    # These provider doubles are intentionally fail-closed. Git, Python, .NET
    # compilation/tests, the worker fixture and Bicep compilation remain real.
    function global:gh {
        $line = @($args) -join ' '
        if ($line -ne "api repos/$($global:Az400SequenceState.repo)/actions/runners") { throw "Unexpected GitHub operation in offline sequence: $line" }
        $global:LASTEXITCODE = 0
        return '{"total_count":0,"runners":[]}'
    }
    function global:az {
        $line = @($args) -join ' '
        $global:LASTEXITCODE = 0
        if ($line -match '^bicep build ') {
            & $global:Az400SequenceState.actualAzureCli @args
            if ($LASTEXITCODE -ne 0) { throw 'Real offline Bicep compilation failed.' }
            return
        }
        if ($line -notmatch [regex]::Escape("--organization $($global:Az400SequenceState.organization)")) { throw 'Sequence CLI omitted its exact organization scope.' }
        if ($line -match '^pipelines pool list ') { return '[{"id":1,"name":"Hosted fixture","isHosted":true}]' }
        if ($line -notmatch [regex]::Escape("--project $($global:Az400SequenceState.project)")) { throw 'Sequence CLI omitted its exact project scope.' }
        if ($line -match '^devops wiki create ') { $global:Az400SequenceState.wikiId = 'offline-owned-wiki'; return '{"id":"offline-owned-wiki"}' }
        if ($line -match '^devops wiki page create ') {
            $index = [array]::IndexOf($args, '--file-path')
            $global:Az400SequenceState.wikiContent = Get-Content -LiteralPath $args[$index + 1] -Raw
            return (@{ page = @{ path = '/Release handoff'; content = $global:Az400SequenceState.wikiContent } } | ConvertTo-Json)
        }
        if ($line -match '^devops wiki page show ' -and $global:Az400SequenceState.wikiId) {
            return (@{ page = @{ path = '/Release handoff'; content = $global:Az400SequenceState.wikiContent } } | ConvertTo-Json)
        }
        if ($line -match '^pipelines variable-group create ' -and $line -match '--authorize false') {
            $global:Az400SequenceState.groupCreated = $true
            return '{"id":42}'
        }
        if ($line -match '^pipelines variable-group show ' -and $global:Az400SequenceState.groupCreated) {
            return '{"id":42,"authorized":false,"variables":{"BuildConfiguration":{"value":"Release"},"TargetFramework":{"value":"net10.0"}}}'
        }
        throw "Unexpected Azure operation in offline sequence: $line"
    }
}
Describe 'Whole checkpoint sequence <LabId> with explicit provider doubles' -ForEach @(
    @{ LabId = '03' }, @{ LabId = '11' }, @{ LabId = '12' }, @{ LabId = '18' }, @{ LabId = '19' }
) {
    BeforeEach {
        Mock Invoke-WebRequest { throw 'Unexpected network operation in offline sequence.' }
        Mock Invoke-WebRequest { [pscustomobject]@{StatusCode=200} } -ParameterFilter { $Uri -in @('https://api.github.com/','https://dev.azure.com/') -and $Method -eq 'Head' -and $TimeoutSec -eq 10 }
    }
    It 'executes all five tasks, retains final invariants, rejects the named fault and validates the repair' {
        $RepoRoot = $script:CourseRoot
        $lab = $script:CourseLabs | Where-Object id -eq $LabId
        $LabRoot = Join-Path $RepoRoot "labs/$($lab.slug)"
        $RunId = "sequence-$LabId"
        $WorkRoot = Join-Path $TestDrive $RunId
        New-Item -ItemType Directory $WorkRoot | Out-Null
        $GhRepo = 'offline/owned-repository'
        $AdoOrganization = 'https://dev.azure.com/offline-fixture'
        $AdoProject = "owned-$RunId"
        $Location = 'westeurope'
        $global:Az400SequenceState = @{
            repo = $GhRepo; organization = $AdoOrganization; project = $AdoProject
            actualAzureCli = $script:ActualAzureCli; groupCreated = $false
        }
        foreach ($checkpoint in $lab.checkpoints) { . ([scriptblock]::Create($checkpoint.commands)) }
        foreach ($checkpoint in $lab.checkpoints) { . ([scriptblock]::Create($checkpoint.validate)) }
        . ([scriptblock]::Create($lab.breakFix.assert))
        . ([scriptblock]::Create($lab.breakFix.trigger))
        { . ([scriptblock]::Create($lab.breakFix.assert)) } | Should -Throw "*$($lab.breakFix.expectedFailure)*"
        . ([scriptblock]::Create($lab.breakFix.repair))
        . ([scriptblock]::Create($lab.breakFix.assert))
        foreach ($checkpoint in $lab.checkpoints) { . ([scriptblock]::Create($checkpoint.validate)) }
    }
}
AfterAll {
    Remove-Item Function:global:gh, Function:global:az -ErrorAction SilentlyContinue
    Remove-Variable Az400SequenceState -Scope Global -ErrorAction SilentlyContinue
}
