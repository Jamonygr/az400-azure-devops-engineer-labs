# Lab 13 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Read back reviewers and self-review policy rather than relying on the submitted JSON. The environment name in a dormant workflow must be deliberately mapped to the run-owned environment before activation.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair passed in CourseReleaseSequences.Tests.ps1. Local .NET publishing/tests, EF SQL generation and Bicep compilation are real; GitHub, Azure and readiness HTTP responses are explicit fail-closed doubles. Live release, SQL authentication and traffic routing have not run.

## CP1 — Prepare an environment approval policy

An environment contract requires review and protected deployment branches.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Reviewer type/ID redacted and selected branch rule.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use a separate authorized reviewer for actual deployment; never self-approve by lowering protection.

## CP2 — Create the sandbox GitHub environment

The sandbox environment persists the reviewed policy.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.1` | practiced | Configure and query the GitHub environment review and self-review policy. |
| `D3.3.9` | practiced | Query the owned GitHub environment protection; compare Azure DevOps checks separately without claiming its provider enforcement. |

Retain and inspect: Environment name and active protection rule types.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Environment protection availability depends on plan/visibility; record an unavailable feature as a gate, not a pass.

## CP3 — Stage the dormant deployment workflow

The deployment example remains a local artifact with explicit invocation and environment binding.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Workflow event, environment name, and minimum permissions.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Replace the dormant template environment name with release-$RunId before any separately authorized activation; bind its exact name to the federation subject and use a distinct reviewer.

## CP4 — Exercise owner-controlled approval and exclusive-lock decisions

A local five-case resource policy model accepts an independently approved main release and rejects self-approval, a feature branch, an unavailable lock and missing approval. Real Azure DevOps resource checks still require bootstrap.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Computed decisions for all five requests, policy owner and explicit provider verification limitation.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Configure real checks through the separate privileged resource bootstrap; reading a YAML environment name alone does not prove approval enforcement.

## CP5 — Evaluate an explicit denied release request

A feature-branch request without approval is denied despite passing tests.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Denied request and precise gate reasons.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Fix the branch and obtain independent approval; do not infer approval from a green build.

## Repair and recovery

Expected failure marker: `AZ400-L13-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$p=Get-Content (Join-Path $WorkRoot 'environment-policy.json') -Raw|ConvertFrom-Json
if(-not $p.prevent_self_review -or @($p.reviewers).Count -lt 1){throw 'AZ400-L13-FAULT'}
```

```powershell
$p=Get-Content (Join-Path $WorkRoot 'environment-policy.json') -Raw|ConvertFrom-Json;$p.prevent_self_review=$true;$p|ConvertTo-Json -Depth 7|Set-Content (Join-Path $WorkRoot 'environment-policy.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
