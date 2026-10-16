# Lab 22: Scan dependencies, code, containers, and licenses

[Previous: Lab 21](../21-secrets-federation/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 23](../23-advanced-security-defender/README.md)

## Scenario, role, and outcome

The team scans only direct packages and treats any green scan as compliance. Separate dependency, code, secret, container, and licensing evidence.

Learner role: **Product security engineer**. Outcome: Scan dependencies, code, containers, and licenses.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | security |
| Platforms | local |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification status | offline-tested |
| Verification scope | All five checkpoint commands, final validators and named fault/repair passed in CourseScanMonitorSequences.Tests.ps1. Local .NET package inventory/advisory queries and Gitleaks scans are real. GitHub/Azure APIs and Docker/Trivy reports are explicit fixtures; live security integration and alert delivery have not run. Repository CI separately runs the actual application container. |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 22 service architecture: Separate assurance surfaces feeding a release decision](diagrams/architecture.svg)

Direct/transitive package locks are checked against current vulnerability advisories, while source, container, secret, and licensing surfaces require distinct evidence. The core performs dependency queries, a synthetic leakage rule, and a license review queue; the CodeQL/container contracts remain separate live scanner integrations. Unknown licensing or an unexecuted scanner cannot become a green release decision.

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

Official objective topic IDs: `D1.2.5`, `D4.2.4`, `D4.3.1`, `D4.3.5`, `D4.3.6`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Inventory direct and transitive dependencies |
| [CP2](#task-2) | Run the vulnerability advisory check |
| [CP3](#task-3) | Run a real secret scanner against clean and leaking fixtures |
| [CP4](#task-4) | Build and scan the exact local container image |
| [CP5](#task-5) | Collect real license findings and classify unknowns |

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
$lab = './labs/22-security-scanning/scripts/cli'
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

Scanners observe different surfaces and databases change over time. Findings need severity, reachability, ownership, and remediation; unknown license status cannot become automatic approval.

Use different scanners for different surfaces: secret discovery, source analysis, package advisories, container layers and licenses are not interchangeable. Pin Gitleaks 8.30.1 and Trivy 0.76.0 for the course tooling; record database timestamps because findings can change while source remains identical.

The real local lanes run Gitleaks on clean/nonsecret leaking fixtures, build one uniquely tagged Docker image and scan that exact image with Trivy, then collect license results. High/critical findings block the sample release decision; an empty/unknown license cannot become automatic legal approval. Image removal checks the run label and runs even after failures. CodeQL/Dependabot provider enablement remains an explained configuration contract unless its authorized workflow is executed.

Pinned exercise tool versions: `gitleaks` 8.30.1, `trivy` 0.76.0, `docker` Engine with Linux container support. See the primary release sources below.

## Task 1 — Inventory direct and transitive dependencies

<a id="task-1"></a>

Checkpoint: `CP1`

Foundation/supporting task; no additional exam-objective coverage is claimed.

```powershell
dotnet list (Join-Path $RepoRoot 'samples/DevOps.slnx') package --include-transitive --format json|Set-Content (Join-Path $WorkRoot 'dependencies.json')
 if($LASTEXITCODE -ne 0){throw 'Dependency inventory failed.'}
```

Expected state: Machine-readable dependency provenance includes transitive packages.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'dependencies.json') -Raw|ConvertFrom-Json
 if(@($d.projects).Count -lt 2){throw 'Dependency inventory omitted a project.'}
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'dependencies.json') -Raw
 if($d -match 'password=|client_secret='){throw 'Sensitive restore configuration leaked.'}
```

Evidence to retain: Package IDs/versions and lock-file fingerprints.

Common failure and safe retry: Restore approved sources first and review transitive exposure, not just direct references.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Run the vulnerability advisory check

<a id="task-2"></a>

Checkpoint: `CP2`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.5` | practiced | Query advisory counts/severity and keep timestamps/scope explicit. |

```powershell
dotnet list (Join-Path $RepoRoot 'samples/DevOps.slnx') package --vulnerable --include-transitive --format json|Set-Content (Join-Path $WorkRoot 'vulnerabilities.json')
 if($LASTEXITCODE -ne 0){throw 'Vulnerability advisory query failed.'}
```

Expected state: The advisory result records known package findings at query time.

Positive validation:

```powershell
$v=Get-Content (Join-Path $WorkRoot 'vulnerabilities.json') -Raw|ConvertFrom-Json
 if(@($v.projects).Count -lt 1){throw 'Vulnerability report lacks project scope.'}
```

Negative validation:

```powershell
$v=Get-Content (Join-Path $WorkRoot 'vulnerabilities.json') -Raw
 if($v -match '"severity"\s*:\s*"(High|Critical)"'){throw 'High/critical dependency advisory requires remediation.'}
```

Evidence to retain: Advisory IDs/severity and UTC scan date; do not claim future vulnerability absence.

Common failure and safe retry: Update the smallest compatible dependency set, regenerate locks, rerun tests, and document accepted residual risk.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Run a real secret scanner against clean and leaking fixtures

<a id="task-3"></a>

Checkpoint: `CP3`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.4` | practiced | Run the real Gitleaks CLI on clean and deliberately seeded nonsecret fixtures and inspect its blocking exit/report. |
| `D4.3.1` | practiced | Execute and distinguish secret scanning from the separately explained CodeQL provider integration. |

```powershell
$scan=Join-Path $WorkRoot 'scan-target';New-Item -ItemType Directory -Force $scan|Out-Null
'public-setting=training'|Set-Content (Join-Path $scan 'settings.txt')
'public-setting=training'|Set-Content (Join-Path $WorkRoot 'scan-fixture.txt')
@'
title = "AZ400 synthetic noncredential fixture"
[[rules]]
id = "az400-synthetic"
description = "Nonsecret training marker"
regex = 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
'@|Set-Content (Join-Path $WorkRoot 'gitleaks.toml')
gitleaks dir $scan --config (Join-Path $WorkRoot 'gitleaks.toml') --report-format json --report-path (Join-Path $WorkRoot 'secret-clean.json') --redact --no-banner
if($LASTEXITCODE -ne 0){throw 'Clean scanner baseline failed.'}
Add-Content (Join-Path $scan 'settings.txt') 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
$saved=$PSNativeCommandUseErrorActionPreference
try{$PSNativeCommandUseErrorActionPreference=$false;gitleaks dir $scan --config (Join-Path $WorkRoot 'gitleaks.toml') --report-format json --report-path (Join-Path $WorkRoot 'secret-blocked.json') --redact --no-banner;$code=$LASTEXITCODE}finally{$PSNativeCommandUseErrorActionPreference=$saved}
if($code -ne 1){throw 'Scanner did not block the known nonsecret fixture.'}
'public-setting=training'|Set-Content (Join-Path $scan 'settings.txt')
```

Expected state: A real scanner accepts clean files and returns exit1 with a redacted finding for the custom noncredential marker.

Positive validation:

```powershell
$clean=@(Get-Content (Join-Path $WorkRoot 'secret-clean.json') -Raw|ConvertFrom-Json)
$blocked=@(Get-Content (Join-Path $WorkRoot 'secret-blocked.json') -Raw|ConvertFrom-Json)
if($clean.Count -ne 0 -or @($blocked|Where-Object RuleID -eq 'az400-synthetic').Count -lt 1){throw 'Secret scanner boundary was not observed.'}
```

Negative validation:

```powershell
$blocked=Get-Content (Join-Path $WorkRoot 'secret-blocked.json') -Raw
if($blocked -match 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE' -or (Select-String -Path (Join-Path $WorkRoot 'scan-target/settings.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE')){throw 'Scanner report or repaired source retained unredacted marker.'}
```

Evidence to retain: Scanner version, rule ID, exit codes, and redacted JSON; the marker is not a credential.

Common failure and safe retry: Install the approved scanner during bootstrap. A custom fixture proves rule execution and exit propagation, not completeness of every production credential detector.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Build and scan the exact local container image

<a id="task-4"></a>

Checkpoint: `CP4`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.5` | practiced | Build an exact local image, run Trivy on that tag, and apply a high/critical vulnerability gate. |

```powershell
$tag="az400-lab22:$RunId"
$nativePreference=$PSNativeCommandUseErrorActionPreference;$PSNativeCommandUseErrorActionPreference=$false
try{
 $existing=docker image inspect $tag --format '{{ index .Config.Labels "az400.run" }}' 2>$null
 if($LASTEXITCODE -eq 0 -and $existing -ne $RunId){throw 'Container tag already belongs to another run; refusing to replace it.'}
 docker build --label "az400.run=$RunId" --label az400.lab=22 --file (Join-Path $RepoRoot 'samples/Dockerfile') --tag $tag $RepoRoot
 if($LASTEXITCODE -ne 0){throw 'Container build failed.'}
 $id=docker image inspect $tag --format '{{.Id}}'
 if($LASTEXITCODE -ne 0){throw 'Built image identity unavailable.'}
 $id|Set-Content (Join-Path $WorkRoot 'scanned-image-id.txt')
 trivy image --scanners vuln --format json --output (Join-Path $WorkRoot 'container-scan.json') --exit-code 0 $tag
 if($LASTEXITCODE -ne 0){throw 'Container scanner could not complete.'}
 $r=Get-Content (Join-Path $WorkRoot 'container-scan.json') -Raw|ConvertFrom-Json
 $high=@($r.Results|ForEach-Object Vulnerabilities|Where-Object {$null -ne $_ -and $_.Severity -in @('HIGH','CRITICAL')})
 @{imageId=$id;highCritical=$high.Count;releaseAllowed=($high.Count -eq 0);scanner='Trivy'}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'container-gate.json')
}finally{
 try{
 $owned=docker image inspect $tag --format '{{ index .Config.Labels "az400.run" }}' 2>$null
 if($LASTEXITCODE -eq 0){
  if($owned -ne $RunId){throw 'Container ownership mismatch; do not remove unrelated image.'}
  docker image rm $tag|Out-Null
  if($LASTEXITCODE -ne 0){throw 'Run-owned container tag cleanup failed; inspect the exact tag.'}
 }
 }finally{$PSNativeCommandUseErrorActionPreference=$nativePreference}
}
```

Expected state: Trivy records actual image findings tied to the local image ID, computes the release decision, and the uniquely tagged training image is removed.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'container-scan.json') -Raw|ConvertFrom-Json
$g=Get-Content (Join-Path $WorkRoot 'container-gate.json') -Raw|ConvertFrom-Json
if($g.imageId -ne (Get-Content (Join-Path $WorkRoot 'scanned-image-id.txt')) -or -not $r.ArtifactName){throw 'Scanned artifact provenance incomplete.'}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'container-scan.json') -Raw|ConvertFrom-Json
$g=Get-Content (Join-Path $WorkRoot 'container-gate.json') -Raw|ConvertFrom-Json
$high=@($r.Results|ForEach-Object Vulnerabilities|Where-Object {$null -ne $_ -and $_.Severity -in @('HIGH','CRITICAL')})
if($g.releaseAllowed -ne ($high.Count -eq 0)){throw 'Security gate ignored high/critical findings.'}
```

Evidence to retain: Image ID, scanner/database metadata, severity counts and gate decision; zero findings is a dated observation.

Common failure and safe retry: A completed scan can correctly block a release. Remediate findings and rebuild/retest the changed digest; never reuse a mutable tag as proof.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Collect real license findings and classify unknowns

<a id="task-5"></a>

Checkpoint: `CP5`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.6` | explained | Inspect the Dependabot/CodeQL configuration contract; local vulnerability/license scanning does not enable provider dependency alerts. |

```powershell
trivy fs --scanners license --license-full --skip-dirs '**/bin' --skip-dirs '**/obj' --format json --output (Join-Path $WorkRoot 'license-scan.json') (Join-Path $RepoRoot 'samples')
if($LASTEXITCODE -ne 0){throw 'License scanner failed.'}
$r=Get-Content (Join-Path $WorkRoot 'license-scan.json') -Raw|ConvertFrom-Json
$found=@($r.Results|ForEach-Object Licenses|Where-Object {$null -ne $_})
$allowed=@('MIT','Apache-2.0','BSD-3-Clause')
$queue=@($found|ForEach-Object {@{package=$_.PkgName;license=$_.Name;status=$(if($_.Name -in $allowed){'policy-candidate'}else{'manual-review'})}})
@{scannerFindings=$found.Count;review=$queue;unknownsRemain=$true;automaticLegalApproval=$false}|ConvertTo-Json -Depth 8|Set-Content (Join-Path $WorkRoot 'license-review.json')
Copy-Item (Join-Path $LabRoot 'artifacts/security.yml') (Join-Path $WorkRoot 'security.yml')
```

Expected state: A real license scan produces review inputs; unknown/undetected metadata remains pending and no automatic legal approval is granted.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'license-scan.json') -Raw|ConvertFrom-Json
$q=Get-Content (Join-Path $WorkRoot 'license-review.json') -Raw|ConvertFrom-Json
if(-not $r.ArtifactName -or $null -eq $q.scannerFindings){throw 'License scan evidence missing.'}
```

Negative validation:

```powershell
$q=Get-Content (Join-Path $WorkRoot 'license-review.json') -Raw|ConvertFrom-Json
if($q.automaticLegalApproval -or -not $q.unknownsRemain){throw 'Unknown licenses were silently approved.'}
```

Evidence to retain: Scanner provenance, detected expressions, policy candidates and manual-review obligations.

Common failure and safe retry: Scanner detection is not legal advice or approval. Check package primary metadata, SPDX expressions and notices; CodeQL provider configuration is a separate explained/gated workflow.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Run the journaled operation after all five checkpoints. It proves the healthy assertion, injects the named fault, requires its rejection, repairs it, and proves health again. Provider doubles used in author tests are not live enforcement evidence.

```powershell
& './labs/22-security-scanning/scripts/cli/BreakFix.ps1' -RunId 'demo01' -Execute
```

Expected rejection marker: `AZ400-L22-FAULT`. The assertion must catch the changed behavior, not merely an exception from an unavailable CLI.

Inspect the independent assertion:

```powershell
if(Select-String -Path (Join-Path $WorkRoot 'scan-fixture.txt') -Pattern 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE|BEGIN PRIVATE KEY'){throw 'AZ400-L22-FAULT'}
```

Fault trigger (executed by BreakFix):

```powershell
Add-Content (Join-Path $WorkRoot 'scan-fixture.txt') 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
```

Diagnose the precise difference:

```powershell
Select-String -Path (Join-Path $WorkRoot 'scan-fixture.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'
```

Repair (executed by BreakFix):

```powershell
Set-Content (Join-Path $WorkRoot 'scan-fixture.txt') 'public-setting=training'
```

## Optional job-style challenge

Run approved local secret, CodeQL, container, and license scanners; deliberately introduce a nonsecret fixture that fails one gate and retain remediation evidence.

## Final validation and result interpretation

```powershell
& './labs/22-security-scanning/scripts/cli/Validate.ps1' -RunId 'demo01'
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
& './labs/22-security-scanning/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/22-security-scanning/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list) — reviewed 2026-10-16.
- [Primary source 2](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql) — reviewed 2026-10-16.
- [Primary source 3](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts) — reviewed 2026-10-16.
- [Primary source 4](https://github.com/gitleaks/gitleaks) — reviewed 2026-10-16.
- [Primary source 5](https://trivy.dev/docs/latest/target/filesystem/) — reviewed 2026-10-16.
- [Primary source 6](https://github.com/gitleaks/gitleaks/releases/tag/v8.30.1) — reviewed 2026-10-16.
- [Primary source 7](https://github.com/aquasecurity/trivy/releases/tag/v0.76.0) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `BreakFix.ps1`, `Integration.ps1` (capstones), `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
