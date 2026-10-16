#Requires -Version 7.4
[CmdletBinding()]
param([Parameter(Mandatory)][string]$ReleasePath, [Parameter(Mandatory)][string]$ExpectedRevision)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
$connection = $env:ConnectionStrings__Todos
if ([string]::IsNullOrWhiteSpace($connection) -or $connection -notmatch '(?i)Authentication\s*=\s*Active Directory Default' -or $connection -notmatch '(?i)Encrypt\s*=\s*(True|Strict|Mandatory)' -or $connection -match '(?i)TrustServerCertificate\s*=\s*True') {
    throw 'Live migration requires a certificate-validated encrypted Entra Default connection supplied through a protected environment variable.'
}
$release = (Resolve-Path -LiteralPath $ReleasePath).Path
python (Join-Path $PSScriptRoot 'release_artifact.py') --platform local --directory $release --output $release --expected-revision $ExpectedRevision
if (-not $IsLinux) { throw 'The reviewed self-contained migration bundle requires a Linux x64 private agent.' }
$bundle = Join-Path $release 'efbundle'
chmod +x $bundle
# Credentials remain in the process environment; never append --connection to logs.
Push-Location $release
try { & $bundle }
finally { Pop-Location }
if ($LASTEXITCODE -ne 0) { throw 'Migration failed. Keep application promotion blocked; preserve the current schema and inspect the release evidence.' }
Write-Output 'Reviewed migration bundle applied successfully. Repeating it applies only pending migrations; rollback never executes a Down migration.'
