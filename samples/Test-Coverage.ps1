[CmdletBinding()]
param(
    [Parameter(Mandatory)][string]$CoverageFile,
    [ValidateRange(0, 1)][double]$MinimumLineRate = 0.65
)
$ErrorActionPreference = 'Stop'
[xml]$coverage = Get-Content -LiteralPath $CoverageFile -Raw
$lineRate = [double]::Parse($coverage.coverage.'line-rate', [Globalization.CultureInfo]::InvariantCulture)
if ($lineRate -lt $MinimumLineRate) { throw "Line coverage $lineRate is below the required $MinimumLineRate." }
Write-Output "Line coverage $lineRate meets the required $MinimumLineRate."
