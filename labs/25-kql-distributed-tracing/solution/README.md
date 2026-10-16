# Lab 25 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The named fault changes leftouter to inner and must lose the unmatched request. Diagnose that row loss before discussing performance; CPU75% and disk12ms are fixture observations rather than universal incident thresholds.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair executed in CourseSecurityTelemetry.Tests.ps1 with fail-closed provider doubles. Local calculations, permission/reference/secure-file fixtures and .NET trace behavior are real; live provider calls, federation and telemetry export have not run.

## CP1 — Create an isolated workspace for KQL evaluation

A dedicated workspace provides a query endpoint; sample datatables require no application-data ingestion.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Workspace ID locally and declared synthetic-data scope.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Wait for workspace query availability and confirm Log Analytics Reader/query permission before retrying.

## CP2 — Calculate latency and failure rate with KQL

Three synthetic operations produce one failure and a measured latency percentile.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D5.2.2` | practiced | Run a KQL datatable aggregation in the selected workspace and compare exact requests/failures/p95 outputs. |
| `D5.2.4` | practiced | Execute and assert Kusto aggregation results; Python fixture output is only a reference calculation. |

Retain and inspect: Query text, synthetic row count, and result; real small-sample percentiles need caution.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use countif on a Boolean comparison and retain units in metric names.

## CP3 — Prove the sample emits a distributed trace span

An ActivityListener observes the sample application span without requiring an Azure exporter.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D5.1.2` | practiced | Execute the local ActivityListener trace test and distinguish local span creation from exporter ingestion. |

Retain and inspect: Span test name/result; test instrumentation is distinct from a live Azure export.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Ensure ActivitySource names match listeners/exporters and propagate W3C trace context across services.

## CP4 — Join synthetic requests and dependencies by operation identity

Left-outer correlation retains the request that has no dependency row.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D5.2.3` | practiced | Use a leftouter KQL join to retain requests with no dependency span; local span test is separate evidence. |

Retain and inspect: Operation IDs, join kind, and retained unmatched request count.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use trace/operation identity rather than timestamp coincidence; account for sampling and missing instrumentation.

## CP5 — Analyze numeric infrastructure and request evidence

Reference calculations produce3requests,1failure, p95=100ms and resource maxima supporting a bounded contention hypothesis.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D5.2.1` | practiced | Calculate CPU, memory, disk, and network maxima from raw local telemetry measurements. |

Retain and inspect: Raw synthetic observation window, calculations, units and hypothesis. Python reference results are distinct from actual KQL-engine results inCP2/CP4.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Compare the same operation IDs and time window. CPU/memory/disk/network saturation can support a hypothesis; it does not prove causation or live exporter operation.

## Repair and recovery

Expected failure marker: `AZ400-L25-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$q=Get-Content (Join-Path $WorkRoot 'correlation.kql') -Raw;$id=Get-Content (Join-Path $WorkRoot 'workspace-customer-id.txt')
$r=@(az monitor log-analytics query --subscription $SubscriptionId --workspace $id --analytics-query $q -o json|ConvertFrom-Json)
if($r.Count -ne 2 -or 'op2' -notin $r.operation_Id){throw 'AZ400-L25-FAULT'}
```

```powershell
$q=Get-Content (Join-Path $WorkRoot 'correlation.kql') -Raw;$q.Replace('kind=inner','kind=leftouter')|Set-Content (Join-Path $WorkRoot 'correlation.kql')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
