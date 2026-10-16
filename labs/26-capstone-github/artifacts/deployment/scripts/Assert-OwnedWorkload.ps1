#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][guid]$SubscriptionId,
    [Parameter(Mandatory)][ValidatePattern('^[a-zA-Z0-9_.()-]+$')][string]$ResourceGroup,
    [Parameter(Mandatory)][ValidatePattern('^[a-zA-Z0-9-]+$')][string]$RunId,
    [Parameter(Mandatory)][ValidatePattern('^[a-zA-Z0-9-]+$')][string]$AppName,
    [Parameter(Mandatory)][guid]$WorkspaceId
)
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true
$subscription = $SubscriptionId.ToString()
$account = az account show --output json | ConvertFrom-Json
if ($account.id -ine $subscription) { throw 'Release subscription differs from the explicit journal context.' }
$group = az group show --subscription $subscription --name $ResourceGroup --output json | ConvertFrom-Json
if ($group.tags.'az400-run' -cne $RunId -or $group.tags.managedBy -cne 'az400-lifecycle') { throw 'Resource-group ownership tags differ from the journal.' }
$app = az webapp show --subscription $subscription --resource-group $ResourceGroup --name $AppName --output json | ConvertFrom-Json
$expected = "/subscriptions/$subscription/resourceGroups/$ResourceGroup/providers/Microsoft.Web/sites/$AppName"
if ($app.id -ine $expected -or $app.tags.'az400-run' -cne $RunId) { throw 'Application is outside the exact owned workload.' }
$workspaces = @(az monitor log-analytics workspace list --subscription $subscription --resource-group $ResourceGroup --output json | ConvertFrom-Json)
$ownedWorkspaces = @($workspaces | Where-Object { $_.customerId -ieq $WorkspaceId.ToString() -and $_.tags.'az400-run' -ceq $RunId })
if ($ownedWorkspaces.Count -ne 1) { throw 'Telemetry workspace is outside the exact owned workload.' }
Write-Output 'PASS read-only workload context: subscription, journal resource group, exact application ID and owned telemetry workspace.'
