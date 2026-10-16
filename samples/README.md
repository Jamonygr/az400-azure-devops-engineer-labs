# One application, two delivery platforms

This small ASP.NET Core .NET 10 API uses SQLite for local exercises and a separately migrated Entra-enabled SQL Server database for cloud releases. It contains synthetic todo data and deliberately leaves HTTP endpoints anonymous to keep the labs focused on delivery. Use an isolated sandbox and restrict ingress or enable App Service authentication before storing anything sensitive.

## Local commands

Run these commands from the repository root with the SDK in `global.json` on PATH:

```powershell
dotnet restore samples/DevOps.slnx --locked-mode
dotnet test samples/DevOps.slnx --configuration Release --no-restore --settings samples/coverage.runsettings --collect:'XPlat Code Coverage' --results-directory TestResults
./samples/Test-Coverage.ps1 -CoverageFile (Get-ChildItem TestResults -Filter coverage.cobertura.xml -Recurse | Select-Object -First 1 -ExpandProperty FullName)
$env:ASPNETCORE_ENVIRONMENT = 'Development'
dotnet run --project samples/DevOps.Api --urls http://localhost:5080
```

In a second terminal:

```powershell
Invoke-RestMethod http://localhost:5080/health/ready
Invoke-RestMethod http://localhost:5080/todos -Method Post -ContentType application/json -Body '{"title":"Verify the release"}'
Invoke-RestMethod http://localhost:5080/todos
Invoke-RestMethod http://localhost:5080/todos/1/complete -Method Put
```

`GET /health/live` reports process availability. `GET /health/ready` verifies database connectivity/schema and returns 503 until SQL migrations are current. `GET /version` includes the assembly version and the immutable source revision embedded at build time through `SourceRevisionId`. A runtime environment variable cannot replace that revision. Create returns 201 and a Location header; invalid/overlong titles return 400; unknown IDs return 404; the disabled `TodoWrites` flag returns 503 for write operations. The 200-character limit is applied after trimming. Read endpoints remain available during a write freeze.

The local database is created only in Development/Testing. Keep it out of Git. Tests use isolated temporary SQLite databases, test negative responses, enforce feature flags, and verify Production does not create its schema. The coverage script enforces a 65% line threshold as a training gate; it is not a claim that coverage establishes correctness.

## SQL Server release lane

Use an existing controlled Azure SQL server/database with a Microsoft Entra administrator and a reachable private route from `az400-private` agents and the application. Supply the workload template's `integrationSubnetId` for an existing subnet delegated to `Microsoft.Web/serverFarms`, with private DNS configured for SQL. Provision the database outside this API; the sample migration creates only the application table. Review `labs/14-ordered-releases-databases/artifacts/database-identities.sql`: create the dedicated migration user first, apply the migration, then grant the API identity SELECT/INSERT/UPDATE on `dbo.Todos` and SELECT on `dbo.__EFMigrationsHistory` for readiness. The runtime identity must not receive DDL rights or write access to migration history.

For the migration identity use a connection such as `Server=tcp:YOUR_SERVER.database.windows.net,1433;Database=Az400Todos;Authentication=Active Directory Default;Encrypt=True;TrustServerCertificate=False;`. Azure CLI authentication provided by the OIDC/WIF job is then available to the SQL client. Store this non-password connection in the protected `SQL_MIGRATION_CONNECTION` environment secret or Azure Pipelines secret variable `SqlConnectionString` so logs do not expose learner infrastructure identifiers.

```powershell
# Preview is always the default.
./labs/14-ordered-releases-databases/artifacts/migrate.ps1
# After authentication and network checks, explicitly apply the tracked SQL migration.
./labs/14-ordered-releases-databases/artifacts/migrate.ps1 -Apply
# Generate an idempotent review artifact without contacting SQL:
Push-Location samples
dotnet tool restore --configfile NuGet.Config
dotnet ef migrations script --idempotent --project DevOps.Api --context SqlServerTodoDbContext --output ../.cache/migration.sql
Pop-Location
```

Expand the schema before deploying new application code. For a breaking change use a second release after old instances stop reading the old schema; never use an automatic destructive `Down` migration as an application rollback. Failed migration blocks application deployment. A restored app still needs compatible schema and a readiness check.

## Configuration and telemetry

Local `FeatureManagement__TodoWrites=false` freezes writes without changing code. Set `AppConfiguration__Endpoint` to an Azure App Configuration endpoint to load feature flags using `DefaultAzureCredential`; grant the API identity App Configuration Data Reader. Request middleware refreshes the cached flags on subsequent requests (the provider's refresh interval still applies). Do not use a connection-string credential.

Set `APPLICATIONINSIGHTS_CONNECTION_STRING` to enable the Azure Monitor OpenTelemetry distro. Set `Telemetry__UseEntra=true` and grant Monitoring Metrics Publisher for the managed identity when local authentication is disabled, as the Bicep workload does. A custom `todo.create` span and `todos.created` counter join framework traces; avoid putting todo titles in logs, tags, or metric dimensions. Container tests clear external telemetry/store configuration and use only loopback-bound fixtures.

## Container

Build from the repository root so the SDK file, lock file and build properties enter the context:

```powershell
docker build --file samples/Dockerfile --tag az400-todo:local .
docker run --rm --publish 127.0.0.1:5080:8080 --env ASPNETCORE_ENVIRONMENT=Development --env ConnectionStrings__Todos='Data Source=/tmp/todos.db' az400-todo:local
```

The multi-stage image excludes the SDK from runtime and runs as the built-in unprivileged `app` UID. `/tmp` is a disposable local database location. Production uses SQL Server; no persistent local volume or initialization step is hidden in the image. Exact .NET patch tags make the initial image repeatable; record the resolved digest when promoting a release and update pinned patches through review.

## Local release and permission verification

```powershell
$revision = (git rev-parse HEAD).Trim()
./samples/Build-Release.ps1 -Revision $revision -OutputPath .cache/release-example
docker build --file samples/Dockerfile --build-arg "SOURCE_REVISION=$revision" --tag az400-sample:ci .
./samples/Test-Containers.ps1 -Application -SqlServer -ExpectedRevision $revision
python -m unittest discover -s tests -p test_capstone_packaging.py -v
```

Choose a fresh release output directory: the helper refuses to overwrite an immutable artifact. It runs tests and the 65% coverage gate, checks EF model drift, then builds the app, SQL review script, self-contained Linux x64 migration bundle, and SHA256 file manifest. CI promotes the same artifact through the protected release lane without rebuilding.

The container check starts the real non-root app, verifies its embedded revision, readiness, todo read/write/update, and rejected input, then removes its exact labeled container. The opt-in `DevOps.Sql.slnx` suite runs against a local SQL Server 2025 Developer container with newly generated SQL logins and exact object grants. It verifies migrated readiness, idempotent migration, missing schema, denied migration-history SELECT, denied application-table SELECT, and absence of runtime DDL/history-write rights. It does not emulate or prove Microsoft Entra token exchange, Azure SQL networking, or Azure Monitor ingestion. Missing Docker fails this check visibly; no integration test is silently skipped.

The SQL image is pinned to an MCR digest resolved from `2025-latest` on October 16, 2026. Developer edition is for development/test use. The fixture accepts its self-signed certificate only over the loopback-bound local port; cloud migration connections still require validated TLS and Entra authentication. SQL test passwords are random process environment values and are not stored in Git or passed as command-line values.

## Deployment prerequisites

The workload template uses B1 by default; S1 creates a staging slot and costs more. Existing Azure SQL is an explicit prerequisite. The template outputs the application identity: grant its contained database user access before checking readiness. If S1 is selected, grant the staging identity's contained SQL user separately before directing traffic. Key Vault purge protection retains the deleted vault for seven days; cleanup must report that residual rather than purge it. The monitoring template accepts an optional `notificationEmail`; its action group remains disabled until an explicit notification destination is supplied. Configure and test that destination before recording an alert-delivery checkpoint as passed.

Copy the lab workflow into `.github/workflows` only in the disposable learner repository. Configure required reviewers, allowed deployment branches, and two exact federated subjects for `production` and `production-database`. GitHub's feature availability depends on repository visibility and plan. Azure Pipelines requires two protected environments, an explicitly authorized WIF service connection and the `az400-private` pool. Neither YAML file can configure these approval checks for you. Pull-request CI has no deployment identity.

## Verified dependency sources

Baseline checked October 16, 2026: [.NET 10 downloads](https://dotnet.microsoft.com/en-us/download/dotnet/10.0), [EF support](https://learn.microsoft.com/en-us/ef/core/what-is-new/), [App Configuration feature flags](https://learn.microsoft.com/en-us/azure/azure-app-configuration/quickstart-feature-flag-aspnet-core), [Azure Monitor OpenTelemetry](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-enable?tabs=aspnetcore), [EF migration deployment](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying).

Package versions are exact and transitive dependencies are committed in lock files. `System.Security.Cryptography.Pkcs` is explicitly updated to 10.0.13 because the SQL client dependency's lower bound otherwise resolves a vulnerable 9.x patch; restore keeps vulnerability auditing enabled and treats warnings as errors.
