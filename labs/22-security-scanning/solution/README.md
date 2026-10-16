# Lab 22 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inventory direct and transitive dependencies

Machine-readable dependency provenance includes transitive packages.

Verify both the positive and negative probes in the lab README. Restore approved sources first and review transitive exposure, not just direct references.

## CP2 — Run the vulnerability advisory check

The advisory result records known package findings at query time.

Verify both the positive and negative probes in the lab README. Update the smallest compatible dependency set, regenerate locks, rerun tests, and document accepted residual risk.

## CP3 — Scan a synthetic source fixture for leakage

A deterministic demonstration rule finds no synthetic credential pattern.

Verify both the positive and negative probes in the lab README. Revoke real exposed credentials before history cleanup; a regex demonstration cannot replace a mature scanner.

## CP4 — Review container and CodeQL scan execution boundaries

Code and container scanning have explicit language, target, severity, and isolation.

Verify both the positive and negative probes in the lab README. For a live local challenge install approved Docker/Trivy tools; run docker build and trivy image on the disposable sample image.

## CP5 — Create a dependency license review queue

Direct dependencies enter an explicit review queue; unknown license status is not approval.

Verify both the positive and negative probes in the lab README. Resolve license expressions and notices from package/project primary metadata under your organization policy.

## Repair and recovery

```powershell
Set-Content (Join-Path $WorkRoot 'scan-fixture.txt') 'public-setting=training'
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
