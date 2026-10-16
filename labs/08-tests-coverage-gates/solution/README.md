# Lab 08 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Restore locked sample dependencies

The lock files resolve without implicit dependency changes.

Verify both the positive and negative probes in the lab README. Update lock files in a reviewed source change; never relax locked-mode silently.

## CP2 — Run tests and retain machine-readable results

The result summary contains passing API tests.

Verify both the positive and negative probes in the lab README. Repair the failing behavior or test fixture; do not mark a failing test run successful.

## CP3 — Collect coverage independently of test count

Cobertura reports include measured line and branch coverage.

Verify both the positive and negative probes in the lab README. Confirm coverlet collector is installed and the tested assembly is included.

## CP4 — Evaluate a documented release quality threshold

The threshold is explicit and fails when measured coverage is inadequate.

Verify both the positive and negative probes in the lab README. Improve exercised behavior; threshold changes require reviewed justification.

## CP5 — Separate test layers and external load gates

Test layers and release gates are explicit; load testing requires a separate sandbox endpoint.

Verify both the positive and negative probes in the lab README. Keep load generation outside ordinary PR CI and bound concurrency, duration, and cost.

## Repair and recovery

```powershell
$g=Get-Content (Join-Path $WorkRoot 'coverage-gate.json') -Raw|ConvertFrom-Json;$g.minimum=0.65;$g.passed=$g.actual -ge $g.minimum;$g|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'coverage-gate.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
