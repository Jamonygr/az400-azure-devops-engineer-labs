# Lab 25 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create an isolated workspace for KQL evaluation

A dedicated workspace provides a query endpoint; sample datatables require no application-data ingestion.

Verify both the positive and negative probes in the lab README. Wait for workspace query availability and confirm Log Analytics Reader/query permission before retrying.

## CP2 — Calculate latency and failure rate with KQL

Three synthetic operations produce one failure and a measured latency percentile.

Verify both the positive and negative probes in the lab README. Use countif on a Boolean comparison and retain units in metric names.

## CP3 — Prove the sample emits a distributed trace span

An ActivityListener observes the sample application span without requiring an Azure exporter.

Verify both the positive and negative probes in the lab README. Ensure ActivitySource names match listeners/exporters and propagate W3C trace context across services.

## CP4 — Join synthetic requests and dependencies by operation identity

Left-outer correlation retains the request that has no dependency row.

Verify both the positive and negative probes in the lab README. Use trace/operation identity rather than timestamp coincidence; account for sampling and missing instrumentation.

## CP5 — Review production query tables and infrastructure signals

Real-table queries and infrastructure signal units are reviewable without inventing ingested data.

Verify both the positive and negative probes in the lab README. Workspace-based tables can use AppRequests/AppDependencies; adapt query schema using actual tables rather than assuming classic names.

## Repair and recovery

```powershell
$q=Get-Content (Join-Path $WorkRoot 'correlation.kql') -Raw;$q.Replace('kind=inner','kind=leftouter')|Set-Content (Join-Path $WorkRoot 'correlation.kql')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
