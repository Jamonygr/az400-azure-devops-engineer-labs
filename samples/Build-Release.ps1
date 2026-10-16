#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidatePattern('^[a-fA-F0-9]{40}$')][string]$Revision,
    [string]$OutputPath = 'publish',
    [ValidateSet('Release', 'Debug')][string]$Configuration = 'Release',
    [switch]$SkipTests
)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$output = [IO.Path]::GetFullPath($OutputPath, (Get-Location).Path)
if (Test-Path -LiteralPath $output) { throw 'Choose a new release output directory; immutable artifacts are never overwritten.' }
[void][IO.Directory]::CreateDirectory($output)
Push-Location $repoRoot
try {
    dotnet restore samples/DevOps.slnx --locked-mode
    if (-not $SkipTests) {
        $results = Join-Path $output 'test-results'
        dotnet test samples/DevOps.slnx --configuration $Configuration --no-restore --settings samples/coverage.runsettings --collect:'XPlat Code Coverage' --logger trx --results-directory $results
        $coverage = @(Get-ChildItem $results -Recurse -Filter coverage.cobertura.xml)
        if (-not $coverage.Count -or @($coverage | Get-FileHash -Algorithm SHA256 | Select-Object -ExpandProperty Hash -Unique).Count -ne 1) { throw 'Expected one unique application coverage report; TRX attachment copies must match.' }
        & (Join-Path $PSScriptRoot 'Test-Coverage.ps1') -CoverageFile $coverage[0].FullName
    }
    dotnet publish samples/DevOps.Api/DevOps.Api.csproj --configuration $Configuration --no-restore --output (Join-Path $output 'app') /p:UseAppHost=false "/p:SourceRevisionId=$Revision"
    Push-Location $PSScriptRoot
    try {
        dotnet tool restore --configfile NuGet.Config
        dotnet ef migrations has-pending-model-changes --project DevOps.Api --context SqlServerTodoDbContext --configuration $Configuration
        dotnet ef migrations script --idempotent --project DevOps.Api --context SqlServerTodoDbContext --configuration $Configuration --output (Join-Path $output 'migration.sql')
        dotnet ef migrations bundle --project DevOps.Api --context SqlServerTodoDbContext --configuration $Configuration --target-runtime linux-x64 --self-contained --output (Join-Path $output 'efbundle')
        Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'DevOps.Api/appsettings.json') -Destination (Join-Path $output 'appsettings.json')
    }
    finally { Pop-Location }
    $files = [ordered]@{}
    foreach ($file in Get-ChildItem $output -Recurse -File | Sort-Object FullName) {
        $relative = [IO.Path]::GetRelativePath($output, $file.FullName).Replace('\', '/')
        $files[$relative] = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    }
    $manifest = [ordered]@{ schemaVersion = '2.0.0'; revision = $Revision.ToLowerInvariant(); runtime = 'linux-x64'; configuration = $Configuration; files = $files }
    $manifest | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $output 'release-manifest.json') -Encoding utf8
    Write-Output "Built an immutable application, idempotent SQL script, migration bundle and hash manifest for $Revision."
}
finally { Pop-Location }
