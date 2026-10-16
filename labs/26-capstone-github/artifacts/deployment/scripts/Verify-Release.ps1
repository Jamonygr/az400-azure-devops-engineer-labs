#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidatePattern('^https://[a-zA-Z0-9.-]+(?::443)?/?$')][string]$AppUrl,
    [Parameter(Mandatory)][ValidatePattern('^[a-f0-9]{40}$')][string]$ExpectedRevision,
    [Parameter(Mandatory)][guid]$WorkspaceId,
    [string]$EvidencePath = '.state/release-evidence.json',
    [ValidateRange(1, 10)][int]$ObservationMinutes = 5,
    [ValidateRange(0, 1)][double]$MaximumFailureRate = 0.02,
    [ValidateRange(1, 60000)][double]$MaximumP95Ms = 1000
)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
$start = [DateTime]::UtcNow
$base = $AppUrl.TrimEnd('/')
$headers = @{ 'X-Az400-Release' = $ExpectedRevision }
$report = [ordered]@{ schemaVersion = '2.0.0'; status = 'failed'; revision = $ExpectedRevision; appUrl = $base; startedAt = $start.ToString('o'); healthPassed = $false; telemetryPassed = $false; reason = 'Release gates have not completed.' }
try {
    $ready = $false
    for ($attempt = 0; $attempt -lt 20; $attempt++) {
        try {
            $response = Invoke-WebRequest "$base/health/ready" -Headers $headers -TimeoutSec 15
            $ready = $response.StatusCode -eq 200
        } catch { $ready = $false }
        if ($ready) { break }
        Start-Sleep -Seconds 6
    }
    if (-not $ready) { throw 'Readiness did not become healthy within the bounded warmup period.' }
    $version = Invoke-RestMethod "$base/version" -Headers $headers -TimeoutSec 15
    if ($version.revision -cne $ExpectedRevision) { throw 'The deployed assembly revision differs from the selected immutable artifact.' }
    for ($request = 0; $request -lt 10; $request++) {
        Invoke-WebRequest "$base/todos" -Headers $headers -TimeoutSec 15 | Out-Null
    }
    $report.healthPassed = $true
    $cutoff = $start.ToString('o')
    $query = "AppRequests | where TimeGenerated >= datetime($cutoff) | where Url startswith '$base/' and tostring(Properties['az400.release']) == '$ExpectedRevision' | summarize Requests=count(),Failures=countif(Success == false),P95Ms=percentile(DurationMs,95) | extend FailureRate=iff(Requests > 0,todouble(Failures)/Requests,1.0)"
    $deadline = [DateTime]::UtcNow.AddMinutes($ObservationMinutes)
    do {
        $raw = az monitor log-analytics query --workspace $WorkspaceId.ToString() --analytics-query $query --output json
        $rows = @($raw | ConvertFrom-Json)
        if ($rows.Count -and [long]$rows[0].Requests -ge 10) {
            $report.telemetry = @{ requests = [long]$rows[0].Requests; failureRate = [double]$rows[0].FailureRate; p95Ms = [double]$rows[0].P95Ms }
            if ($report.telemetry.failureRate -gt $MaximumFailureRate -or $report.telemetry.p95Ms -gt $MaximumP95Ms) { throw 'Observed release requests violated the error or latency threshold. Keep the failed evidence and execute the protected rollback lane.' }
            $report.telemetryPassed = $true
            break
        }
        Start-Sleep -Seconds 15
    } while ([DateTime]::UtcNow -lt $deadline)
    if (-not $report.telemetryPassed) { throw 'No sufficient telemetry arrived. This release remains unverified; absence of telemetry is not a passing gate.' }
    $report.status = 'passed'
    $report.reason = 'Immutable revision, readiness, request telemetry, failure rate and latency verified.'
}
catch {
    $report.reason = $_.Exception.Message
    throw
}
finally {
    $report.completedAt = [DateTime]::UtcNow.ToString('o')
    $path = [IO.Path]::GetFullPath($EvidencePath)
    [void][IO.Directory]::CreateDirectory((Split-Path $path))
    $report | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $path -Encoding utf8
}
