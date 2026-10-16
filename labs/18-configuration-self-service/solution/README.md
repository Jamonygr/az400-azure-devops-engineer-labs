# Lab 18 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Inspect actual file bytes after repair and after the second pass. Compare catalog parameter keys with the compiled ARM template rather than trusting a success Boolean.

Author verification: **offline-tested**. All five checkpoint commands, final validators, named fault rejection and repair executed. Local file reconciliation and actual Bicep compilation are real; no environment was deployed.

## CP1 — Declare two versioned configuration resources

Two exact resource contents have owned paths and a versioned catalog.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Desired paths, synthetic content hashes, and run owner.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep resource provisioning, machine configuration and application settings as distinct control planes.

## CP2 — Audit configuration drift before repair

Audit identifies the deterministic wrong value without repairing it.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Expected, actual, and compliance values.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep audit and modify responsibilities separate; do not repair before retaining evidence.

## CP3 — Reconcile owned configuration and prove idempotence

Declared content is repaired; the immediate second reconciliation changes zero resources.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.2` | practiced | Reconcile a two-file desired state and prove zero changes on the second pass. |
| `D3.5.4` | practiced | Compare actual local file contents with desired values; this is not Azure Machine Configuration enforcement. |

Retain and inspect: Before/after hashes and first/second change counts.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Normalize the target path before writes, compare actual content, and never infer compliance from a self-declared flag.

## CP4 — Compile a bounded self-service deployment request

Bicep compiles a real self-contained template and explicit parameter file; this local planner creates no Azure environment.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.5` | practiced | Validate a bounded self-service request and produce deployable ARM parameters for the independent Bicep catalog entry; no portal service is created. |

Retain and inspect: Compiled template, parameter names and target run; approval and live deployment remain separate.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the dated retirement guidance for Azure Deployment Environments; the supported exercise is a workflow calling the owned Bicep catalog entry.

## CP5 — Compare legacy and supported configuration paths

The syllabus topic is preserved as dated context with a supported modernization route.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.1` | explained | Compare current configuration tools with dated retired services; no retired endpoint is invoked. |

Retain and inspect: Dated source comparison and migration responsibilities.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Verify current lifecycle guidance before planning production configuration changes.

## Repair and recovery

Expected failure marker: `AZ400-L18-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json
if((Get-Content (Join-Path $WorkRoot $d.files[0].path)) -ne $d.files[0].content){throw 'AZ400-L18-FAULT'}
```

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json;$d.files[0].content|Set-Content (Join-Path $WorkRoot 'service.conf')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
