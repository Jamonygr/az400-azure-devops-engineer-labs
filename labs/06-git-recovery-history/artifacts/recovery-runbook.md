# Deterministic recovery fixture

Run only inside an owned disposable clone. Record `git status --short`, `git rev-parse HEAD` and `git remote -v` before changing history.

```powershell
git switch -c lab/recovery
Set-Content recovery.txt 'first known-good revision'
git add recovery.txt
git commit -m 'Add recoverable fixture'
$knownGood = git rev-parse HEAD
Set-Content recovery.txt 'intentional broken revision'
git add recovery.txt
git commit -m 'Introduce deterministic fault'
$badCommit = git rev-parse HEAD
git revert --no-edit $badCommit
git show HEAD:recovery.txt
git reflog --date=iso -5
```

Acceptance: the file contains the known-good content, a new revert commit exists, and shared history was preserved. To study accidental local branch movement, create a separate local fixture branch, move it only after writing the original SHA to ignored evidence, then recover it with `git reflog` and `git branch recovered <recorded-sha>`. Never force-push the course repository or rewrite a colleague's shared branch.

Deleting a secret from the latest file does not revoke it. Use a synthetic marker for history exercises. If a real credential was exposed, revoke it first, then follow the platform's documented history-removal and cache cleanup procedure.
