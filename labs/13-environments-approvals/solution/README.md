# Lab 13 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Prepare an environment approval policy

An environment contract requires review and protected deployment branches.

Verify both the positive and negative probes in the lab README. Use a separate authorized reviewer for actual deployment; never self-approve by lowering protection.

## CP2 — Create the sandbox GitHub environment

The sandbox environment persists the reviewed policy.

Verify both the positive and negative probes in the lab README. Environment protection availability depends on plan/visibility; record an unavailable feature as a gate, not a pass.

## CP3 — Stage the dormant deployment workflow

The deployment example remains a local artifact with explicit invocation and environment binding.

Verify both the positive and negative probes in the lab README. Replace the dormant template environment name with release-$RunId before any separately authorized activation; bind its exact name to the federation subject and use a distinct reviewer.

## CP4 — Model Azure Pipelines checks outside YAML author control

The approval contract separates protected resource checks from editable pipeline YAML.

Verify both the positive and negative probes in the lab README. Configure real checks through the separate privileged resource bootstrap; reading a YAML environment name alone does not prove approval enforcement.

## CP5 — Evaluate an explicit denied release request

A feature-branch request without approval is denied despite passing tests.

Verify both the positive and negative probes in the lab README. Fix the branch and obtain independent approval; do not infer approval from a green build.

## Repair and recovery

```powershell
$p=Get-Content (Join-Path $WorkRoot 'environment-policy.json') -Raw|ConvertFrom-Json;$p.prevent_self_review=$true;$p|ConvertTo-Json -Depth 7|Set-Content (Join-Path $WorkRoot 'environment-policy.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
