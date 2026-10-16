#Requires -Version 7.4
[CmdletBinding()]
param(
    [switch]$Application,
    [switch]$SqlServer,
    [string]$ApplicationImage = 'az400-sample:ci',
    [string]$SqlImage = 'mcr.microsoft.com/mssql/server@sha256:742481d1b1186cccc81220a1eaacef244ca8d0f7d19c8e5c70df8ae541ffbab2',
    [string]$ExpectedRevision = ''
)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
if (-not $Application -and -not $SqlServer) { throw 'Choose -Application, -SqlServer, or both. No container test is silently skipped.' }
docker info --format '{{.OSType}}' | Out-Null
$run = [Guid]::NewGuid().ToString('N')
$containers = @()
$previous = @{}
foreach ($key in @('MSSQL_SA_PASSWORD', 'AZ400_SQL_TEST_CONNECTION', 'AppConfiguration__Endpoint', 'APPLICATIONINSIGHTS_CONNECTION_STRING')) {
    $previous[$key] = [Environment]::GetEnvironmentVariable($key)
}
function Get-TestPort([string]$Name, [string]$Port) {
    $state = docker inspect $Name | ConvertFrom-Json
    return [int]$state[0].NetworkSettings.Ports.$Port[0].HostPort
}
try {
    if ($Application) {
        $name = "az400-api-$run"
        $containers += $name
        docker run --detach --rm --name $name --label "az400.test-run=$run" --publish '127.0.0.1::8080' --env ASPNETCORE_ENVIRONMENT=Development --env 'ConnectionStrings__Todos=Data Source=/tmp/todos.db' $ApplicationImage | Out-Null
        $port = Get-TestPort $name '8080/tcp'
        $base = "http://127.0.0.1:$port"
        $ready = $false
        for ($attempt = 0; $attempt -lt 30; $attempt++) {
            try { $ready = (Invoke-WebRequest "$base/health/ready" -TimeoutSec 2).StatusCode -eq 200 } catch { $ready = $false }
            if ($ready) { break }
            Start-Sleep -Seconds 2
        }
        if (-not $ready) { throw 'Application container did not become ready.' }
        $uid = docker exec $name id -u
        if ($uid.Trim() -notmatch '^\d+$' -or [int]$uid -eq 0) { throw 'Application container must run as a non-root numeric UID.' }
        $version = Invoke-RestMethod "$base/version"
        if ($ExpectedRevision -and $version.revision -cne $ExpectedRevision) { throw 'Container revision differs from the tested immutable release.' }
        $created = Invoke-WebRequest "$base/todos" -Method Post -ContentType application/json -Body '{"title":"container smoke"}'
        if ($created.StatusCode -ne 201) { throw 'Container todo create failed.' }
        $todo = $created.Content | ConvertFrom-Json
        if ($todo.title -ne 'container smoke') { throw 'Container response did not retain the todo.' }
        Invoke-WebRequest "$base/todos/$($todo.id)/complete" -Method Put | Out-Null
        if (-not (Invoke-RestMethod "$base/todos/$($todo.id)").completed) { throw 'Container update/read round trip failed.' }
        $invalid = Invoke-WebRequest "$base/todos" -Method Post -ContentType application/json -Body '{"title":" "}' -SkipHttpErrorCheck
        if ($invalid.StatusCode -ne 400) { throw 'Container negative title assertion failed.' }
        Write-Output "PASS application container: non-root UID $($uid.Trim()), readiness, immutable revision, todo round trip and rejected input."
    }
    if ($SqlServer) {
        $name = "az400-sql-$run"
        $containers += $name
        $env:MSSQL_SA_PASSWORD = 'Az4!' + [Guid]::NewGuid().ToString('N')
        if ($env:GITHUB_ACTIONS -eq 'true') { Write-Output "::add-mask::$env:MSSQL_SA_PASSWORD" }
        docker run --detach --rm --name $name --label "az400.test-run=$run" --memory 3g --publish '127.0.0.1::1433' --env ACCEPT_EULA=Y --env MSSQL_PID=Developer --env MSSQL_MEMORY_LIMIT_MB=2048 --env MSSQL_SA_PASSWORD $SqlImage | Out-Null
        $ready = $false
        for ($attempt = 0; $attempt -lt 40; $attempt++) {
            $logs = docker logs $name 2>&1 | Out-String
            if ($logs -match 'SQL Server is now ready for client connections') { $ready = $true; break }
            Start-Sleep -Seconds 3
        }
        if (-not $ready) { throw 'Local SQL Server container did not become ready.' }
        $port = Get-TestPort $name '1433/tcp'
        # Self-signed TLS is accepted only for this loopback-bound disposable SQL fixture.
        $env:AZ400_SQL_TEST_CONNECTION = "Server=127.0.0.1,$port;Database=master;User ID=sa;Password=$env:MSSQL_SA_PASSWORD;Encrypt=True;TrustServerCertificate=True;Connect Timeout=10"
        $env:AppConfiguration__Endpoint = ''
        $env:APPLICATIONINSIGHTS_CONNECTION_STRING = ''
        $solution = Join-Path $PSScriptRoot 'DevOps.Sql.slnx'
        dotnet restore $solution --locked-mode
        dotnet test $solution --configuration Release --no-restore --logger trx --results-directory (Join-Path $PSScriptRoot 'DevOps.Sql.Tests/TestResults')
        Write-Output 'PASS SQL fixture: actual restricted database users, idempotent migration, ready/unmigrated/history-denied/data-denied cases. Azure identity federation and Azure SQL networking remain unverified.'
    }
}
finally {
    try {
    foreach ($name in $containers) {
        [string]$exists = docker ps --all --filter "name=^/$name$" --format '{{.Names}}'
        if ($exists.Trim() -eq $name) {
            $state = docker inspect $name | ConvertFrom-Json
            if ($state[0].Config.Labels.'az400.test-run' -cne $run) { throw 'Container cleanup ownership marker changed.' }
            docker rm --force $name | Out-Null
        }
    }
    }
    finally { foreach ($key in $previous.Keys) { [Environment]::SetEnvironmentVariable($key, $previous[$key]) } }
}
