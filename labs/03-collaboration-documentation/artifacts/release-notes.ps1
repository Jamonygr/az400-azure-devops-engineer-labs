[CmdletBinding()]
param(
    [ValidatePattern('^[A-Za-z0-9_./~^-]+$')][string]$FromRef = 'HEAD~1',
    [ValidatePattern('^[A-Za-z0-9_./~^-]+$')][string]$ToRef = 'HEAD'
)
$ErrorActionPreference = 'Stop'
git rev-parse --verify "$FromRef^{commit}" *> $null
if ($LASTEXITCODE -ne 0) { throw 'FromRef must resolve to an existing commit.' }
git rev-parse --verify "$ToRef^{commit}" *> $null
if ($LASTEXITCODE -ne 0) { throw 'ToRef must resolve to an existing commit.' }
Write-Output "# Changes from $FromRef to $ToRef"
git log --no-merges --format='- %s (%h)' "$FromRef..$ToRef" --
if ($LASTEXITCODE -ne 0) { throw 'Git history could not be read.' }
