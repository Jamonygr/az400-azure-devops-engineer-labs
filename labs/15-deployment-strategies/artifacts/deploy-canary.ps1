[CmdletBinding()]
param(
    [Parameter(Mandatory)][string]$ResourceGroup,
    [Parameter(Mandatory)][string]$AppName,
    [string]$SubscriptionId = $env:AZ400_SUBSCRIPTION_ID,
    [ValidatePattern('^[a-z0-9-]+$')][string]$Slot = 'staging',
    [switch]$Apply
)
$ErrorActionPreference = 'Stop'
if (-not $Apply) {
    Write-Output "PREVIEW: verify the local ownership journal and subscription $SubscriptionId, check /health/ready for $AppName/$Slot, and swap the slot to production in resource group $ResourceGroup."
    return
}
if ($SubscriptionId -notmatch '^[0-9a-fA-F-]{36}$') { throw 'Apply requires an explicit SubscriptionId GUID or AZ400_SUBSCRIPTION_ID.' }
if ($ResourceGroup -notmatch '^rg-az400-15-(?<run>[a-z][a-z0-9-]{2,23})$') { throw 'Ownership refusal: this script operates only on a lab 15 run resource group.' }
$runId = $Matches.run
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '../../..')).Path
$workRoot = Join-Path $repoRoot ".state/15/$runId"
$journalFile = Join-Path $workRoot 'run.json'
if (-not (Test-Path -LiteralPath $journalFile)) { throw 'Ownership refusal: no local run journal exists.' }
$journal = Get-Content -LiteralPath $journalFile -Raw | ConvertFrom-Json -AsHashtable
if ($journal.context.subscriptionId -cne $SubscriptionId -or $journal.context.resourceGroup -cne $ResourceGroup) { throw 'Context mismatch: use the original subscription and run resource group.' }
$recordedApp = Get-Content -LiteralPath (Join-Path $workRoot 'app-name.txt') -Raw
if ($recordedApp.Trim() -cne $AppName) { throw 'Ownership refusal: the application is not the recorded lab application.' }
$ownedGroup = @($journal.objects | Where-Object { $_.kind -eq 'azure-resource-group' -and $_.name -ceq $ResourceGroup })
if ($ownedGroup.Count -ne 1) { throw 'Ownership refusal: the resource group must have one exact ownership record.' }
$remoteJson = az group show --subscription $SubscriptionId --name $ResourceGroup --output json
if ($LASTEXITCODE -ne 0) { throw 'Could not verify remote resource group ownership.' }
$remote = $remoteJson | ConvertFrom-Json -AsHashtable
if ($remote.id -cne $ownedGroup[0].id -or $remote.tags['az400-owner'] -cne $journal.ownerToken) { throw 'Ownership refusal: remote ID or ownership marker does not match.' }
$hostName = az webapp show --subscription $SubscriptionId --resource-group $ResourceGroup --name $AppName --slot $Slot --query defaultHostName --output tsv
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($hostName)) { throw 'Managed staging slot was not found in the selected Azure context.' }
$response = Invoke-WebRequest -Uri "https://$hostName/health/ready" -TimeoutSec 30
if ($response.StatusCode -ne 200) { throw 'Staging readiness failed; production remains unchanged.' }
az webapp deployment slot swap --subscription $SubscriptionId --resource-group $ResourceGroup --name $AppName --slot $Slot --target-slot production --output none
if ($LASTEXITCODE -ne 0) { throw 'Slot swap failed; inspect the slot operation before retrying.' }
Write-Output 'Swap completed. Verify production readiness and the release revision. Reverse the swap if the error-budget gate fails.'
