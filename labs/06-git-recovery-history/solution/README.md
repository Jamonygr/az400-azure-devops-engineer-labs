# Lab 06 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create recoverable committed history

A disposable repository contains known-good and broken commits.

Verify both the positive and negative probes in the lab README. Run destructive history exercises only in this isolated local repository.

## CP2 — Recover a file without rewriting history

A new commit restores the good file while retaining the regression history.

Verify both the positive and negative probes in the lab README. Use restore with a known source; avoid reset --hard for shared history.

## CP3 — Revert a published-style change safely

Revert records an inverse commit and removes the temporary option.

Verify both the positive and negative probes in the lab README. Resolve any conflict explicitly; do not force-push a rewritten shared branch.

## CP4 — Recover an accidentally deleted branch through reflog

The branch is recovered from its retained commit identity.

Verify both the positive and negative probes in the lab README. Reflog is local and expires; preserve a backup before garbage collection.

## CP5 — Remove an unwanted file from a disposable exported history

A clean export demonstrates allowlisted history replacement without touching the source repo.

Verify both the positive and negative probes in the lab README. Real secret exposure requires immediate credential revocation first, then coordinated git-filter-repo cleanup of refs, forks, caches, and clones.

## Repair and recovery

```powershell
$p=Join-Path $WorkRoot 'recovery';git -C $p restore --source HEAD -- service.txt
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
