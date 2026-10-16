# Lab 15 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The drift assertion reads the real staging traffic percentage. Do not treat a successful routing command as proof that the candidate has the expected revision or acceptable telemetry.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair passed in CourseReleaseSequences.Tests.ps1. Local .NET publishing/tests, EF SQL generation and Bicep compilation are real; GitHub, Azure and readiness HTTP responses are explicit fail-closed doubles. Live release, SQL authentication and traffic routing have not run.

## CP1 — Create a slot-capable App Service sandbox

A billable S1 Linux plan supports a .NET10 app and deployment slots.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Plan SKU, app ID, and reviewed same-session cleanup cost.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Review current pricing/quotas before -Execute; never silently replace S1 with a larger SKU.

## CP2 — Publish and package the application once

An immutable ZIP contains the app at its root.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: ZIP digest and app revision.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Zip the published file contents, not their enclosing directory.

## CP3 — Deploy identical bytes to production and staging

Both slots receive the same reviewed artifact before progressive routing.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.3` | practiced | Deploy and probe a staging slot separately from production. |

Retain and inspect: Deployment IDs and slot list.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Wait for deployment completion and review startup logs before routing traffic.

## CP4 — Verify readiness before changing exposure

Production and staging return HTTP200 for readiness.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.7` | practiced | Compare healthy slot probes and inspect the run-owned deployment contract. |

Retain and inspect: Two hostname/status pairs without cookies or authorization headers.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Retry the read-only readiness request after warmup; a running process alone is not readiness.

## CP5 — Route ten percent and preview controlled promotion

The canary receives10%; promotion script previews a readiness-checked slot swap.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.1` | integrated | Set and query the actual owned App Service staging traffic percentage. |
| `D3.4.4` | explained | Reason about a compatible hotfix/rollback path; patching a production branch is not a separate executed task. |

Retain and inspect: Routing distribution, artifact digest, and promotion preview.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Clear traffic routing to return to production; promote only after health/error/latency review.

## Repair and recovery

Expected failure marker: `AZ400-L15-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$app=Get-Content (Join-Path $WorkRoot 'app-name.txt');$r=az webapp traffic-routing show --subscription $SubscriptionId --resource-group $ResourceGroup --name $app -o json|ConvertFrom-Json
if($r.staging -ne 10){throw 'AZ400-L15-FAULT'}
```

```powershell
$app=Get-Content (Join-Path $WorkRoot 'app-name.txt');az webapp traffic-routing set --subscription $SubscriptionId --resource-group $ResourceGroup --name $app --distribution staging=10 -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
