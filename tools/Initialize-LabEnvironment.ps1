#Requires -Version 7.4
[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$required = @('git', 'gh', 'az', 'dotnet', 'python', 'pwsh')
$checks = foreach ($tool in $required) {
    $command = Get-Command $tool -ErrorAction SilentlyContinue
    [pscustomobject]@{ tool = $tool; available = [bool]$command; path = $(if ($command) { $command.Source } else { '' }) }
}
$checks | Format-Table -AutoSize | Out-Host
Write-Information 'Readiness is read-only. It does not authenticate, install tools, register providers, or deploy.' -InformationAction Continue
Write-Information 'Also verify a .NET 10 SDK (dotnet --list-sdks), az bicep version, az extension show -n azure-devops, and Docker for container labs.' -InformationAction Continue
if ($checks | Where-Object { -not $_.available }) { throw 'Install the missing tools using docs/prerequisites.md.' }
$sdks = & dotnet --list-sdks
if (-not ($sdks -match '^10\.0\.4\d\d\s')) {
    Write-Information 'A repository-local SDK may be available: dot-source ./tools/Use-RepositorySdk.ps1 before repeating readiness.' -InformationAction Continue
    throw 'The current PATH does not expose a .NET 10.0.4xx SDK. See global.json and prerequisites.'
}
$pythonVersion = & python --version
if ($pythonVersion -notmatch '^Python 3\.(1[2-9]|[2-9][0-9])\.') { throw 'Python 3.12 or newer is required on PATH for authoring and docs.' }
