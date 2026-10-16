# Lab 18 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Author a desired-state document for local configuration

Desired state describes content and ownership independently of an imperative deployment script.

Verify both the positive and negative probes in the lab README. Choose Machine Configuration for Azure policy-backed auditing; use Bicep/ARM for resource state rather than conflating the layers.

## CP2 — Audit configuration drift before repair

Audit identifies the deterministic wrong value without repairing it.

Verify both the positive and negative probes in the lab README. Keep audit and modify responsibilities separate; do not repair before retaining evidence.

## CP3 — Reconcile only the declared local resource

Reconciliation restores the declared content and proves compliance.

Verify both the positive and negative probes in the lab README. Use the desired-state value and owned path; never recursively repair unrelated directories.

## CP4 — Validate a self-service environment catalog contract

The catalog is versioned and constrained to an approved target boundary.

Verify both the positive and negative probes in the lab README. A real Deployment Environments exercise requires approved dev center/project, catalog synchronization, environment type, and deployment identity.

## CP5 — Compare legacy and supported configuration paths

The syllabus topic is preserved as dated context with a supported modernization route.

Verify both the positive and negative probes in the lab README. Verify current lifecycle guidance before planning production configuration changes.

## Repair and recovery

```powershell
$d=Get-Content (Join-Path $WorkRoot 'desired-state.json') -Raw|ConvertFrom-Json;$d.files[0].content|Set-Content (Join-Path $WorkRoot 'service.conf')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
