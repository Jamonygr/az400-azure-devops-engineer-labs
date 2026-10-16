# Lab 21: Federate pipeline identity and protect secrets

[Previous: Lab 20](../20-identity-permissions/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 22](../22-security-scanning/README.md)

## Scenario, role, and outcome

A deployment uses a long-lived secret and logs too much configuration. Bind one exact federated subject and define safe secret/file handling.

Learner role: **Automation security engineer**. Outcome: Federate pipeline identity and protect secrets.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | security |
| Platforms | local, azure, github |
| Cost | none or approved hosted-run allowance — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification status | offline-tested |
| Verification scope | All five checkpoint commands, final validators and named fault/repair executed in CourseSecurityTelemetry.Tests.ps1 with fail-closed provider doubles. Local calculations, permission/reference/secure-file fixtures and .NET trace behavior are real; live provider calls, federation and telemetry export have not run. |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 21 service architecture: GitHub OIDC to Entra federation and an RG identity](diagrams/architecture.svg)

The actual federated-credential resource binds the exact GitHub repository/environment subject and token-exchange audience to an RG-owned managed identity. A running job would obtain a short-lived assertion from GitHub and exchange it through Entra for scoped target access. The core configures that binding; target-role use, Key Vault retrieval, and secure-file consumption require separately verified integration and never store token bytes in evidence.

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

Official objective topic IDs: `D4.1.2`, `D4.1.3`, `D4.2.1`, `D4.2.2`, `D4.2.3`, `D4.2.4`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Create the run-owned federation identity |
| [CP2](#task-2) | Bind the exact GitHub environment subject |
| [CP3](#task-3) | Parse and reject unsafe Key Vault references |
| [CP4](#task-4) | Consume and remove a synthetic secure file |
| [CP5](#task-5) | Check evidence for a synthetic leakage marker |

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
$lab = './labs/21-secrets-federation/scripts/cli'
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

OIDC exchanges a constrained workload assertion for an Azure token. Issuer, audience, and subject must all match; masking is defense in depth rather than permission to log secrets.

Federation removes a long-lived client secret by exchanging a provider assertion for a short-lived Azure token. Trust requires the correct issuer, audience and exact subject; the GitHub environment subject differs from a branch subject and from an Azure DevOps service connection.

The core creates a run-owned managed identity and its federated credential, then reads back the full trust tuple. A successful credential definition does not prove token exchange: the protected capstone supplies that integration evidence. Key Vault references and secure-file records here are reviewed handling contracts, not uploads of real secrets. Redaction and masking do not authorize logging sensitive values.

## Task 1 — Create the run-owned federation identity

<a id="task-1"></a>

Checkpoint: `CP1`

Foundation/supporting task; no additional exam-objective coverage is claimed.

```powershell
$m=az identity create --subscription $SubscriptionId --resource-group $ResourceGroup --location $Location --name "federated-$RunId" -o json|ConvertFrom-Json
 $m|ConvertTo-Json -Depth 8|Set-Content (Join-Path $WorkRoot 'federated-identity.json')
```

Expected state: A managed identity provides a federation target without creating a client secret.

Positive validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'federated-identity.json') -Raw|ConvertFrom-Json
 if(-not $m.clientId -or -not $m.principalId){throw 'Federation identity IDs absent.'}
```

Negative validation:

```powershell
$m=Get-Content (Join-Path $WorkRoot 'federated-identity.json') -Raw|ConvertFrom-Json
 if($m.id -notlike "*/resourceGroups/$ResourceGroup/*"){throw 'Unowned federation target.'}
```

Evidence to retain: Managed identity ID and explicitly nonsecret client/tenant metadata.

Common failure and safe retry: Use an RG-contained managed identity and least-privilege role, never a copied application password.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Bind the exact GitHub environment subject

<a id="task-2"></a>

Checkpoint: `CP2`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.2` | explained | Read the exact GitHub environment-subject federation contract; exchanging a live OIDC token occurs in the capstone integration. |
| `D4.2.2` | practiced | Create and query the managed-identity federated credential with exact issuer, audience and repository subject. |

```powershell
$subject="repo:${GhRepo}:environment:release-$RunId"
 az identity federated-credential create --subscription $SubscriptionId --resource-group $ResourceGroup --identity-name "federated-$RunId" --name github-release --issuer 'https://token.actions.githubusercontent.com' --subject $subject --audiences 'api://AzureADTokenExchange' -o json|Set-Content (Join-Path $WorkRoot 'federated-credential.json')
```

Expected state: Federation accepts one repository/environment subject and the Azure token-exchange audience.

Positive validation:

```powershell
$f=az identity federated-credential show --subscription $SubscriptionId --resource-group $ResourceGroup --identity-name "federated-$RunId" --name github-release -o json|ConvertFrom-Json
 if($f.subject -ne "repo:${GhRepo}:environment:release-$RunId"){throw 'Federation subject mismatch.'}
```

Negative validation:

```powershell
$f=Get-Content (Join-Path $WorkRoot 'federated-credential.json') -Raw|ConvertFrom-Json
 if($f.subject -match '\*' -or $f.issuer -ne 'https://token.actions.githubusercontent.com'){throw 'Untrusted or wildcard issuer/subject.'}
```

Evidence to retain: Issuer, subject, audience; no assertion JWT is retained.

Common failure and safe retry: Environment-bound and branch-bound subjects differ; copy the exact emitted subject and keep audience exact.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Parse and reject unsafe Key Vault references

<a id="task-3"></a>

Checkpoint: `CP3`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.1` | explained | Parse versioned and versionless Key Vault reference fixtures and reject insecure or misleading syntax; live secret resolution is explained separately. |

```powershell
& (Join-Path $LabRoot 'artifacts/Test-LocalSecretHandling.ps1') -Mode References -WorkRoot $WorkRoot
```

Expected state: Two HTTPS references are accepted; HTTP, an attacker-suffix hostname, and a plaintext value are rejected. Only one accepted reference pins a version.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'reference-results.json') -Raw|ConvertFrom-Json
if($r.accepted -ne 2 -or $r.rejected -ne 3 -or $r.versioned -ne 1){throw 'Reference cases did not match expected syntax and rotation behavior.'}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'reference-results.json') -Raw|ConvertFrom-Json
if($r.resolvedLive -or -not $r.fixtureOnly){throw 'Offline reference parsing cannot claim live secret resolution.'}
```

Evidence to retain: reference-results.json records counts without secret values.

Common failure and safe retry: Read the full vault hostname and SecretUri path. Versionless references follow rotation after the service refresh interval; a pinned version requires an explicit update.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Consume and remove a synthetic secure file

<a id="task-4"></a>

Checkpoint: `CP4`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.3` | explained | Exercise synthetic secure-file consumption and finally cleanup on both success and failure; provider Library authorization is explained, not emulated. |

```powershell
& (Join-Path $LabRoot 'artifacts/Test-LocalSecretHandling.ps1') -Mode FileLifetime -WorkRoot $WorkRoot
```

Expected state: The harmless input is hash-checked and consumed twice. A normal run and an injected consumer failure both remove the temporary file in finally.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'secure-file-results.json') -Raw|ConvertFrom-Json
if(@($r.runs).Count -ne 2 -or @($r.runs|Where-Object {-not $_.consumed -or -not $_.removed}).Count -or @($r.runs|Where-Object consumerFailed).Count -ne 1){throw 'Successful and failing consumers must both remove their temporary input.'}
```

Negative validation:

```powershell
if(Get-ChildItem -LiteralPath $WorkRoot -Filter 'synthetic-secure-file-*.tmp'){throw 'Synthetic secure-file residual remains.'}
if((Get-Content (Join-Path $WorkRoot 'secure-file-results.json') -Raw|ConvertFrom-Json).providerAuthorizationVerified){throw 'Local lifetime exercise cannot claim provider authorization.'}
```

Evidence to retain: secure-file-results.json plus an empty residual file search; no real key is used.

Common failure and safe retry: Cleanup belongs in finally, including consumer failure. Azure DevOps Library authorization, approvals, and agent filesystem permissions remain separate prerequisite checks.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Check evidence for a synthetic leakage marker

<a id="task-5"></a>

Checkpoint: `CP5`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.3` | explained | Compare the DevOps service-connection federation issuer/subject with GitHub OIDC; connection provisioning is a bootstrap prerequisite. |
| `D4.2.4` | practiced | Scan nonsecret fixture material and reject the deterministic synthetic leak marker. |

```powershell
$safe='status=complete; value=<redacted>';Set-Content (Join-Path $WorkRoot 'redacted-log.txt') $safe
 $marker='AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
 $leaks=Select-String -Path (Join-Path $WorkRoot 'redacted-log.txt') -SimpleMatch $marker
 [ordered]@{markerFound=[bool]$leaks;redacted=$safe.Contains('<redacted>')}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'leak-check.json')
```

Expected state: The evidence contains a redaction marker and no synthetic secret.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'leak-check.json') -Raw|ConvertFrom-Json
 if(-not $r.redacted){throw 'Expected redaction evidence absent.'}
```

Negative validation:

```powershell
if(Select-String -Path (Join-Path $WorkRoot 'redacted-log.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'){throw 'Synthetic secret leaked into log.'}
```

Evidence to retain: Pass/fail leakage check only; never include the real credential being checked.

Common failure and safe retry: Masking can miss transformed values; minimize secret exposure and avoid debug tracing around token exchange.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Run the journaled operation after all five checkpoints. It proves the healthy assertion, injects the named fault, requires its rejection, repairs it, and proves health again. Provider doubles used in author tests are not live enforcement evidence.

```powershell
& './labs/21-secrets-federation/scripts/cli/BreakFix.ps1' -RunId 'demo01' -Execute
```

Expected rejection marker: `AZ400-L21-FAULT`. The assertion must catch the changed behavior, not merely an exception from an unavailable CLI.

Inspect the independent assertion:

```powershell
if(Select-String -Path (Join-Path $WorkRoot 'redacted-log.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'){throw 'AZ400-L21-FAULT'}
```

Fault trigger (executed by BreakFix):

```powershell
Add-Content (Join-Path $WorkRoot 'redacted-log.txt') 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
```

Diagnose the precise difference:

```powershell
Select-String -Path (Join-Path $WorkRoot 'redacted-log.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
```

Repair (executed by BreakFix):

```powershell
Set-Content (Join-Path $WorkRoot 'redacted-log.txt') 'status=complete; value=<redacted>'
```

## Optional job-style challenge

Configure a separately approved Azure DevOps workload-identity service connection to the RG-contained identity using the exact service-connection issuer/subject, then prove no client secret exists.

## Final validation and result interpretation

```powershell
& './labs/21-secrets-federation/scripts/cli/Validate.ps1' -RunId 'demo01'
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
& './labs/21-secrets-federation/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/21-secrets-federation/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/entra/workload-id/workload-identity-federation) — reviewed 2026-10-16.
- [Primary source 2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/configure-workload-identity) — reviewed 2026-10-16.
- [Primary source 3](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure) — reviewed 2026-10-16.
- [Primary source 4](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files) — reviewed 2026-10-16.
- [Primary source 5](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references) — reviewed 2026-10-16.
- [Primary source 6](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-secure-file-v1?view=azure-pipelines) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `BreakFix.ps1`, `Integration.ps1` (capstones), `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
