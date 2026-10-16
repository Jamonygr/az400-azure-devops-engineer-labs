# Lab 05 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L05-Q001

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A repository repeatedly commits large binary artwork. Ordinary clones download large historical blobs. Which mechanism is designed to separate those assets from normal Git objects?

- **A. Git Large File Storage with the relevant tracking patterns** **Correct.** LFS keeps pointer metadata in Git while storing large file content separately.
- **B. Git tags applied to each binary revision** Tags identify revisions but do not change how binary blobs are stored.
- **C. A CODEOWNERS rule for the artwork directory** Ownership routes review but does not move binary content out of Git objects.
- **D. A longer release-artifact retention period** Pipeline retention does not change the source repository's historical object storage.

**Explanation:** LFS keeps pointer metadata in Git while storing large file content separately. Tags identify revisions but do not change how binary blobs are stored. Ownership routes review but does not move binary content out of Git objects. Pipeline retention does not change the source repository's historical object storage.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q002

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A new clone contains a small text pointer where a usable image is expected. The machine has no LFS client. What is the targeted repair?

- **A. Remove the pointer's object ID so the editor treats it as an image** Deleting metadata destroys the retrieval reference rather than fetching content.
- **B. Create a lightweight tag for the pointer commit** A tag does not retrieve the LFS object into the working tree.
- **C. Install the supported LFS client and retrieve the asset objects** **Correct.** The checkout needs the tooling that resolves pointers into actual content.
- **D. Rename the pointer file to a different image extension** Changing its name cannot turn metadata into the missing binary bytes.

**Explanation:** Deleting metadata destroys the retrieval reference rather than fetching content. A tag does not retrieve the LFS object into the working tree. The checkout needs the tooling that resolves pointers into actual content. Changing its name cannot turn metadata into the missing binary bytes.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q003

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Developers use one service in a very large monorepo. What problem can sparse checkout directly reduce?

- **A. The amount of repository content populated in the working tree** **Correct.** A narrower checkout can omit unrelated paths from local working files.
- **B. The need to review changes before merging** Checkout scope does not replace review governance.
- **C. Every remote object's historical storage automatically** Working-tree sparsity alone does not rewrite the remote history.
- **D. The requirement for access to private source** Narrow content selection does not bypass repository authorization.

**Explanation:** A narrower checkout can omit unrelated paths from local working files. Checkout scope does not replace review governance. Working-tree sparsity alone does not rewrite the remote history. Narrow content selection does not bypass repository authorization.

**Sources:** [S2](https://git-scm.com/docs/scalar)

## L05-Q004

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

What is normally stored in Git for an asset correctly tracked by Git LFS?

- **A. Only the asset's filename with no content identity** A proper pointer includes object identity and size metadata.
- **B. A generated executable that downloads arbitrary code during checkout** The pointer is metadata rather than an executable application bootstrap.
- **C. A pointer describing the associated LFS object** **Correct.** The actual large file content is retrieved through the LFS storage mechanism.
- **D. Every previous binary version concatenated into the current file** LFS does not use the working-tree pointer as an archive of all versions.

**Explanation:** A proper pointer includes object identity and size metadata. The pointer is metadata rather than an executable application bootstrap. The actual large file content is retrieved through the LFS storage mechanism. LFS does not use the working-tree pointer as an archive of all versions.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q005

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Which clue distinguishes an LFS pointer from the actual image content expected by an editor?

```text
version https://git-lfs.github.com/spec/v1
oid sha256: 0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
size 5278123
```

- **A. The file contains LFS version object-identity and size fields** **Correct.** These metadata lines describe another stored object rather than the image bytes.
- **B. The image has a filename ending in png** An extension alone does not establish what bytes the file contains.
- **C. The commit has an associated pull request** Review association does not identify whether a file is a pointer.
- **D. The repository has an origin remote configured** Remote existence does not prove that LFS content was retrieved.

**Explanation:** These metadata lines describe another stored object rather than the image bytes. An extension alone does not establish what bytes the file contains. Review association does not identify whether a file is a pointer. Remote existence does not prove that LFS content was retrieved.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q006

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A developer wants a sparse working tree and reduced initial blob transfer where the server supports partial clone. Which combination addresses both concerns?

```bash
git clone --filter=blob:none --sparse https://example.invalid/team/monorepo.git
git sparse-checkout set services/api shared/contracts
```

- **A. Use supported partial-clone filtering together with sparse checkout** **Correct.** The mechanisms address object transfer and populated working paths separately.
- **B. Use sparse checkout alone and assume no unselected blobs can ever exist locally** Working-tree sparsity and object availability are different concepts.
- **C. Delete unrelated files after a full clone and assume transfer was avoided** Postclone deletion cannot undo bytes already downloaded.
- **D. Apply a release tag before cloning and assume it removes all historical objects** A tag identifies a revision rather than defining a universal transfer filter.

**Explanation:** The mechanisms address object transfer and populated working paths separately. Working-tree sparsity and object availability are different concepts. Postclone deletion cannot undo bytes already downloaded. A tag identifies a revision rather than defining a universal transfer filter.

**Sources:** [S4](https://git-scm.com/docs/git-clone)

## L05-Q007

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A team adds an LFS tracking rule today. Why does the repository remain large from older committed binaries?

- **A. The rule applies only when the repository has no tags** Release tags do not universally prevent future LFS tracking.
- **B. Every LFS pointer stores another complete copy of the old binary** The pointer itself is small metadata, not the full large asset.
- **C. Existing historical blobs are not automatically rewritten by adding a rule** **Correct.** Future tracking and historical migration are separate changes.
- **D. LFS requires deleting all branches before any file can be tracked** Branch deletion is not a normal prerequisite for adding tracking rules.

**Explanation:** Release tags do not universally prevent future LFS tracking. The pointer itself is small metadata, not the full large asset. Future tracking and historical migration are separate changes. Branch deletion is not a normal prerequisite for adding tracking rules.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q008

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

After repairing LFS setup, what should a functional checkout check verify?

- **A. Only that the current branch name matches the asset folder** Branch naming does not verify retrieved binary bytes.
- **B. Only that the repository log lists the asset commit** History presence does not establish local LFS object availability.
- **C. The expected asset content is usable and corresponds to the intended object** **Correct.** A successful Git clone message alone does not establish the binary content arrived.
- **D. Only that the pointer's text is under one kilobyte** A small pointer is expected before hydration and does not prove usable content.

**Explanation:** Branch naming does not verify retrieved binary bytes. History presence does not establish local LFS object availability. A successful Git clone message alone does not establish the binary content arrived. A small pointer is expected before hydration and does not prove usable content.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q009

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A sparse checkout builds incorrectly because a shared project was omitted. What should the team adjust?

- **A. Remove the missing project reference without checking its functionality** Changing the application contract is not a safe checkout optimization.
- **B. Include the paths required by the service's actual build dependency graph** **Correct.** A smaller working tree must still contain required inputs.
- **C. Disable the compiler's missing-project errors** Ignoring a missing dependency does not produce a correct build.
- **D. Commit copied binaries from a developer's old output folder** That substitutes uncontrolled build products for declared source dependencies.

**Explanation:** Changing the application contract is not a safe checkout optimization. A smaller working tree must still contain required inputs. Ignoring a missing dependency does not produce a correct build. That substitutes uncontrolled build products for declared source dependencies.

**Sources:** [S2](https://git-scm.com/docs/scalar)

## L05-Q010

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Which repository file should be committed so collaborators use the agreed LFS tracking patterns for matching paths?

- **A. .gitattributes with the intended LFS filters** **Correct.** Tracking attributes need to travel with the repository's source configuration.
- **B. Only the developer's private shell history** Private history does not configure other clones.
- **C. Only a local editor workspace preference** An editor preference is not the shared Git attribute contract.
- **D. Only an entry in .gitignore for the already tracked asset** Ignoring a path does not establish its LFS content filters.

**Explanation:** Tracking attributes need to travel with the repository's source configuration. Private history does not configure other clones. An editor preference is not the shared Git attribute contract. Ignoring a path does not establish its LFS content filters.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q011

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A custom LFS endpoint returns 403 while ordinary Git fetch succeeds. What should be inspected before replacing the credential with an administrator token?

- **A. Only the ordinary Git remote credential that already fetched successfully** The LFS endpoint can use a separate content authorization path from ordinary Git transfer.
- **B. Only the LFS object ID and local file extension** Content identity and naming do not diagnose why the endpoint denied the authorized operation.
- **C. Only whether the branch has a successful build** Build status does not establish the content endpoint permissions needed for LFS retrieval.
- **D. The configured LFS endpoint and its required scoped authorization** **Correct.** Git object retrieval and the configured content endpoint can fail at different access boundaries.

**Explanation:** The LFS endpoint can use a separate content authorization path from ordinary Git transfer. Content identity and naming do not diagnose why the endpoint denied the authorized operation. Build status does not establish the content endpoint permissions needed for LFS retrieval. Git object retrieval and the configured content endpoint can fail at different access boundaries.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q012

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Why should large-repository maintenance be evaluated separately from LFS tracking?

- **A. The two techniques require contradictory repository permission models** Their purposes differ without requiring an inherent authorization conflict.
- **B. Repository maintenance and large-content storage address different sources of overhead** **Correct.** One improves repository operations while the other changes handling of selected large files.
- **C. Scalar automatically converts every binary to an LFS pointer** Repository management does not imply that content migration.
- **D. LFS makes every Git history operation constant time** Large-file separation does not eliminate all repository-scale costs.

**Explanation:** Their purposes differ without requiring an inherent authorization conflict. One improves repository operations while the other changes handling of selected large files. Repository management does not imply that content migration. Large-file separation does not eliminate all repository-scale costs.

**Sources:** [S2](https://git-scm.com/docs/scalar)

## L05-Q013

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

The team must reduce old binary history, retain current assets, and avoid collaborators reintroducing the old graph. Which migration plan is appropriate?

- **A. Rewrite the server branch silently while collaborators continue pushing old references** Uncoordinated old histories can restore the content graph the migration intended to replace.
- **B. Back up and test the history conversion, coordinate affected references and clones, then verify LFS objects and fresh checkout behavior** **Correct.** History rewriting and remote object availability both need a controlled transition.
- **C. Add a future LFS pattern and declare all old history already migrated** A new attribute rule does not rewrite previously stored blobs.
- **D. Delete every local artwork file and ask Git to infer the missing contents later** Removing working files does not provide safe historical conversion or object recovery.

**Explanation:** Uncoordinated old histories can restore the content graph the migration intended to replace. History rewriting and remote object availability both need a controlled transition. A new attribute rule does not rewrite previously stored blobs. Removing working files does not provide safe historical conversion or object recovery.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q014

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Learners need an offline demonstration using selected LFS assets, but storage and bandwidth are limited. Which preparation meets both constraints?

- **A. Remove all tracking rules before going offline** Changing attributes does not download unavailable asset content.
- **B. Retrieve the required versions while online, verify their local availability, and document which assets are intentionally excluded** **Correct.** Pointers alone cannot supply missing offline bytes, while selecting required content controls resource use.
- **C. Clone only the pointer metadata and assume the offline client can reconstruct the image** A content hash is not a reversible encoding of the missing binary.
- **D. Fetch every historical asset version regardless of the exercise scope** That ignores the explicit storage and transfer budget.

**Explanation:** Changing attributes does not download unavailable asset content. Pointers alone cannot supply missing offline bytes, while selecting required content controls resource use. A content hash is not a reversible encoding of the missing binary. That ignores the explicit storage and transfer budget.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q015

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A GitHub support analyst must label, assign, and manage issues without pushing code. Which standard organization-repository role is designed for this responsibility?

- **A. Triage** **Correct.** The Triage role supports issue and pull request management without granting code-write authority.
- **B. Read** Read permits inspection but does not supply the requested issue-management capabilities.
- **C. Write** Write adds code-push authority beyond the stated support responsibility.
- **D. Maintain** Maintain adds repository management authority beyond the narrower issue-triage task.

**Explanation:** The Triage role supports issue and pull request management without granting code-write authority. Read permits inspection but does not supply the requested issue-management capabilities. Write adds code-push authority beyond the stated support responsibility. Maintain adds repository management authority beyond the narrower issue-triage task.

**Sources:** [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q016

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Twenty repositories copy one security-sensitive build script and now apply different fixes. Which change reduces unmanaged copy drift?

- **A. Consume a governed shared component at an intentional version** **Correct.** The shared implementation provides a controlled update path for consumers.
- **B. Copy the newest file manually into a few selected repositories** The remaining independent copies still have separate maintenance lifecycles.
- **C. Rename every copied script to the same filename** Equal names do not establish equal content or a common update mechanism.
- **D. Delete the script's version information so consumers appear uniform** Removing identity makes drift harder to detect rather than fixing it.

**Explanation:** The shared implementation provides a controlled update path for consumers. The remaining independent copies still have separate maintenance lifecycles. Equal names do not establish equal content or a common update mechanism. Removing identity makes drift harder to detect rather than fixing it.

**Sources:** [S2](https://git-scm.com/docs/scalar)

## L05-Q017

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A contractor needs to review one private repository but currently has permission to delete it. What is the appropriate access correction?

- **A. Keep the broad role and rely only on a request not to delete** A written request does not constrain effective capability.
- **B. Assign the narrow repository role required by the review task** **Correct.** Deletion is beyond the stated collaboration responsibility.
- **C. Remove branch protections while retaining the broad role** That weakens a different boundary and does not remove deletion authority.
- **D. Grant organization ownership so access problems stop occurring** That increases unnecessary privilege rather than reducing it.

**Explanation:** A written request does not constrain effective capability. Deletion is beyond the stated collaboration responsibility. That weakens a different boundary and does not remove deletion authority. That increases unnecessary privilege rather than reducing it.

**Sources:** [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q018

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

An Azure Repos contributor belongs to an Allow group and an explicit Deny group at the relevant permission scope. Why can the push fail?

```text
Ordinary contributor at repository scope:
Group A Contribute: Allow
Group B Contribute: Deny
Observed push: permission denied
```

- **A. The Git author email must match the group name** Commit metadata is separate from the server's permission decision.
- **B. A successful clone guarantees permission to push** Read access and source modification are distinct capabilities.
- **C. The effective permission includes the conflicting restriction rather than only the expected grant** **Correct.** Overlapping assignments must be evaluated at the actual applicable scope.
- **D. Membership in any Allow group always overrides every Deny** That ignores how effective restrictions can constrain an ordinary contributor.

**Explanation:** Commit metadata is separate from the server's permission decision. Read access and source modification are distinct capabilities. Overlapping assignments must be evaluated at the actual applicable scope. That ignores how effective restrictions can constrain an ordinary contributor.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q019

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A published release tag v1.0 is moved to a different commit. What traceability risk does this create?

- **A. The original commit is necessarily deleted immediately** Moving a tag changes a reference rather than guaranteeing object deletion.
- **B. Every collaborator's local tag is automatically rewritten at once** Remote reference changes do not guarantee synchronized local references.
- **C. The new target automatically passes the original release tests** Validation evidence does not transfer merely because a tag name is reused.
- **D. The same release label now identifies different source content** **Correct.** Consumers and audits may resolve the name to a revision different from the original release.

**Explanation:** Moving a tag changes a reference rather than guaranteeing object deletion. Remote reference changes do not guarantee synchronized local references. Validation evidence does not transfer merely because a tag name is reused. Consumers and audits may resolve the name to a revision different from the original release.

**Sources:** [S6](https://git-scm.com/docs/git-tag)

## L05-Q020

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

An annotated tag has an author and message but no signature. What claim is not justified by annotation alone?

- **A. That the tag's publisher identity has been cryptographically verified** **Correct.** Annotation metadata and a verified cryptographic signature provide different evidence.
- **B. That the tag can refer to a commit** Annotated tags can identify the intended source object.
- **C. That the tag can retain a descriptive message** That is a normal purpose of annotated tag metadata.
- **D. That the tag can appear in repository history inspection** Annotation does not prevent ordinary inspection of the reference.

**Explanation:** Annotation metadata and a verified cryptographic signature provide different evidence. Annotated tags can identify the intended source object. That is a normal purpose of annotated tag metadata. Annotation does not prevent ordinary inspection of the reference.

**Sources:** [S6](https://git-scm.com/docs/git-tag); [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q021

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A pipeline can read its own private repository but cannot read the private shared-template repository. What is the likely access requirement?

```text
Self repository checkout: success
Shared template repository: 403 Forbidden
Execution identity: project build service
Requested operation: read approved template revision
```

- **A. Make the shared repository public immediately** Public exposure is unnecessary for supported private cross-repository access.
- **B. Disable source protection on the consuming repository** Its merge policy does not grant access to another private source.
- **C. Authorize the pipeline identity for the specific additional repository** **Correct.** Source access does not automatically extend to every private dependency.
- **D. Grant every contributor project-administrator access** That broadens unrelated authority instead of authorizing the actual consumer.

**Explanation:** Public exposure is unnecessary for supported private cross-repository access. Its merge policy does not grant access to another private source. Source access does not automatically extend to every private dependency. That broadens unrelated authority instead of authorizing the actual consumer.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q022

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A role change appears ineffective because the user also belongs to another privileged group. What must be inspected?

- **A. Only whether a pull request was previously approved** Past review activity does not establish current access grants.
- **B. Effective access including inherited and explicit assignments** **Correct.** One visible role does not necessarily explain every source of authority.
- **C. Only the most recently edited role label** Earlier memberships can continue to grant permissions.
- **D. Only the user's Git author name** Commit attribution does not define repository authorization.

**Explanation:** Past review activity does not establish current access grants. One visible role does not necessarily explain every source of authority. Earlier memberships can continue to grant permissions. Commit attribution does not define repository authorization.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops); [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q023

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

What should a permission investigation retrieve before changing a failing Azure Repos contributor's role?

- **A. The identity's effective permissions and relevant group and branch scopes** **Correct.** The denied operation must be traced to its actual assignments.
- **B. Only the repository's default branch name** The name alone does not explain the permission sources.
- **C. Only the number of commits created by that user** Activity history does not define current authorization.
- **D. Only whether the user can open a dashboard** Dashboard viewing is not proof of repository write permission.

**Explanation:** The denied operation must be traced to its actual assignments. The name alone does not explain the permission sources. Activity history does not define current authorization. Dashboard viewing is not proof of repository write permission.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q024

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

What additional information does an annotated Git tag provide compared with a lightweight tag?

- **A. A complete copy of every release binary** A source tag is not automatically an artifact archive.
- **B. A tag object with tagging metadata and message** **Correct.** A lightweight tag is a direct reference without the same annotated tag object.
- **C. A guarantee that the tagged code contains no defects** Tag metadata does not establish application correctness.
- **D. A universal restriction preventing any maintainer from moving it** Reference protection is a separate repository governance concern.

**Explanation:** A source tag is not automatically an artifact archive. A lightweight tag is a direct reference without the same annotated tag object. Tag metadata does not establish application correctness. Reference protection is a separate repository governance concern.

**Sources:** [S6](https://git-scm.com/docs/git-tag)

## L05-Q025

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A release process requires cryptographic publisher verification. Which tag form is relevant to that requirement?

- **A. A lightweight tag named signed-release** The name does not add a signature to the reference.
- **B. A branch name containing the release owner's email** A name is not a verified cryptographic attestation.
- **C. A signed tag verified under the intended trust policy** **Correct.** The signature must be checked against the authorized signer expectations.
- **D. An unsigned annotated tag with a long message** Human-readable metadata is not cryptographic proof of the signer.

**Explanation:** The name does not add a signature to the reference. A name is not a verified cryptographic attestation. The signature must be checked against the authorized signer expectations. Human-readable metadata is not cryptographic proof of the signer.

**Sources:** [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q026

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A shared component uses a moving branch and breaks unchanged consumers. What reference policy improves repeatability?

- **A. Always consume the newest branch head and suppress failure notifications** That preserves uncontrolled change while hiding its consequences.
- **B. Use the same filename in every repository without tracking the source revision** A name cannot identify which shared implementation executed.
- **C. Cache the first fetched copy forever without an upgrade owner** That can retain defects and security problems indefinitely.
- **D. Pin consumption to a reviewed immutable revision and update it deliberately** **Correct.** The executable dependency should not change independently without an intentional consumer update.

**Explanation:** That preserves uncontrolled change while hiding its consequences. A name cannot identify which shared implementation executed. That can retain defects and security problems indefinitely. The executable dependency should not change independently without an intentional consumer update.

**Sources:** [S2](https://git-scm.com/docs/scalar); [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q027

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Which validation best demonstrates suitable contractor access within a disposable training scope?

- **A. The contractor's role description contains the word limited** Labels do not establish the effective permissions actually granted.
- **B. The contractor can perform the intended review and lacks the unneeded destructive capability** **Correct.** Least privilege requires useful access as well as a meaningful denied boundary.
- **C. The contractor cannot access anything including the assigned review** That fails the legitimate collaboration requirement.
- **D. The contractor can change organization-wide policies** That demonstrates broader authority than this task needs.

**Explanation:** Labels do not establish the effective permissions actually granted. Least privilege requires useful access as well as a meaningful denied boundary. That fails the legitimate collaboration requirement. That demonstrates broader authority than this task needs.

**Sources:** [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q028

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Which repair demonstrates that a conflicting permission was fixed without unnecessary elevation?

- **A. The user can now delete every project in the organization** That is excessive access rather than a targeted repository repair.
- **B. The user switches to an administrator's credential for every operation** That bypasses rather than resolves the ordinary identity's permission issue.
- **C. All explicit restrictions are removed from every repository** That broadens scope far beyond the identified conflict.
- **D. The intended push succeeds under the ordinary identity while unrelated protected actions remain denied** **Correct.** The corrected boundary should permit required work and retain restrictions beyond it.

**Explanation:** That is excessive access rather than a targeted repository repair. That bypasses rather than resolves the ordinary identity's permission issue. That broadens scope far beyond the identified conflict. The corrected boundary should permit required work and retain restrictions beyond it.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q029

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Which verification binds a release tag to the source revision recorded by a build?

```text
Expected build source: 2f63a9b
Resolved tag v1.0 commit: 80a12de
Release labels are human-readable; commits differ
```

- **A. Compare only the human-readable tag and build version labels** Matching labels can still point to different underlying source commits.
- **B. Compare only the commit author and build requester** The same person can produce several different commits, so identity fields do not prove source equality.
- **C. Compare only the annotated tag message with the release notes** Related descriptions do not establish the exact commit consumed by the build.
- **D. Resolve the tag to its commit and compare the expected immutable commit identity** **Correct.** Matching names alone are weaker than matching the actual source revision.

**Explanation:** Matching labels can still point to different underlying source commits. The same person can produce several different commits, so identity fields do not prove source equality. Related descriptions do not establish the exact commit consumed by the build. Matching names alone are weaker than matching the actual source revision.

**Sources:** [S6](https://git-scm.com/docs/git-tag)

## L05-Q030

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signature is mathematically valid but belongs to a key outside the organization's approved release-signing policy. What remains unproven?

```text
Signature verification: cryptographically valid
Signer fingerprint: KEY-EXTERNAL
Authorized release signers: KEY-RELEASE-A, KEY-RELEASE-B
```

- **A. That any bytes were signed at all** A valid signature already provides evidence of the signed data relationship.
- **B. That the tag has a human-readable name** The signature's trust issue is independent of its reference name.
- **C. That Git can store the tagged commit** The repository object relationship is not the unresolved trust condition.
- **D. That the release was attested by an authorized trusted signer** **Correct.** Signature validity and the decision to trust that signer are separate checks.

**Explanation:** A valid signature already provides evidence of the signed data relationship. The signature's trust issue is independent of its reference name. The repository object relationship is not the unresolved trust condition. Signature validity and the decision to trust that signer are separate checks.

**Sources:** [S6](https://git-scm.com/docs/git-tag); [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q031

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Which evidence proves that a consumer actually adopted a required shared-script fix?

- **A. The shared repository's default branch contains the fix** The consumer may still reference a different revision.
- **B. The author sent an update message to the team** Communication alone does not establish the executable dependency used.
- **C. The run records the approved shared revision and executes the relevant corrected behavior** **Correct.** A version assertion and behavioral check connect the consumer to the intended fix.
- **D. The consumer repository includes a comment saying latest template** A comment can be stale and does not prove runtime resolution.

**Explanation:** The consumer may still reference a different revision. Communication alone does not establish the executable dependency used. A version assertion and behavioral check connect the consumer to the intended fix. A comment can be stale and does not prove runtime resolution.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q032

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Why is granting project administration a poor default fix for a denied documentation review operation?

- **A. Role elevation automatically removes all inherited restrictions safely** Effective permission behavior still requires deliberate inspection.
- **B. It can grant broad unrelated capabilities instead of correcting the exact missing access** **Correct.** The permission should match the task and effective cause of denial.
- **C. Administrative roles always lack repository read access** The problem is unnecessary breadth rather than a universal absence of reading.
- **D. Review tasks require the ability to delete every project** Destructive project control is not inherent to documentation review.

**Explanation:** Effective permission behavior still requires deliberate inspection. The permission should match the task and effective cause of denial. The problem is unnecessary breadth rather than a universal absence of reading. Destructive project control is not inherent to documentation review.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops); [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q033

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A deny assignment may intentionally protect another repository. What should precede removing it?

- **A. Delete the group from the organization before examining membership** That risks unrelated access changes without understanding the boundary.
- **B. Assume the oldest assignment is always obsolete** Age alone does not determine whether a control remains necessary.
- **C. Copy the user into every allowed group and stop investigating** More grants do not establish the actual effective restriction or its intent.
- **D. Identify its exact scope purpose and affected consumers** **Correct.** A restriction can be legitimate elsewhere even when it conflicts with this task.

**Explanation:** That risks unrelated access changes without understanding the boundary. Age alone does not determine whether a control remains necessary. More grants do not establish the actual effective restriction or its intent. A restriction can be legitimate elsewhere even when it conflicts with this task.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q034

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Which policy can help preserve established GitHub release-tag references against unauthorized movement or deletion?

- **A. A branch-only rule that never targets tags** Protecting another reference class does not establish the tag policy.
- **B. A longer annotated tag message** Metadata detail does not restrict who can change the reference.
- **C. Applicable tag rules with narrowly controlled bypass authority** **Correct.** The enforcement boundary should cover both the reference and exceptions.
- **D. A README instruction saying do not move tags** Documentation states intent but does not enforce the reference restriction.

**Explanation:** Protecting another reference class does not establish the tag policy. Metadata detail does not restrict who can change the reference. The enforcement boundary should cover both the reference and exceptions. Documentation states intent but does not enforce the reference restriction.

**Sources:** [S7](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)

## L05-Q035

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Why should release-signing keys have controlled access and a defined lifecycle?

- **A. A key automatically prevents every malicious source change** Signing does not independently review the safety of the signed contents.
- **B. Signed tags never require any key rotation or revocation process** Credential lifecycle and compromise handling remain relevant to trust.
- **C. Giving every build contributor the release key improves signer separation** Broad key distribution weakens rather than separates the attestation authority.
- **D. A compromised signing key can attest content under the expected identity** **Correct.** The value of attestation depends on protecting and managing signer authority.

**Explanation:** Signing does not independently review the safety of the signed contents. Credential lifecycle and compromise handling remain relevant to trust. Broad key distribution weakens rather than separates the attestation authority. The value of attestation depends on protecting and managing signer authority.

**Sources:** [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q036

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A shared security fix must reach many repositories, but one application is incompatible with its new interface. Which update process balances propagation and safety?

- **A. Maintain an untracked special copy for the incompatible application** An undocumented fork recreates unmanaged drift and hides its remediation obligation.
- **B. Version the change, test representative consumers, stage adoption, and track remaining exceptions with owners** **Correct.** A central fix still needs compatibility evidence and accountable rollout across its consumers.
- **C. Force every consumer to a moving main reference before running tests** That can distribute an incompatible interface to all builds simultaneously.
- **D. Leave every consumer permanently pinned to its old revision** That avoids interface work by retaining the security defect.

**Explanation:** An undocumented fork recreates unmanaged drift and hides its remediation obligation. A central fix still needs compatibility evidence and accountable rollout across its consumers. That can distribute an incompatible interface to all builds simultaneously. That avoids interface work by retaining the security defect.

**Sources:** [S2](https://git-scm.com/docs/scalar); [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q037

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A temporary collaborator needs one repository for two weeks, must not delete it, and should lose access afterward. Which onboarding plan is appropriate?

- **A. Grant the necessary scoped role, verify allowed and denied capabilities, and assign an access-removal owner and date** **Correct.** The plan covers usable least privilege and the temporary relationship's lifecycle.
- **B. Grant a permanent organization-owner role and record the intended two-week use in a comment** The capability and duration exceed the requirement despite the note.
- **C. Share an existing maintainer's credentials and ask the contractor not to use destructive commands** Shared broad credentials undermine both attribution and effective restriction.
- **D. Rely on removing the collaborator from one group without checking other memberships** Other assignments can preserve unintended access after the nominal expiry.

**Explanation:** The plan covers usable least privilege and the temporary relationship's lifecycle. The capability and duration exceed the requirement despite the note. Shared broad credentials undermine both attribution and effective restriction. Other assignments can preserve unintended access after the nominal expiry.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops); [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q038

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A contributor must write one training repository but remain restricted from shared production repositories through an existing group. Which access design is strongest?

- **A. Remove the shared restrictive group globally to make the training push work** That can remove the explicit production limitation.
- **B. Grant organization administration and assume the user will stay in the training repository** Broad authority contradicts the required production restriction.
- **C. Move the production repositories into the contributor's training project** That changes resource boundaries instead of applying scoped authorization.
- **D. Resolve the conflicting assignment at the narrow appropriate scope while preserving the production restriction and testing effective access** **Correct.** The repair must satisfy one task without undoing a separate legitimate boundary.

**Explanation:** That can remove the explicit production limitation. Broad authority contradicts the required production restriction. That changes resource boundaries instead of applying scoped authorization. The repair must satisfy one task without undoing a separate legitimate boundary.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q039

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A release tag accidentally identifies the wrong commit and has already been consumed downstream. Audit policy requires stable published references. Which response is strongest?

- **A. Delete the original release records before publishing the replacement** That removes evidence needed to understand the correction.
- **B. Reuse the same name for a third commit if the first correction fails** Repeated reassignment compounds rather than resolves ambiguous provenance.
- **C. Preserve evidence, publish a clearly identified corrective release or approved correction process, and notify affected consumers** **Correct.** The recovery must handle both the mistaken content and the stability expectations of existing users.
- **D. Silently move the tag and assume downstream caches will update consistently** Consumers can retain different content under one name and lose a clear audit trail.

**Explanation:** That removes evidence needed to understand the correction. Repeated reassignment compounds rather than resolves ambiguous provenance. The recovery must handle both the mistaken content and the stability expectations of existing users. Consumers can retain different content under one name and lose a clear audit trail.

**Sources:** [S6](https://git-scm.com/docs/git-tag); [S7](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)

## L05-Q040

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signed release tag verifies successfully, but the published binary came from another commit. Which conclusion and repair are appropriate?

- **A. The mismatch is harmless if both commits were authored by one person** Author identity does not establish that the artifact matches the reviewed release revision.
- **B. The signature authenticates the tag, so the binary still needs independent provenance tying it to that tagged source** **Correct.** A verified reference does not prove that a separately uploaded artifact was built from it.
- **C. The signature automatically authenticates every file attached to the release page** An attachment is not necessarily part of the signed tag data.
- **D. The binary is trustworthy whenever its filename matches the tag** Names can match while the source and bytes differ.

**Explanation:** Author identity does not establish that the artifact matches the reviewed release revision. A verified reference does not prove that a separately uploaded artifact was built from it. An attachment is not necessarily part of the signed tag data. Names can match while the source and bytes differ.

**Sources:** [S6](https://git-scm.com/docs/git-tag); [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q041

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A monorepo has large binary history, slow Git maintenance, and a service requiring shared source outside its own folder. Which pilot can separate the bottlenecks without breaking builds?

- **A. Convert binaries to LFS and assume repository maintenance and source dependency problems disappear** LFS targets large content storage rather than every repository performance or checkout-completeness issue.
- **B. Enable repository maintenance and retain all binary history in ordinary Git** Maintenance can improve local operations but does not itself migrate large content into LFS.
- **C. Measure blob transfer, local maintenance, and dependency paths separately; test supported LFS and sparse/partial-clone techniques with complete builds** **Correct.** The problems require different controls, and a smaller working tree must still include the service dependency closure.
- **D. Enable sparse checkout for only the service directory and treat any faster clone as complete success** This can omit required shared code and does not establish that historical blob or maintenance cost was addressed.

**Explanation:** LFS targets large content storage rather than every repository performance or checkout-completeness issue. Maintenance can improve local operations but does not itself migrate large content into LFS. The problems require different controls, and a smaller working tree must still include the service dependency closure. This can omit required shared code and does not establish that historical blob or maintenance cost was addressed.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar)

## L05-Q042

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A pipeline can read its own repository but not the private shared-template repository. It has project-scoped job authorization and explicit repository protection. Which repair is most targeted?

- **A. Make the shared repository public solely to remove the permission error** Visibility change is a separate information-exposure decision rather than a scoped access repair.
- **B. Authorize the pipeline identity and specific shared repository through the supported cross-repository access path** **Correct.** The identity and repository boundary should be corrected without replacing the job's source access with broad personal credentials.
- **C. Grant subscription Owner to the pipeline identity** Azure resource ownership does not establish the required source repository permissions.
- **D. Use a collection-wide personal token in every consumer** That adds broad personal lifecycle and privilege dependencies beyond the named repository requirement.

**Explanation:** Visibility change is a separate information-exposure decision rather than a scoped access repair. The identity and repository boundary should be corrected without replacing the job's source access with broad personal credentials. Azure resource ownership does not establish the required source repository permissions. That adds broad personal lifecycle and privilege dependencies beyond the named repository requirement.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q043

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A historical LFS migration works in the author's existing clone. Fresh clones hydrate current images, but an older supported tag contains missing LFS objects. What should gate rollout?

- **A. Publish the author's local object cache as an undocumented prerequisite** An untracked personal cache does not establish reproducible collaborator access to the intended remote assets.
- **B. Verify required assets at each supported revision and reconcile affected references and remote object availability** **Correct.** Current checkout success does not establish that all supported release revisions remain usable after conversion.
- **C. Accept the migration because the default branch builds** The promised supported tag still lacks required content.
- **D. Delete the older release tag because LFS only supports the latest tree** LFS can store historical asset versions; missing objects are not a reason to silently abandon the support contract.

**Explanation:** An untracked personal cache does not establish reproducible collaborator access to the intended remote assets. Current checkout success does not establish that all supported release revisions remain usable after conversion. The promised supported tag still lacks required content. LFS can store historical asset versions; missing objects are not a reason to silently abandon the support contract.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage)

## L05-Q044

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A shared template is pinned and readable, but its new version requests a production credential and executes an unreviewed downloaded script. Consumers need the bug fix in that version. What should adoption require?

- **A. Remove the pin so consumers receive any later corrective change automatically** A moving reference adds uncontrolled change without resolving the current executable-content concern.
- **B. Grant the requested credential but test only template parsing** Syntax success does not evaluate the new script or production authority it receives.
- **C. Review the permission and executable-content delta, validate a safe version, and stage explicit consumer updates** **Correct.** Version pinning provides identity stability but does not establish that the pinned content's privileges or execution are acceptable.
- **D. Adopt immediately because an immutable revision is inherently safe** Immutability says which content runs, not whether its behavior or privileges are appropriate.

**Explanation:** A moving reference adds uncontrolled change without resolving the current executable-content concern. Syntax success does not evaluate the new script or production authority it receives. Version pinning provides identity stability but does not establish that the pinned content's privileges or execution are acceptable. Immutability says which content runs, not whether its behavior or privileges are appropriate.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q045

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A team needs reduced initial source transfer and an offline presentation containing only approved design assets. The server supports partial clone. Which preparation meets both needs?

- **A. Use supported filtering and sparse paths, hydrate the required LFS versions while online, then validate the offline presentation** **Correct.** Source filtering and LFS hydration are distinct mechanisms, and offline use needs verified local content.
- **B. Use a blob-filtered clone and assume every LFS asset is already cached** Partial clone filtering does not establish that the separate LFS content has been downloaded.
- **C. Use sparse checkout only and assume it removes historical download costs** Sparse checkout reduces working-tree population but does not alone promise reduced historical object transfer.
- **D. Download only the latest image without recording its version** That may omit a required historical presentation asset and loses the intended content identity.

**Explanation:** Source filtering and LFS hydration are distinct mechanisms, and offline use needs verified local content. Partial clone filtering does not establish that the separate LFS content has been downloaded. Sparse checkout reduces working-tree population but does not alone promise reduced historical object transfer. That may omit a required historical presentation asset and loses the intended content identity.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S4](https://git-scm.com/docs/git-clone)

## L05-Q046

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

One hundred consumers pin a shared deployment template. A security correction changes an input contract, and ten consumers are incompatible. Which rollout balances urgent remediation and controlled change?

- **A. Fork a unique undocumented template for each incompatible consumer** Untracked forks increase drift and obscure whether the security fix reaches each deployment path.
- **B. Publish an identified corrected version, validate representative consumers, track adoption, and govern time-bounded incompatible exceptions** **Correct.** The plan makes the fix and remaining risk visible while testing the changed contract before broad use.
- **C. Move the old tag to the new code so all pins update without review** Moving an established reference defeats the controlled-version promise and can break incompatible consumers.
- **D. Leave every consumer unchanged until all one hundred upgrade simultaneously** This needlessly delays compatible consumers and retains avoidable exposure everywhere.

**Explanation:** Untracked forks increase drift and obscure whether the security fix reaches each deployment path. The plan makes the fix and remaining risk visible while testing the changed contract before broad use. Moving an established reference defeats the controlled-version promise and can break incompatible consumers. This needlessly delays compatible consumers and retains avoidable exposure everywhere.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)

## L05-Q047

Advanced · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A contractor's direct role is reduced to read, but deletion still succeeds in the disposable repository. The contractor belongs to an inherited administrator group. What repair and test are strongest?

```text
Contractor direct role: Read
Inherited team: Repository administrators
Probe as contractor: review=allowed; delete sandbox repository=allowed
```

- **A. Test deletion only with a different read-only account** Another account does not prove the contractor's effective privileges were corrected.
- **B. Remove the unnecessary effective grant at its appropriate scope and retest allowed review plus denied deletion using that identity** **Correct.** Effective access includes inherited permissions, and both the intended and forbidden behaviors need verification.
- **C. Repeat the direct read assignment until the interface shows read** A narrower direct assignment does not necessarily remove the independent inherited grant.
- **D. Delete the administrator group globally without checking other members** That may disrupt unrelated access and exceeds the contractor-specific correction without scope review.

**Explanation:** Another account does not prove the contractor's effective privileges were corrected. Effective access includes inherited permissions, and both the intended and forbidden behaviors need verification. A narrower direct assignment does not necessarily remove the independent inherited grant. That may disrupt unrelated access and exceeds the contractor-specific correction without scope review.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops); [S5](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L05-Q048

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signed release tag verifies under an approved key, but the build record names a different source commit and the binary checksum is unexpected. What decision is justified?

```text
signed tag v3.0.0 -> abc123 (trusted signer)
build source       -> def456
approved SHA256    -> 111...
attached binary    -> 999...
```

- **A. Stop release and reconcile the tag, build source, and approved artifact identity** **Correct.** A trusted tag signature does not establish that a different binary was built from the tagged source.
- **B. Accept the binary because a valid tag authenticates every attachment on the release page** The signature attests the tag object, not arbitrary independently uploaded binaries.
- **C. Move the signed tag to the build commit without retaining correction evidence** That changes a published reference and does not by itself explain the unexpected content identity.
- **D. Ignore the build source if the version label on the binary matches** A textual version label is weaker than the source and content provenance evidence.

**Explanation:** A trusted tag signature does not establish that a different binary was built from the tagged source. The signature attests the tag object, not arbitrary independently uploaded binaries. That changes a published reference and does not by itself explain the unexpected content identity. A textual version label is weaker than the source and content provenance evidence.

**Sources:** [S6](https://git-scm.com/docs/git-tag); [S8](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)

## L05-Q049

Advanced · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md), [D2.2.2](../../docs/objective-map.md)

An LFS history conversion will change commit identities used by release tags, downstream clones, and build provenance. Releases must remain auditable. Which migration contract is best?

- **A. Inventory consumers, rehearse conversion, retain a protected old-to-new identity record, and coordinate references and fresh-clone validation** **Correct.** The conversion needs explicit identity continuity and consumer coordination, not only smaller repository size.
- **B. Move published tags silently so existing labels always point at the converted graph** Silent movement changes established release identity and obscures what earlier consumers used.
- **C. Convert only the maintainer's clone and let consumers resolve differences independently** Uncoordinated old graphs can be reintroduced and consumers may lose supported-reference context.
- **D. Keep the converted graph but discard the old mapping after a successful current build** A current build does not preserve historical release and provenance relationships.

**Explanation:** The conversion needs explicit identity continuity and consumer coordination, not only smaller repository size. Silent movement changes established release identity and obscures what earlier consumers used. Uncoordinated old graphs can be reintroduced and consumers may lose supported-reference context. A current build does not preserve historical release and provenance relationships.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S6](https://git-scm.com/docs/git-tag)

## L05-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Several teams consume one private deployment template. The service account can read unrelated private repositories and bypass main policies; the template is pinned correctly. Which redesign meets least privilege without losing controlled updates?

- **A. Narrow source access, remove unneeded bypass, document template inputs and required permissions, and test staged version updates** **Correct.** Correct pinning is only one part of the contract; effective access and the compliant update path also require control.
- **B. Keep all privileges because the pinned revision prevents any misuse** Pinned source does not constrain the service identity's unrelated authority.
- **C. Remove all source access and copy the template manually into each consumer** That prevents governed consumption and creates unmanaged copy drift.
- **D. Change the pin to main while keeping broad access** A moving version adds surprise changes without narrowing privileges.

**Explanation:** Correct pinning is only one part of the contract; effective access and the compliant update path also require control. Pinned source does not constrain the service identity's unrelated authority. That prevents governed consumption and creates unmanaged copy drift. A moving version adds surprise changes without narrowing privileges.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops); [S9](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops)
