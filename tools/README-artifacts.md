# Training artifacts: validation boundaries

Run `python tools/validate_artifacts.py` after installing the root locked Python requirements. This parses every YAML/JSON/XML fixture, verifies all 28 artifact directories, checks full commit pins and Azure Pipelines template paths, checks sample dependency locks, and refuses active course workflows containing lab deployment actions. The fixtures stay under `labs/*/artifacts`; copy a workflow to the disposable learner repository only when that lab directs it.

Additional independent checks:

```powershell
dotnet restore samples/DevOps.slnx --locked-mode
dotnet test samples/DevOps.slnx --configuration Release --no-restore --settings samples/coverage.runsettings --collect:'XPlat Code Coverage' --results-directory .cache/TestResults
./samples/Test-Coverage.ps1 -CoverageFile (Get-ChildItem .cache/TestResults -Filter coverage.cobertura.xml -Recurse | Sort-Object LastWriteTime -Descending | Select-Object -First 1 -ExpandProperty FullName)
az bicep build --file labs/17-bicep-infrastructure/artifacts/main.bicep --outfile .cache/main.arm.json
az bicep build --file labs/17-bicep-infrastructure/artifacts/core.bicep --outfile .cache/core.arm.json
az bicep build-params --file labs/17-bicep-infrastructure/artifacts/main.bicepparam --outfile .cache/main.parameters.json
docker build --file samples/Dockerfile --tag az400-todo:local .
```

Use `actionlint` on the GitHub examples; Azure Pipelines syntax is parsed locally and template references resolve, while Azure DevOps server validation requires the learner's project and service connection. `az bicep build` performs compiler/type/linter validation without deploying. Docker builds need a running Linux engine. SQL migration script generation and its local test do not prove live database permissions or private routing.

The sample tests verify HTTP behavior, rejected writes, missing schema, title boundaries, a custom trace span, and idempotent SQL migration generation. Generated EF migration/snapshot files are excluded from application line coverage and checked by SQL generation and model-drift validation instead. Root publication workflows build and publish documentation; training deployment workflows are inert artifact files in this repository.

Platform setup prerequisites include protected environments and required reviewers, exact environment-subject OIDC credentials, scoped RBAC/contained SQL users, WIF service connection authorization, private runners/agents and cost consent. The template's S1 slot and security-product exercises require explicit entitlement/cost review. Record skipped prerequisites as partial evidence.
