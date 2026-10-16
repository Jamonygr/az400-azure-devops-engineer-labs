# Protected immutable delivery

The default package activates only CI. Complete all prerequisites and explicitly activate the release definition with the packaging helper before pushing it to the owned sandbox. These artifacts are checked offline; no Azure deployment, federation exchange, Azure SQL network path, or production telemetry ingestion is claimed by repository CI.

## One build, one artifact

CI runs `samples/Build-Release.ps1` to create `todo-api`: `app/`, a self-contained Linux x64 `efbundle`, an idempotent SQL review script, and `release-manifest.json` containing exact SHA256 hashes and the source revision. Deployment selects a successful CI run for an exact main-branch commit, downloads that artifact, checks provenance and hashes, and promotes those bytes without rebuilding. GitHub additionally verifies its platform archive digest. Azure DevOps uses its authenticated artifact download and the inner hash manifest; this is integrity checking and run correlation, not a cryptographic signature or external attestation.

## Prerequisites and context

- A reachable Entra-enabled Azure SQL database and an owned Linux App Service plus Application Insights workspace created from the included templates inside the journal-owned resource group. SQL Server readiness needs SELECT on both `dbo.Todos` and `dbo.__EFMigrationsHistory`; the runtime has INSERT/UPDATE only on Todos, and no schema alteration or history write rights.
- A Linux x64 private runner/agent with private SQL DNS/routing. Do not allow fork pull requests onto it. Register it ephemerally and remove it after one job.
- Separate migration and application deployment identities, with exact environment-subject federation and scoped permissions. The migration principal has reviewed DDL rights; the application deployment principal cannot migrate SQL. Runtime identities are distinct from both.
- Two protected environments: `production-database` and `production`. Configure required reviewers, main-branch controls, and exclusive concurrency through provider resource settings. YAML does not create these checks. Verify plan entitlement first; private GitHub required reviewers may require Enterprise.
- A Log Analytics Reader grant for the verification identity at the specific workspace. Azure CLI needs its `log-analytics` extension installed deliberately on the runner before release. No gate installs an extension or enables a paid product silently.
- Retained successful current and baseline artifacts. Inspect the idempotent SQL script and verify the baseline binary remains compatible with expanded schema. First deployment has no historical baseline; establish one before an upgrade exercise.

GitHub environment variables: `AZURE_MIGRATION_CLIENT_ID` (database environment), `AZURE_CLIENT_ID` (production), `AZURE_TENANT_ID`, `AZURE_SUBSCRIPTION_ID`, `AZURE_RESOURCE_GROUP`, `LAB_RUN_ID`, `AZURE_WEBAPP_NAME`, and `LOG_ANALYTICS_WORKSPACE_ID` (workspace customer GUID). The database environment secret `SQL_MIGRATION_CONNECTION` uses `Authentication=Active Directory Default;Encrypt=True;TrustServerCertificate=False`; do not put a password or learner identifiers in YAML.

Azure DevOps uses explicitly authorized WIF connections `az400-migration-wif` and `az400-app-wif`, the `az400-private` pool, variables `AppUrl`, `LogAnalyticsWorkspaceId`, `AzureSubscriptionId`, `AzureResourceGroup`, `LabRunId`, and `CiDefinitionId` (the exact allowed CI definition ID), and secret variable `SqlMigrationConnection`. Grant the job's `System.AccessToken` read access to the selected CI build/artifact in this project. Keep service connection authorization limited to the release pipeline.

## Activate and dispatch

After reviewing prerequisites, run the course packaging helper with `--activate-release`, review the resulting Git diff, then commit and push the owned sandbox. GitHub activation writes `.github/workflows/release.yml`; Azure DevOps activation writes `azure-pipelines-release.yml`, which must be registered as a separate YAML pipeline. The normal CI definition remains unchanged.

GitHub dispatch inputs use camelCase: `action=deploy`, `artifactRunId=<successful CI run>`, `expectedRevision=<40-character SHA>`, `baselineArtifactRunId=<prior CI run>`, `baselineRevision=<prior SHA>`.

```powershell
gh workflow run release.yml --repo $GhRepo --ref main -f action=deploy -f artifactRunId=$ciRun -f expectedRevision=$sha -f baselineArtifactRunId=$baselineRun -f baselineRevision=$baselineSha
# Reviewed application rollback: select the retained compatible baseline; no Down migration runs.
gh workflow run release.yml --repo $GhRepo --ref main -f action=rollback -f artifactRunId=$ciRun -f expectedRevision=$sha -f baselineArtifactRunId=$baselineRun -f baselineRevision=$baselineSha
```

Azure DevOps parameters have the same five names plus the scoped connection names and `appName`. Queue the registered release definition with `az pipelines run --parameters action=deploy artifactRunId=$ciRun expectedRevision=$sha baselineArtifactRunId=$baselineRun baselineRevision=$baselineSha`. Record the release run ID separately from the artifact's CI run ID.

## Release and recovery gates

Deploy order is verified artifact → protected SQL migration → protected application deployment → assembly revision/readiness → bounded telemetry gate. Migration and app errors stop promotion. Telemetry requires at least ten tagged synthetic requests, failure rate at most 2%, and p95 duration at most 1000 ms; missing/delayed telemetry fails verification after the bounded wait. These training thresholds are configurable only through an explicit reviewed change.

Rollback selects the baseline artifact and skips migration. It redeploys the old compatible binary and repeats the same health/revision/telemetry checks. If expanded schema is incompatible, stop and use the database recovery plan with its owner; a destructive Down migration is never an automatic rollback. A failed telemetry gate is not evidence that an app rollback succeeded.

Release evidence is retained as an artifact and `.state/release-evidence.json`. A passing CI run proves local tests and packaging; a passing release requires actual provider jobs and measured application telemetry. Remove app/SQL/monitoring children through the exact owned resource-group lifecycle, then remove runner registration and audit retained artifacts and soft-delete records. Credentials, connection strings, and evidence stay out of Git.

## Prepare the owned workload

Run these commands only after the course lifecycle has created the capstone resource group and you have explicitly accepted the B1 compute and telemetry costs. Keep the Entra-enabled SQL database prerequisite separate: this template does not adopt or delete an external database. Its firewall, private DNS and migration/runtime users must already be reviewed by the database owner. Prefix, location, database name, learner CIDR and integration subnet are optional parameters; `sqlServerFqdn`, `labRunId` and `labId` are required. `labId` is `26` or `27`.

```powershell
# $SubscriptionId, $ResourceGroup and $RunId come from this lab's ownership journal.
$parameters = @('labId=26', "labRunId=$RunId", "sqlServerFqdn=$SqlServerFqdn", 'sku=B1')
az bicep build --file deployment/templates/main.bicep --outfile .state/capstone-template.json
az deployment group what-if --subscription $SubscriptionId --resource-group $ResourceGroup --template-file deployment/templates/main.bicep --parameters @parameters
# Explicit paid execution: review the what-if, then run only for this owned resource group.
az deployment group create --subscription $SubscriptionId --resource-group $ResourceGroup --name capstone-workload --template-file deployment/templates/main.bicep --parameters @parameters
$outputs = az deployment group show --subscription $SubscriptionId --resource-group $ResourceGroup --name capstone-workload --query properties.outputs -o json | ConvertFrom-Json
$expectedPrefix = "/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup/"
if (-not $outputs.appResourceId.value.StartsWith($expectedPrefix, [StringComparison]::OrdinalIgnoreCase)) { throw 'Application is outside the journal-owned resource group.' }
$AppName = $outputs.appName.value
$AppUrl = $outputs.appUrl.value
$WorkspaceId = $outputs.workspaceCustomerId.value
# Provision narrow SQL runtime grants for appPrincipalId; review and apply deployment/database-identities.sql using the database owner.
```

The standalone `deployment/templates/main.bicep` imports only its adjacent `monitoring.bicep`. Outputs include `appResourceId`, `appName`, `appUrl`, `appPrincipalId`, `workspaceId` (ARM ID), and `workspaceCustomerId` (the customer GUID required by the release telemetry gate). The templates inherit the resource-group ownership tags and record the exact capstone lab/run. B1 avoids a staging-slot prerequisite; choose S1 only when explicitly practicing slots and granting its separate runtime identity SQL access.

The synthetic gate uses the validated `X-Az400-Release` commit header, which the API copies into the server span's `az400.release` attribute. KQL filters that attribute in `AppRequests.Properties`; it does not depend on URL query values, which instrumentation may redact. Headers containing anything except a lowercase 40-character hexadecimal commit are ignored. Keep normal query/header redaction enabled. See [OpenTelemetry configuration](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-configuration) for exporter behavior.

Before application promotion, `Assert-OwnedWorkload.ps1` makes read-only Azure queries and refuses subscription, ownership-marker, exact app resource-ID, or workspace-customer-ID mismatches. Populate the protected context variables from the course journal; grants need Reader access to the owned group in addition to narrow deployment/telemetry rights.
