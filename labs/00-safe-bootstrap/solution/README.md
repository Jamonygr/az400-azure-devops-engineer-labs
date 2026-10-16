# Lab 00 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Expected tool and sample-test results establish readiness only. Compare every subsequent resource ID with the original run journal before retrying a mutation.

Author verification: **offline-tested**. The complete five-checkpoint sequence, final-state revalidation, fault detection and repair run with real local Git/.NET/package/file operations and fail-closed synthetic GitHub/Azure DevOps responses. Provider operations remain unverified live.

## CP1 — Inspect the local toolchain

PowerShell 7.4+, Git, GitHub CLI, Azure CLI, and .NET 10 are available.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: tools.json without authentication tokens.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Install the missing tool outside the lab, reopen PowerShell, and repeat version checks.

## CP2 — Prove authenticated account context

Read-only identity queries succeed without changing active Azure or DevOps defaults.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Redact user, tenant, and subscription identifiers before sharing context files.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Authenticate deliberately outside preflight and supply the approved disposable subscription.

## CP3 — Create deterministic local ownership evidence

A run-specific local boundary is recorded; it grants no cloud approval.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: boundary.json and the selected run ID.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Choose a fresh lowercase run ID; do not reuse another learner boundary.

## CP4 — Build and test the shared sample

The .NET 10 sample builds and its tests pass locally.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: TRX test summary and build exit code.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the repository SDK version and restore packages before repeating the build.

## CP5 — Establish redacted evidence and cleanup rules

Evidence excludes credentials and declares dependency-aware cleanup.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: evidence-policy.json; never include CLI token stores.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Remove confidential fields from exports, retain local manifests for cleanup, and rerun validation.

## Repair and recovery

Expected failure marker: `AZ400-L00-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$b=Get-Content (Join-Path $WorkRoot 'boundary.json') -Raw|ConvertFrom-Json
if($b.runId -ne $RunId){throw 'AZ400-L00-FAULT'}
```

```powershell
$b=Get-Content (Join-Path $WorkRoot 'boundary.json') -Raw|ConvertFrom-Json
 $b.runId=$RunId;$b|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'boundary.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
