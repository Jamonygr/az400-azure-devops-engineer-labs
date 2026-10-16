# Lab 06 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L06-Q001

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A developer resets a private branch and loses its name for a recently created commit. Which local record may identify the previous branch position?

```text
HEAD@{0}: reset: moving to HEAD~1
HEAD@{1}: commit: validated local correction
Current branch no longer reaches the correction
```

- **A. The reflog for the relevant reference** **Correct.** Reflogs record local reference updates and can expose the previous commit identity.
- **B. The current .gitignore patterns** Ignore rules do not record branch movement or lost commit identities.
- **C. Only the current index contents** The index describes staged content rather than the history of moved references.
- **D. The remote repository description** A remote description does not record this local reset operation.

**Explanation:** Reflogs record local reference updates and can expose the previous commit identity. Ignore rules do not record branch movement or lost commit identities. The index describes staged content rather than the history of moved references. A remote description does not record this local reset operation.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q002

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A bad commit is already on shared main and collaborators have fetched it. Which normal recovery preserves shared history?

- **A. Create a reviewed revert commit** **Correct.** Revert records an inverse change without moving shared main backward.
- **B. Hard-reset main to its parent and force-push as the default response** That rewrites already shared history and can disrupt collaborators.
- **C. Delete the bad commit from one local log display** Changing display output does not alter the shared source state.
- **D. Rename the branch so the defective commit is less visible** The code and its history remain present under the renamed reference.

**Explanation:** Revert records an inverse change without moving shared main backward. That rewrites already shared history and can disrupt collaborators. Changing display output does not alter the shared source state. The code and its history remain present under the renamed reference.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q003

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One tracked file is accidentally deleted from the working tree while unrelated files contain valuable edits. Which approach is most targeted?

- **A. Reset the entire repository hard as the first step** A repository-wide discard exceeds the stated one-file recovery scope.
- **B. Run git clean on every untracked file** Cleaning untracked files does not restore the missing tracked content.
- **C. Reclone over the working directory without preserving edits** That can discard the unrelated work the scenario requires retaining.
- **D. Restore only the selected path from the intended revision** **Correct.** Path-scoped restoration can repair the file without resetting unrelated work.

**Explanation:** A repository-wide discard exceeds the stated one-file recovery scope. Cleaning untracked files does not restore the missing tracked content. That can discard the unrelated work the scenario requires retaining. Path-scoped restoration can repair the file without resetting unrelated work.

**Sources:** [S4](https://git-scm.com/docs/git-restore)

## L06-Q004

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Why can a commit disappear from the current branch history without being immediately erased from local storage?

- **A. Every reset encrypts the previous commit automatically** Reset changes repository state rather than encrypting old commits.
- **B. A missing branch name proves the commit was never created** A reference can be deleted or moved after its commit existed.
- **C. Git stores only one commit object per branch at a time** Branches normally refer into histories containing many commit objects.
- **D. The branch reference moved while the commit object may still exist** **Correct.** Reachability through a name and physical object retention are different conditions.

**Explanation:** Reset changes repository state rather than encrypting old commits. A reference can be deleted or moved after its commit existed. Branches normally refer into histories containing many commit objects. Reachability through a name and physical object retention are different conditions.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q005

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

What does git revert normally produce when undoing an ordinary earlier commit on the current branch?

- **A. A new commit applying the inverse change where it can be resolved** **Correct.** The original history remains while a subsequent change reverses its effect.
- **B. Automatic deletion of every object introduced by the original commit** Revert changes content rather than guaranteeing object erasure.
- **C. A new branch with no parent commits** That is not the normal inverse-change behavior of revert.
- **D. A rollback of every external database affected by deployment** Source-control reversal does not automatically transact external runtime state.

**Explanation:** The original history remains while a subsequent change reverses its effect. Revert changes content rather than guaranteeing object erasure. That is not the normal inverse-change behavior of revert. Source-control reversal does not automatically transact external runtime state.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q006

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What does git restore --source HEAD --worktree -- config/app.json target in the exhibited case?

```bash
git restore --source HEAD --worktree -- config/app.json
```

- **A. The remote repository's copy of all configuration files** The shown command restores local state rather than publishing a remote update.
- **B. Only untracked files matching the directory name** The selected path is restored from the specified tracked source revision.
- **C. The working-tree version of that path using HEAD as the source** **Correct.** The command specifies the source revision and only the selected working-tree path.
- **D. Every branch reference in the repository** Restore is not a command to move all branch names.

**Explanation:** The shown command restores local state rather than publishing a remote update. The selected path is restored from the specified tracked source revision. The command specifies the source revision and only the selected working-tree path. Restore is not a command to move all branch names.

**Sources:** [S4](https://git-scm.com/docs/git-restore)

## L06-Q007

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

After locating the desired commit in reflog, what is a safe first recovery step?

- **A. Create a new recovery branch at that commit** **Correct.** A new reference preserves the found work before further investigation.
- **B. Force-push the current mistaken branch to every remote** That can publish the wrong state and affect other collaborators.
- **C. Delete unreachable objects to simplify the repository** That can remove the very content being recovered.
- **D. Run another hard reset without recording the found identity** Another destructive movement can make the investigation harder.

**Explanation:** A new reference preserves the found work before further investigation. That can publish the wrong state and affect other collaborators. That can remove the very content being recovered. Another destructive movement can make the investigation harder.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q008

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

What should a reviewer expect when a revert of an older commit conflicts with later changes?

- **A. Assume a conflicting revert is impossible because the original commit was valid** Validity does not prevent later incompatible modifications.
- **B. Ignore conflicts and report that the rollback completed** An unresolved operation has not established the intended corrective content.
- **C. Force-push the older tree immediately without checking subsequent valid work** That can remove unrelated accepted changes instead of a targeted reversal.
- **D. Resolve the inverse change against the current source and test the result** **Correct.** Later work can overlap or depend on the content being reversed.

**Explanation:** Validity does not prevent later incompatible modifications. An unresolved operation has not established the intended corrective content. That can remove unrelated accepted changes instead of a targeted reversal. Later work can overlap or depend on the content being reversed.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q009

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why should a developer inspect git status and a path diff before restoring a deleted file?

- **A. Restoration may overwrite local changes and must use the intended source** **Correct.** The current index and working-tree state determine what content the command may replace.
- **B. Status automatically uploads a backup to the remote** Status reports local state rather than creating a remote backup.
- **C. A diff makes all restoration commands nondestructive** Inspection informs the decision but does not change overwrite behavior.
- **D. The file's extension alone identifies the correct historical revision** Filename type does not establish which version should be restored.

**Explanation:** The current index and working-tree state determine what content the command may replace. Status reports local state rather than creating a remote backup. Inspection informs the decision but does not change overwrite behavior. Filename type does not establish which version should be restored.

**Sources:** [S4](https://git-scm.com/docs/git-restore)

## L06-Q010

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A teammate cannot find a developer's private local reset in their own reflog. What explains the difference?

- **A. The repository must have been converted into a shallow clone** Different local reflogs can occur without shallow history.
- **B. Only repository administrators can retain reflog entries** Local reflog availability is not defined by remote administrative role.
- **C. Every clone synchronizes all local branch movements on each fetch** Fetch does not copy every other clone's private operation history.
- **D. Reflogs describe local reference updates rather than one universal shared operation history** **Correct.** Different clones do not automatically contain every other's local movements.

**Explanation:** Different local reflogs can occur without shallow history. Local reflog availability is not defined by remote administrative role. Fetch does not copy every other clone's private operation history. Different clones do not automatically contain every other's local movements.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q011

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Which evidence demonstrates that a shared-history rollback repaired the regression while preserving auditability?

- **A. The local working tree has unstaged modifications after a failed revert** Uncommitted partial changes are not a completed reviewed repair.
- **B. A new reviewed commit reverses the faulty behavior and the earlier history remains inspectable** **Correct.** The corrective behavior and retained source history are both relevant requirements.
- **C. The bad commit disappears from the source history entirely** That is not the normal evidence of a history-preserving revert.
- **D. Only the branch name changes from main to recovered** A name change does not prove corrected code.

**Explanation:** Uncommitted partial changes are not a completed reviewed repair. The corrective behavior and retained source history are both relevant requirements. That is not the normal evidence of a history-preserving revert. A name change does not prove corrected code.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q012

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Which check confirms a targeted file recovery respected the request to preserve unrelated edits?

- **A. The file exists with any nonzero size** Existence does not establish the correct content or preservation of other work.
- **B. Only the source commit message contains the word restore** A message does not prove the actual path state.
- **C. The restored path has expected content and other modified paths retain their intended diffs** **Correct.** Both the repair and the preservation constraint must be verified.
- **D. The repository has no modifications anywhere after a hard reset** That can indicate unrelated edits were discarded.

**Explanation:** Existence does not establish the correct content or preservation of other work. A message does not prove the actual path state. Both the repair and the preservation constraint must be verified. That can indicate unrelated edits were discarded.

**Sources:** [S4](https://git-scm.com/docs/git-restore)

## L06-Q013

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A recovery guide promises any reset commit can always be restored through reflog. The repository has run cleanup for months since the mistake. What correction is necessary?

- **A. A commit message alone is sufficient to regenerate the exact source tree** Descriptive text does not contain the complete missing object graph.
- **B. Recovery depends on retained reflog entries and objects, so preserve a found reference promptly and avoid guaranteeing expired data recovery** **Correct.** Local retention and garbage collection can remove the evidence or unreachable content needed by the method.
- **C. Reflog is a permanent remote backup independent of local garbage collection** Its local retention does not provide that unconditional backup guarantee.
- **D. Running more hard resets recreates the missing earlier objects** New reference movements cannot reconstruct deleted content.

**Explanation:** Descriptive text does not contain the complete missing object graph. Local retention and garbage collection can remove the evidence or unreachable content needed by the method. Its local retention does not provide that unconditional backup guarantee. New reference movements cannot reconstruct deleted content.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q014

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A published commit introduced a configuration bug, and later valid commits depend on parts of its refactoring. What is the safest recovery plan?

- **A. Force main back before the original commit and assume dependent changes will reappear automatically** Reference rewinding removes later history from that branch and does not reconstruct its valid changes.
- **B. Run an unresolved revert and treat its nonzero exit as an acceptable deployed rollback** A stopped operation has not established a usable corrected revision.
- **C. Revert all later commits indiscriminately because one earlier change was defective** That expands the damage scope without evaluating which accepted work remains valid.
- **D. Review and implement a targeted inverse or corrective change against current main, resolving dependencies and testing the resulting behavior** **Correct.** The repair must undo the defect without discarding valid later work.

**Explanation:** Reference rewinding removes later history from that branch and does not reconstruct its valid changes. A stopped operation has not established a usable corrected revision. That expands the damage scope without evaluating which accepted work remains valid. The repair must undo the defect without discarding valid later work.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q015

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A configuration file is deleted only from the working tree, another file has staged edits, and a third has unstaged edits. The developer needs the configuration from HEAD without losing either other change. Which plan fits?

- **A. Inspect status, restore only the configuration path from HEAD to the working tree, and verify the other staged and unstaged diffs** **Correct.** The scoped operation targets the missing file without a broad reset of the index or working tree.
- **B. Use git reset --hard HEAD and then infer the missing edits from shell history** That discards unrelated tracked modifications instead of preserving them.
- **C. Use git restore --staged --worktree . for the entire repository** The broad path and both destinations can overwrite unrelated staged and unstaged work.
- **D. Delete the index and reclone every tracked path** That is broader than the requested repair and risks the valuable local state.

**Explanation:** The scoped operation targets the missing file without a broad reset of the index or working tree. That discards unrelated tracked modifications instead of preserving them. The broad path and both destinations can overwrite unrelated staged and unstaged work. That is broader than the requested repair and risks the valuable local state.

**Sources:** [S4](https://git-scm.com/docs/git-restore); [S5](https://git-scm.com/docs/git-reset)

## L06-Q016

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A supported release needs one fix from main without its unrelated next-version changes. Which Git operation is commonly appropriate?

```text
release/v1: A---B---C
main:       A---B---C---D---E---F
Required patch: E
D and F contain incompatible next-version work
```

- **A. Merge all of main and remove the incompatible code afterward** That broadens the patch scope and complicates supported-release validation.
- **B. Move the supported release tag to main without applying a patch** Changing the reference does not preserve the supported baseline.
- **C. Copy only the commit message into a new empty commit** A message does not apply the corrective source changes.
- **D. Cherry-pick the intended commit onto the supported branch** **Correct.** Selective application can transfer the patch without merging all newer development.

**Explanation:** That broadens the patch scope and complicates supported-release validation. Changing the reference does not preserve the supported baseline. A message does not apply the corrective source changes. Selective application can transfer the patch without merging all newer development.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q017

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A real token was committed publicly and then deleted from the latest file. What should happen first in the response?

- **A. Revoke or rotate the exposed credential** **Correct.** Current-file removal does not invalidate a value available in history or copies.
- **B. Rewrite the history and keep the same live token indefinitely** The disclosed credential remains usable even if some repository copies are cleaned.
- **C. Add the filename to gitignore and declare the exposure resolved** Ignore rules do not revoke a credential or erase historical content.
- **D. Rename the token variable while retaining its value** A new variable name does not change the compromised secret.

**Explanation:** Current-file removal does not invalidate a value available in history or copies. The disclosed credential remains usable even if some repository copies are cleaned. Ignore rules do not revoke a credential or erase historical content. A new variable name does not change the compromised secret.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q018

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

After history cleanup, a collaborator pushes an old branch and the removed file reappears. What caused the regression?

- **A. The signing key regenerated the deleted file** Signing does not recreate source objects from removed files.
- **B. The new branch name forced the server to restore a backup** A branch name alone does not imply automatic historical restoration.
- **C. The collaborator reintroduced references to the old content graph** **Correct.** Cleaning one remote history does not automatically clean every existing clone.
- **D. Gitignore automatically recreated the old file** Ignore configuration does not reconstruct historical content.

**Explanation:** Signing does not recreate source objects from removed files. A branch name alone does not imply automatic historical restoration. Cleaning one remote history does not automatically clean every existing clone. Ignore configuration does not reconstruct historical content.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q019

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A tracked configuration file was deleted several commits ago. Which inspection can locate the deletion and prior version?

- **A. Only the filesystem creation date of the repository folder** That timestamp does not identify a source-level deletion commit.
- **B. Only the names of currently open pull requests** An older accepted change may no longer have an open request.
- **C. The file's Git path history** **Correct.** The relevant commit sequence can identify when that tracked path changed or disappeared.
- **D. Only git status on the current clean checkout** Status does not list every committed historical deletion.

**Explanation:** That timestamp does not identify a source-level deletion commit. An older accepted change may no longer have an open request. The relevant commit sequence can identify when that tracked path changed or disappeared. Status does not list every committed historical deletion.

**Sources:** [S7](https://git-scm.com/docs/git-log)

## L06-Q020

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A conflicted cherry-pick should be abandoned, and the developer does not need its resolution edits. Which supported operation is relevant?

```text
On branch release/v1
You are currently cherry-picking commit <patch>
Unmerged paths: config/app.json
Decision: abandon the entire cherry-pick attempt
```

- **A. git fetch --prune** Fetching remote references does not cancel a local cherry-pick operation.
- **B. git cherry-pick --abort** **Correct.** The operation cancels the in-progress cherry-pick and restores its prior state where supported.
- **C. git cherry-pick --continue** Continue attempts to complete the operation after resolution rather than abandon it.
- **D. git cherry-pick --skip** Skip discards the current selected commit and proceeds through a sequence, not necessarily aborting all work.

**Explanation:** Fetching remote references does not cancel a local cherry-pick operation. The operation cancels the in-progress cherry-pick and restores its prior state where supported. Continue attempts to complete the operation after resolution rather than abandon it. Skip discards the current selected commit and proceeds through a sequence, not necessarily aborting all work.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q021

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why does a cherry-picked fix usually have a different commit identity on the target branch?

- **A. Cherry-picking always changes the author's original source files arbitrarily** A new identity does not imply arbitrary semantic changes.
- **B. A commit hash depends only on its human-readable message** The message is only part of a commit's object content.
- **C. The new commit has its own ancestry and commit metadata** **Correct.** Equivalent patch content does not imply an identical commit object.
- **D. Git randomly encrypts all copied commit hashes** Commit identity is derived from object content rather than random encryption.

**Explanation:** A new identity does not imply arbitrary semantic changes. The message is only part of a commit's object content. Equivalent patch content does not imply an identical commit object. Commit identity is derived from object content rather than random encryption.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q022

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why does a later commit deleting a secret fail to remove the earlier exposure?

```text
Commit A: adds service-token.txt
Commit B: deletes service-token.txt
Public clone containing Commit A already exists
```

- **A. Earlier revisions and external copies can still contain the value** **Correct.** Version history preserves prior content until a separate cleanup, and copies may remain.
- **B. Deleting a file automatically disables all credentials it contains** Source changes do not generally revoke external service credentials.
- **C. A public repository automatically destroys every old commit on merge** Normal merging retains history rather than erasing older versions.
- **D. Only repository administrators can read any previous public version** Historical public content is not protected by that assumed role boundary.

**Explanation:** Version history preserves prior content until a separate cleanup, and copies may remain. Source changes do not generally revoke external service credentials. Normal merging retains history rather than erasing older versions. Historical public content is not protected by that assumed role boundary.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q023

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Which coordination step helps prevent old sensitive history returning after a rewrite?

- **A. Have collaborators use the documented cleaned-history recovery or fresh-clone procedure before resuming affected pushes** **Correct.** Their local references must not reintroduce the old graph.
- **B. Ask collaborators only to rename their old branch** The same old commits can remain under the new name.
- **C. Keep every old branch as the default push target without review** That preserves references to the content intended for removal.
- **D. Delete only the cleaned repository's README** Documentation content is not the historical graph being reintroduced.

**Explanation:** Their local references must not reintroduce the old graph. The same old commits can remain under the new name. That preserves references to the content intended for removal. Documentation content is not the historical graph being reintroduced.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q024

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why is a clean current working tree insufficient to explain a file missing from an older commit?

- **A. Clean status proves that every historical version contains identical files** Cleanliness does not imply unchanged past source trees.
- **B. Git status includes a full chronological file-deletion report** It is not a substitute for historical log inspection.
- **C. A missing file must be untracked if status is clean** The file may have been tracked and later removed in committed history.
- **D. Clean status concerns current index and working-tree differences** **Correct.** Committed history requires a separate historical inspection.

**Explanation:** Cleanliness does not imply unchanged past source trees. It is not a substitute for historical log inspection. The file may have been tracked and later removed in committed history. Committed history requires a separate historical inspection.

**Sources:** [S7](https://git-scm.com/docs/git-log)

## L06-Q025

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should git status be checked for after cancelling a conflicted cherry-pick?

- **A. No unintended in-progress operation and the expected branch state** **Correct.** The cancellation result should match the intended pre-operation baseline.
- **B. Only whether conflict markers disappeared from the editor** An editor view does not establish that the repository operation ended or that the expected branch state was restored.
- **C. Only whether the original source commit still exists** Source commit existence does not show whether the local cherry-pick remains in progress.
- **D. Only whether the staged diff is empty, without checking operation state** An empty index alone does not establish the intended branch and in-progress operation state.

**Explanation:** The cancellation result should match the intended pre-operation baseline. An editor view does not establish that the repository operation ended or that the expected branch state was restored. Source commit existence does not show whether the local cherry-pick remains in progress. An empty index alone does not establish the intended branch and in-progress operation state.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q026

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should be checked before accepting a cherry-picked fix on an older release branch?

- **A. Only that the original main build was green** That run can contain prerequisites absent from the older release.
- **B. Only that the source and destination branch names look similar** Naming does not establish code compatibility.
- **C. Only that the new commit has the same number of lines** Diff size does not prove the surrounding contracts match.
- **D. Dependencies and behavior against that older branch's actual baseline** **Correct.** The transferred patch may rely on changes not selected with it.

**Explanation:** That run can contain prerequisites absent from the older release. Naming does not establish code compatibility. Diff size does not prove the surrounding contracts match. The transferred patch may rely on changes not selected with it.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q027

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

What outcome is needed in addition to coordinated history cleanup after credential exposure?

- **A. The secret file is absent from the default-branch tip** Current-tree removal does not invalidate the credential retained in earlier copies.
- **B. The old credential no longer authorizes access** **Correct.** Security response must invalidate the leaked capability, not merely its visible file.
- **C. The credential is deleted from the local environment file only** Local removal does not revoke the external capability already exposed.
- **D. The repository scan no longer reports the historical token string** A clean scanner result is not independent proof that the external credential stopped authorizing access.

**Explanation:** Current-tree removal does not invalidate the credential retained in earlier copies. Security response must invalidate the leaked capability, not merely its visible file. Local removal does not revoke the external capability already exposed. A clean scanner result is not independent proof that the external credential stopped authorizing access.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q028

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

What should a postcleanup verification inspect beyond the current default-branch file tree?

- **A. Known affected refs and repositories within the defined cleanup scope** **Correct.** Other branches or copies can retain the unwanted historical object relationships.
- **B. Only the file's current absence in the editor** The latest tree does not cover the defined historical exposure scope.
- **C. Only the number of commits on main** A count does not identify whether sensitive objects remain referenced.
- **D. Only the commit author's new display name** Attribution changes do not prove content removal.

**Explanation:** Other branches or copies can retain the unwanted historical object relationships. The latest tree does not cover the defined historical exposure scope. A count does not identify whether sensitive objects remain referenced. Attribution changes do not prove content removal.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q029

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

What should be selected before restoring a historically deleted configuration file?

```bash
git log -- config/app.json
git show <intended-commit>:config/app.json
```

- **A. Only a filename with the same extension** Similar type does not identify the correct configuration.
- **B. The oldest possible commit regardless of current application format** An arbitrary old version can be incompatible with today's code.
- **C. Every file changed anywhere in the deletion commit** The requested repair may concern only one specific path.
- **D. The intended source revision and path** **Correct.** Recovery needs a deliberate content version rather than whichever file is easiest to find.

**Explanation:** Similar type does not identify the correct configuration. An arbitrary old version can be incompatible with today's code. The requested repair may concern only one specific path. Recovery needs a deliberate content version rather than whichever file is easiest to find.

**Sources:** [S4](https://git-scm.com/docs/git-restore); [S7](https://git-scm.com/docs/git-log)

## L06-Q030

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A developer resolved several conflicts but now wants to abort and may need that work later. What should happen first?

- **A. Force-push the unresolved index as a commit** An unresolved operation is not a reviewed valid source state to publish.
- **B. Delete the branch and assume reflog contains every unstaged edit** Reference logs are not a universal backup of arbitrary uncommitted content.
- **C. Preserve the valuable resolution changes in an appropriate separate record before discarding them** **Correct.** Cancellation can remove work performed during the unresolved operation.
- **D. Run abort repeatedly until the edits reappear** Repeating cancellation does not create a backup of discarded resolution work.

**Explanation:** An unresolved operation is not a reviewed valid source state to publish. Reference logs are not a universal backup of arbitrary uncommitted content. Cancellation can remove work performed during the unresolved operation. Repeating cancellation does not create a backup of discarded resolution work.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q031

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A cherry-pick conflicts. What state indicates that the operation still requires attention rather than having completed successfully?

- **A. The target branch has fewer local commits than main** Relative history length does not establish completion of the selected operation.
- **B. Git reports unresolved paths and an in-progress cherry-pick** **Correct.** The candidate change is awaiting resolution or deliberate cancellation.
- **C. A new remote tag appears with the original commit message** Tag creation does not resolve an active local patch operation.
- **D. The author closes the terminal window** Closing the shell does not necessarily clear the repository's operation state.

**Explanation:** Relative history length does not establish completion of the selected operation. The candidate change is awaiting resolution or deliberate cancellation. Tag creation does not resolve an active local patch operation. Closing the shell does not necessarily clear the repository's operation state.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q032

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why must forks clones and downstream references be considered during sensitive-history cleanup?

- **A. The unwanted content can remain outside the rewritten primary reference** **Correct.** A central rewrite does not automatically alter every existing copy.
- **B. Every fork is automatically deleted when the source branch changes** Forks and clones have independent content and lifecycle.
- **C. A collaborator's old branch can never reintroduce removed history** A push can restore references to an old graph if not coordinated.
- **D. The newest commit's clean diff proves no copy contains the value** A current diff cannot establish absence from historical or external storage.

**Explanation:** A central rewrite does not automatically alter every existing copy. Forks and clones have independent content and lifecycle. A push can restore references to an old graph if not coordinated. A current diff cannot establish absence from historical or external storage.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q033

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Why should pushes be coordinated or temporarily constrained during a shared-history rewrite?

- **A. Every simultaneous read request corrupts the repository** Read activity is not the write-race problem described.
- **B. A temporary coordination window permanently removes future review needs** The migration does not replace ordinary source governance.
- **C. Concurrent old-history writes can undermine the cleaned reference boundary** **Correct.** The transition needs a consistent agreement about which history is authoritative.
- **D. Git cannot perform a rewrite unless every user deletes their account** Account deletion is unrelated to coordinated reference management.

**Explanation:** Read activity is not the write-race problem described. The migration does not replace ordinary source governance. The transition needs a consistent agreement about which history is authoritative. Account deletion is unrelated to coordinated reference management.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q034

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Why should a historical-file recovery normally begin on a reviewable recovery branch?

- **A. A branch automatically converts obsolete configuration formats** Source branching does not migrate application schemas.
- **B. Main cannot contain any restored file** A reviewed restoration can eventually become an accepted mainline change.
- **C. The recovery branch removes all prior audit history** A new reference ordinarily preserves rather than erases source history.
- **D. The restored content can be inspected and tested against today's baseline** **Correct.** Historical existence does not guarantee present-day correctness.

**Explanation:** Source branching does not migrate application schemas. A reviewed restoration can eventually become an accepted mainline change. A new reference ordinarily preserves rather than erases source history. Historical existence does not guarantee present-day correctness.

**Sources:** [S4](https://git-scm.com/docs/git-restore)

## L06-Q035

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A multi-commit cherry-pick stops on one unwanted patch, but later selected patches are still needed. Which distinction matters?

- **A. Continue discards every unresolved conflict automatically** Continuing requires the operation's expected resolution state.
- **B. Fetch chooses which local patch should be skipped** Remote retrieval does not decide a local sequence's conflict outcome.
- **C. Skip continues the sequence past the current patch, while abort cancels the operation** **Correct.** The intended continuation determines which supported recovery action fits.
- **D. Skip and abort always perform exactly the same operation** Their handling of the remaining sequence is materially different.

**Explanation:** Continuing requires the operation's expected resolution state. Remote retrieval does not decide a local sequence's conflict outcome. The intended continuation determines which supported recovery action fits. Their handling of the remaining sequence is materially different.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q036

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A security fix from main depends on a refactor unavailable on the supported release. The release must keep its old API. Which approach is strongest?

- **A. Adapt or backport the minimal correction for the old contract, test it there, and record the relationship to the original fix** **Correct.** The desired behavior matters, while blindly importing newer dependencies can violate support compatibility.
- **B. Cherry-pick the fix and suppress the missing-symbol compilation errors** The resulting source does not become valid by hiding the error.
- **C. Merge the entire refactor and remove the supported API tests** That abandons the stated compatibility requirement.
- **D. Assume a conflict-free cherry-pick proves the runtime dependencies are present** Textual applicability is weaker evidence than building and testing the target baseline.

**Explanation:** The desired behavior matters, while blindly importing newer dependencies can violate support compatibility. The resulting source does not become valid by hiding the error. That abandons the stated compatibility requirement. Textual applicability is weaker evidence than building and testing the target baseline.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick)

## L06-Q037

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

An attacker could already have copied a public token before revocation. The team wants to claim the incident is erased after rewriting history. Which report is accurate?

- **A. Report only that the current file lacks the token without mentioning revocation or historical exposure** That omits the central security consequences and response evidence.
- **B. State that the credential was invalidated and known repository exposure was cleaned, while acknowledging that prior public copies cannot be guaranteed erased** **Correct.** Containment and cleanup are real outcomes, but public disclosure cannot be retroactively made impossible.
- **C. State that a rewritten default branch proves every observer deleted their copy** A repository operation cannot control unknown external retention.
- **D. Keep the original token active to avoid disrupting integrations and call the rewrite sufficient** Avoiding rotation leaves the compromised capability usable.

**Explanation:** That omits the central security consequences and response evidence. Containment and cleanup are real outcomes, but public disclosure cannot be retroactively made impossible. A repository operation cannot control unknown external retention. Avoiding rotation leaves the compromised capability usable.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q038

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A sensitive file exists in multiple maintained branches and a fork. The team has authority over the primary repository but not the fork. Which response is appropriate?

- **A. Leave the token live until the external fork responds** Revocation should not wait for complete control over every historical copy.
- **B. Invalidate the secret, coordinate cleanup of owned affected refs, contact the relevant fork owner through the approved process, and avoid claiming universal erasure** **Correct.** The response must respect ownership while distinguishing controlled cleanup from external copies.
- **C. Delete the entire external fork using the primary repository's administrative role** Authority over one repository does not imply ownership of another.
- **D. Rewrite only main and report every maintained branch and fork clean** That claim exceeds the evidence and scope of the operation.

**Explanation:** Revocation should not wait for complete control over every historical copy. The response must respect ownership while distinguishing controlled cleanup from external copies. Authority over one repository does not imply ownership of another. That claim exceeds the evidence and scope of the operation.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q039

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

An old configuration file is recovered, but the application now expects a different schema and secrets must come from a vault. What should the engineer do?

- **A. Restore the entire old application to avoid reading the configuration diff** That broadens scope beyond the required configuration recovery.
- **B. Copy the old secret values into the new file and rely on repository privacy** Reintroducing historical credentials does not satisfy the current external-secret design.
- **C. Review and adapt the needed nonsensitive configuration to the current contract, then test the repair** **Correct.** Recovery supplies historical evidence, not a guarantee that all old settings should be redeployed.
- **D. Deploy the recovered file unchanged because it once worked** Earlier success does not establish compatibility or safe secret handling today.

**Explanation:** That broadens scope beyond the required configuration recovery. Reintroducing historical credentials does not satisfy the current external-secret design. Recovery supplies historical evidence, not a guarantee that all old settings should be redeployed. Earlier success does not establish compatibility or safe secret handling today.

**Sources:** [S4](https://git-scm.com/docs/git-restore); [S7](https://git-scm.com/docs/git-log)

## L06-Q040

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

The developer needs to abandon a failed cherry-pick but retain valuable new conflict-resolution work and unrelated local edits. Which sequence is safest?

- **A. Delete the whole working directory and recover from the remote later** The remote may not contain the valuable local state being preserved.
- **B. Inspect repository state, preserve the work that must survive, use the supported abort path, and verify the resulting diffs** **Correct.** Cancellation safety depends on explicitly protecting changes rather than assuming all uncommitted work is journaled.
- **C. Use reset --hard immediately because reflog necessarily records every unstaged byte** Reflog does not guarantee recovery of arbitrary working-tree edits.
- **D. Continue the cherry-pick with unresolved paths so no current files disappear** An unresolved operation does not establish a valid desired commit.

**Explanation:** The remote may not contain the valuable local state being preserved. Cancellation safety depends on explicitly protecting changes rather than assuming all uncommitted work is journaled. Reflog does not guarantee recovery of arbitrary working-tree edits. An unresolved operation does not establish a valid desired commit.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick); [S5](https://git-scm.com/docs/git-reset)

## L06-Q041

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A live credential was committed, shared, then removed from the current tree and added to gitignore. A teammate says the incident is closed. Which response addresses the remaining exposure?

- **A. Change only the file name so scanners no longer match it** Renaming does not invalidate the exposed credential or establish that historical exposure is resolved.
- **B. Revoke or rotate the credential, investigate use, and coordinate any required historical cleanup and downstream copies** **Correct.** Ignoring and current-tree removal do not invalidate an exposed credential or remove existing historical copies.
- **C. Accept closure because gitignore prevents the old commit from being fetched** Gitignore does not remove tracked history or access to earlier commits.
- **D. Rewrite history first and keep the credential active until every clone is updated** History cleanup does not revoke access, so containment should not wait for all copies to be reconciled.

**Explanation:** Renaming does not invalidate the exposed credential or establish that historical exposure is resolved. Ignoring and current-tree removal do not invalidate an exposed credential or remove existing historical copies. Gitignore does not remove tracked history or access to earlier commits. History cleanup does not revoke access, so containment should not wait for all copies to be reconciled.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository); [S10](https://git-scm.com/docs/gitignore)

## L06-Q042

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A shared main branch has a bad commit followed by two valid releases. Other developers have fetched it. Which repair best preserves public history and the valid later work?

- **A. Apply the inverse patch without testing whether later commits changed the same behavior** A textual inverse still needs review against the current source and relevant tests.
- **B. Create a reviewed revert or targeted corrective commit and validate the current branch** **Correct.** A forward correction preserves shared history and can address the regression without discarding subsequent work.
- **C. Reset main to before the bad commit and force-push as the default repair** That rewrites history already consumed by others and can discard the later valid releases.
- **D. Delete the two later release tags and stop the investigation** Tag deletion does not implement the needed source repair and harms traceability.

**Explanation:** A textual inverse still needs review against the current source and relevant tests. A forward correction preserves shared history and can address the regression without discarding subsequent work. That rewrites history already consumed by others and can discard the later valid releases. Tag deletion does not implement the needed source repair and harms traceability.

**Sources:** [S2](https://git-scm.com/docs/git-revert)

## L06-Q043

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

A responder needs one configuration file from a known-good commit, but the working tree contains unrelated uncommitted fixes. Which repair minimizes the intended change scope?

- **A. Run reset --hard to the old commit before checking status** This can discard unrelated tracked edits and move the whole branch unnecessarily.
- **B. Revert every commit since the known-good version** That changes unrelated accepted work rather than only the requested configuration.
- **C. Copy the entire old tree over the current checkout** A whole-tree replacement expands the recovery beyond the single intended file.
- **D. Inspect status, preserve unrelated work, restore the target path from the chosen revision, and review the resulting diff** **Correct.** A targeted restore can recover the desired file without resetting all tracked work, provided the overwrite scope is reviewed.

**Explanation:** This can discard unrelated tracked edits and move the whole branch unnecessarily. That changes unrelated accepted work rather than only the requested configuration. A whole-tree replacement expands the recovery beyond the single intended file. A targeted restore can recover the desired file without resetting all tracked work, provided the overwrite scope is reviewed.

**Sources:** [S4](https://git-scm.com/docs/git-restore); [S5](https://git-scm.com/docs/git-reset); [S8](https://git-scm.com/docs/git-status)

## L06-Q044

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

A branch reset made a useful commit unreachable from named branches. Reflog still lists it, but maintenance expiry is approaching. What sequence best protects the recovery investigation?

- **A. Reset shared main immediately to the candidate before checking its contents** That changes shared state before confirming the recovered commit and its compatibility.
- **B. Inspect the candidate and create a rescue reference before continuing analysis** **Correct.** A new reference preserves reachability while the investigator verifies whether this is the desired work.
- **C. Wait for the next garbage collection and then inspect the same reflog entry** Expiry and pruning can remove the recovery opportunity rather than stabilize it.
- **D. Assume another developer's reflog contains this local reset** Reflogs are local and need not record another checkout's reference movement.

**Explanation:** That changes shared state before confirming the recovered commit and its compatibility. A new reference preserves reachability while the investigator verifies whether this is the desired work. Expiry and pruning can remove the recovery opportunity rather than stabilize it. Reflogs are local and need not record another checkout's reference movement.

**Sources:** [S1](https://git-scm.com/docs/git-reflog)

## L06-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A tracked local-settings file should leave version control while each developer keeps a local copy. History contains no secret. Which reviewed change best fits?

- **A. Rewrite all repository history to remove the nonsecret path** A full history rewrite is unnecessary for the stated future-tracking requirement and adds disruption.
- **B. Untrack the path with the cached removal option, add the ignore rule, and verify the committed diff and local file** **Correct.** This changes future tracking while retaining the working copy and does not pretend to erase history.
- **C. Add only a gitignore rule and leave the tracked file unchanged** Ignore rules do not automatically stop tracking a file already in the index.
- **D. Use a normal file deletion and commit it without documenting local replacement** That removes the local file rather than preserving the requested local configuration copy.

**Explanation:** A full history rewrite is unnecessary for the stated future-tracking requirement and adds disruption. This changes future tracking while retaining the working copy and does not pretend to erase history. Ignore rules do not automatically stop tracking a file already in the index. That removes the local file rather than preserving the requested local configuration copy.

**Sources:** [S9](https://git-scm.com/docs/git-rm); [S10](https://git-scm.com/docs/gitignore)

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

- **A. Commit every current file before discarding service.cs** That accepts the undesired edit into history instead of applying the requested selective discard.
- **B. Restore only service.cs in the working tree and confirm both status and staged diff afterward** **Correct.** Path-scoped working-tree restoration can preserve the staged configuration change while removing the selected unstaged edit.
- **C. Reset --hard HEAD for the whole repository** That also discards staged tracked work outside the requested path.
- **D. Restore config.json from HEAD with the staged option** That targets the configuration index entry the operator wants to keep.

**Explanation:** That accepts the undesired edit into history instead of applying the requested selective discard. Path-scoped working-tree restoration can preserve the staged configuration change while removing the selected unstaged edit. That also discards staged tracked work outside the requested path. That targets the configuration index entry the operator wants to keep.

**Sources:** [S4](https://git-scm.com/docs/git-restore); [S8](https://git-scm.com/docs/git-status)

## L06-Q047

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

A hotfix commit from main is cherry-picked into release/1.x, but it depends on a schema change absent there. The pick reports success. What should determine readiness?

- **A. Merge all of main so the dependency appears automatically** That can import unrelated next-version changes forbidden by the supported release boundary.
- **B. Treat the source branch's old passing build as the target's acceptance result** The target branch has different inputs and needs relevant validation.
- **C. Review dependencies and test the resulting behavior against release/1.x before accepting the transferred fix** **Correct.** A mechanically successful cherry-pick does not establish compatibility with the target branch's runtime contract.
- **D. Accept it because no textual conflict means no behavioral dependency exists** Git conflict detection does not evaluate schema or semantic compatibility.

**Explanation:** That can import unrelated next-version changes forbidden by the supported release boundary. The target branch has different inputs and needs relevant validation. A mechanically successful cherry-pick does not establish compatibility with the target branch's runtime contract. Git conflict detection does not evaluate schema or semantic compatibility.

**Sources:** [S6](https://git-scm.com/docs/git-cherry-pick); [S7](https://git-scm.com/docs/git-log)

## L06-Q048

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Two reflog entries contain similar configuration fixes; only one includes a later security change. The release must retain that security correction. Which evidence should choose the rescue commit?

- **A. Choose the oldest candidate because it predates the regression** The oldest candidate may also omit the later required security correction.
- **B. Choose the candidate with the shorter commit message** Message length has no relationship to the required code contents.
- **C. Inspect each candidate's tree, ancestry, and relevant diff against the required release behavior** **Correct.** Reflog chronology alone does not establish that a candidate contains every required correction.
- **D. Choose whichever reflog message mentions configuration first** A message keyword does not establish the candidate's full content or ancestry.

**Explanation:** The oldest candidate may also omit the later required security correction. Message length has no relationship to the required code contents. Reflog chronology alone does not establish that a candidate contains every required correction. A message keyword does not establish the candidate's full content or ancestry.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S7](https://git-scm.com/docs/git-log)

## L06-Q049

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

A removed token remains in fork history and cached artifacts. The team has rotated it, but a proposed history rewrite is being described as complete erasure. What should the recovery report say?

- **A. No useful mitigation occurred until every external byte is erased** Verified revocation is meaningful containment even while copy-removal work remains.
- **B. Containment is complete only to the extent verified; history rewriting cannot guarantee removal from all external copies** **Correct.** Rotation addresses credential validity, while copied content and retention need separately scoped follow-up and honest limits.
- **C. The rotated token never existed because its current validity is false** Invalidation does not erase the original exposure or investigation evidence.
- **D. A forced rewrite proves all forks and caches were purged** The local rewrite cannot establish that every external copy has disappeared.

**Explanation:** Verified revocation is meaningful containment even while copy-removal work remains. Rotation addresses credential validity, while copied content and retention need separately scoped follow-up and honest limits. Invalidation does not erase the original exposure or investigation evidence. The local rewrite cannot establish that every external copy has disappeared.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

A shared branch has a normal configuration regression and an earlier leaked credential. The team wants the least disruptive complete recovery. Which policy distinguishes the problems correctly?

- **A. Revert both commits and consider the credential secure because its addition is reversed** A revert preserves historical exposure and does not invalidate the secret.
- **B. Rewrite the whole shared branch for both issues without considering consumers** History rewriting adds disruption and is not the default requirement for an ordinary regression.
- **C. Rotate the credential and leave the configuration regression because security is higher priority** Containment does not eliminate the separate requirement to restore correct application behavior.
- **D. Use a forward source correction for the regression, immediately revoke the credential, and separately review necessary coordinated sensitive-history cleanup** **Correct.** Ordinary code recovery and credential exposure have different containment and history requirements.

**Explanation:** A revert preserves historical exposure and does not invalidate the secret. History rewriting adds disruption and is not the default requirement for an ordinary regression. Containment does not eliminate the separate requirement to restore correct application behavior. Ordinary code recovery and credential exposure have different containment and history requirements.

**Sources:** [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
