# Lab 18: Configure machines and on-demand environments

[Previous: Lab 17](../17-bicep-infrastructure/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 19](../19-pipeline-optimization/README.md)

## Scenario, role, and outcome

A service setting drifts after manual edits and teams request environments through tickets. Build an auditable reconciliation and a versioned self-service contract.

Learner role: **Configuration platform engineer**. Outcome: Configure machines and on-demand environments.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | pipelines |
| Platforms | local |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification status | offline-tested |
| Verification scope | All five checkpoint commands, final validators, named fault rejection and repair executed. Local file reconciliation and actual Bicep compilation are real; no environment was deployed. |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 18 service architecture: Desired-state reconciliation and self-service catalog](diagrams/architecture.svg)

The desired-state document gives a local reconciler an exact owned path and target value. Audit reports preserve both drift and repaired compliance. A separate versioned catalog describes the self-service environment contract; synchronizing it with Azure Deployment Environments requires the approved dev-center/project bootstrap and is not claimed by the local reconciliation exercise.

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Coverage levels describe the intended learning evidence: **explained** means reasoned
understanding, **practiced** means an observable isolated skill, and **integrated**
means skills connected across a delivery boundary. These labels are curriculum
claims, not execution status. Verification above records what authors actually ran.

Official objective topic IDs: `D3.5.1`, `D3.5.2`, `D3.5.4`, `D3.5.5`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Declare two versioned configuration resources |
| [CP2](#task-2) | Audit configuration drift before repair |
| [CP3](#task-3) | Reconcile owned configuration and prove idempotence |
| [CP4](#task-4) | Compile a bounded self-service deployment request |
| [CP5](#task-5) | Compare legacy and supported configuration paths |

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
$lab = './labs/18-configuration-self-service/scripts/cli'
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

Resource provisioning, guest configuration, and self-service orchestration are different control planes. Legacy Automation State Configuration remains dated syllabus context; use current Machine Configuration guidance.

Provisioning a VM, enforcing its guest settings and offering a self-service environment are different systems. Select tools around desired-state ownership, audit/remediation needs and supported service lifecycle. The dated syllabus can mention retired offerings; a successful local substitute must not be described as a retired service deployment.

The concrete local controller audits and reconciles two owned files and proves zero changes on a second pass. The bounded environment catalog rejects unknown SKUs/prefixes and generates ARM parameters for its own Bicep template. This is observable self-service planning and desired-state practice; it does not create Azure Machine Configuration policy or a hosted environment portal.

## Task 1 — Declare two versioned configuration resources

<a id="task-1"></a>

Checkpoint: `CP1`

Foundation/supporting task; no additional exam-objective coverage is claimed.

```powershell
$desired=[ordered]@{schemaVersion='1.0';files=@(@{path='service.conf';content='mode=training'},@{path='runtime/settings.json';content='{"feature":"TodoWrites","enabled":false}'});owner=$RunId}
$desired|ConvertTo-Json -Depth 8|Set-Content (Join-Path $WorkRoot 'desired-state.json')
Copy-Item (Join-Path $LabRoot 'artifacts/configuration.catalog.yaml') (Join-Path $WorkRoot 'configuration.catalog.yaml')
```

Expected state: Two exact resource contents have owned paths and a versioned catalog.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
if($d.owner -ne $RunId -or @($d.files).Count -ne 2){throw 'Declared resource set incomplete.'}
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
if(@($d.files|Where-Object {$_.path -match '\.\.|^[A-Za-z]:|^/'}).Count){throw 'Declared resource escaped scope.'}
```

Evidence to retain: Desired paths, synthetic content hashes, and run owner.

Common failure and safe retry: Keep resource provisioning, machine configuration and application settings as distinct control planes.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Audit configuration drift before repair

<a id="task-2"></a>

Checkpoint: `CP2`

Foundation/supporting task; no additional exam-objective coverage is claimed.

```powershell
$target=Join-Path $WorkRoot 'service.conf';'mode=incorrect'|Set-Content $target
 $d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
 [ordered]@{resource='service.conf';expected=$d.files[0].content;actual=(Get-Content $target);compliant=((Get-Content $target) -eq $d.files[0].content)}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'drift-before.json')
```

Expected state: Audit identifies the deterministic wrong value without repairing it.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'drift-before.json') -Raw|ConvertFrom-Json
 if($r.compliant -or $r.actual -ne 'mode=incorrect'){throw 'Drift fixture not detected.'}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'drift-before.json') -Raw|ConvertFrom-Json
 if($r.actual -eq $r.expected){throw 'Noncompliance record lacks an actual difference.'}
```

Evidence to retain: Expected, actual, and compliance values.

Common failure and safe retry: Keep audit and modify responsibilities separate; do not repair before retaining evidence.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Reconcile owned configuration and prove idempotence

<a id="task-3"></a>

Checkpoint: `CP3`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.2` | practiced | Reconcile a two-file desired state and prove zero changes on the second pass. |
| `D3.5.4` | practiced | Compare actual local file contents with desired values; this is not Azure Machine Configuration enforcement. |

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
function Invoke-OwnedReconciliation {
 $changed=0;$root=[IO.Path]::GetFullPath($WorkRoot)+[IO.Path]::DirectorySeparatorChar
 foreach($item in $d.files){$target=[IO.Path]::GetFullPath((Join-Path $WorkRoot $item.path));if(-not $target.StartsWith($root,[StringComparison]::OrdinalIgnoreCase)){throw 'Configuration path escaped ownership.'};$actual=if(Test-Path $target){Get-Content $target -Raw}else{''};if($actual.TrimEnd() -cne $item.content){New-Item -ItemType Directory -Force (Split-Path $target)|Out-Null;Set-Content $target $item.content;$changed++}}
 return $changed
}
$first=Invoke-OwnedReconciliation;$second=Invoke-OwnedReconciliation
[ordered]@{firstChanges=$first;secondChanges=$second;resources=@($d.files).Count}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'drift-after.json')
```

Expected state: Declared content is repaired; the immediate second reconciliation changes zero resources.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
foreach($item in $d.files){if((Get-Content (Join-Path $WorkRoot $item.path) -Raw).TrimEnd() -cne $item.content){throw 'Configuration remains drifted.'}}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'drift-after.json') -Raw|ConvertFrom-Json
if($r.secondChanges -ne 0 -or $r.resources -ne 2){throw 'Reconciliation is not idempotent.'}
```

Evidence to retain: Before/after hashes and first/second change counts.

Common failure and safe retry: Normalize the target path before writes, compare actual content, and never infer compliance from a self-declared flag.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Compile a bounded self-service deployment request

<a id="task-4"></a>

Checkpoint: `CP4`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.5` | practiced | Validate a bounded self-service request and produce deployable ARM parameters for the independent Bicep catalog entry; no portal service is created. |

```powershell
$request=[ordered]@{template='core';parameters=@{labRunId=$RunId;prefix='az400';location=$Location;storageSku='Standard_LRS'}}
$request|ConvertTo-Json -Depth 6|Set-Content (Join-Path $WorkRoot 'environment-request.json')
az bicep build --file (Join-Path $LabRoot 'artifacts/core.bicep') --outfile (Join-Path $WorkRoot 'environment-template.json')
if($LASTEXITCODE -ne 0){throw 'Catalog template failed compilation.'}
$t=Get-Content (Join-Path $WorkRoot 'environment-template.json') -Raw|ConvertFrom-Json
foreach($name in $request.parameters.Keys){if($name -notin $t.parameters.PSObject.Properties.Name){throw "Unknown template parameter $name"}}
$params=@{};foreach($name in $request.parameters.Keys){$params[$name]=@{value=$request.parameters[$name]}}
@{'$schema'='https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#';contentVersion='1.0.0.0';parameters=$params}|ConvertTo-Json -Depth 8|Set-Content (Join-Path $WorkRoot 'environment.parameters.json')
```

Expected state: Bicep compiles a real self-contained template and explicit parameter file; this local planner creates no Azure environment.

Positive validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'environment-template.json') -Raw|ConvertFrom-Json
$p=Get-Content (Join-Path $WorkRoot 'environment.parameters.json') -Raw|ConvertFrom-Json
if($p.parameters.labRunId.value -ne $RunId -or 'Microsoft.Storage/storageAccounts' -notin $t.resources.type){throw 'Request/template boundary mismatch.'}
```

Negative validation:

```powershell
$p=Get-Content (Join-Path $WorkRoot 'environment.parameters.json') -Raw|ConvertFrom-Json
if($p.parameters.storageSku.value -ne 'Standard_LRS' -or $p.parameters.prefix.value -notmatch '^[a-z][a-z0-9-]{2,17}$'){throw 'Request exceeded catalog constraints.'}
```

Evidence to retain: Compiled template, parameter names and target run; approval and live deployment remain separate.

Common failure and safe retry: Use the dated retirement guidance for Azure Deployment Environments; the supported exercise is a workflow calling the owned Bicep catalog entry.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Compare legacy and supported configuration paths

<a id="task-5"></a>

Checkpoint: `CP5`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.1` | explained | Compare current configuration tools with dated retired services; no retired endpoint is invoked. |

```powershell
$decision=[ordered]@{legacy='Azure Automation State Configuration';legacyStatus='Retirement announced; verify current lifecycle before use';modern='Azure Machine Configuration';resourcePlane='Bicep/ARM';selfService='Azure Deployment Environments';verified='2026-10-16';legacyDeploymentAllowed=$false}
 $decision|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'configuration-decision.json')

$bad=@{prefix='../outside';storageSku='Premium_LRS'}
$rejected=($bad.prefix -notmatch '^[a-z][a-z0-9-]{2,17}$') -and $bad.storageSku -ne 'Standard_LRS'
@{invalidRequestRejected=$rejected;reason='prefix and SKU outside catalog'}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'catalog-negative.json')
if(-not $rejected){throw 'Invalid self-service request accepted.'}
```

Expected state: The syllabus topic is preserved as dated context with a supported modernization route.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'configuration-decision.json') -Raw|ConvertFrom-Json
 if($d.modern -ne 'Azure Machine Configuration' -or $d.verified -ne '2026-10-16'){throw 'Modernization decision missing.'}

$r=Get-Content (Join-Path $WorkRoot 'catalog-negative.json') -Raw|ConvertFrom-Json
if(-not $r.invalidRequestRejected){throw 'Catalog rejection evidence absent.'}
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'configuration-decision.json') -Raw|ConvertFrom-Json
 if($d.legacyDeploymentAllowed){throw 'Legacy context must not silently enable retired infrastructure.'}
```

Evidence to retain: Dated source comparison and migration responsibilities.

Common failure and safe retry: Verify current lifecycle guidance before planning production configuration changes.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Run the journaled operation after all five checkpoints. It proves the healthy assertion, injects the named fault, requires its rejection, repairs it, and proves health again. Provider doubles used in author tests are not live enforcement evidence.

```powershell
& './labs/18-configuration-self-service/scripts/cli/BreakFix.ps1' -RunId 'demo01' -Execute
```

Expected rejection marker: `AZ400-L18-FAULT`. The assertion must catch the changed behavior, not merely an exception from an unavailable CLI.

Inspect the independent assertion:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
if((Get-Content (Join-Path $WorkRoot $d.files[0].path)) -ne $d.files[0].content){throw 'AZ400-L18-FAULT'}
```

Fault trigger (executed by BreakFix):

```powershell
Set-Content (Join-Path $WorkRoot 'service.conf') 'mode=drifted'
```

Diagnose the precise difference:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json;[pscustomobject]@{expected=$d.files[0].content;actual=(Get-Content (Join-Path $WorkRoot 'service.conf'))}
```

Repair (executed by BreakFix):

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json;$d.files[0].content|Set-Content (Join-Path $WorkRoot 'service.conf')
```

## Optional job-style challenge

Publish a versioned catalog into a separately approved disposable Deployment Environments project and prove resource ownership, deletion, and policy compliance.

## Final validation and result interpretation

```powershell
& './labs/18-configuration-self-service/scripts/cli/Validate.ps1' -RunId 'demo01'
```

A complete result requires five passing read-only checkpoint assertions, a journaled repaired fault, and any required integration evidence. Pending hosted runs, missing licensed features, and unexecuted integration lanes remain visible. Review `validation.json`; successful command exit alone does not establish the asserted behavior.

## Troubleshooting

- **401/403:** inspect the explicit account/project/repository scope and required role; do not broaden a token reflexively.
- **Resource or artifact missing:** confirm the exact run ID and prerequisite checkpoint; retry reads after eventual consistency.
- **Unsupported SKU/runtime/tool:** consult the specific current source, record the gate, and obtain approval before changing cost or architecture.
- **Validation mismatch:** inspect the positive and negative assertions separately, repair the named fault, and rerun validation.
- **Ownership refusal:** stop; never edit a manifest to claim an unrelated resource.

## Cleanup and residual checks

```powershell
& './labs/18-configuration-self-service/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/18-configuration-self-service/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview) — reviewed 2026-10-16.
- [Primary source 2](https://learn.microsoft.com/en-us/azure/deployment-environments/overview-what-is-azure-deployment-environments) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `BreakFix.ps1`, `Integration.ps1` (capstones), `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
