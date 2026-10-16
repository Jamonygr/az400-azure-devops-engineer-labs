BeforeAll {
    $script:progressTool = Join-Path $PSScriptRoot '../tools/Update-LearnerProgress.ps1'
}

Describe 'CLI progress evidence and privacy' {
    BeforeEach {
        $script:validationFile = Join-Path $TestDrive 'validation.json'
        $script:cleanupFile = Join-Path $TestDrive 'cleanup.json'
        $script:progressFile = Join-Path $TestDrive ([Guid]::NewGuid().ToString('N') + '.json')
        $script:validation = @{labId='01';runId='demo-run';status='passed';checkpoints=@(1..5|ForEach-Object { @{id="CP$_";status='passed'} })}
        $script:cleanup = @{labId='01';runId='demo-run';status='passed';residual=@()}
        $script:validation | ConvertTo-Json -Depth 6 | Set-Content $script:validationFile
        $script:cleanup | ConvertTo-Json -Depth 6 | Set-Content $script:cleanupFile
    }

    It 'records all 28 labs without platform identity fields' {
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -AssessmentScore 86 -ProgressPath $script:progressFile
        $data = Get-Content $script:progressFile -Raw | ConvertFrom-Json -AsHashtable
        $data.labs.Count | Should -Be 28
        $data.labs['LAB-01'].status | Should -Be complete
        $data.labs['LAB-01'].assessmentScore | Should -Be 86
        (Get-Content $script:progressFile -Raw) | Should -Not -Match 'runId|ownerToken|subscriptionId|tenantId|githubOwner'
    }

    It 'refuses partial validation' {
        $script:validation.status='partial'
        $script:validation | ConvertTo-Json -Depth 6 | Set-Content $script:validationFile
        { & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*passing validation*'
    }

    It 'refuses duplicate checkpoint IDs masquerading as five passes' {
        $script:validation.checkpoints[1].id='CP1'
        $script:validation | ConvertTo-Json -Depth 6 | Set-Content $script:validationFile
        { & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*distinct checkpoint*'
    }

    It 'refuses cleanup from another run' {
        $script:cleanup.runId='different-run'
        $script:cleanup | ConvertTo-Json -Depth 6 | Set-Content $script:cleanupFile
        { & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*same lab and run*'
    }

    It 'refuses to preserve hidden identity fields in an existing export' {
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile
        $data = Get-Content $script:progressFile -Raw | ConvertFrom-Json -AsHashtable
        $data.labs['LAB-01'].tenantId='private-identifier'
        $data | ConvertTo-Json -Depth 8 | Set-Content $script:progressFile
        { & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*unexpected lab fields*'
    }

    It 'updates a valid existing export without schema drift' {
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -AssessmentScore 90 -ProgressPath $script:progressFile
        (Get-Content $script:progressFile -Raw | ConvertFrom-Json).labs.'LAB-01'.assessmentScore | Should -Be 90
    }
}
