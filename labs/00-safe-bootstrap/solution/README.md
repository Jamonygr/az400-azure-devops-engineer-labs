# Lab 00 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inspect the local toolchain

PowerShell 7.4+, Git, GitHub CLI, Azure CLI, and .NET 10 are available.

Verify both the positive and negative probes in the lab README. Install the missing tool outside the lab, reopen PowerShell, and repeat version checks.

## CP2 — Prove authenticated account context

Read-only identity queries succeed without changing active Azure or DevOps defaults.

Verify both the positive and negative probes in the lab README. Authenticate deliberately outside preflight and supply the approved disposable subscription.

## CP3 — Create deterministic local ownership evidence

A run-specific local boundary is recorded; it grants no cloud approval.

Verify both the positive and negative probes in the lab README. Choose a fresh lowercase run ID; do not reuse another learner boundary.

## CP4 — Build and test the shared sample

The .NET 10 sample builds and its tests pass locally.

Verify both the positive and negative probes in the lab README. Use the repository SDK version and restore packages before repeating the build.

## CP5 — Establish redacted evidence and cleanup rules

Evidence excludes credentials and declares dependency-aware cleanup.

Verify both the positive and negative probes in the lab README. Remove confidential fields from exports, retain local manifests for cleanup, and rerun validation.

## Repair and recovery

```powershell
$b=Get-Content (Join-Path $WorkRoot 'boundary.json') -Raw|ConvertFrom-Json
 $b.runId=$RunId;$b|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'boundary.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
