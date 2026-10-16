#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidatePattern('^(0[0-9]|1[0-9]|2[0-7])$')][string]$LabId,
    [Parameter(Mandatory)][string]$ValidationPath,
    [Parameter(Mandatory)][string]$CleanupPath,
    [ValidateRange(0,100)][int]$AssessmentScore,
    [string]$ProgressPath = (Join-Path $PSScriptRoot '../.state/progress.json')
)
$ErrorActionPreference = 'Stop'
$validation = Get-Content -LiteralPath $ValidationPath -Raw | ConvertFrom-Json
$cleanup = Get-Content -LiteralPath $CleanupPath -Raw | ConvertFrom-Json
if ($validation.labId -cne $LabId -or $cleanup.labId -cne $LabId -or $validation.runId -cne $cleanup.runId) {
    throw 'Validation and cleanup must belong to the same lab and run.'
}
if ($validation.status -ne 'passed' -or $cleanup.status -ne 'passed' -or @($cleanup.residual).Count -gt 0) {
    throw 'Completion requires passing validation and cleanup without active residual objects.'
}
if (@($validation.checkpoints | Where-Object { $_.status -ne 'passed' }).Count -gt 0 -or @($validation.checkpoints).Count -ne 5) {
    throw 'Every checkpoint must pass.'
}
if ((@($validation.checkpoints.id | Sort-Object -Unique) -join ',') -cne 'CP1,CP2,CP3,CP4,CP5') { throw 'Validation must contain each distinct checkpoint exactly once.' }
if ($LabId -in @('00','26','27') -and $PSBoundParameters.ContainsKey('AssessmentScore')) { throw 'Foundation and capstones are hands-on only.' }
$now = [DateTime]::UtcNow.ToString('o')
if (Test-Path -LiteralPath $ProgressPath) {
    $progress = Get-Content -LiteralPath $ProgressPath -Raw | ConvertFrom-Json -AsHashtable
    if (($progress.Keys | Sort-Object) -join ',' -cne 'exportedAt,labs,schemaVersion' -or $progress.schemaVersion -ne '1.0.0') {
        throw 'Existing progress has an unsupported schema or unexpected fields; it will not be exported.'
    }
    if ($progress.labs.Count -ne 28) { throw 'Existing progress must contain exactly 28 labs.' }
    foreach ($entryId in $progress.labs.Keys) {
        $entry = $progress.labs[$entryId]
        if ($entryId -notmatch '^LAB-(0[0-9]|1[0-9]|2[0-7])$' -or ($entry.Keys | Sort-Object) -join ',' -cne 'assessmentScore,cleanupPassed,status,updatedAt,validationPassed') {
            throw 'Existing progress contains unexpected lab fields; keep identities and credentials out of progress.'
        }
        if ($entry.status -notin @('not-started','in-progress','complete') -or $entry.validationPassed -isnot [bool] -or $entry.cleanupPassed -isnot [bool]) { throw 'Invalid existing progress state.' }
        if ($entry.status -eq 'complete' -and (-not $entry.validationPassed -or -not $entry.cleanupPassed)) { throw 'Invalid completion state in existing progress.' }
        if ($null -ne $entry.assessmentScore -and ($entry.assessmentScore -isnot [long] -and $entry.assessmentScore -isnot [int] -or $entry.assessmentScore -lt 0 -or $entry.assessmentScore -gt 100)) { throw 'Invalid assessment score in existing progress.' }
        if ($entryId -in @('LAB-00','LAB-26','LAB-27') -and $null -ne $entry.assessmentScore) { throw 'Hands-on-only progress cannot carry an assessment score.' }
    }
} else {
    $progress = @{ schemaVersion = '1.0.0'; exportedAt = $now; labs = @{} }
    foreach ($number in 0..27) {
        $progress.labs[('LAB-{0:D2}' -f $number)] = @{status='not-started';validationPassed=$false;cleanupPassed=$false;assessmentScore=$null;updatedAt=$now}
    }
}
$score = $(if ($PSBoundParameters.ContainsKey('AssessmentScore')) { $AssessmentScore } else { $null })
$progress.labs["LAB-$LabId"] = @{status='complete';validationPassed=$true;cleanupPassed=$true;assessmentScore=$score;updatedAt=$now}
$progress.exportedAt = $now
[void][IO.Directory]::CreateDirectory((Split-Path -Parent ([IO.Path]::GetFullPath($ProgressPath))))
$progress | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $ProgressPath -Encoding utf8
Write-Information 'Saved progress with no platform identities, resource IDs, or credentials.' -InformationAction Continue
