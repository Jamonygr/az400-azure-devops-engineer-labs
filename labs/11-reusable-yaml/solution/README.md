# Lab 11 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Review the reusable GitHub workflow contract

The reusable workflow exposes typed inputs and a limited permission contract.

Verify both the positive and negative probes in the lab README. Pass only required inputs and explicitly named secrets; pin cross-repository reuse to a reviewed commit.

## CP2 — Review the Azure Pipelines template interface

The build template declares parameters separately from runtime variables.

Verify both the positive and negative probes in the lab README. Use template parameters for structure; use runtime variables for execution values.

## CP3 — Create an explicitly nonsecret variable group

A sandbox variable group exists without blanket pipeline authorization.

Verify both the positive and negative probes in the lab README. Authorize only a designated sandbox pipeline; store secrets through protected secret facilities.

## CP4 — Model build-test-package ordering as a DAG

Each job depends only on completed prerequisites; package follows successful tests.

Verify both the positive and negative probes in the lab README. Fix dependsOn/needs references; do not serialize independent tests unless resource contention requires it.

## CP5 — Exercise the shared template build command locally

The reusable build command succeeds and the reviewed template is fingerprinted.

Verify both the positive and negative probes in the lab README. Match local command arguments with the template, and review breaking input changes before reuse.

## Repair and recovery

```powershell
$d=Get-Content (Join-Path $WorkRoot 'job-graph.json') -Raw|ConvertFrom-Json;$d[0].needs=@();$d|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'job-graph.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
