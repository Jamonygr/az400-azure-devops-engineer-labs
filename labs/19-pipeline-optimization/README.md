# Lab 19: Improve pipeline performance and retention

[Previous: Lab 18](../18-configuration-self-service/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 20](../20-identity-permissions/README.md)

## Scenario, role, and outcome

Build duration and retained artifacts are increasing without a measured explanation. Establish comparable observations and a bounded optimization/retention decision.

Learner role: **Pipeline operations engineer**. Outcome: Improve pipeline performance and retention.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | pipelines |
| Platforms | local |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification | Authored and checked offline; no live Azure deployment is claimed |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 19 service architecture: Measured CI execution, cache, and retention controls](diagrams/architecture.svg)

Pipeline YAML defines bounded job concurrency, while SDK/lock/OS-aware cache keys constrain dependency reuse. Real local build measurements feed the performance review, and artifacts/logs receive distinct retention decisions. The last compatible release and security evidence remain recoverable; the diagram represents the intended CI design rather than an unmeasured speedup guarantee.

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Official objective topic IDs: `D1.2.6`, `D3.6.1`, `D3.6.2`, `D3.6.3`, `D3.6.4`, `D3.6.5`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Measure a real build baseline |
| [CP2](#task-2) | Measure an incremental build without restoring again |
| [CP3](#task-3) | Compare serial and bounded parallel execution budgets |
| [CP4](#task-4) | Define retention by artifact class and release relevance |
| [CP5](#task-5) | Plan a classic-to-YAML migration with comparable gates |

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
$lab = './labs/19-pipeline-optimization/scripts/cli'
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

Critical-path time and total compute minutes differ. Cache keys must protect correctness; retention must preserve rollback artifacts and evidence, and YAML migration must retain external gates.

## Task 1 — Measure a real build baseline

<a id="task-1"></a>

Checkpoint: `CP1`

```powershell
$sw=[Diagnostics.Stopwatch]::StartNew();dotnet build (Join-Path $RepoRoot 'samples/DevOps.slnx') --configuration Release;$sw.Stop()
 if($LASTEXITCODE -ne 0){throw 'Baseline build failed.'}
 [ordered]@{elapsedMilliseconds=$sw.ElapsedMilliseconds;configuration='Release';success=$true}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'baseline.json')
```

Expected state: A measured successful build establishes one local baseline.

Positive validation:

```powershell
$b=Get-Content (Join-Path $WorkRoot 'baseline.json') -Raw|ConvertFrom-Json
 if(-not $b.success -or $b.elapsedMilliseconds -le 0){throw 'Invalid baseline measurement.'}
```

Negative validation:

```powershell
$b=Get-Content (Join-Path $WorkRoot 'baseline.json') -Raw|ConvertFrom-Json
 if($b.configuration -ne 'Release'){throw 'Benchmark configuration mismatch.'}
```

Evidence to retain: Elapsed time and machine/tool context; one run is not a performance guarantee.

Common failure and safe retry: Fix failures before benchmarking and compare the same configuration and warm/cold conditions.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Measure an incremental build without restoring again

<a id="task-2"></a>

Checkpoint: `CP2`

```powershell
$sw=[Diagnostics.Stopwatch]::StartNew();dotnet build (Join-Path $RepoRoot 'samples/DevOps.slnx') --configuration Release --no-restore;$sw.Stop()
 if($LASTEXITCODE -ne 0){throw 'Incremental build failed.'}
 [ordered]@{elapsedMilliseconds=$sw.ElapsedMilliseconds;restoreSkipped=$true;claim='single local observation'}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'incremental.json')
```

Expected state: A second measurement isolates avoided restore work without promising a speedup.

Positive validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'incremental.json') -Raw|ConvertFrom-Json
 if(-not $m.restoreSkipped -or $m.elapsedMilliseconds -le 0){throw 'Incremental measurement missing.'}
```

Negative validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'incremental.json') -Raw|ConvertFrom-Json
 if($m.claim -match 'guaranteed faster'){throw 'Unsupported optimization claim.'}
```

Evidence to retain: Both observations and controlled differences.

Common failure and safe retry: Retain locked restore in a prior job and key caches by lock files, SDK, OS, and architecture.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Compare serial and bounded parallel execution budgets

<a id="task-3"></a>

Checkpoint: `CP3`

```powershell
$jobs=@(40,30,20);$budget=[ordered]@{serialSeconds=($jobs|Measure-Object -Sum).Sum;parallelSeconds=40;maxParallel=3;agentMinutesSerial=1.5;agentMinutesParallel=1.5}
 $budget|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'concurrency-budget.json')
 Copy-Item (Join-Path $LabRoot 'artifacts/optimized-ci.yml') (Join-Path $WorkRoot 'optimized-ci.yml')
```

Expected state: Parallelism shortens the synthetic critical path while preserving total compute time.

Positive validation:

```powershell
$b=Get-Content (Join-Path $WorkRoot 'concurrency-budget.json') -Raw|ConvertFrom-Json
 if($b.serialSeconds -ne 90 -or $b.parallelSeconds -ne 40){throw 'Critical-path calculation incorrect.'}
```

Negative validation:

```powershell
$b=Get-Content (Join-Path $WorkRoot 'concurrency-budget.json') -Raw|ConvertFrom-Json
 if($b.maxParallel -gt 3 -or $b.agentMinutesParallel -lt 1.5){throw 'Concurrency budget hides compute cost.'}
```

Evidence to retain: Critical path, maximum parallel jobs, and compute-minute model.

Common failure and safe retry: Account for hosted parallel-job grants and stateful test contention before increasing concurrency.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Define retention by artifact class and release relevance

<a id="task-4"></a>

Checkpoint: `CP4`

```powershell
$retention=[ordered]@{prLogsDays=7;releaseArtifactsDays=30;securityEvidenceDays=90;keepLastGoodRelease=$true;deletePublishedPackagesAutomatically=$false}
 $retention|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'retention.json')
```

Expected state: Release recovery and security evidence receive distinct retention policies.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json
 if(-not $r.keepLastGoodRelease -or $r.securityEvidenceDays -lt $r.prLogsDays){throw 'Retention risks recovery/evidence.'}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json
 if($r.deletePublishedPackagesAutomatically){throw 'Package consumers may still depend on published versions.'}
```

Evidence to retain: Retention decision and legal/team approval assumptions.

Common failure and safe retry: Implement policy in the sandbox only after inspecting dependencies; retention is not permission to delete consumer artifacts.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Plan a classic-to-YAML migration with comparable gates

<a id="task-5"></a>

Checkpoint: `CP5`

```powershell
$migration=[ordered]@{classicTasks=@('restore','build','test','publish');yamlTasks=@('restore','build','test','publish');preserve=@('approvals','service connections','retention','variables');cutover='parallel comparison then disable classic trigger';liveCutover=$false}
 $migration|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'migration.json')
```

Expected state: Migration retains security and operational behavior instead of copying task names alone.

Positive validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'migration.json') -Raw|ConvertFrom-Json
 if(($m.classicTasks -join ',') -ne ($m.yamlTasks -join ',')){throw 'Pipeline migration task parity failed.'}
```

Negative validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'migration.json') -Raw|ConvertFrom-Json
 if($m.liveCutover -or 'approvals' -notin $m.preserve){throw 'Unapproved or incomplete cutover.'}
```

Evidence to retain: Task/gate parity matrix and rollback trigger plan.

Common failure and safe retry: Use dual nondeploying validation runs first; do not leave two production deployment triggers enabled.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Inject this fault only in the recorded sandbox or local run directory.

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json;$r.keepLastGoodRelease=$false;$r|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'retention.json')
```

Diagnose the precise difference:

```powershell
Get-Content (Join-Path $WorkRoot 'retention.json')
```

Repair, then repeat the affected checkpoint validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json;$r.keepLastGoodRelease=$true;$r|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'retention.json')
```

## Optional job-style challenge

Collect ten comparable runs, investigate flaky tests separately from infrastructure errors, and justify one cache or concurrency change with measured results.

## Final validation and result interpretation

```powershell
& './labs/19-pipeline-optimization/scripts/cli/Validate.ps1' -RunId 'demo01'
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
& './labs/19-pipeline-optimization/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/19-pipeline-optimization/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/retention) — reviewed 2026-10-16.
- [Primary source 2](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
