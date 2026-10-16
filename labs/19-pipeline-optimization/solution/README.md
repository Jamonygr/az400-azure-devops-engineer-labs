# Lab 19 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The converted YAML must preserve task command order, while protected environment checks and service-connection authorization remain external migration obligations.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named retention fault/repair passed with real .NET builds, lockfile hashing, owned local retention and Python YAML conversion. Timing is a single local observation; the DAG duration model is synthetic.

## CP1 — Measure a real build baseline

A measured successful build establishes one local baseline.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.6.1` | explained | Review pipeline health/retry classification; synthetic reports do not configure a live alert. |

Retain and inspect: Elapsed time and machine/tool context; one run is not a performance guarantee.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Fix failures before benchmarking and compare the same configuration and warm/cold conditions.

## CP2 — Measure an incremental build without restoring again

A second measurement isolates avoided restore work without promising a speedup.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Both observations and controlled differences.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Retain locked restore in a prior job and key caches by lock files, SDK, OS, and architecture.

## CP3 — Measure dependency cache invalidation and critical path

A changed copied lock file invalidates its SDK/OS/hash key; the explicit synthetic DAG has70seconds critical path versus90seconds serial work.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.6` | practiced | Compute the explicit synthetic DAG critical path and compare it with serial execution. |
| `D3.6.2` | practiced | Change a real lockfile fixture and prove the cache key changes while the original lockfile stays untouched. |
| `D3.6.3` | practiced | Calculate bounded two-way parallelism for the supplied dependency graph; no hosted timing benchmark is claimed. |

Retain and inspect: Changed input hashes, before/after cache keys and explicitly synthetic timing assumptions.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Never reuse a cache key after dependency inputs change. Distinguish elapsed critical-path time from total compute minutes.

## CP4 — Enforce retention against owned artifact fixtures

Only the expired owned PR log is deleted; the last known-good and current release artifacts remain.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.6.4` | practiced | Apply retention selection to owned local fixture artifacts and prove baseline/current survival. |

Retain and inspect: Fixture age/ownership inputs and retained/deleted inventory.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Real provider retention needs reviewed ownership and consumer dependencies. This fixture proves selection and last-good exclusion before remote deletion.

## CP5 — Convert a classic task fixture to YAML and prove parity

A real YAML file retains task commands/order and lists protected-resource checks that task conversion does not migrate.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.6.5` | practiced | Convert a classic-task fixture into parsed YAML and compare executable command order. |

Retain and inspect: Classic fixture, generated YAML, task parity and remaining external checks.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: This offline conversion does not authorize provider cutover. Compare nondeploying runs and preserve resource checks before disabling a classic trigger.

## Repair and recovery

Expected failure marker: `AZ400-L19-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json
if(-not $r.keepLastGoodRelease -or $r.releaseArtifactsDays -lt $r.prLogsDays){throw 'AZ400-L19-FAULT'}
```

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json;$r.keepLastGoodRelease=$true;$r|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'retention.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
