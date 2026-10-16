# Lab 03: Publish documentation and configure integrations

[Previous: Lab 02](../02-devops-metrics/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 04](../04-branching-pull-requests/README.md)

## Scenario, role, and outcome

A change is ready for review but operational handoff and external integration ownership are unclear. Generate a reproducible release handoff and a bounded integration proposal.

Learner role: **Release coordinator**. Outcome: Publish documentation and configure integrations.

| Item | Value |
|---|---|
| Time | 120 minutes |
| Domain | process |
| Platforms | local, azure-devops |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification status | offline-tested |
| Verification scope | All five checkpoint commands, final validators, named fault rejection and repair executed. Wiki provider operations use fail-closed doubles; local HMAC/Git are real. |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 03 service architecture: Documentation publication and integration contracts](diagrams/architecture.svg)

Git history and Markdown become a versioned release/API handoff published to the disposable Azure DevOps wiki. An inactive webhook payload defines a separate notification contract. Activating a signed receiver or Teams integration requires its owner and separate bootstrap consent; this lab sends no external messages.

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

Official objective topic IDs: `D1.3.1`, `D1.3.2`, `D1.3.3`, `D1.3.4`, `D1.3.5`, `D1.3.6`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Generate release notes from Git history |
| [CP2](#task-2) | Author a process diagram and API handoff |
| [CP3](#task-3) | Authenticate and reject webhook payloads locally |
| [CP4](#task-4) | Create a sandbox project wiki from Markdown |
| [CP5](#task-5) | Evaluate notification filtering and sanitized handoffs locally |

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
$lab = './labs/03-collaboration-documentation/scripts/cli'
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

Documentation is a versioned delivery artifact. Webhooks need authenticated receivers and narrow event subscriptions; external app authorization is a separate privileged action.

Generate release notes from actual history, then add user impact and operational guidance through review. Commit subjects provide provenance, but they cannot infer customer impact or database compatibility. A diagram in a wiki should describe the handoff that operators actually need.

The HMAC fixture uses a clearly nonsecret training key. Verify the exact raw bytes with constant-time comparison before parsing a webhook event; appending whitespace invalidates the signature. Real receivers additionally need replay/event-ID deduplication, narrow event selection, TLS, key rotation and bounded delivery retries. The inactive webhook and Teams/Boards proposals require separate account authorization.

## Task 1 — Generate release notes from Git history

<a id="task-1"></a>

Checkpoint: `CP1`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.3` | practiced | Read actual recent Git commit history and render traceable release-note subjects. |

```powershell
git -C $RepoRoot log -10 --pretty=format:'- %h %s' | Set-Content (Join-Path $WorkRoot 'release-notes.md')
 Get-Content (Join-Path $WorkRoot 'release-notes.md')
```

Expected state: Recent committed changes become a reproducible release-note draft.

Positive validation:

```powershell
$n=Get-Content (Join-Path $WorkRoot 'release-notes.md') -Raw
 if ($n -notmatch '[0-9a-f]{7}') { throw 'No commit identities in release notes.' }
```

Negative validation:

```powershell
$n=Get-Content (Join-Path $WorkRoot 'release-notes.md') -Raw
 if ($n -match '(?i)ghp_[a-z0-9]{20}') { throw 'Credential-like value in release draft.' }
```

Evidence to retain: Draft notes and exact source commit range.

Common failure and safe retry: Create notes from committed sandbox changes and review text before publication.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Author a process diagram and API handoff

<a id="task-2"></a>

Checkpoint: `CP2`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.2` | practiced | Generate release notes from actual Git history in CP1 and add a reviewed API handoff in CP2. |

```powershell
@('# Release handoff','```mermaid','flowchart LR','  Commit --> Build','  Build --> Test','  Test --> Approval','  Approval --> Deploy','```','API: GET /health/ready returns readiness status.')|Set-Content (Join-Path $WorkRoot 'handoff.md')
```

Expected state: Markdown captures both release sequence and a concrete API contract.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'handoff.md') -Raw
 if ($d -notmatch 'flowchart LR' -or $d -notmatch '/health/ready') { throw 'Handoff lacks process/API contract.' }
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'handoff.md') -Raw
 if ($d -match 'password=|client_secret=') { throw 'Sensitive configuration in documentation.' }
```

Evidence to retain: handoff.md and an explanation of approval ownership.

Common failure and safe retry: Keep Mermaid syntax supported by your renderer and document status codes, not screenshots.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Authenticate and reject webhook payloads locally

<a id="task-3"></a>

Checkpoint: `CP3`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.4` | practiced | Verify HMAC-SHA256 for original, tampered, and unsigned local webhook payloads; no delivery endpoint is activated. |

```powershell
$hook=[ordered]@{name='web';active=$false;events=@('workflow_run');config=@{url='https://receiver.example.invalid/az400';content_type='json';insecure_ssl='0'}}
$hook|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'webhook-proposal.json')
@'
import hashlib,hmac,json
KEY=b"az400-nonsecret-training-fixture"
def accepts(body,signature):
 expected="sha256="+hmac.new(KEY,body,hashlib.sha256).hexdigest()
 return isinstance(signature,str) and signature.startswith("sha256=") and hmac.compare_digest(signature,expected)
body=b'{"event":"workflow_run","conclusion":"failure"}'
signature="sha256="+hmac.new(KEY,body,hashlib.sha256).hexdigest()
result={"validAccepted":accepts(body,signature),"tamperedRejected":not accepts(body+b" ",signature),"missingRejected":not accepts(body,None),"fixtureOnly":True}
if not all(result[k] for k in ("validAccepted","tamperedRejected","missingRejected")):raise SystemExit("webhook signature boundary failed")
print(json.dumps(result))

'@|Set-Content (Join-Path $WorkRoot 'verify_webhook.py')
python (Join-Path $WorkRoot 'verify_webhook.py')|Set-Content (Join-Path $WorkRoot 'webhook-verification.json')
if($LASTEXITCODE -ne 0){throw 'Webhook signature tests failed.'}
```

Expected state: A real HMAC-SHA256 verification function accepts original bytes and rejects tampering and missing signatures; the external webhook stays inactive.

Positive validation:

```powershell
$r=python (Join-Path $WorkRoot 'verify_webhook.py')|ConvertFrom-Json
if(-not $r.validAccepted -or -not $r.tamperedRejected){throw 'Webhook authenticity boundary failed.'}
```

Negative validation:

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json
$r=Get-Content (Join-Path $WorkRoot 'webhook-verification.json') -Raw|ConvertFrom-Json
if($h.active -or $h.config.insecure_ssl -ne '0' -or -not $r.missingRejected){throw 'Webhook transport/signature gate failed.'}
```

Evidence to retain: Signature test outcomes and inactive event subscription; never retain a real webhook secret.

Common failure and safe retry: Compute HMAC over exact request bytes and compare in constant time. Receiver routing, replay protection, and approved external activation are separate controls.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Create a sandbox project wiki from Markdown

<a id="task-4"></a>

Checkpoint: `CP4`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.1` | practiced | Create and read the run-owned Azure DevOps wiki page with a Mermaid flow. |

```powershell
$page=Join-Path $WorkRoot 'handoff.md'
 $wiki=az devops wiki create --organization $AdoOrganization --project $AdoProject --name "handoff-$RunId" --type projectWiki -o json|ConvertFrom-Json
 $wiki.id|Set-Content (Join-Path $WorkRoot 'wiki-id.txt')
 az devops wiki page create --organization $AdoOrganization --project $AdoProject --wiki $wiki.id --path '/Release handoff' --file-path $page -o json|Set-Content (Join-Path $WorkRoot 'wiki-page.json')
```

Expected state: A sandbox wiki contains the process handoff.

Positive validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'wiki-id.txt')
 $p=az devops wiki page show --organization $AdoOrganization --project $AdoProject --wiki $id --path '/Release handoff' --include-content -o json|ConvertFrom-Json
 if ($p.page.content -notmatch 'flowchart LR') { throw 'Wiki omitted process diagram.' }
```

Negative validation:

```powershell
$w=Get-Content (Join-Path $WorkRoot 'wiki-page.json') -Raw|ConvertFrom-Json
 if (-not $w.page.path -or $w.page.path -notmatch 'Release handoff') { throw 'Wrong wiki page boundary.' }
```

Evidence to retain: Wiki ID/path and content digest.

Common failure and safe retry: Use the fresh project wiki; do not replace an organization knowledge base.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Evaluate notification filtering and sanitized handoffs locally

<a id="task-5"></a>

Checkpoint: `CP5`

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.5` | explained | Review a Boards notification contract; configuring the account-level integration remains a bootstrap task. |
| `D1.3.6` | explained | Review a Teams notification payload and connection prerequisites; no external message is sent. |

```powershell
$review=[ordered]@{boardsProject=$AdoProject;githubRepository=$GhRepo;teamsChannel='UNCONFIGURED';notifications=@('release failure');externalAuthorizationRequired=$true;messagesSent=0}
 $review|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'integration-review.json')
$events=@(@{id='release-failed';kind='release failure';repository=$GhRepo;secret='synthetic-only'},@{id='issue-edited';kind='issue edit';repository=$GhRepo;secret='synthetic-only'},@{id='foreign-release';kind='release failure';repository='another/owner';secret='synthetic-only'})
$queued=@($events|Where-Object {$_.kind -in $review.notifications -and $_.repository -eq $GhRepo}|ForEach-Object {@{id=$_.id;summary='Release failed; investigate the access-controlled build record.';destination='UNCONFIGURED'}})
@{fixtureOnly=$true;inputCount=$events.Count;queued=$queued;messagesSent=0}|ConvertTo-Json -Depth 6|Set-Content (Join-Path $WorkRoot 'notification-preview.json')
```

Expected state: Three synthetic events exercise repository and event filters; only the owned failed release produces a sanitized preview. No external message is sent.

Positive validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'integration-review.json') -Raw|ConvertFrom-Json
 if (-not $r.externalAuthorizationRequired -or $r.notifications[0] -ne 'release failure') { throw 'Integration needs explicit authorization and event selection.' }
$p=Get-Content (Join-Path $WorkRoot 'notification-preview.json') -Raw|ConvertFrom-Json
if($p.inputCount -ne 3 -or @($p.queued).Count -ne 1 -or $p.queued[0].id -ne 'release-failed'){throw 'Notification filter failed its owned/routine/foreign cases.'}
```

Negative validation:

```powershell
$r=Get-Content (Join-Path $WorkRoot 'integration-review.json') -Raw|ConvertFrom-Json
 if ($r.messagesSent -ne 0) { throw 'This review must not send external notifications.' }
$text=Get-Content (Join-Path $WorkRoot 'notification-preview.json') -Raw
if($text -match 'synthetic-only|"secret"' -or ($text|ConvertFrom-Json).messagesSent -ne 0){throw 'Notification preview leaked input fields or sent external traffic.'}
```

Evidence to retain: Input count, selected event identity, sanitized preview and separate account-level authorization requirements.

Common failure and safe retry: Authorize external applications only through the separate account-bootstrap procedure, then test with approved recipients.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Run the journaled operation after all five checkpoints. It proves the healthy assertion, injects the named fault, requires its rejection, repairs it, and proves health again. Provider doubles used in author tests are not live enforcement evidence.

```powershell
& './labs/03-collaboration-documentation/scripts/cli/BreakFix.ps1' -RunId 'demo01' -Execute
```

Expected rejection marker: `AZ400-L03-FAULT`. The assertion must catch the changed behavior, not merely an exception from an unavailable CLI.

Inspect the independent assertion:

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json
if($h.config.insecure_ssl -ne '0' -or $h.config.url -notmatch '^https://'){throw 'AZ400-L03-FAULT'}
```

Fault trigger (executed by BreakFix):

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json;$h.config.insecure_ssl='1';$h|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'webhook-proposal.json')
```

Diagnose the precise difference:

```powershell
Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json|Select-Object -ExpandProperty config
```

Repair (executed by BreakFix):

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json;$h.config.insecure_ssl='0';$h|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'webhook-proposal.json')
```

## Optional job-style challenge

Produce release notes with changes, migration requirements, rollback, and links to accepted work without exposing internal identifiers.

## Final validation and result interpretation

```powershell
& './labs/03-collaboration-documentation/scripts/cli/Validate.ps1' -RunId 'demo01'
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
& './labs/03-collaboration-documentation/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/03-collaboration-documentation/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints.

## Microsoft and platform sources

- [Primary source 1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo) — reviewed 2026-10-16.
- [Primary source 2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `BreakFix.ps1`, `Integration.ps1` (capstones), `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
