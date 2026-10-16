# Lab 23 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

A reachable owned high finding must retain a blocking remediation decision. A false-positive status requires supporting evidence and reviewer/expiry context, not a convenient severity override.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Inspect repository security capability metadata

Repository visibility and exposed security feature capabilities are recorded.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Feature metadata and plan/license constraints.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Capabilities depend on repository ownership/visibility and account licensing; unavailable access is a gate.

## CP2 — Prepare an explicit Advanced Security entitlement review

Paid activation remains blocked until an authorized billing owner approves it.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.3` | explained | Inspect existing GitHub/DevOps advanced-security eligibility and capabilities; paid enforcement is not exercised automatically. |

Retain and inspect: Product feature/entitlement matrix dated to the current review.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Check current product names, pricing, and eligible repositories before enabling billable scanning.

## CP3 — Inspect Microsoft Defender pricing state without changing plans

Current subscription plan state is read; no Defender plan is enabled.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.2` | explained | Read available Defender context and document the explicit entitlement/connector prerequisites; no Defender plan is enabled. |

Retain and inspect: Plan names/tier, with subscription identity redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Security Reader permission may be needed. Never call pricing create/update to bypass a missing entitlement.

## CP4 — Correlate and scope security finding fixtures

Two owned repository/project fixtures are correlated and one foreign finding is excluded; no organization connector is created.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.4` | practiced | Correlate synthetic repository findings by exact owned scope and severity; a Defender connector is explained, not configured. |

Retain and inspect: Clearly labeled input fixture, owned results, exclusions and blocking count.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Real Defender correlation needs a separately approved source connector. A source host, repository ID and alert ID are different identity dimensions.

## CP5 — Triage a synthetic finding with an evidence-based decision

A reachable high finding blocks release and has a named remediation owner.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Finding ID, owner, reachability rationale, and remediation criteria.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Record concrete false-positive evidence before dismissal; severity changes require traceable review.

## Repair and recovery

Expected failure marker: `AZ400-L23-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$f=Get-Content (Join-Path $WorkRoot 'triage.json') -Raw|ConvertFrom-Json
if($f.reachable -and $f.severity -eq 'high' -and $f.dismissed){throw 'AZ400-L23-FAULT'}
```

```powershell
$f=Get-Content (Join-Path $WorkRoot 'triage.json') -Raw|ConvertFrom-Json;$f.dismissed=$false;$f|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'triage.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
