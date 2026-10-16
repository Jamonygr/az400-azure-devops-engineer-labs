# Lab 03 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Unsigned and modified payloads must fail even when their JSON remains valid. The wiki read proves documentation publication; the local signature fixture does not prove external webhook delivery.

Author verification: **offline-tested**. All five checkpoint commands, final validators, named fault rejection and repair executed. Wiki provider operations use fail-closed doubles; local HMAC/Git are real.

## CP1 — Generate release notes from Git history

Recent committed changes become a reproducible release-note draft.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.3` | practiced | Read actual recent Git commit history and render traceable release-note subjects. |

Retain and inspect: Draft notes and exact source commit range.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Create notes from committed sandbox changes and review text before publication.

## CP2 — Author a process diagram and API handoff

Markdown captures both release sequence and a concrete API contract.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.2` | practiced | Generate release notes from actual Git history in CP1 and add a reviewed API handoff in CP2. |

Retain and inspect: handoff.md and an explanation of approval ownership.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep Mermaid syntax supported by your renderer and document status codes, not screenshots.

## CP3 — Authenticate and reject webhook payloads locally

A real HMAC-SHA256 verification function accepts original bytes and rejects tampering and missing signatures; the external webhook stays inactive.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.4` | practiced | Verify HMAC-SHA256 for original, tampered, and unsigned local webhook payloads; no delivery endpoint is activated. |

Retain and inspect: Signature test outcomes and inactive event subscription; never retain a real webhook secret.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Compute HMAC over exact request bytes and compare in constant time. Receiver routing, replay protection, and approved external activation are separate controls.

## CP4 — Create a sandbox project wiki from Markdown

A sandbox wiki contains the process handoff.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.1` | practiced | Create and read the run-owned Azure DevOps wiki page with a Mermaid flow. |

Retain and inspect: Wiki ID/path and content digest.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the fresh project wiki; do not replace an organization knowledge base.

## CP5 — Review Teams and Boards integration before authorization

An explicit integration contract identifies authorization and filters; no Teams message is sent.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.3.5` | explained | Review a Boards notification contract; configuring the account-level integration remains a bootstrap task. |
| `D1.3.6` | explained | Review a Teams notification payload and connection prerequisites; no external message is sent. |

Retain and inspect: integration-review.json plus the bootstrap authorization checklist.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Authorize external applications only through the separate account-bootstrap procedure, then test with approved recipients.

## Repair and recovery

Expected failure marker: `AZ400-L03-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json
if($h.config.insecure_ssl -ne '0' -or $h.config.url -notmatch '^https://'){throw 'AZ400-L03-FAULT'}
```

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json;$h.config.insecure_ssl='0';$h|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'webhook-proposal.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
