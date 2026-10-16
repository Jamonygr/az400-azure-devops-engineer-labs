# Lab 20 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inspect GitHub effective access without expanding it

Effective repository permission and collaborator roles are reviewable.

Verify both the positive and negative probes in the lab README. Separate organization owners, repository maintainers, contributors, and outside collaborators; choose the smallest role.

## CP2 — Read Azure DevOps project teams

Project identity/visibility and teams are scoped to the disposable project.

Verify both the positive and negative probes in the lab README. Stakeholder/Basic licensing does not replace explicit project/repository permissions.

## CP3 — Create an Azure managed identity inside the owned group

A user-assigned identity exists entirely inside the disposable resource group.

Verify both the positive and negative probes in the lab README. Managed identities avoid an application secret; do not create an untracked Entra application as a substitute.

## CP4 — Assign a read-only role only at the disposable group

The identity receives Reader on the exact lab group, not subscription-wide contributor access.

Verify both the positive and negative probes in the lab README. Role Assignment Contributor/User Access Administrator/Owner may be required for this scoped change; missing permission is a gate.

## CP5 — Compare token/service-connection access choices

Each trust boundary has a specific identity/access choice.

Verify both the positive and negative probes in the lab README. Do not equate a service connection with blanket authorization to every pipeline.

## Repair and recovery

```powershell
$m=Get-Content (Join-Path $WorkRoot 'identity-matrix.json') -Raw|ConvertFrom-Json;$m.githubBuild='GITHUB_TOKEN contents:read';$m|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'identity-matrix.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
