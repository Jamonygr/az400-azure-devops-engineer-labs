# Lab 04 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create a local trunk and short-lived feature branch

An isolated Git repository has main and a named feature branch.

Verify both the positive and negative probes in the lab README. Set identity only in the sandbox repository; never change global Git settings.

## CP2 — Push one reviewable feature to the disposable GitHub repo

Only the disposable repository receives main and the feature branch.

Verify both the positive and negative probes in the lab README. Check the derived sandbox owner/name before pushing; retry only after ownership matches.

## CP3 — Open a pull request with a test plan

The feature is represented by an open PR targeting main.

Verify both the positive and negative probes in the lab README. A second authorized reviewer is needed to satisfy an approval; the author cannot approve their own PR.

## CP4 — Require review and block force pushes on main

Main requires one approval and disallows force pushes and deletion.

Verify both the positive and negative probes in the lab README. Use the sandbox public repository; plan/license availability may gate equivalent controls in private repos.

## CP5 — Inspect merge readiness without bypassing review

The pending review remains visible and no administrative bypass is used.

Verify both the positive and negative probes in the lab README. Request an authorized second reviewer rather than using --admin or lowering policy.

## Repair and recovery

```powershell
$p=Join-Path $WorkRoot 'branching';git -C $p config --unset branch.main.description
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
