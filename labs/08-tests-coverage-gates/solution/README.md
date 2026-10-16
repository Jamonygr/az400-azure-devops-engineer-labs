# Lab 08 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

A passing test command with zero discovered tests is rejected. The coverage gate must consume the actual Cobertura rate and reject an increased threshold above that rate.

Author verification: **offline-tested**. The complete five-checkpoint sequence, final-state revalidation, fault detection and repair run with real local Git/.NET/package/file operations and fail-closed synthetic GitHub/Azure DevOps responses. Provider operations remain unverified live.

## CP1 — Restore locked sample dependencies

The lock files resolve without implicit dependency changes.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Lock hashes and restore result.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Update lock files in a reviewed source change; never relax locked-mode silently.

## CP2 — Run tests and retain machine-readable results

The result summary contains passing API tests.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.4` | practiced | Read TRX counters from an executed test run. |
| `D3.2.3` | practiced | Execute the test command and preserve machine-readable TRX results. |

Retain and inspect: TRX counts and failure messages with sensitive payloads removed.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Repair the failing behavior or test fixture; do not mark a failing test run successful.

## CP3 — Collect coverage independently of test count

Cobertura reports include measured line and branch coverage.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.4` | practiced | Collect real coverage with the checked-in runsettings and inspect measured rates. |

Retain and inspect: Cobertura summary and instrumentation scope.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Confirm coverlet collector is installed and the tested assembly is included.

## CP4 — Evaluate a documented release quality threshold

The threshold is explicit and fails when measured coverage is inadequate.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.1` | practiced | Apply a numerical coverage threshold to measured Cobertura coverage. |

Retain and inspect: Actual value, threshold, tested scope, and gate decision.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Improve exercised behavior; threshold changes require reviewed justification.

## CP5 — Execute release gate decisions across test layers

A four-case local gate accepts healthy evidence and independently blocks failed tests, low coverage and a security finding. No load traffic is sent.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.2` | explained | Compare unit/integration/end-to-end responsibilities using the sample test strategy. |

Retain and inspect: Four computed decisions, the executed unit/HTTP tests from earlier tasks, and the separately authorized load-test boundary.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep load generation outside ordinary PR CI and bound concurrency, duration, and cost.

## Repair and recovery

Expected failure marker: `AZ400-L08-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$g=Get-Content (Join-Path $WorkRoot 'coverage-gate.json') -Raw|ConvertFrom-Json
if($g.minimum -ne 0.65 -or $g.actual -lt $g.minimum -or -not $g.passed){throw 'AZ400-L08-FAULT'}
```

```powershell
$g=Get-Content (Join-Path $WorkRoot 'coverage-gate.json') -Raw|ConvertFrom-Json;$g.minimum=0.65;$g.passed=$g.actual -ge $g.minimum;$g|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'coverage-gate.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
