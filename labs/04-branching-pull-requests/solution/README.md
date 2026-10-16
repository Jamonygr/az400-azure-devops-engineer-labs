# Lab 04 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The deterministic fault reduces the actual required-review count. Its named assertion must reject that provider state, and repair must restore the original requirement.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Create a local trunk and short-lived feature branch

An isolated Git repository has main and a named feature branch.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.1.1` | practiced | Create a feature branch in the disposable GitHub working copy. |

Retain and inspect: Branch names and commit graph.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Set identity only in the sandbox repository; never change global Git settings.

## CP2 — Push one reviewable feature to the disposable GitHub repo

Only the disposable repository receives main and the feature branch.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Commit SHA and sandbox remote.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Check the derived sandbox owner/name before pushing; retry only after ownership matches.

## CP3 — Open a pull request with a test plan

The feature is represented by an open PR targeting main.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.1.2` | integrated | Open the run-owned pull request and correlate its branch and exact source commit. |

Retain and inspect: PR URL, changed-file count, and test plan.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: A second authorized reviewer is needed to satisfy an approval; the author cannot approve their own PR.

## CP4 — Require review and block force pushes on main

Main requires one approval and disallows force pushes and deletion.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.1.3` | practiced | Configure and query main-branch required-review/status-check protection; entitlement is a visible gate. |

Retain and inspect: Protection settings; do not attempt destructive force pushes to test denial.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the sandbox public repository; plan/license availability may gate equivalent controls in private repos.

## CP5 — Inspect merge readiness without bypassing review

The pending review remains visible and no administrative bypass is used.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Review decision and branch protection result.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Request an authorized second reviewer rather than using --admin or lowering policy.

## Repair and recovery

Expected failure marker: `AZ400-L04-BRANCH-APPROVAL`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$p=gh api "repos/$GhRepo/branches/main/protection/required_pull_request_reviews"|ConvertFrom-Json
if($p.required_approving_review_count -lt 1){throw 'AZ400-L04-BRANCH-APPROVAL'}
```

```powershell
gh api --method PATCH "repos/$GhRepo/branches/main/protection/required_pull_request_reviews" -F required_approving_review_count=1
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
