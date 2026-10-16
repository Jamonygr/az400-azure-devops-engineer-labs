# Lab 06 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L06-Q001

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which next change most directly satisfies the stated requirement?

- **A. Recover the value through a small reviewed corrective commit** The repair should match the narrow damage scope. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **B. Inspect the local reflog and create a recovery branch** **Correct.** Reflog entries can identify recently moved local references. This directly addresses the constraint stated in this case.
- **C. Create a revert commit through the normal review workflow** Revert undoes changes without rewriting shared history. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.

**Explanation:** Reflog entries can identify recently moved local references. The selected answer is inspect the local reflog and create a recovery branch.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q002

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which explanation best accounts for the behavior or constraint described?

- **A. A branch-wide rewrite is broader than the required recovery** Other valid published changes must remain available. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **B. The commit became unreachable through current branch names** **Correct.** Moving a reference does not immediately delete its objects. This directly addresses the constraint stated in this case.
- **C. The faulty commit is part of published history** Rewriting it would disrupt collaborators' existing references. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.

**Explanation:** Moving a reference does not immediately delete its objects. The selected answer is the commit became unreachable through current branch names.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q003

Applied · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A recovery branch contains the expected commit and files** **Correct.** A retained reference makes the recovered work accessible. This directly addresses the constraint stated in this case.
- **B. A new commit reverses the regression while preserving history** The visible reversal supports audit and collaboration. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.
- **C. Only the intended configuration value changes in the repair** A minimal diff demonstrates controlled recovery. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.

**Explanation:** A retained reference makes the recovered work accessible. The selected answer is a recovery branch contains the expected commit and files.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q004

Applied · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which execution safeguard most directly addresses the risk in this case?

- **A. Test the revert against subsequent dependent changes** Later commits may rely on the reverted behavior. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.
- **B. Use a backup reference and inspect the target revision** The responder must avoid introducing an obsolete configuration. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **C. Create a new branch before changing the working branch** **Correct.** A separate reference preserves evidence during recovery. This directly addresses the constraint stated in this case.

**Explanation:** A separate reference preserves evidence during recovery. The selected answer is create a new branch before changing the working branch.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q005

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. The team selects this remedy: "Inspect the local reflog and create a recovery branch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reflog availability is local and time limited** **Correct.** Expired unreachable objects may no longer be recoverable. This directly addresses the constraint stated in this case.
- **B. Revert can require conflict resolution** An inverse patch is not guaranteed to apply cleanly. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.
- **C. A corrective commit preserves the mistaken change in history** Historical retention can be useful unless sensitive data requires removal. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.

**Explanation:** Expired unreachable objects may no longer be recoverable. The selected answer is reflog availability is local and time limited.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q006

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which next change most directly satisfies the stated requirement?

- **A. Inspect the local reflog and create a recovery branch** Reflog entries can identify recently moved local references. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **B. Create a revert commit through the normal review workflow** **Correct.** Revert undoes changes without rewriting shared history. This directly addresses the constraint stated in this case.
- **C. Restore only the selected file from the intended revision** A targeted restore avoids overwriting unrelated work. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.

**Explanation:** Revert undoes changes without rewriting shared history. The selected answer is create a revert commit through the normal review workflow.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q007

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which explanation best accounts for the behavior or constraint described?

- **A. The faulty commit is part of published history** **Correct.** Rewriting it would disrupt collaborators' existing references. This directly addresses the constraint stated in this case.
- **B. The damage is limited to one working-tree path** A repository-wide reset would have excessive scope. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **C. The commit became unreachable through current branch names** Moving a reference does not immediately delete its objects. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.

**Explanation:** Rewriting it would disrupt collaborators' existing references. The selected answer is the faulty commit is part of published history.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q008

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A new commit reverses the regression while preserving history** **Correct.** The visible reversal supports audit and collaboration. This directly addresses the constraint stated in this case.
- **B. The file returns while unrelated modifications remain intact** Both restoration and preservation must be verified. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **C. A recovery branch contains the expected commit and files** A retained reference makes the recovered work accessible. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.

**Explanation:** The visible reversal supports audit and collaboration. The selected answer is a new commit reverses the regression while preserving history.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q009

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which execution safeguard most directly addresses the risk in this case?

- **A. Create a new branch before changing the working branch** A separate reference preserves evidence during recovery. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **B. Test the revert against subsequent dependent changes** **Correct.** Later commits may rely on the reverted behavior. This directly addresses the constraint stated in this case.
- **C. Inspect status and diff before restoring the path** Uncommitted work can be overwritten by restore operations. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.

**Explanation:** Later commits may rely on the reverted behavior. The selected answer is test the revert against subsequent dependent changes.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q010

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. The team selects this remedy: "Create a revert commit through the normal review workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Revert can require conflict resolution** **Correct.** An inverse patch is not guaranteed to apply cleanly. This directly addresses the constraint stated in this case.
- **B. Restoring content does not recreate an entire lost workflow** It repairs selected paths rather than all repository state. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **C. Reflog availability is local and time limited** Expired unreachable objects may no longer be recoverable. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.

**Explanation:** An inverse patch is not guaranteed to apply cleanly. The selected answer is revert can require conflict resolution.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q011

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which next change most directly satisfies the stated requirement?

- **A. Restore only the selected file from the intended revision** **Correct.** A targeted restore avoids overwriting unrelated work. This directly addresses the constraint stated in this case.
- **B. Cherry-pick the specific fix onto the release branch** Selective application transfers the intended patch. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. Create a revert commit through the normal review workflow** Revert undoes changes without rewriting shared history. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.

**Explanation:** A targeted restore avoids overwriting unrelated work. The selected answer is restore only the selected file from the intended revision.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q012

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which explanation best accounts for the behavior or constraint described?

- **A. The damage is limited to one working-tree path** **Correct.** A repository-wide reset would have excessive scope. This directly addresses the constraint stated in this case.
- **B. Merging all of main would include unrelated changes** The release needs a narrower source selection. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. The faulty commit is part of published history** Rewriting it would disrupt collaborators' existing references. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.

**Explanation:** A repository-wide reset would have excessive scope. The selected answer is the damage is limited to one working-tree path.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q013

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The file returns while unrelated modifications remain intact** **Correct.** Both restoration and preservation must be verified. This directly addresses the constraint stated in this case.
- **B. The release branch contains the fix and passes its tests** The patch must work on the older baseline. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. A new commit reverses the regression while preserving history** The visible reversal supports audit and collaboration. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.

**Explanation:** Both restoration and preservation must be verified. The selected answer is the file returns while unrelated modifications remain intact.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q014

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which execution safeguard most directly addresses the risk in this case?

- **A. Test the revert against subsequent dependent changes** Later commits may rely on the reverted behavior. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.
- **B. Inspect status and diff before restoring the path** **Correct.** Uncommitted work can be overwritten by restore operations. This directly addresses the constraint stated in this case.
- **C. Inspect dependencies and record the original commit identity** A selected commit may rely on other changes. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.

**Explanation:** Uncommitted work can be overwritten by restore operations. The selected answer is inspect status and diff before restoring the path.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q015

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. The team selects this remedy: "Restore only the selected file from the intended revision." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Revert can require conflict resolution** An inverse patch is not guaranteed to apply cleanly. That addresses a different requirement: Shared regression. It does not directly resolve this case's stated constraint.
- **B. Restoring content does not recreate an entire lost workflow** **Correct.** It repairs selected paths rather than all repository state. This directly addresses the constraint stated in this case.
- **C. Cherry-picking creates a different commit identity** Later reconciliation can require duplicate-change awareness. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.

**Explanation:** It repairs selected paths rather than all repository state. The selected answer is restoring content does not recreate an entire lost workflow.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q016

Foundational · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which next change most directly satisfies the stated requirement?

- **A. Restore only the selected file from the intended revision** A targeted restore avoids overwriting unrelated work. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **B. Cherry-pick the specific fix onto the release branch** **Correct.** Selective application transfers the intended patch. This directly addresses the constraint stated in this case.
- **C. Revoke the token first then coordinate history removal** Credential invalidation must precede repository cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.

**Explanation:** Selective application transfers the intended patch. The selected answer is cherry-pick the specific fix onto the release branch.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q017

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which explanation best accounts for the behavior or constraint described?

- **A. Merging all of main would include unrelated changes** **Correct.** The release needs a narrower source selection. This directly addresses the constraint stated in this case.
- **B. Deleting the current file leaves earlier objects accessible** Version history preserves previously committed content. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **C. The damage is limited to one working-tree path** A repository-wide reset would have excessive scope. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.

**Explanation:** The release needs a narrower source selection. The selected answer is merging all of main would include unrelated changes.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q018

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The old token is unusable and known history references are cleaned** Security recovery needs both revocation and content cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **B. The file returns while unrelated modifications remain intact** Both restoration and preservation must be verified. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **C. The release branch contains the fix and passes its tests** **Correct.** The patch must work on the older baseline. This directly addresses the constraint stated in this case.

**Explanation:** The patch must work on the older baseline. The selected answer is the release branch contains the fix and passes its tests.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q019

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which execution safeguard most directly addresses the risk in this case?

- **A. Inspect status and diff before restoring the path** Uncommitted work can be overwritten by restore operations. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **B. Inspect dependencies and record the original commit identity** **Correct.** A selected commit may rely on other changes. This directly addresses the constraint stated in this case.
- **C. Coordinate forks clones caches and affected collaborators** History rewriting alone cannot erase every external copy. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.

**Explanation:** A selected commit may rely on other changes. The selected answer is inspect dependencies and record the original commit identity.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q020

Advanced · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. The team selects this remedy: "Cherry-pick the specific fix onto the release branch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Public disclosure cannot be fully undone** Treat the credential as compromised regardless of cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **B. Restoring content does not recreate an entire lost workflow** It repairs selected paths rather than all repository state. That addresses a different requirement: One missing file. It does not directly resolve this case's stated constraint.
- **C. Cherry-picking creates a different commit identity** **Correct.** Later reconciliation can require duplicate-change awareness. This directly addresses the constraint stated in this case.

**Explanation:** Later reconciliation can require duplicate-change awareness. The selected answer is cherry-picking creates a different commit identity.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q021

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which next change most directly satisfies the stated requirement?

- **A. Coordinate fresh clones or careful cleanup before resuming pushes** Old references can reintroduce removed objects. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **B. Cherry-pick the specific fix onto the release branch** Selective application transfers the intended patch. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. Revoke the token first then coordinate history removal** **Correct.** Credential invalidation must precede repository cleanup. This directly addresses the constraint stated in this case.

**Explanation:** Credential invalidation must precede repository cleanup. The selected answer is revoke the token first then coordinate history removal.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q022

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which explanation best accounts for the behavior or constraint described?

- **A. Deleting the current file leaves earlier objects accessible** **Correct.** Version history preserves previously committed content. This directly addresses the constraint stated in this case.
- **B. A stale collaborator branch still contains the original history** Server cleanup does not rewrite every local clone. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **C. Merging all of main would include unrelated changes** The release needs a narrower source selection. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.

**Explanation:** Version history preserves previously committed content. The selected answer is deleting the current file leaves earlier objects accessible.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q023

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release branch contains the fix and passes its tests** The patch must work on the older baseline. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **B. The old token is unusable and known history references are cleaned** **Correct.** Security recovery needs both revocation and content cleanup. This directly addresses the constraint stated in this case.
- **C. New pushes do not reference the removed sensitive objects** All active collaboration paths must use cleaned history. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.

**Explanation:** Security recovery needs both revocation and content cleanup. The selected answer is the old token is unusable and known history references are cleaned.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q024

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which execution safeguard most directly addresses the risk in this case?

- **A. Temporarily control writes during the coordinated rewrite** Concurrent pushes can undermine the cleanup boundary. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **B. Inspect dependencies and record the original commit identity** A selected commit may rely on other changes. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. Coordinate forks clones caches and affected collaborators** **Correct.** History rewriting alone cannot erase every external copy. This directly addresses the constraint stated in this case.

**Explanation:** History rewriting alone cannot erase every external copy. The selected answer is coordinate forks clones caches and affected collaborators.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q025

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. The team selects this remedy: "Revoke the token first then coordinate history removal." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. History rewriting changes commit hashes** Open pull requests and signatures may need reconciliation. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **B. Cherry-picking creates a different commit identity** Later reconciliation can require duplicate-change awareness. That addresses a different requirement: Patch transfer. It does not directly resolve this case's stated constraint.
- **C. Public disclosure cannot be fully undone** **Correct.** Treat the credential as compromised regardless of cleanup. This directly addresses the constraint stated in this case.

**Explanation:** Treat the credential as compromised regardless of cleanup. The selected answer is public disclosure cannot be fully undone.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q026

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which next change most directly satisfies the stated requirement?

- **A. Revoke the token first then coordinate history removal** Credential invalidation must precede repository cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **B. Coordinate fresh clones or careful cleanup before resuming pushes** **Correct.** Old references can reintroduce removed objects. This directly addresses the constraint stated in this case.
- **C. Inspect path history before restoring the selected version** Historical inspection identifies the relevant deletion and source. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.

**Explanation:** Old references can reintroduce removed objects. The selected answer is coordinate fresh clones or careful cleanup before resuming pushes.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q027

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which explanation best accounts for the behavior or constraint described?

- **A. Current status cannot explain committed historical changes** The deletion is already part of repository history. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **B. Deleting the current file leaves earlier objects accessible** Version history preserves previously committed content. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **C. A stale collaborator branch still contains the original history** **Correct.** Server cleanup does not rewrite every local clone. This directly addresses the constraint stated in this case.

**Explanation:** Server cleanup does not rewrite every local clone. The selected answer is a stale collaborator branch still contains the original history.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q028

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The old token is unusable and known history references are cleaned** Security recovery needs both revocation and content cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.
- **B. New pushes do not reference the removed sensitive objects** **Correct.** All active collaboration paths must use cleaned history. This directly addresses the constraint stated in this case.
- **C. The path log identifies the deletion and prior usable revision** This establishes the precise restoration source. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.

**Explanation:** All active collaboration paths must use cleaned history. The selected answer is new pushes do not reference the removed sensitive objects.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q029

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which execution safeguard most directly addresses the risk in this case?

- **A. Temporarily control writes during the coordinated rewrite** **Correct.** Concurrent pushes can undermine the cleanup boundary. This directly addresses the constraint stated in this case.
- **B. Restore to a recovery branch and inspect the diff** Historical files may be incompatible with current code. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **C. Coordinate forks clones caches and affected collaborators** History rewriting alone cannot erase every external copy. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.

**Explanation:** Concurrent pushes can undermine the cleanup boundary. The selected answer is temporarily control writes during the coordinated rewrite.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q030

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. The team selects this remedy: "Coordinate fresh clones or careful cleanup before resuming pushes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. History rewriting changes commit hashes** **Correct.** Open pull requests and signatures may need reconciliation. This directly addresses the constraint stated in this case.
- **B. Recovery can restore obsolete configuration** Content correctness still requires present-day validation. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **C. Public disclosure cannot be fully undone** Treat the credential as compromised regardless of cleanup. That addresses a different requirement: Exposed credential. It does not directly resolve this case's stated constraint.

**Explanation:** Open pull requests and signatures may need reconciliation. The selected answer is history rewriting changes commit hashes.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q031

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which next change most directly satisfies the stated requirement?

- **A. Abort the in-progress cherry-pick after protecting unrelated work** The operation has a supported cancellation path. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.
- **B. Coordinate fresh clones or careful cleanup before resuming pushes** Old references can reintroduce removed objects. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **C. Inspect path history before restoring the selected version** **Correct.** Historical inspection identifies the relevant deletion and source. This directly addresses the constraint stated in this case.

**Explanation:** Historical inspection identifies the relevant deletion and source. The selected answer is inspect path history before restoring the selected version.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q032

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which explanation best accounts for the behavior or constraint described?

- **A. A stale collaborator branch still contains the original history** Server cleanup does not rewrite every local clone. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **B. Current status cannot explain committed historical changes** **Correct.** The deletion is already part of repository history. This directly addresses the constraint stated in this case.
- **C. Git is waiting for conflict resolution in an active operation** The repository has not completed the intended patch application. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.

**Explanation:** The deletion is already part of repository history. The selected answer is current status cannot explain committed historical changes.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q033

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The path log identifies the deletion and prior usable revision** **Correct.** This establishes the precise restoration source. This directly addresses the constraint stated in this case.
- **B. Status shows no active cherry-pick and the branch baseline returns** The cancellation should restore the pre-operation state. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.
- **C. New pushes do not reference the removed sensitive objects** All active collaboration paths must use cleaned history. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.

**Explanation:** This establishes the precise restoration source. The selected answer is the path log identifies the deletion and prior usable revision.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q034

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which execution safeguard most directly addresses the risk in this case?

- **A. Temporarily control writes during the coordinated rewrite** Concurrent pushes can undermine the cleanup boundary. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.
- **B. Restore to a recovery branch and inspect the diff** **Correct.** Historical files may be incompatible with current code. This directly addresses the constraint stated in this case.
- **C. Inspect and preserve valuable edits before cancellation** Recovery commands can discard conflict-resolution work. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.

**Explanation:** Historical files may be incompatible with current code. The selected answer is restore to a recovery branch and inspect the diff.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q035

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. The team selects this remedy: "Inspect path history before restoring the selected version." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Recovery can restore obsolete configuration** **Correct.** Content correctness still requires present-day validation. This directly addresses the constraint stated in this case.
- **B. Aborting removes the attempted resolution work** A later retry may require resolving the conflict again. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.
- **C. History rewriting changes commit hashes** Open pull requests and signatures may need reconciliation. That addresses a different requirement: History rewrite fallout. It does not directly resolve this case's stated constraint.

**Explanation:** Content correctness still requires present-day validation. The selected answer is recovery can restore obsolete configuration.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q036

Foundational · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which next change most directly satisfies the stated requirement?

- **A. Untrack the file and separately assess historical exposure** Ignore rules do not remove existing tracked history. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **B. Inspect path history before restoring the selected version** Historical inspection identifies the relevant deletion and source. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **C. Abort the in-progress cherry-pick after protecting unrelated work** **Correct.** The operation has a supported cancellation path. This directly addresses the constraint stated in this case.

**Explanation:** The operation has a supported cancellation path. The selected answer is abort the in-progress cherry-pick after protecting unrelated work.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q037

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which explanation best accounts for the behavior or constraint described?

- **A. Current status cannot explain committed historical changes** The deletion is already part of repository history. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **B. Git is waiting for conflict resolution in an active operation** **Correct.** The repository has not completed the intended patch application. This directly addresses the constraint stated in this case.
- **C. Gitignore governs untracked-file handling rather than prior commits** Previously committed data remains part of repository objects. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.

**Explanation:** The repository has not completed the intended patch application. The selected answer is git is waiting for conflict resolution in an active operation.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q038

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Status shows no active cherry-pick and the branch baseline returns** **Correct.** The cancellation should restore the pre-operation state. This directly addresses the constraint stated in this case.
- **B. The path is no longer tracked and exposure is addressed** Future prevention and historical cleanup are separate outcomes. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **C. The path log identifies the deletion and prior usable revision** This establishes the precise restoration source. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.

**Explanation:** The cancellation should restore the pre-operation state. The selected answer is status shows no active cherry-pick and the branch baseline returns.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q039

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which execution safeguard most directly addresses the risk in this case?

- **A. Use secret scanning and credential rotation where relevant** Untracking a file does not invalidate leaked secrets. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **B. Restore to a recovery branch and inspect the diff** Historical files may be incompatible with current code. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **C. Inspect and preserve valuable edits before cancellation** **Correct.** Recovery commands can discard conflict-resolution work. This directly addresses the constraint stated in this case.

**Explanation:** Recovery commands can discard conflict-resolution work. The selected answer is inspect and preserve valuable edits before cancellation.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q040

Advanced · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. The team selects this remedy: "Abort the in-progress cherry-pick after protecting unrelated work." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Ignore patterns are a preventive convenience** They are not a complete data-protection mechanism. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **B. Recovery can restore obsolete configuration** Content correctness still requires present-day validation. That addresses a different requirement: Unknown deletion. It does not directly resolve this case's stated constraint.
- **C. Aborting removes the attempted resolution work** **Correct.** A later retry may require resolving the conflict again. This directly addresses the constraint stated in this case.

**Explanation:** A later retry may require resolving the conflict again. The selected answer is aborting removes the attempted resolution work.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q041

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which next change most directly satisfies the stated requirement?

- **A. Abort the in-progress cherry-pick after protecting unrelated work** The operation has a supported cancellation path. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.
- **B. Untrack the file and separately assess historical exposure** **Correct.** Ignore rules do not remove existing tracked history. This directly addresses the constraint stated in this case.
- **C. Recover the value through a small reviewed corrective commit** The repair should match the narrow damage scope. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.

**Explanation:** Ignore rules do not remove existing tracked history. The selected answer is untrack the file and separately assess historical exposure.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q042

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which explanation best accounts for the behavior or constraint described?

- **A. A branch-wide rewrite is broader than the required recovery** Other valid published changes must remain available. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **B. Git is waiting for conflict resolution in an active operation** The repository has not completed the intended patch application. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.
- **C. Gitignore governs untracked-file handling rather than prior commits** **Correct.** Previously committed data remains part of repository objects. This directly addresses the constraint stated in this case.

**Explanation:** Previously committed data remains part of repository objects. The selected answer is gitignore governs untracked-file handling rather than prior commits.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q043

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The path is no longer tracked and exposure is addressed** **Correct.** Future prevention and historical cleanup are separate outcomes. This directly addresses the constraint stated in this case.
- **B. Only the intended configuration value changes in the repair** A minimal diff demonstrates controlled recovery. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **C. Status shows no active cherry-pick and the branch baseline returns** The cancellation should restore the pre-operation state. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.

**Explanation:** Future prevention and historical cleanup are separate outcomes. The selected answer is the path is no longer tracked and exposure is addressed.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q044

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which execution safeguard most directly addresses the risk in this case?

- **A. Use secret scanning and credential rotation where relevant** **Correct.** Untracking a file does not invalidate leaked secrets. This directly addresses the constraint stated in this case.
- **B. Use a backup reference and inspect the target revision** The responder must avoid introducing an obsolete configuration. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **C. Inspect and preserve valuable edits before cancellation** Recovery commands can discard conflict-resolution work. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.

**Explanation:** Untracking a file does not invalidate leaked secrets. The selected answer is use secret scanning and credential rotation where relevant.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. The team selects this remedy: "Untrack the file and separately assess historical exposure." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Ignore patterns are a preventive convenience** **Correct.** They are not a complete data-protection mechanism. This directly addresses the constraint stated in this case.
- **B. A corrective commit preserves the mistaken change in history** Historical retention can be useful unless sensitive data requires removal. That addresses a different requirement: Destructive reset proposal. It does not directly resolve this case's stated constraint.
- **C. Aborting removes the attempted resolution work** A later retry may require resolving the conflict again. That addresses a different requirement: Conflict recovery. It does not directly resolve this case's stated constraint.

**Explanation:** They are not a complete data-protection mechanism. The selected answer is ignore patterns are a preventive convenience.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q046

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which next change most directly satisfies the stated requirement?

- **A. Inspect the local reflog and create a recovery branch** Reflog entries can identify recently moved local references. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **B. Untrack the file and separately assess historical exposure** Ignore rules do not remove existing tracked history. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **C. Recover the value through a small reviewed corrective commit** **Correct.** The repair should match the narrow damage scope. This directly addresses the constraint stated in this case.

**Explanation:** The repair should match the narrow damage scope. The selected answer is recover the value through a small reviewed corrective commit.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q047

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which explanation best accounts for the behavior or constraint described?

- **A. A branch-wide rewrite is broader than the required recovery** **Correct.** Other valid published changes must remain available. This directly addresses the constraint stated in this case.
- **B. The commit became unreachable through current branch names** Moving a reference does not immediately delete its objects. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **C. Gitignore governs untracked-file handling rather than prior commits** Previously committed data remains part of repository objects. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.

**Explanation:** Other valid published changes must remain available. The selected answer is a branch-wide rewrite is broader than the required recovery.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q048

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A recovery branch contains the expected commit and files** A retained reference makes the recovered work accessible. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **B. The path is no longer tracked and exposure is addressed** Future prevention and historical cleanup are separate outcomes. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **C. Only the intended configuration value changes in the repair** **Correct.** A minimal diff demonstrates controlled recovery. This directly addresses the constraint stated in this case.

**Explanation:** A minimal diff demonstrates controlled recovery. The selected answer is only the intended configuration value changes in the repair.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q049

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which execution safeguard most directly addresses the risk in this case?

- **A. Use secret scanning and credential rotation where relevant** Untracking a file does not invalidate leaked secrets. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **B. Use a backup reference and inspect the target revision** **Correct.** The responder must avoid introducing an obsolete configuration. This directly addresses the constraint stated in this case.
- **C. Create a new branch before changing the working branch** A separate reference preserves evidence during recovery. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.

**Explanation:** The responder must avoid introducing an obsolete configuration. The selected answer is use a backup reference and inspect the target revision.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

## L06-Q050

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. The team selects this remedy: "Recover the value through a small reviewed corrective commit." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reflog availability is local and time limited** Expired unreachable objects may no longer be recoverable. That addresses a different requirement: Lost local commit. It does not directly resolve this case's stated constraint.
- **B. Ignore patterns are a preventive convenience** They are not a complete data-protection mechanism. That addresses a different requirement: Fake cleanup. It does not directly resolve this case's stated constraint.
- **C. A corrective commit preserves the mistaken change in history** **Correct.** Historical retention can be useful unless sensitive data requires removal. This directly addresses the constraint stated in this case.

**Explanation:** Historical retention can be useful unless sensitive data requires removal. The selected answer is a corrective commit preserves the mistaken change in history.

**Sources:** [S1](https://git-scm.com/docs/git-reflog); [S2](https://git-scm.com/docs/git-revert); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
