# Lab 02 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Recalculate the metric after the injected timestamp fault; reject negative durations before presenting an average. Document the observation window beside every derived number.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair executed in CourseSecurityTelemetry.Tests.ps1 with fail-closed provider doubles. Local calculations, permission/reference/secure-file fixtures and .NET trace behavior are real; live provider calls, federation and telemetry export have not run.

## CP1 — Normalize delivery observations

Three explicitly fictional observations separate flow, tests, and findings.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.2` | explained | Normalize three synthetic completed-change observations; planning/throughput denominator choices are discussed rather than measured from a backlog. |

Retain and inspect: observations.json marked synthetic.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use one time unit and keep observation windows consistent.

## CP2 — Calculate flow and recovery measures

Mean lead time150min, cycle70min, failure rate1/3, recovery30min.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.3` | practiced | Calculate mean lead and cycle minutes from explicit synthetic duration fields; event timestamps are not supplied. |
| `D1.2.6` | practiced | Calculate change-failure rate and mean recovery minutes for the failed synthetic change; deployment frequency is not calculated. |

Retain and inspect: flow.json with the denominator and observation window.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Count failed deployments, not failed unit tests, in the change-failure numerator.

## CP3 — Report testing and security independently

The quality report records165tests,1failed test,2critical findings.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.4` | practiced | Sum test and failed-test counts from the three observations; escaped defects and pass-rate trends are not in the dataset. |
| `D1.2.5` | practiced | Sum critical finding counts from synthetic observations; finding age and reachability are not in this dataset. |

Retain and inspect: Separate test and security counters, without person rankings.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Avoid interpreting scan count as vulnerability count; deduplicate by stable alert identity.

## CP4 — Inspect workflow durations from the sandbox

A real run inventory is collected; a new sandbox may correctly contain zero runs.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Observed inventory and explicit zero-data status.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: A zero-run sandbox is missing telemetry, not a successful pipeline.

## CP5 — Publish a decision-oriented metric review

A review ties a metric to one concrete improvement and its sample-size limit.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.1` | explained | Write a Markdown delivery review from flow.json; a live or queryable dashboard is not configured. |
| `D1.2.7` | explained | Discuss why service operations/SLO evidence differs from this three-change review; no live operations signal is queried. |

Retain and inspect: review.md and the raw synthetic observation set.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Report the sample size and distinguish delivery metrics from service SLO measurements.

## Repair and recovery

Expected failure marker: `AZ400-L02-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$e=@(Get-Content (Join-Path $WorkRoot 'observations.json') -Raw|ConvertFrom-Json)
if(@($e|Where-Object {$_.cycleMinutes -gt $_.leadMinutes -or $_.cycleMinutes -lt 0}).Count){throw 'AZ400-L02-FAULT'}
```

```powershell
$e=Get-Content (Join-Path $WorkRoot 'observations.json') -Raw|ConvertFrom-Json;$e[0].cycleMinutes=70;$e|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'observations.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
