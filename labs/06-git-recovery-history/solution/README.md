# Lab 06 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Run all final assertions after CP5: early checkpoints must remain true after later commits. The sanitized clone must retain multiple useful commits, differ in SHA, and contain no reachable unwanted.txt path.

Author verification: **offline-tested**. All five real Git checkpoints, final validators, named fault rejection/repair and final revalidation passed in an isolated temporary repository with pinned git-filter-repo. No remote publication.

## CP1 — Create recoverable committed history

A disposable repository contains known-good and broken commits.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Commit graph and good commit SHA.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Run destructive history exercises only in this isolated local repository.

## CP2 — Recover a file without rewriting history

A new commit restores the good file while retaining the regression history.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.5` | practiced | Restore healthy content while preserving the regression and correction commits; later tasks exercise revert and reflog recovery. |

Retain and inspect: Recovered file digest and new commit SHA.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use restore with a known source; avoid reset --hard for shared history.

## CP3 — Revert a published-style change safely

Revert records an inverse commit and removes the temporary option.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Original SHA, inverse SHA, and final tree.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Resolve any conflict explicitly; do not force-push a rewritten shared branch.

## CP4 — Recover an accidentally deleted branch through reflog

The branch is recovered from its retained commit identity.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Reflog entry and recovered branch SHA.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Reflog is local and expires; preserve a backup before garbage collection.

## CP5 — Remove a synthetic unwanted file from all reachable history

The fresh disposable clone retains useful commit history and healthy content, but every reachable tree excludes unwanted.txt and rewritten commit IDs differ.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.6` | practiced | Run pinned git-filter-repo in a fresh clone and inspect every reachable tree for the removed synthetic file. |

Retain and inspect: rewrite-before.txt, rewrite-after.txt, rewritten-history.txt and the disposable sanitized clone. The original fixture remains available for comparison.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Install git-filter-repo 2.47.0 from the pinned dependencies; run only in a fresh clone. A real leaked credential must be revoked separately; rewriting history cannot recall existing clones or published artifacts.

## Repair and recovery

Expected failure marker: `AZ400-L06-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
if((Get-Content (Join-Path $WorkRoot 'recovery/service.txt')) -ne 'healthy'){throw 'AZ400-L06-FAULT'}
```

```powershell
$p=Join-Path $WorkRoot 'recovery';git -C $p restore --source HEAD -- service.txt
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
