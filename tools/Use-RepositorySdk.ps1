#Requires -Version 7.4
# Dot-source to use an SDK deliberately installed in this checkout's ignored cache.
[CmdletBinding()]
param()
$sdk = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../.cache/dotnet'))
$executable = Join-Path $sdk $(if ($IsWindows) { 'dotnet.exe' } else { 'dotnet' })
if (-not (Test-Path -LiteralPath $executable)) { throw 'No repository-local SDK exists. Install the version in global.json using official .NET instructions.' }
$env:PATH = $sdk + [IO.Path]::PathSeparator + $env:PATH
$env:DOTNET_ROOT = $sdk
Write-Information 'Using the repository-local SDK for this PowerShell process only.' -InformationAction Continue
