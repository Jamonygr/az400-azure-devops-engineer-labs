[CmdletBinding()]
param(
    [string]$ConnectionString = $env:ConnectionStrings__Todos,
    [switch]$Apply
)
$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '../../..')).Path
if (-not $Apply) {
    Write-Output 'PREVIEW: restore the local EF tool, verify the SQL Server migration model, then apply pending migrations using the supplied identity. No connection string is displayed.'
    return
}
if ([string]::IsNullOrWhiteSpace($ConnectionString)) { throw 'Supply ConnectionStrings__Todos through a protected environment variable.' }
if ($ConnectionString -notmatch '(?i)Encrypt\s*=\s*(True|Strict|Mandatory)' -or $ConnectionString -match '(?i)TrustServerCertificate\s*=\s*True') {
    throw 'SQL connections must require encryption and validate the server certificate.'
}
$previousConnection = $env:ConnectionStrings__Todos
Push-Location (Join-Path $repoRoot 'samples')
try {
    $env:ConnectionStrings__Todos = $ConnectionString
    dotnet tool restore --configfile NuGet.Config
    if ($LASTEXITCODE -ne 0) { throw 'EF tool restore failed.' }
    dotnet ef migrations has-pending-model-changes --project DevOps.Api --context SqlServerTodoDbContext --configuration Release
    if ($LASTEXITCODE -ne 0) { throw 'Migration model drift detected. Do not deploy the application.' }
    dotnet ef database update --project DevOps.Api --context SqlServerTodoDbContext --configuration Release
    if ($LASTEXITCODE -ne 0) { throw 'Database migration failed. Application deployment must remain blocked.' }
}
finally {
    $env:ConnectionStrings__Todos = $previousConnection
    Pop-Location
}
