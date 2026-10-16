# Lab 06 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L06-Q001

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which next change most directly satisfies the stated requirement?

- **A.** Recover the value through a small reviewed corrective commit
- **B.** Inspect the local reflog and create a recovery branch
- **C.** Create a revert commit through the normal review workflow

## L06-Q002

Foundational · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which explanation best accounts for the behavior or constraint described?

- **A.** A branch-wide rewrite is broader than the required recovery
- **B.** The commit became unreachable through current branch names
- **C.** The faulty commit is part of published history

## L06-Q003

Applied · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A recovery branch contains the expected commit and files
- **B.** A new commit reverses the regression while preserving history
- **C.** Only the intended configuration value changes in the repair

## L06-Q004

Applied · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. Which execution safeguard most directly addresses the risk in this case?

- **A.** Test the revert against subsequent dependent changes
- **B.** Use a backup reference and inspect the target revision
- **C.** Create a new branch before changing the working branch

## L06-Q005

Advanced · [CP4](README.md#task-4) · [D2.2.5](../../docs/objective-map.md)

Lost local commit: A developer resets a private branch and needs a recently created commit that no branch now references. The team selects this remedy: "Inspect the local reflog and create a recovery branch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reflog availability is local and time limited
- **B.** Revert can require conflict resolution
- **C.** A corrective commit preserves the mistaken change in history

## L06-Q006

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which next change most directly satisfies the stated requirement?

- **A.** Inspect the local reflog and create a recovery branch
- **B.** Create a revert commit through the normal review workflow
- **C.** Restore only the selected file from the intended revision

## L06-Q007

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which explanation best accounts for the behavior or constraint described?

- **A.** The faulty commit is part of published history
- **B.** The damage is limited to one working-tree path
- **C.** The commit became unreachable through current branch names

## L06-Q008

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A new commit reverses the regression while preserving history
- **B.** The file returns while unrelated modifications remain intact
- **C.** A recovery branch contains the expected commit and files

## L06-Q009

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. Which execution safeguard most directly addresses the risk in this case?

- **A.** Create a new branch before changing the working branch
- **B.** Test the revert against subsequent dependent changes
- **C.** Inspect status and diff before restoring the path

## L06-Q010

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md)

Shared regression: A bad commit is already on main and many collaborators have fetched it; the team needs a reviewable rollback. The team selects this remedy: "Create a revert commit through the normal review workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Revert can require conflict resolution
- **B.** Restoring content does not recreate an entire lost workflow
- **C.** Reflog availability is local and time limited

## L06-Q011

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which next change most directly satisfies the stated requirement?

- **A.** Restore only the selected file from the intended revision
- **B.** Cherry-pick the specific fix onto the release branch
- **C.** Create a revert commit through the normal review workflow

## L06-Q012

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which explanation best accounts for the behavior or constraint described?

- **A.** The damage is limited to one working-tree path
- **B.** Merging all of main would include unrelated changes
- **C.** The faulty commit is part of published history

## L06-Q013

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The file returns while unrelated modifications remain intact
- **B.** The release branch contains the fix and passes its tests
- **C.** A new commit reverses the regression while preserving history

## L06-Q014

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. Which execution safeguard most directly addresses the risk in this case?

- **A.** Test the revert against subsequent dependent changes
- **B.** Inspect status and diff before restoring the path
- **C.** Inspect dependencies and record the original commit identity

## L06-Q015

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

One missing file: A developer accidentally deletes one file but wants to preserve unrelated uncommitted edits in other files. The team selects this remedy: "Restore only the selected file from the intended revision." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Revert can require conflict resolution
- **B.** Restoring content does not recreate an entire lost workflow
- **C.** Cherry-picking creates a different commit identity

## L06-Q016

Foundational · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which next change most directly satisfies the stated requirement?

- **A.** Restore only the selected file from the intended revision
- **B.** Cherry-pick the specific fix onto the release branch
- **C.** Revoke the token first then coordinate history removal

## L06-Q017

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which explanation best accounts for the behavior or constraint described?

- **A.** Merging all of main would include unrelated changes
- **B.** Deleting the current file leaves earlier objects accessible
- **C.** The damage is limited to one working-tree path

## L06-Q018

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The old token is unusable and known history references are cleaned
- **B.** The file returns while unrelated modifications remain intact
- **C.** The release branch contains the fix and passes its tests

## L06-Q019

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inspect status and diff before restoring the path
- **B.** Inspect dependencies and record the original commit identity
- **C.** Coordinate forks clones caches and affected collaborators

## L06-Q020

Advanced · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Patch transfer: A supported release needs one reviewed fix from main without taking unrelated next-version features. The team selects this remedy: "Cherry-pick the specific fix onto the release branch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Public disclosure cannot be fully undone
- **B.** Restoring content does not recreate an entire lost workflow
- **C.** Cherry-picking creates a different commit identity

## L06-Q021

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which next change most directly satisfies the stated requirement?

- **A.** Coordinate fresh clones or careful cleanup before resuming pushes
- **B.** Cherry-pick the specific fix onto the release branch
- **C.** Revoke the token first then coordinate history removal

## L06-Q022

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which explanation best accounts for the behavior or constraint described?

- **A.** Deleting the current file leaves earlier objects accessible
- **B.** A stale collaborator branch still contains the original history
- **C.** Merging all of main would include unrelated changes

## L06-Q023

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release branch contains the fix and passes its tests
- **B.** The old token is unusable and known history references are cleaned
- **C.** New pushes do not reference the removed sensitive objects

## L06-Q024

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. Which execution safeguard most directly addresses the risk in this case?

- **A.** Temporarily control writes during the coordinated rewrite
- **B.** Inspect dependencies and record the original commit identity
- **C.** Coordinate forks clones caches and affected collaborators

## L06-Q025

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Exposed credential: A real token was committed publicly and then deleted in a later commit, but remains in earlier revisions. The team selects this remedy: "Revoke the token first then coordinate history removal." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** History rewriting changes commit hashes
- **B.** Cherry-picking creates a different commit identity
- **C.** Public disclosure cannot be fully undone

## L06-Q026

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which next change most directly satisfies the stated requirement?

- **A.** Revoke the token first then coordinate history removal
- **B.** Coordinate fresh clones or careful cleanup before resuming pushes
- **C.** Inspect path history before restoring the selected version

## L06-Q027

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which explanation best accounts for the behavior or constraint described?

- **A.** Current status cannot explain committed historical changes
- **B.** Deleting the current file leaves earlier objects accessible
- **C.** A stale collaborator branch still contains the original history

## L06-Q028

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The old token is unusable and known history references are cleaned
- **B.** New pushes do not reference the removed sensitive objects
- **C.** The path log identifies the deletion and prior usable revision

## L06-Q029

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. Which execution safeguard most directly addresses the risk in this case?

- **A.** Temporarily control writes during the coordinated rewrite
- **B.** Restore to a recovery branch and inspect the diff
- **C.** Coordinate forks clones caches and affected collaborators

## L06-Q030

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

History rewrite fallout: After removing a sensitive file, a collaborator pushes an old branch and the unwanted history reappears. The team selects this remedy: "Coordinate fresh clones or careful cleanup before resuming pushes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** History rewriting changes commit hashes
- **B.** Recovery can restore obsolete configuration
- **C.** Public disclosure cannot be fully undone

## L06-Q031

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which next change most directly satisfies the stated requirement?

- **A.** Abort the in-progress cherry-pick after protecting unrelated work
- **B.** Coordinate fresh clones or careful cleanup before resuming pushes
- **C.** Inspect path history before restoring the selected version

## L06-Q032

Foundational · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which explanation best accounts for the behavior or constraint described?

- **A.** A stale collaborator branch still contains the original history
- **B.** Current status cannot explain committed historical changes
- **C.** Git is waiting for conflict resolution in an active operation

## L06-Q033

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The path log identifies the deletion and prior usable revision
- **B.** Status shows no active cherry-pick and the branch baseline returns
- **C.** New pushes do not reference the removed sensitive objects

## L06-Q034

Applied · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. Which execution safeguard most directly addresses the risk in this case?

- **A.** Temporarily control writes during the coordinated rewrite
- **B.** Restore to a recovery branch and inspect the diff
- **C.** Inspect and preserve valuable edits before cancellation

## L06-Q035

Advanced · [CP2](README.md#task-2) · [D2.2.5](../../docs/objective-map.md)

Unknown deletion: A file is absent from the current tree, and the responder does not know which earlier commit removed it. The team selects this remedy: "Inspect path history before restoring the selected version." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Recovery can restore obsolete configuration
- **B.** Aborting removes the attempted resolution work
- **C.** History rewriting changes commit hashes

## L06-Q036

Foundational · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which next change most directly satisfies the stated requirement?

- **A.** Untrack the file and separately assess historical exposure
- **B.** Inspect path history before restoring the selected version
- **C.** Abort the in-progress cherry-pick after protecting unrelated work

## L06-Q037

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which explanation best accounts for the behavior or constraint described?

- **A.** Current status cannot explain committed historical changes
- **B.** Git is waiting for conflict resolution in an active operation
- **C.** Gitignore governs untracked-file handling rather than prior commits

## L06-Q038

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Status shows no active cherry-pick and the branch baseline returns
- **B.** The path is no longer tracked and exposure is addressed
- **C.** The path log identifies the deletion and prior usable revision

## L06-Q039

Applied · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use secret scanning and credential rotation where relevant
- **B.** Restore to a recovery branch and inspect the diff
- **C.** Inspect and preserve valuable edits before cancellation

## L06-Q040

Advanced · [CP1](README.md#task-1) · [D2.2.5](../../docs/objective-map.md)

Conflict recovery: A cherry-pick stops with conflicts, and the developer wants to abandon it without leaving a half-applied operation. The team selects this remedy: "Abort the in-progress cherry-pick after protecting unrelated work." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Ignore patterns are a preventive convenience
- **B.** Recovery can restore obsolete configuration
- **C.** Aborting removes the attempted resolution work

## L06-Q041

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which next change most directly satisfies the stated requirement?

- **A.** Abort the in-progress cherry-pick after protecting unrelated work
- **B.** Untrack the file and separately assess historical exposure
- **C.** Recover the value through a small reviewed corrective commit

## L06-Q042

Foundational · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which explanation best accounts for the behavior or constraint described?

- **A.** A branch-wide rewrite is broader than the required recovery
- **B.** Git is waiting for conflict resolution in an active operation
- **C.** Gitignore governs untracked-file handling rather than prior commits

## L06-Q043

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The path is no longer tracked and exposure is addressed
- **B.** Only the intended configuration value changes in the repair
- **C.** Status shows no active cherry-pick and the branch baseline returns

## L06-Q044

Applied · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use secret scanning and credential rotation where relevant
- **B.** Use a backup reference and inspect the target revision
- **C.** Inspect and preserve valuable edits before cancellation

## L06-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.6](../../docs/objective-map.md)

Fake cleanup: A team adds a sensitive file to gitignore after committing it and assumes the tracked copy disappears from history. The team selects this remedy: "Untrack the file and separately assess historical exposure." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Ignore patterns are a preventive convenience
- **B.** A corrective commit preserves the mistaken change in history
- **C.** Aborting removes the attempted resolution work

## L06-Q046

Foundational · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which next change most directly satisfies the stated requirement?

- **A.** Inspect the local reflog and create a recovery branch
- **B.** Untrack the file and separately assess historical exposure
- **C.** Recover the value through a small reviewed corrective commit

## L06-Q047

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which explanation best accounts for the behavior or constraint described?

- **A.** A branch-wide rewrite is broader than the required recovery
- **B.** The commit became unreachable through current branch names
- **C.** Gitignore governs untracked-file handling rather than prior commits

## L06-Q048

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A recovery branch contains the expected commit and files
- **B.** The path is no longer tracked and exposure is addressed
- **C.** Only the intended configuration value changes in the repair

## L06-Q049

Applied · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use secret scanning and credential rotation where relevant
- **B.** Use a backup reference and inspect the target revision
- **C.** Create a new branch before changing the working branch

## L06-Q050

Advanced · [CP3](README.md#task-3) · [D2.2.5](../../docs/objective-map.md), [D2.2.6](../../docs/objective-map.md)

Destructive reset proposal: A responder suggests resetting shared main to recover one accidentally removed configuration value. The team selects this remedy: "Recover the value through a small reviewed corrective commit." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reflog availability is local and time limited
- **B.** Ignore patterns are a preventive convenience
- **C.** A corrective commit preserves the mistaken change in history
