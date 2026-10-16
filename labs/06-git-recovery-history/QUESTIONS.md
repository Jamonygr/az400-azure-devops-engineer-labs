# Lab 06 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L06-Q001

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A developer resets a private branch and loses its name for a recently created commit. Which local record may identify the previous branch position?

```text
HEAD@{0}: reset: moving to HEAD~1
HEAD@{1}: commit: validated local correction
Current branch no longer reaches the correction
```

- **A.** The reflog for the relevant reference
- **B.** The current .gitignore patterns
- **C.** Only the current index contents
- **D.** The remote repository description

## L06-Q002

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A bad commit is already on shared main and collaborators have fetched it. Which normal recovery preserves shared history?

- **A.** Create a reviewed revert commit
- **B.** Hard-reset main to its parent and force-push as the default response
- **C.** Delete the bad commit from one local log display
- **D.** Rename the branch so the defective commit is less visible

## L06-Q003

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One tracked file is accidentally deleted from the working tree while unrelated files contain valuable edits. Which approach is most targeted?

- **A.** Reset the entire repository hard as the first step
- **B.** Run git clean on every untracked file
- **C.** Reclone over the working directory without preserving edits
- **D.** Restore only the selected path from the intended revision

## L06-Q004

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Why can a commit disappear from the current branch history without being immediately erased from local storage?

- **A.** Every reset encrypts the previous commit automatically
- **B.** A missing branch name proves the commit was never created
- **C.** Git stores only one commit object per branch at a time
- **D.** The branch reference moved while the commit object may still exist

## L06-Q005

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

What does git revert normally produce when undoing an ordinary earlier commit on the current branch?

- **A.** A new commit applying the inverse change where it can be resolved
- **B.** Automatic deletion of every object introduced by the original commit
- **C.** A new branch with no parent commits
- **D.** A rollback of every external database affected by deployment

## L06-Q006

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What does git restore --source HEAD --worktree -- config/app.json target in the exhibited case?

```bash
git restore --source HEAD --worktree -- config/app.json
```

- **A.** The remote repository's copy of all configuration files
- **B.** Only untracked files matching the directory name
- **C.** The working-tree version of that path using HEAD as the source
- **D.** Every branch reference in the repository

## L06-Q007

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

After locating the desired commit in reflog, what is a safe first recovery step?

- **A.** Create a new recovery branch at that commit
- **B.** Force-push the current mistaken branch to every remote
- **C.** Delete unreachable objects to simplify the repository
- **D.** Run another hard reset without recording the found identity

## L06-Q008

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

What should a reviewer expect when a revert of an older commit conflicts with later changes?

- **A.** Assume a conflicting revert is impossible because the original commit was valid
- **B.** Ignore conflicts and report that the rollback completed
- **C.** Force-push the older tree immediately without checking subsequent valid work
- **D.** Resolve the inverse change against the current source and test the result

## L06-Q009

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why should a developer inspect git status and a path diff before restoring a deleted file?

- **A.** Restoration may overwrite local changes and must use the intended source
- **B.** Status automatically uploads a backup to the remote
- **C.** A diff makes all restoration commands nondestructive
- **D.** The file's extension alone identifies the correct historical revision

## L06-Q010

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A teammate cannot find a developer's private local reset in their own reflog. What explains the difference?

- **A.** The repository must have been converted into a shallow clone
- **B.** Only repository administrators can retain reflog entries
- **C.** Every clone synchronizes all local branch movements on each fetch
- **D.** Reflogs describe local reference updates rather than one universal shared operation history

## L06-Q011

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Which evidence demonstrates that a shared-history rollback repaired the regression while preserving auditability?

- **A.** The local working tree has unstaged modifications after a failed revert
- **B.** A new reviewed commit reverses the faulty behavior and the earlier history remains inspectable
- **C.** The bad commit disappears from the source history entirely
- **D.** Only the branch name changes from main to recovered

## L06-Q012

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Which check confirms a targeted file recovery respected the request to preserve unrelated edits?

- **A.** The file exists with any nonzero size
- **B.** Only the source commit message contains the word restore
- **C.** The restored path has expected content and other modified paths retain their intended diffs
- **D.** The repository has no modifications anywhere after a hard reset

## L06-Q013

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A recovery guide promises any reset commit can always be restored through reflog. The repository has run cleanup for months since the mistake. What correction is necessary?

- **A.** A commit message alone is sufficient to regenerate the exact source tree
- **B.** Recovery depends on retained reflog entries and objects, so preserve a found reference promptly and avoid guaranteeing expired data recovery
- **C.** Reflog is a permanent remote backup independent of local garbage collection
- **D.** Running more hard resets recreates the missing earlier objects

## L06-Q014

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A published commit introduced a configuration bug, and later valid commits depend on parts of its refactoring. What is the safest recovery plan?

- **A.** Force main back before the original commit and assume dependent changes will reappear automatically
- **B.** Run an unresolved revert and treat its nonzero exit as an acceptable deployed rollback
- **C.** Revert all later commits indiscriminately because one earlier change was defective
- **D.** Review and implement a targeted inverse or corrective change against current main, resolving dependencies and testing the resulting behavior

## L06-Q015

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A configuration file is deleted only from the working tree, another file has staged edits, and a third has unstaged edits. The developer needs the configuration from HEAD without losing either other change. Which plan fits?

- **A.** Inspect status, restore only the configuration path from HEAD to the working tree, and verify the other staged and unstaged diffs
- **B.** Use git reset --hard HEAD and then infer the missing edits from shell history
- **C.** Use git restore --staged --worktree . for the entire repository
- **D.** Delete the index and reclone every tracked path

## L06-Q016

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A supported release needs one fix from main without its unrelated next-version changes. Which Git operation is commonly appropriate?

```text
release/v1: A---B---C
main:       A---B---C---D---E---F
Required patch: E
D and F contain incompatible next-version work
```

- **A.** Merge all of main and remove the incompatible code afterward
- **B.** Move the supported release tag to main without applying a patch
- **C.** Copy only the commit message into a new empty commit
- **D.** Cherry-pick the intended commit onto the supported branch

## L06-Q017

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A real token was committed publicly and then deleted from the latest file. What should happen first in the response?

- **A.** Revoke or rotate the exposed credential
- **B.** Rewrite the history and keep the same live token indefinitely
- **C.** Add the filename to gitignore and declare the exposure resolved
- **D.** Rename the token variable while retaining its value

## L06-Q018

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

After history cleanup, a collaborator pushes an old branch and the removed file reappears. What caused the regression?

- **A.** The signing key regenerated the deleted file
- **B.** The new branch name forced the server to restore a backup
- **C.** The collaborator reintroduced references to the old content graph
- **D.** Gitignore automatically recreated the old file

## L06-Q019

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A tracked configuration file was deleted several commits ago. Which inspection can locate the deletion and prior version?

- **A.** Only the filesystem creation date of the repository folder
- **B.** Only the names of currently open pull requests
- **C.** The file's Git path history
- **D.** Only git status on the current clean checkout

## L06-Q020

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A conflicted cherry-pick should be abandoned, and the developer does not need its resolution edits. Which supported operation is relevant?

```text
On branch release/v1
You are currently cherry-picking commit <patch>
Unmerged paths: config/app.json
Decision: abandon the entire cherry-pick attempt
```

- **A.** git fetch --prune
- **B.** git cherry-pick --abort
- **C.** git cherry-pick --continue
- **D.** git cherry-pick --skip

## L06-Q021

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why does a cherry-picked fix usually have a different commit identity on the target branch?

- **A.** Cherry-picking always changes the author's original source files arbitrarily
- **B.** A commit hash depends only on its human-readable message
- **C.** The new commit has its own ancestry and commit metadata
- **D.** Git randomly encrypts all copied commit hashes

## L06-Q022

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why does a later commit deleting a secret fail to remove the earlier exposure?

```text
Commit A: adds service-token.txt
Commit B: deletes service-token.txt
Public clone containing Commit A already exists
```

- **A.** Earlier revisions and external copies can still contain the value
- **B.** Deleting a file automatically disables all credentials it contains
- **C.** A public repository automatically destroys every old commit on merge
- **D.** Only repository administrators can read any previous public version

## L06-Q023

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Which coordination step helps prevent old sensitive history returning after a rewrite?

- **A.** Have collaborators use the documented cleaned-history recovery or fresh-clone procedure before resuming affected pushes
- **B.** Ask collaborators only to rename their old branch
- **C.** Keep every old branch as the default push target without review
- **D.** Delete only the cleaned repository's README

## L06-Q024

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why is a clean current working tree insufficient to explain a file missing from an older commit?

- **A.** Clean status proves that every historical version contains identical files
- **B.** Git status includes a full chronological file-deletion report
- **C.** A missing file must be untracked if status is clean
- **D.** Clean status concerns current index and working-tree differences

## L06-Q025

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should git status be checked for after cancelling a conflicted cherry-pick?

- **A.** No unintended in-progress operation and the expected branch state
- **B.** Only whether conflict markers disappeared from the editor
- **C.** Only whether the original source commit still exists
- **D.** Only whether the staged diff is empty, without checking operation state

## L06-Q026

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should be checked before accepting a cherry-picked fix on an older release branch?

- **A.** Only that the original main build was green
- **B.** Only that the source and destination branch names look similar
- **C.** Only that the new commit has the same number of lines
- **D.** Dependencies and behavior against that older branch's actual baseline

## L06-Q027

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

What outcome is needed in addition to coordinated history cleanup after credential exposure?

- **A.** The secret file is absent from the default-branch tip
- **B.** The old credential no longer authorizes access
- **C.** The credential is deleted from the local environment file only
- **D.** The repository scan no longer reports the historical token string

## L06-Q028

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

What should a postcleanup verification inspect beyond the current default-branch file tree?

- **A.** Known affected refs and repositories within the defined cleanup scope
- **B.** Only the file's current absence in the editor
- **C.** Only the number of commits on main
- **D.** Only the commit author's new display name

## L06-Q029

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should be selected before restoring a historically deleted configuration file?

```bash
git log -- config/app.json
git show <intended-commit>:config/app.json
```

- **A.** Only a filename with the same extension
- **B.** The oldest possible commit regardless of current application format
- **C.** Every file changed anywhere in the deletion commit
- **D.** The intended source revision and path

## L06-Q030

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A developer resolved several conflicts but now wants to abort and may need that work later. What should happen first?

- **A.** Force-push the unresolved index as a commit
- **B.** Delete the branch and assume reflog contains every unstaged edit
- **C.** Preserve the valuable resolution changes in an appropriate separate record before discarding them
- **D.** Run abort repeatedly until the edits reappear

## L06-Q031

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A cherry-pick conflicts. What state indicates that the operation still requires attention rather than having completed successfully?

- **A.** The target branch has fewer local commits than main
- **B.** Git reports unresolved paths and an in-progress cherry-pick
- **C.** A new remote tag appears with the original commit message
- **D.** The author closes the terminal window

## L06-Q032

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why must forks clones and downstream references be considered during sensitive-history cleanup?

- **A.** The unwanted content can remain outside the rewritten primary reference
- **B.** Every fork is automatically deleted when the source branch changes
- **C.** A collaborator's old branch can never reintroduce removed history
- **D.** The newest commit's clean diff proves no copy contains the value

## L06-Q033

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why should pushes be coordinated or temporarily constrained during a shared-history rewrite?

- **A.** Every simultaneous read request corrupts the repository
- **B.** A temporary coordination window permanently removes future review needs
- **C.** Concurrent old-history writes can undermine the cleaned reference boundary
- **D.** Git cannot perform a rewrite unless every user deletes their account

## L06-Q034

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why should a historical-file recovery normally begin on a reviewable recovery branch?

- **A.** A branch automatically converts obsolete configuration formats
- **B.** Main cannot contain any restored file
- **C.** The recovery branch removes all prior audit history
- **D.** The restored content can be inspected and tested against today's baseline

## L06-Q035

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A multi-commit cherry-pick stops on one unwanted patch, but later selected patches are still needed. Which distinction matters?

- **A.** Continue discards every unresolved conflict automatically
- **B.** Fetch chooses which local patch should be skipped
- **C.** Skip continues the sequence past the current patch, while abort cancels the operation
- **D.** Skip and abort always perform exactly the same operation

## L06-Q036

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A security fix from main depends on a refactor unavailable on the supported release. The release must keep its old API. Which approach is strongest?

- **A.** Adapt or backport the minimal correction for the old contract, test it there, and record the relationship to the original fix
- **B.** Cherry-pick the fix and suppress the missing-symbol compilation errors
- **C.** Merge the entire refactor and remove the supported API tests
- **D.** Assume a conflict-free cherry-pick proves the runtime dependencies are present

## L06-Q037

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

An attacker could already have copied a public token before revocation. The team wants to claim the incident is erased after rewriting history. Which report is accurate?

- **A.** Report only that the current file lacks the token without mentioning revocation or historical exposure
- **B.** State that the credential was invalidated and known repository exposure was cleaned, while acknowledging that prior public copies cannot be guaranteed erased
- **C.** State that a rewritten default branch proves every observer deleted their copy
- **D.** Keep the original token active to avoid disrupting integrations and call the rewrite sufficient

## L06-Q038

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A sensitive file exists in multiple maintained branches and a fork. The team has authority over the primary repository but not the fork. Which response is appropriate?

- **A.** Leave the token live until the external fork responds
- **B.** Invalidate the secret, coordinate cleanup of owned affected refs, contact the relevant fork owner through the approved process, and avoid claiming universal erasure
- **C.** Delete the entire external fork using the primary repository's administrative role
- **D.** Rewrite only main and report every maintained branch and fork clean

## L06-Q039

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

An old configuration file is recovered, but the application now expects a different schema and secrets must come from a vault. What should the engineer do?

- **A.** Restore the entire old application to avoid reading the configuration diff
- **B.** Copy the old secret values into the new file and rely on repository privacy
- **C.** Review and adapt the needed nonsensitive configuration to the current contract, then test the repair
- **D.** Deploy the recovered file unchanged because it once worked

## L06-Q040

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

The developer needs to abandon a failed cherry-pick but retain valuable new conflict-resolution work and unrelated local edits. Which sequence is safest?

- **A.** Delete the whole working directory and recover from the remote later
- **B.** Inspect repository state, preserve the work that must survive, use the supported abort path, and verify the resulting diffs
- **C.** Use reset --hard immediately because reflog necessarily records every unstaged byte
- **D.** Continue the cherry-pick with unresolved paths so no current files disappear

## L06-Q041

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A live credential was committed, shared, then removed from the current tree and added to gitignore. A teammate says the incident is closed. Which response addresses the remaining exposure?

- **A.** Change only the file name so scanners no longer match it
- **B.** Revoke or rotate the credential, investigate use, and coordinate any required historical cleanup and downstream copies
- **C.** Accept closure because gitignore prevents the old commit from being fetched
- **D.** Rewrite history first and keep the credential active until every clone is updated

## L06-Q042

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A shared main branch has a bad commit followed by two valid releases. Other developers have fetched it. Which repair best preserves public history and the valid later work?

- **A.** Apply the inverse patch without testing whether later commits changed the same behavior
- **B.** Create a reviewed revert or targeted corrective commit and validate the current branch
- **C.** Reset main to before the bad commit and force-push as the default repair
- **D.** Delete the two later release tags and stop the investigation

## L06-Q043

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A responder needs one configuration file from a known-good commit, but the working tree contains unrelated uncommitted fixes. Which repair minimizes the intended change scope?

- **A.** Run reset --hard to the old commit before checking status
- **B.** Revert every commit since the known-good version
- **C.** Copy the entire old tree over the current checkout
- **D.** Inspect status, preserve unrelated work, restore the target path from the chosen revision, and review the resulting diff

## L06-Q044

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A branch reset made a useful commit unreachable from named branches. Reflog still lists it, but maintenance expiry is approaching. What sequence best protects the recovery investigation?

- **A.** Reset shared main immediately to the candidate before checking its contents
- **B.** Inspect the candidate and create a rescue reference before continuing analysis
- **C.** Wait for the next garbage collection and then inspect the same reflog entry
- **D.** Assume another developer's reflog contains this local reset

## L06-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A tracked local-settings file should leave version control while each developer keeps a local copy. History contains no secret. Which reviewed change best fits?

- **A.** Rewrite all repository history to remove the nonsecret path
- **B.** Untrack the path with the cached removal option, add the ignore rule, and verify the committed diff and local file
- **C.** Add only a gitignore rule and leave the tracked file unchanged
- **D.** Use a normal file deletion and commit it without documenting local replacement

## L06-Q046

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

The exhibit shows staged changes in config.json and unstaged changes in service.cs. An operator wants to discard only the unstaged service.cs edit while keeping the index intact. Which action fits?

```text
git status --short
M  config.json
 M service.cs

git diff --cached --stat
config.json | 2 +-
```

- **A.** Commit every current file before discarding service.cs
- **B.** Restore only service.cs in the working tree and confirm both status and staged diff afterward
- **C.** Reset --hard HEAD for the whole repository
- **D.** Restore config.json from HEAD with the staged option

## L06-Q047

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A hotfix commit from main is cherry-picked into release/1.x, but it depends on a schema change absent there. The pick reports success. What should determine readiness?

- **A.** Merge all of main so the dependency appears automatically
- **B.** Treat the source branch's old passing build as the target's acceptance result
- **C.** Review dependencies and test the resulting behavior against release/1.x before accepting the transferred fix
- **D.** Accept it because no textual conflict means no behavioral dependency exists

## L06-Q048

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Two reflog entries contain similar configuration fixes; only one includes a later security change. The release must retain that security correction. Which evidence should choose the rescue commit?

- **A.** Choose the oldest candidate because it predates the regression
- **B.** Choose the candidate with the shorter commit message
- **C.** Inspect each candidate's tree, ancestry, and relevant diff against the required release behavior
- **D.** Choose whichever reflog message mentions configuration first

## L06-Q049

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A removed token remains in fork history and cached artifacts. The team has rotated it, but a proposed history rewrite is being described as complete erasure. What should the recovery report say?

- **A.** No useful mitigation occurred until every external byte is erased
- **B.** Containment is complete only to the extent verified; history rewriting cannot guarantee removal from all external copies
- **C.** The rotated token never existed because its current validity is false
- **D.** A forced rewrite proves all forks and caches were purged

## L06-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

A shared branch has a normal configuration regression and an earlier leaked credential. The team wants the least disruptive complete recovery. Which policy distinguishes the problems correctly?

- **A.** Revert both commits and consider the credential secure because its addition is reversed
- **B.** Rewrite the whole shared branch for both issues without considering consumers
- **C.** Rotate the credential and leave the configuration regression because security is higher priority
- **D.** Use a forward source correction for the regression, immediately revoke the credential, and separately review necessary coordinated sensitive-history cleanup
