# Lab 09 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The compiler fault must break the actual build. After repair, correlate the hosted run with capstone/source SHA rather than the newest run in an unrelated branch.

Author verification: **offline-tested**. The complete five-checkpoint sequence, final-state revalidation, fault detection and repair run with real local Git/.NET/package/file operations and fail-closed synthetic GitHub/Azure DevOps responses. Provider operations remain unverified live.

## CP1 — Prepare the isolated GitHub CI working copy

Only the sample and build configuration enter a fresh sandbox working copy.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Working-copy remote and allowlisted copied paths.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Authenticate Git through the separate bootstrap; copy source files without bin/obj or credentials.

## CP2 — Install the CI-only workflow

A YAML workflow builds/tests the sample without Azure deployment.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.1` | practiced | Stage and parse an event-driven GitHub Actions CI workflow. |
| `D3.3.5` | practiced | Inspect jobs, steps, permissions, locked restore, tests, and package output in authored YAML. |

Retain and inspect: Workflow digest and event/permissions review.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep deployment workflows dormant in the course; sandbox CI uses read-only repository permission.

## CP3 — Verify locally before publishing the CI change

The same sample test command passes locally.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Local TRX and selected SDK.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Match the SDK pin and restore sources used by hosted CI.

## CP4 — Publish the sandbox CI workflow

A fresh main commit triggers only the sandbox CI workflow.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.4` | practiced | Push the owned main branch and observe the matching trigger/run. |

Retain and inspect: Pushed SHA and workflow name.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Review staged files before push; the destination must be the derived disposable repo.

## CP5 — Inspect run provenance and test artifact availability

The committed revision receives a successful hosted run; transient API lag needs retry.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.1.4` | integrated | Correlate the immutable hosted build artifact with the exact source SHA. |
| `D3.2.3` | integrated | Read the exact GitHub Actions run result for the tested source commit. |

Retain and inspect: Run URL/SHA/conclusion and artifact inventory.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Check hosted minutes and Actions permissions; never treat queued or skipped runs as success.

## Repair and recovery

Expected failure marker: `AZ400-L09-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$saved=$PSNativeCommandUseErrorActionPreference
try{$PSNativeCommandUseErrorActionPreference=$false;dotnet build (Join-Path $WorkRoot 'github-ci/samples/DevOps.slnx') --configuration Release --no-restore|Out-Null;$code=$LASTEXITCODE}finally{$PSNativeCommandUseErrorActionPreference=$saved}
if($code -ne 0){throw 'AZ400-L09-FAULT'}
```

```powershell
Remove-Item -LiteralPath (Join-Path $WorkRoot 'github-ci/samples/DevOps.Api/Broken.cs')
dotnet build (Join-Path $WorkRoot 'github-ci/samples/DevOps.slnx')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
