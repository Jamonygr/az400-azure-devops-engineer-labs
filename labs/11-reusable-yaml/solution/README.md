# Lab 11 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Reject Production before executing it because the template accepts only Debug/Release. The build/package cycle is deliberately indirect and must fail the named DAG assertion.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named DAG fault/repair passed. Actual Python YAML consumers and .NET tests/build executed; Azure DevOps variable-group operations use fail-closed doubles. Hosted template expansion has not run.

## CP1 — Exercise the reusable workflow input contract

The consumer references the reusable workflow, typed inputs exist, and repository permission stays read-only.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.8` | practiced | Parse a reusable workflow consumer and resolve its declared inputs and minimum permissions locally. |

Retain and inspect: Parsed interface and consumer job names; explicitly offline contract practice, not a hosted run.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Reusable workflows are called as jobs. Offline parsing verifies the authored interface; separately activated provider execution is needed to prove service compilation.

## CP2 — Reject an invalid parameter and execute valid build behavior

Release is accepted, Production is rejected, and selected test behavior passes locally.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.5` | practiced | Consume the typed Release parameter and execute the selected .NET test configuration. |

Retain and inspect: Allowed/rejected parameter decisions and passing TRX; local validation is not provider template expansion.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use parameters for compile-time structure, variables for runtime data, and valid enum values rather than arbitrary substitution.

## CP3 — Create an explicitly nonsecret variable group

A sandbox variable group exists without blanket pipeline authorization.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Variable group ID and nonsecret values.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Authorize only a designated sandbox pipeline; store secrets through protected secret facilities.

## CP4 — Model build-test-package ordering as a DAG

Each job depends only on completed prerequisites; package follows successful tests.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.6` | practiced | Topologically sort the dependency graph and reject an indirect build/package cycle. |

Retain and inspect: DAG and successful execution order.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Fix dependsOn/needs references; do not serialize independent tests unless resource contention requires it.

## CP5 — Exercise the shared template build command locally

The reusable build command succeeds and the reviewed template is fingerprinted.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Build result and template SHA256.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Match local command arguments with the template, and review breaking input changes before reuse.

## Repair and recovery

Expected failure marker: `AZ400-L11-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$jobs=@(Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json);$names=@($jobs.job);$done=@()
if(@($jobs|ForEach-Object needs|Where-Object {$_ -notin $names}).Count){throw 'AZ400-L11-FAULT'}
while($done.Count -lt $jobs.Count){$ready=@($jobs|Where-Object {$_.job -notin $done -and @($_.needs|Where-Object {$_ -notin $done}).Count -eq 0});if($ready.Count -eq 0){throw 'AZ400-L11-FAULT'};$done+=@($ready.job)}
```

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json;$d[0].needs=@();$d|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'job-graph.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
