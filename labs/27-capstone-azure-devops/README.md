# Lab 27: Capstone: deliver securely through Azure DevOps

[Previous: Lab 26](../26-capstone-github/README.md) · [Catalog](../../docs/lab-catalog.md)

## Scenario, role, and outcome

Deliver the sample through a fresh Azure DevOps project with work tracking, YAML CI, exact build provenance, protected release review, and recovery evidence.

Learner role: **Azure DevOps delivery owner**. Outcome: Capstone: deliver securely through Azure DevOps.

| Item | Value |
|---|---|
| Time | 180 minutes |
| Domain | capstone |
| Platforms | local, azure-devops |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification | Authored and checked offline; no live Azure deployment is claimed |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 27 service architecture: Azure DevOps delivery evidence and protected resources](diagrams/architecture.svg)

The core ties the accepted Boards task to an exact Azure Repos revision and successful YAML CI on an available approved agent. Build results and artifact evidence enter the recovery dossier. A protected environment, workload-identity service connection, database/network prerequisites, and observed telemetry are separate requirements for the optional live release; CI success is not reported as a completed cloud deployment.

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Official objective topic IDs: `D1.1.1`, `D1.1.2`, `D1.1.3`, `D1.1.4`, `D1.2.1`, `D1.2.2`, `D1.2.3`, `D1.2.4`, `D1.2.5`, `D1.2.6`, `D1.2.7`, `D1.3.1`, `D1.3.2`, `D1.3.3`, `D1.3.4`, `D1.3.5`, `D1.3.6`, `D2.1.1`, `D2.1.2`, `D2.1.3`, `D2.2.1`, `D2.2.2`, `D2.2.3`, `D2.2.4`, `D2.2.5`, `D2.2.6`, `D3.1.1`, `D3.1.2`, `D3.1.3`, `D3.1.4`, `D3.2.1`, `D3.2.2`, `D3.2.3`, `D3.2.4`, `D3.3.1`, `D3.3.2`, `D3.3.3`, `D3.3.4`, `D3.3.5`, `D3.3.6`, `D3.3.7`, `D3.3.8`, `D3.3.9`, `D3.4.1`, `D3.4.2`, `D3.4.3`, `D3.4.4`, `D3.4.5`, `D3.4.6`, `D3.4.7`, `D3.4.8`, `D3.5.1`, `D3.5.2`, `D3.5.3`, `D3.5.4`, `D3.5.5`, `D3.6.1`, `D3.6.2`, `D3.6.3`, `D3.6.4`, `D3.6.5`, `D4.1.1`, `D4.1.2`, `D4.1.3`, `D4.1.4`, `D4.1.5`, `D4.1.6`, `D4.1.7`, `D4.2.1`, `D4.2.2`, `D4.2.3`, `D4.2.4`, `D4.3.1`, `D4.3.2`, `D4.3.3`, `D4.3.4`, `D4.3.5`, `D4.3.6`, `D5.1.1`, `D5.1.2`, `D5.1.3`, `D5.1.4`, `D5.2.1`, `D5.2.2`, `D5.2.3`, `D5.2.4`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Establish Azure DevOps source and accepted work |
| [CP2](#task-2) | Run local build, tests, and measured coverage |
| [CP3](#task-3) | Publish a CI pipeline and dormant deployment contract |
| [CP4](#task-4) | Register and queue the exact project CI definition |
| [CP5](#task-5) | Verify successful delivery provenance and recovery evidence |

The [objective map](../../docs/objective-map.md) traces every official topic to
labs. The [Microsoft study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)
controls authoritative objective wording and domain weighting.

## Inputs, permissions, and read-only preflight

Use PowerShell 7.4+, .NET 10, Git, GitHub CLI, Azure CLI with the Azure DevOps
extension, and the pinned repository validation dependencies. Read the
[permissions matrix](../../docs/permissions-matrix.md) and [evidence policy](../../docs/evidence-handling.md).
Supply only the accounts needed by this lab. Never put a token, connection
string, or private key into a command log, committed YAML, or progress export.

The examples run from the repository root. Choose a fresh lowercase run ID;
`demo01` is an example, not a reusable shared sandbox. Set bootstrap environment
variables for the approved GitHub owner, DevOps organization, subscription, and
region. Do not run both guided and automated lanes with the same run ID.

```powershell
$lab = './labs/27-capstone-azure-devops/scripts/cli'
& "$lab/Preflight.ps1" -RunId 'demo01'
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly
# After reviewing context, permissions, cost, and cleanup:
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly -Execute -AcknowledgeCost -AcknowledgeTenantChange
. "$lab/Context.ps1" -RunId 'demo01'
```

Preflight performs reads only. Provisioning creates fresh run-owned top-level
sandboxes and records their exact IDs. Context establishes `$RepoRoot`,
`$LabRoot`, `$WorkRoot`, `$RunId`, `$GhRepo`, `$AdoOrganization`, `$AdoProject`,
`$SubscriptionId`, `$Location`, and `$ResourceGroup`. A missing prerequisite or
ownership mismatch must stop execution. Local build commands may restore
packages and write ignored build output.

## Concept primer and design decisions

A release owner must preserve source-to-build traceability and distinguish successful CI from approved deployment. Service connections, environment checks, database compatibility, and agent capacity have separate owners.

## Task 1 — Establish Azure DevOps source and accepted work

<a id="task-1"></a>

Checkpoint: `CP1`

```powershell
$r=@(az repos list --organization $AdoOrganization --project $AdoProject -o json|ConvertFrom-Json)|Select-Object -First 1
 $r|ConvertTo-Json -Depth 8|Set-Content (Join-Path $WorkRoot 'capstone-repo.json')
 $p=Join-Path $WorkRoot 'capstone'
if(Test-Path (Join-Path $p '.git')){
 $origin=git -C $p remote get-url origin
 if($origin.TrimEnd('/') -cne ([string]$r.remoteUrl).TrimEnd('/')){throw 'Existing working copy points to a different Azure Repos repository; refusing to reuse it.'}
}else{git clone $r.remoteUrl $p}
git -C $p config user.name 'AZ400 Learner';git -C $p config user.email 'learner@example.invalid'
 $source=Join-Path $RepoRoot 'samples'
 Get-ChildItem $source -File -Recurse|Where-Object FullName -NotMatch '[\/](bin|obj)[\/]'|ForEach-Object { $rel=[IO.Path]::GetRelativePath($RepoRoot,$_.FullName);$dest=Join-Path $p $rel;New-Item -ItemType Directory -Force (Split-Path $dest)|Out-Null;Copy-Item $_.FullName $dest }
 foreach ($name in @('global.json','Directory.Build.props')) { if (Test-Path (Join-Path $RepoRoot $name)) { Copy-Item (Join-Path $RepoRoot $name) $p } }
 $w=az boards work-item create --organization $AdoOrganization --project $AdoProject --type Task --title "[$RunId] Deliver observable API" --description 'Acceptance: locked build, passing tests/coverage, successful exact-revision pipeline, protected deployment review, rollback and cleanup evidence.' -o json|ConvertFrom-Json
 $w.id|Set-Content (Join-Path $WorkRoot 'capstone-work-item.txt')
```

Expected state: Source and acceptance criteria exist only in the disposable project.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'capstone-repo.json') -Raw|ConvertFrom-Json
 if($r.project.name -ne $AdoProject){throw 'Capstone repository/project mismatch.'}
```

Negative validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-work-item.txt');$w=az boards work-item show --organization $AdoOrganization --id $id -o json|ConvertFrom-Json
 if($w.fields.'System.TeamProject' -ne $AdoProject){throw 'Capstone work item escaped project.'}
```

Evidence to retain: Task, repository ID, and project identity.

Common failure and safe retry: Complete Git authentication bootstrap without writing a PAT into a remote URL.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Run local build, tests, and measured coverage

<a id="task-2"></a>

Checkpoint: `CP2`

```powershell
$p=Join-Path $WorkRoot 'capstone';dotnet restore (Join-Path $p 'samples/DevOps.slnx') --locked-mode
 dotnet test (Join-Path $p 'samples/DevOps.slnx') --configuration Release --settings (Join-Path $p 'samples/coverage.runsettings') --collect 'XPlat Code Coverage' --logger "trx;LogFileName=capstone.trx" --results-directory (Join-Path $WorkRoot 'quality')
 if($LASTEXITCODE -ne 0){throw 'Local capstone quality failed.'}
 $coverage=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter coverage.cobertura.xml -Recurse|Select-Object -First 1
 & (Join-Path $p 'samples/Test-Coverage.ps1') -CoverageFile $coverage.FullName
```

Expected state: The shared sample passes a 65% minimum measured coverage gate.

Positive validation:

```powershell
$f=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter coverage.cobertura.xml -Recurse|Select-Object -First 1;$x=[xml](Get-Content $f.FullName -Raw)
 if([double]$x.coverage.'line-rate' -lt 0.65){throw 'Coverage gate failed.'}
```

Negative validation:

```powershell
$f=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter '*.trx' -Recurse|Select-Object -First 1;$x=[xml](Get-Content $f.FullName -Raw)
 if([int]$x.TestRun.ResultSummary.Counters.failed -gt 0 -or [int]$x.TestRun.ResultSummary.Counters.passed -lt 1){throw 'No passing capstone test baseline.'}
```

Evidence to retain: TRX, coverage report, and dependency locks.

Common failure and safe retry: Repair behavior rather than suppressing tests or disabling collectors.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Publish a CI pipeline and dormant deployment contract

<a id="task-3"></a>

Checkpoint: `CP3`

```powershell
$p=Join-Path $WorkRoot 'capstone'
 Copy-Item (Join-Path $LabRoot 'artifacts/capstone-ci.yml') (Join-Path $p 'azure-pipelines.yml')
 New-Item -ItemType Directory -Force (Join-Path $p 'deployment-review')|Out-Null
 Copy-Item (Join-Path $LabRoot 'artifacts/capstone-azure-pipelines.yml') (Join-Path $p 'deployment-review/capstone-azure-pipelines.yml')
 @('**/bin/','**/obj/')|Set-Content (Join-Path $p '.gitignore')
 git -C $p add .;$staged=@(git -C $p diff --cached --name-only)
if($staged.Count -gt 0){git -C $p commit -m "[$RunId] Capstone CI and deployment review"}else{Write-Output 'Reviewed files already committed; reusing the current source revision.'};git -C $p branch -M main;git -C $p push -u origin main
 (git -C $p rev-parse HEAD)|Set-Content (Join-Path $WorkRoot 'capstone-sha.txt')
```

Expected state: The reviewed revision contains CI and an unregistered cloud deployment template.

Positive validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'capstone/azure-pipelines.yml') -Raw
 if($t -notmatch 'dotnet|DotNetCoreCLI'){throw 'Capstone build tasks absent.'}
```

Negative validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'capstone/azure-pipelines.yml') -Raw
 if($t -match 'AzureCLI@|az deployment|azureSubscription:'){throw 'CI publication must not activate cloud deployment.'}
```

Evidence to retain: Committed SHA and CI-versus-dormant template review.

Common failure and safe retry: Keep deployment registration separate until service connection, environment checks, SQL/network prerequisites, and costs are approved.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Register and queue the exact project CI definition

<a id="task-4"></a>

Checkpoint: `CP4`

```powershell
$r=Get-Content (Join-Path $WorkRoot 'capstone-repo.json') -Raw|ConvertFrom-Json
$pipelineName="capstone-$RunId";$idPath=Join-Path $WorkRoot 'capstone-pipeline-id.txt'
if(Test-Path $idPath){
 $savedId=(Get-Content $idPath -Raw).Trim()
 if($savedId -notmatch '^\d+$'){throw 'Saved pipeline ID is invalid.'}
 $p=az pipelines show --organization $AdoOrganization --project $AdoProject --id $savedId -o json|ConvertFrom-Json
}else{
 $candidates=@(az pipelines list --organization $AdoOrganization --project $AdoProject --name $pipelineName --repository $r.id --repository-type tfsgit -o json|ConvertFrom-Json|Where-Object name -eq $pipelineName)
 $matchingPipelines=@(foreach($candidate in $candidates){
  $definition=az pipelines show --organization $AdoOrganization --project $AdoProject --id $candidate.id -o json|ConvertFrom-Json
  if($definition.name -eq $pipelineName -and $definition.repository.id -eq $r.id){$definition}
 })
 if($matchingPipelines.Count -gt 1){throw 'Multiple matching pipelines; resolve the ambiguous owned boundary before retrying.'}
 if($matchingPipelines.Count -eq 1){$p=$matchingPipelines[0]}else{
  $p=az pipelines create --organization $AdoOrganization --project $AdoProject --name $pipelineName --repository $r.id --repository-type tfsgit --branch main --yml-path azure-pipelines.yml --skip-first-run true -o json|ConvertFrom-Json
 }
}
if($p.name -ne $pipelineName -or $p.repository.id -ne $r.id -or $p.project.name -ne $AdoProject -or $p.process.yamlFilename -ne 'azure-pipelines.yml'){throw 'Existing pipeline identity/source differs from this run; refusing to reuse it.'}
$p.id|Set-Content $idPath

$b=az pipelines run --organization $AdoOrganization --project $AdoProject --id $p.id --branch main -o json|ConvertFrom-Json
$b.id|Set-Content (Join-Path $WorkRoot 'capstone-build-id.txt')
```

Expected state: One sandbox pipeline is queued against the reviewed main revision.

Positive validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-pipeline-id.txt');$p=az pipelines show --organization $AdoOrganization --project $AdoProject --id $id -o json|ConvertFrom-Json
 if($p.process.yamlFilename -ne 'azure-pipelines.yml'){throw 'Wrong capstone YAML definition.'}
```

Negative validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-pipeline-id.txt');$p=az pipelines show --organization $AdoOrganization --project $AdoProject --id $id -o json|ConvertFrom-Json
 if($p.project.name -ne $AdoProject){throw 'Pipeline escaped project ownership.'}
```

Evidence to retain: Pipeline/build IDs and queued source branch.

Common failure and safe retry: Obtain hosted parallelism or approved isolated agents; waiting for capacity is an external gate.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Verify successful delivery provenance and recovery evidence

<a id="task-5"></a>

Checkpoint: `CP5`

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-build-id.txt')
 $b=az pipelines runs show --organization $AdoOrganization --project $AdoProject --id $id -o json|ConvertFrom-Json
 if($b.status -ne 'completed' -or $b.result -ne 'succeeded'){throw 'Capstone build incomplete/failed; retry after examining logs.'}
 [ordered]@{workItem=(Get-Content (Join-Path $WorkRoot 'capstone-work-item.txt'));commit=$b.sourceVersion;build=$id;result=$b.result;rollback='last compatible immutable artifact';cloudDeployed=$false;cleanupRequired=$true}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Expected state: Successful build evidence ties accepted work to the exact commit; cloud deployment remains a separate gate.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json
 if($d.result -ne 'succeeded' -or $d.commit -ne (Get-Content (Join-Path $WorkRoot 'capstone-sha.txt'))){throw 'Capstone delivery provenance mismatch.'}
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json
 if($d.cloudDeployed -or -not $d.cleanupRequired){throw 'Unverified deployment claim or missing cleanup obligation.'}
```

Evidence to retain: Release dossier, successful test artifact references, recovery plan, and final cleanup audit.

Common failure and safe retry: Retrieve final test/artifact evidence before deleting the disposable project; do not report a queued run as delivered.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Inject this fault only in the recorded sandbox or local run directory.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.result='partiallySucceeded';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Diagnose the precise difference:

```powershell
Get-Content (Join-Path $WorkRoot 'release-dossier.json');az pipelines runs show --organization $AdoOrganization --project $AdoProject --id (Get-Content (Join-Path $WorkRoot 'capstone-build-id.txt')) --query '{status:status,result:result,commit:sourceVersion}' -o json
```

Repair, then repeat the affected checkpoint validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.result='succeeded';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

## Optional job-style challenge

Complete the protected Azure Pipelines release with WIF service connection, protected resource approvals, ordered database deployment, staged exposure, telemetry evidence, rollback, and residual audit. Preserve every unavailable external gate as partial.

## Final validation and result interpretation

```powershell
& './labs/27-capstone-azure-devops/scripts/cli/Validate.ps1' -RunId 'demo01'
```

A complete result requires five passing read-only assertions. Pending hosted runs, missing licensed features, and unexecuted integration challenges remain visible. Review `validation.json`; a command exiting successfully is not enough if the asserted behavior is absent.

## Troubleshooting

- **401/403:** inspect the explicit account/project/repository scope and required role; do not broaden a token reflexively.
- **Resource or artifact missing:** confirm the exact run ID and prerequisite checkpoint; retry reads after eventual consistency.
- **Unsupported SKU/runtime/tool:** consult the specific current source, record the gate, and obtain approval before changing cost or architecture.
- **Validation mismatch:** inspect the positive and negative assertions separately, repair the named fault, and rerun validation.
- **Ownership refusal:** stop; never edit a manifest to claim an unrelated resource.

## Cleanup and residual checks

```powershell
& './labs/27-capstone-azure-devops/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/27-capstone-azure-devops/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. This foundation/capstone is hands-on only; use its validation and recovery evidence for assessment.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/dotnet-core) — reviewed 2026-10-16.
- [Primary source 2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/configure-workload-identity) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
