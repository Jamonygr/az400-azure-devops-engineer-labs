#Requires -Version 7.4
[CmdletBinding()]
param(
    [string]$Python = 'python',
    [string]$OutputPath = '.cache/capstone-package-smoke'
)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
$output = [IO.Path]::GetFullPath($OutputPath, (Get-Location).Path)
if (Test-Path -LiteralPath $output) { throw 'Choose a fresh disposable package-smoke directory.' }
foreach ($platform in @('github', 'azure-devops')) {
    $destination = Join-Path $output $platform
    & $Python (Join-Path $PSScriptRoot 'package_capstone.py') --platform $platform --destination $destination
    Push-Location $destination
    try {
        dotnet restore samples/DevOps.slnx --locked-mode
        dotnet test samples/DevOps.slnx --configuration Release --no-restore
        # The separate SQL suite must compile from the package even without Docker.
        dotnet restore samples/DevOps.Sql.slnx --locked-mode
        dotnet build samples/DevOps.Sql.slnx --configuration Release --no-restore
    }
    finally { Pop-Location }
    Write-Output "PASS $platform learner package: isolated source restore, 15 application tests and SQL suite compilation. No provider calls ran."
}
