#Requires -Version 7.4
# Dot-source this generated script after provisioning an owned run.
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidatePattern('^[a-z][a-z0-9-]{2,23}$')][string]$RunId,
    [string]$GithubOwner = $env:AZ400_GITHUB_OWNER,
    [string]$AdoOrganization = $env:AZ400_ADO_ORGANIZATION,
    [string]$SubscriptionId = $env:AZ400_SUBSCRIPTION_ID,
    [string]$Location = 'westeurope'
)
$ErrorActionPreference = 'Stop'
$root = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../..'))
Import-Module (Join-Path $root 'tools/Az400.Lifecycle.psm1') -Force
$definition = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../lab.yml'))
$context = Get-Az400Context -Definition $definition @PSBoundParameters
if (-not (Test-Path -LiteralPath (Join-Path $context.workRoot 'run.json'))) { throw 'Provision the owned run first with Setup.ps1 -ProvisionOnly -Execute.' }
$RepoRoot = $context.repoRoot; $LabRoot = $context.labRoot; $WorkRoot = $context.workRoot
$GhRepo = $context.ghRepo; $AdoProject = $context.adoProject; $ResourceGroup = $context.resourceGroup
Write-Verbose ('Owned run context: {0}; {1}; {2}; {3}; {4}; {5}' -f $RepoRoot,$LabRoot,$WorkRoot,$GhRepo,$AdoProject,$ResourceGroup)
