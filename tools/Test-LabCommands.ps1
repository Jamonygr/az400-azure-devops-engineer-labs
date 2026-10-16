#Requires -Version 7.4
[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$source = Get-Content (Join-Path $PSScriptRoot '../curriculum/lab-content.yml') -Raw | ConvertFrom-Json
$failures = @()
$checked = 0
foreach ($lab in $source.labs) {
    foreach ($checkpoint in $lab.checkpoints) {
        foreach ($field in @('commands','positive','negative','validate')) {
            $tokens = $null; $parseErrors = $null
            [void][Management.Automation.Language.Parser]::ParseInput($checkpoint.$field, [ref]$tokens, [ref]$parseErrors)
            foreach ($problem in $parseErrors) { $failures += "$($lab.id)/$($checkpoint.id)/${field}: $($problem.Message)" }
            $checked++
        }
    }
    foreach ($field in @('trigger','diagnose','repair','assert')) {
        $tokens = $null; $parseErrors = $null
        [void][Management.Automation.Language.Parser]::ParseInput($lab.breakFix.$field, [ref]$tokens, [ref]$parseErrors)
        foreach ($problem in $parseErrors) { $failures += "$($lab.id)/breakFix/${field}: $($problem.Message)" }
        $checked++
    }
    if ($lab.PSObject.Properties.Name -contains 'integration') {
        foreach ($field in @('commands','validate')) {
            $tokens = $null; $parseErrors = $null
            [void][Management.Automation.Language.Parser]::ParseInput($lab.integration.$field, [ref]$tokens, [ref]$parseErrors)
            foreach ($problem in $parseErrors) { $failures += "$($lab.id)/integration/${field}: $($problem.Message)" }
            $checked++
        }
    }
}
if ($failures.Count) { throw ($failures -join "`n") }
Write-Information "Parsed $checked checkpoint command/assertion blocks without executing external operations." -InformationAction Continue
