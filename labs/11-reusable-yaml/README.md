# Lab 11: Reuse YAML templates and variables

[Previous: Lab 10](../10-azure-pipelines-ci/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 12](../12-runners-agents/README.md)

## Scenario, role, and outcome

Build logic is diverging between teams. Define reusable YAML interfaces, typed inputs, variable groups, and explicit job dependencies.

Learner role: **Pipeline framework maintainer**. Outcome: Reuse YAML templates and variables.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | pipelines |
| Platforms | local, azure-devops |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification | Authored and checked offline; no live Azure deployment is claimed |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 11 service architecture: Reusable YAML inputs and protected variable injection](diagrams/architecture.svg)

The consumer YAML supplies typed template parameters while a scoped Azure DevOps variable group supplies authorized runtime values. Explicit needs/dependsOn edges order jobs. The GitHub reusable workflow is a parallel reviewed contract; its existence does not grant inherited secrets or activate a remote workflow.

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Official objective topic IDs: `D3.3.5`, `D3.3.6`, `D3.3.8`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Review the reusable GitHub workflow contract |
| [CP2](#task-2) | Review the Azure Pipelines template interface |
| [CP3](#task-3) | Create an explicitly nonsecret variable group |
| [CP4](#task-4) | Model build-test-package ordering as a DAG |
| [CP5](#task-5) | Exercise the shared template build command locally |

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
$lab = './labs/11-reusable-yaml/scripts/cli'
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

Template parameters shape compile-time structure; variables carry runtime values. Reuse must preserve least privilege, immutable references, and a tested compatibility contract.

## Task 1 — Review the reusable GitHub workflow contract

<a id="task-1"></a>

Checkpoint: `CP1`

```powershell
$t=Get-Content (Join-Path $LabRoot 'artifacts/templates/reusable-dotnet.yml') -Raw
 $t|Set-Content (Join-Path $WorkRoot 'reusable-dotnet.yml')
 Select-String -InputObject $t -Pattern 'workflow_call|inputs:|permissions:|dotnet' -AllMatches
```

Expected state: The reusable workflow exposes typed inputs and a limited permission contract.

Positive validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'reusable-dotnet.yml') -Raw
 if ($t -notmatch 'workflow_call' -or $t -notmatch 'inputs:') { throw 'Reusable interface missing.' }
```

Negative validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'reusable-dotnet.yml') -Raw
 if ($t -match 'secrets: inherit|write-all') { throw 'Overbroad reusable-workflow access.' }
```

Evidence to retain: Input names, defaults, and permissions.

Common failure and safe retry: Pass only required inputs and explicitly named secrets; pin cross-repository reuse to a reviewed commit.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Review the Azure Pipelines template interface

<a id="task-2"></a>

Checkpoint: `CP2`

```powershell
Copy-Item (Join-Path $LabRoot 'artifacts/templates/dotnet-build.yml') (Join-Path $WorkRoot 'dotnet-build.yml')
 Select-String -Path (Join-Path $WorkRoot 'dotnet-build.yml') -Pattern 'parameters:|type:|dotnet|steps:'
```

Expected state: The build template declares parameters separately from runtime variables.

Positive validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'dotnet-build.yml') -Raw
 if ($t -notmatch 'parameters:' -or $t -notmatch 'steps:') { throw 'Build template contract absent.' }
```

Negative validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'dotnet-build.yml') -Raw
 if ($t -match 'password:\s*[^$\s]') { throw 'Literal credential in template.' }
```

Evidence to retain: Parameter types and compile-time/runtime expression comparison.

Common failure and safe retry: Use template parameters for structure; use runtime variables for execution values.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Create an explicitly nonsecret variable group

<a id="task-3"></a>

Checkpoint: `CP3`

```powershell
$g=az pipelines variable-group create --organization $AdoOrganization --project $AdoProject --name "build-$RunId" --variables BuildConfiguration=Release TargetFramework=net10.0 --authorize false -o json|ConvertFrom-Json
 $g.id|Set-Content (Join-Path $WorkRoot 'variable-group-id.txt')
```

Expected state: A sandbox variable group exists without blanket pipeline authorization.

Positive validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'variable-group-id.txt')
 $g=az pipelines variable-group show --organization $AdoOrganization --project $AdoProject --group-id $id -o json|ConvertFrom-Json
 if ($g.variables.BuildConfiguration.value -ne 'Release') { throw 'Build variable mismatch.' }
```

Negative validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'variable-group-id.txt')
 $g=az pipelines variable-group show --organization $AdoOrganization --project $AdoProject --group-id $id -o json|ConvertFrom-Json
 if ($g.authorized) { throw 'Variable group must not be authorized for every pipeline.' }
```

Evidence to retain: Variable group ID and nonsecret values.

Common failure and safe retry: Authorize only a designated sandbox pipeline; store secrets through protected secret facilities.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Model build-test-package ordering as a DAG

<a id="task-4"></a>

Checkpoint: `CP4`

```powershell
$dag=@([ordered]@{job='build';needs=@()},[ordered]@{job='test';needs=@('build')},[ordered]@{job='package';needs=@('test')})
 $dag|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'job-graph.json')
 $done=@();foreach($j in $dag){foreach($d in $j.needs){if($d -notin $done){throw "Unresolved dependency $d"}};$done+=$j.job}
 $done|Set-Content (Join-Path $WorkRoot 'execution-order.txt')
```

Expected state: Each job depends only on completed prerequisites; package follows successful tests.

Positive validation:

```powershell
$o=@(Get-Content (Join-Path $WorkRoot 'execution-order.txt'))
 if (($o -join ',') -ne 'build,test,package') { throw 'Invalid topological execution order.' }
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json
 if (@($d|Where-Object { $_.job -in $_.needs }).Count) { throw 'Self-referencing job dependency.' }
```

Evidence to retain: DAG and successful execution order.

Common failure and safe retry: Fix dependsOn/needs references; do not serialize independent tests unless resource contention requires it.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Exercise the shared template build command locally

<a id="task-5"></a>

Checkpoint: `CP5`

```powershell
dotnet build (Join-Path $RepoRoot 'samples/DevOps.slnx') --configuration Release
 if($LASTEXITCODE -ne 0){throw 'Reusable build baseline failed.'}
 Get-FileHash (Join-Path $WorkRoot 'dotnet-build.yml')|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'template-digest.json')
```

Expected state: The reusable build command succeeds and the reviewed template is fingerprinted.

Positive validation:

```powershell
$h=Get-Content (Join-Path $WorkRoot 'template-digest.json') -Raw|ConvertFrom-Json
 if((Get-FileHash (Join-Path $WorkRoot 'dotnet-build.yml')).Hash -ne $h.Hash){throw 'Template drift detected.'}
```

Negative validation:

```powershell
$h=Get-Content (Join-Path $WorkRoot 'template-digest.json') -Raw|ConvertFrom-Json
 if($h.Algorithm -ne 'SHA256'){throw 'Unexpected template digest algorithm.'}
```

Evidence to retain: Build result and template SHA256.

Common failure and safe retry: Match local command arguments with the template, and review breaking input changes before reuse.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Inject this fault only in the recorded sandbox or local run directory.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json;$d[0].needs=@('package');$d|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'job-graph.json')
```

Diagnose the precise difference:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json;$d|Format-Table job,needs
```

Repair, then repeat the affected checkpoint validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json;$d[0].needs=@();$d|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'job-graph.json')
```

## Optional job-style challenge

Call the templates from a separate disposable consumer repository using a pinned revision and demonstrate one deliberate input validation failure.

## Final validation and result interpretation

```powershell
& './labs/11-reusable-yaml/scripts/cli/Validate.ps1' -RunId 'demo01'
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
& './labs/11-reusable-yaml/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/11-reusable-yaml/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://docs.github.com/en/actions/sharing-automations/reusing-workflows) — reviewed 2026-10-16.
- [Primary source 2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
