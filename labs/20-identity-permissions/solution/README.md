# Lab 20 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The identity and role assignment must remain within the exact owned group. A broad subscription-level grant is not an acceptable shortcut for a failing project operation.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair executed in CourseSecurityTelemetry.Tests.ps1 with fail-closed provider doubles. Local calculations, permission/reference/secure-file fixtures and .NET trace behavior are real; live provider calls, federation and telemetry export have not run.

## CP1 — Inspect GitHub effective access without expanding it

Effective repository permission and collaborator roles are reviewable.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.3` | explained | Inspect a GitHub token permission matrix and map repository role responsibilities. |
| `D4.1.2` | explained | Inspect the current GitHub authentication context; no new PAT or GitHub App is created. |
| `D4.1.4` | explained | Map GitHub role and token permission boundaries in the matrix. |

Retain and inspect: Role names with personal identities redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Separate organization owners, repository maintainers, contributors, and outside collaborators; choose the smallest role.

## CP2 — Read Azure DevOps project teams

Project identity/visibility and teams are scoped to the disposable project.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.5` | explained | Read Azure DevOps project identity/group context; changing collection-wide groups is outside this sandbox. |
| `D4.1.7` | explained | Inspect the disposable project team; creating membership or changing cross-project teams is not claimed. |

Retain and inspect: Team names/count and project visibility; access levels remain distinct from security group permissions.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Stakeholder/Basic licensing does not replace explicit project/repository permissions.

## CP3 — Create an Azure managed identity inside the owned group

A user-assigned identity exists entirely inside the disposable resource group.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.1` | practiced | Create and query a user-assigned managed identity within the run-owned Azure resource group. |

Retain and inspect: Identity resource ID/client ID/principal ID locally; redact before export.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Managed identities avoid an application secret; do not create an untracked Entra application as a substitute.

## CP4 — Assign a read-only role only at the disposable group

The identity receives Reader on the exact lab group, not subscription-wide contributor access.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Role definition and exact scope.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Role Assignment Contributor/User Access Administrator/Owner may be required for this scoped change; missing permission is a gate.

## CP5 — Compare token/service-connection access choices

The real Reader role definition is inspected; one local in-scope read is allowed, while a write and an outside-scope read are rejected. Effective token authorization remains a separate live check.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.3` | explained | Review narrowly scoped workload-federated Azure DevOps connection design; no organization service connection is automatically created. |
| `D4.1.6` | explained | Distinguish DevOps access-level entitlement from permissions in the comparison record. |

Retain and inspect: Reader definition, three computed scope/action decisions, and the identity choice matrix; redact account identifiers.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Do not equate a service connection with blanket authorization to every pipeline.

## Repair and recovery

Expected failure marker: `AZ400-L20-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$m=Get-Content (Join-Path $WorkRoot 'identity-matrix.json') -Raw|ConvertFrom-Json
if($m.githubBuild -ne 'GITHUB_TOKEN contents:read'){throw 'AZ400-L20-FAULT'}
```

```powershell
$m=Get-Content (Join-Path $WorkRoot 'identity-matrix.json') -Raw|ConvertFrom-Json;$m.githubBuild='GITHUB_TOKEN contents:read';$m|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'identity-matrix.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
