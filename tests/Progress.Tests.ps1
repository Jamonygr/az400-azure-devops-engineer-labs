BeforeAll {
    $script:progressTool = Join-Path $PSScriptRoot '../tools/Update-LearnerProgress.ps1'
}

Describe 'CLI progress evidence and privacy' {
    BeforeEach {
        $script:validationFile = Join-Path $TestDrive 'validation.json'
        $script:cleanupFile = Join-Path $TestDrive 'cleanup.json'
        $script:progressFile = Join-Path $TestDrive ([Guid]::NewGuid().ToString('N') + '.json')
        $script:validation = @{schemaVersion='2.0.0';labId='01';runId='demo-run';status='passed';breakFix='passed';integration='not-required';checkpoints=@(1..5|ForEach-Object { @{id="CP$_";status='passed'} })}
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

    It 'refuses old validation without verified break/fix evidence' {
        $script:validation.breakFix='missing'
        $script:validation | ConvertTo-Json -Depth 6 | Set-Content $script:validationFile
        { & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*v2 evidence*'
    }

    It 'refuses a capstone completed only through CI' {
        $script:validation.labId='26'; $script:validation.integration='missing'; $script:cleanup.labId='26'
        $script:validation | ConvertTo-Json -Depth 6 | Set-Content $script:validationFile
        $script:cleanup | ConvertTo-Json -Depth 6 | Set-Content $script:cleanupFile
        { & $script:progressTool -LabId 26 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile } | Should -Throw '*CI alone is partial*'
    }

    It 'migrates legacy completion and scores while recording newly verified results' {
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -AssessmentScore 88 -ProgressPath $script:progressFile
        $data=Get-Content $script:progressFile -Raw | ConvertFrom-Json -AsHashtable
        $data.schemaVersion='1.0.0'
        foreach($entry in $data.labs.Values){ foreach($key in @('assessmentRevision','breakFixPassed','legacyCompletion','evidenceSource')) { $entry.Remove($key) } }
        $data.labs['LAB-02'].status='complete'; $data.labs['LAB-02'].validationPassed=$true; $data.labs['LAB-02'].cleanupPassed=$true; $data.labs['LAB-02'].assessmentScore=90
        $data | ConvertTo-Json -Depth 8 | Set-Content $script:progressFile
        & $script:progressTool -LabId 01 -ValidationPath $script:validationFile -CleanupPath $script:cleanupFile -ProgressPath $script:progressFile
        $migrated=Get-Content $script:progressFile -Raw | ConvertFrom-Json
        $migrated.labs.'LAB-01'.status | Should -Be complete
        $migrated.labs.'LAB-01'.assessmentScore | Should -Be 88
        $migrated.labs.'LAB-02'.status | Should -Be 'needs-review'
        $migrated.labs.'LAB-02'.legacyCompletion | Should -BeTrue
        $migrated.labs.'LAB-02'.assessmentScore | Should -Be 90
    }
}
