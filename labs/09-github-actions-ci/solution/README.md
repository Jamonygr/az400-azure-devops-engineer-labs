# Lab 09 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Prepare the isolated GitHub CI working copy

Only the sample and build configuration enter a fresh sandbox working copy.

Verify both the positive and negative probes in the lab README. Authenticate Git through the separate bootstrap; copy source files without bin/obj or credentials.

## CP2 — Install the CI-only workflow

A YAML workflow builds/tests the sample without Azure deployment.

Verify both the positive and negative probes in the lab README. Keep deployment workflows dormant in the course; sandbox CI uses read-only repository permission.

## CP3 — Verify locally before publishing the CI change

The same sample test command passes locally.

Verify both the positive and negative probes in the lab README. Match the SDK pin and restore sources used by hosted CI.

## CP4 — Publish the sandbox CI workflow

A fresh main commit triggers only the sandbox CI workflow.

Verify both the positive and negative probes in the lab README. Review staged files before push; the destination must be the derived disposable repo.

## CP5 — Inspect run provenance and test artifact availability

The committed revision receives a successful hosted run; transient API lag needs retry.

Verify both the positive and negative probes in the lab README. Check hosted minutes and Actions permissions; never treat queued or skipped runs as success.

## Repair and recovery

```powershell
Remove-Item -LiteralPath (Join-Path $WorkRoot 'github-ci/samples/DevOps.Api/Broken.cs')
dotnet build (Join-Path $WorkRoot 'github-ci/samples/DevOps.slnx')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
