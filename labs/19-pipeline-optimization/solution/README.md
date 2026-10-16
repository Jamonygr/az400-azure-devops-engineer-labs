# Lab 19 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Measure a real build baseline

A measured successful build establishes one local baseline.

Verify both the positive and negative probes in the lab README. Fix failures before benchmarking and compare the same configuration and warm/cold conditions.

## CP2 — Measure an incremental build without restoring again

A second measurement isolates avoided restore work without promising a speedup.

Verify both the positive and negative probes in the lab README. Retain locked restore in a prior job and key caches by lock files, SDK, OS, and architecture.

## CP3 — Compare serial and bounded parallel execution budgets

Parallelism shortens the synthetic critical path while preserving total compute time.

Verify both the positive and negative probes in the lab README. Account for hosted parallel-job grants and stateful test contention before increasing concurrency.

## CP4 — Define retention by artifact class and release relevance

Release recovery and security evidence receive distinct retention policies.

Verify both the positive and negative probes in the lab README. Implement policy in the sandbox only after inspecting dependencies; retention is not permission to delete consumer artifacts.

## CP5 — Plan a classic-to-YAML migration with comparable gates

Migration retains security and operational behavior instead of copying task names alone.

Verify both the positive and negative probes in the lab README. Use dual nondeploying validation runs first; do not leave two production deployment triggers enabled.

## Repair and recovery

```powershell
$r=Get-Content (Join-Path $WorkRoot 'retention.json') -Raw|ConvertFrom-Json;$r.keepLastGoodRelease=$true;$r|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'retention.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
