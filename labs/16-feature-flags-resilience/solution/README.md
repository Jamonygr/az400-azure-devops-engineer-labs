# Lab 16 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The fault enables the actual flag and the assertion must observe that state. Repair disables it, then the local feature test and provider read establish their separate behaviors.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair passed in CourseReleaseSequences.Tests.ps1. Local .NET publishing/tests, EF SQL generation and Bicep compilation are real; GitHub, Azure and readiness HTTP responses are explicit fail-closed doubles. Live release, SQL authentication and traffic routing have not run.

## CP1 — Inspect the sample feature-management defaults

Feature defaults are separated from deployment artifact identity.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Default flag names and configuration scope.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep flags in configuration; do not rebuild the application merely to alter exposure.

## CP2 — Run the feature behavior tests

Tests exercise enabled and disabled feature behavior.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Feature test names and TRX counts.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the exact test names in the sample; zero tests is a failed gate.

## CP3 — Create an Entra-only store and scoped data role

A Developer store uses Entra authentication, zero-day soft-delete retention, and a data role at the store scope.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Store SKU/auth/retention and exact data-role scope, with identifiers redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Developer pricing and role-assignment permission are explicit gates; do not switch to key auth if RBAC propagation takes time.

## CP4 — Create and enable TodoWrites through identity-based CLI

The store contains the same TodoWrites flag used by the tested application; an enabled-state observation is retained.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.6` | practiced | Create, enable, query, and disable the run-owned Azure App Configuration feature flag. |

Retain and inspect: Feature key/state and identity-auth mode; no store access keys are retrieved.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Allow scoped data RBAC to propagate and retry the read; a management-plane Contributor role alone does not grant feature writes.

## CP5 — Exercise the kill switch and bounded resilience decision

The real flag is off, and the synthetic60%failure window opens a breaker with a bounded retry budget.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.5` | practiced | Observe the sample feature-disabled test preserve reads while rejecting writes. |

Retain and inspect: Before/after flag state, exposure owner/expiry, and breaker window.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: A configured store flag does not prove application refresh; the optional challenge wires the tested app endpoint and proves both live states.

## Repair and recovery

Expected failure marker: `AZ400-L16-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$f=az appconfig feature show --subscription $SubscriptionId --name "flags-l16-$RunId" --feature TodoWrites --auth-mode login -o json|ConvertFrom-Json
if($f.state -ne 'off'){throw 'AZ400-L16-FAULT'}
```

```powershell
az appconfig feature disable --subscription $SubscriptionId --name "flags-l16-$RunId" --feature TodoWrites --auth-mode login --yes -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
