# Lab 05 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L05-Q001

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A repository repeatedly commits large binary artwork. Ordinary clones download large historical blobs. Which mechanism is designed to separate those assets from normal Git objects?

- **A.** Git Large File Storage with the relevant tracking patterns
- **B.** Git tags applied to each binary revision
- **C.** A CODEOWNERS rule for the artwork directory
- **D.** A longer release-artifact retention period

## L05-Q002

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A new clone contains a small text pointer where a usable image is expected. The machine has no LFS client. What is the targeted repair?

- **A.** Remove the pointer's object ID so the editor treats it as an image
- **B.** Create a lightweight tag for the pointer commit
- **C.** Install the supported LFS client and retrieve the asset objects
- **D.** Rename the pointer file to a different image extension

## L05-Q003

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Developers use one service in a very large monorepo. What problem can sparse checkout directly reduce?

- **A.** The amount of repository content populated in the working tree
- **B.** The need to review changes before merging
- **C.** Every remote object's historical storage automatically
- **D.** The requirement for access to private source

## L05-Q004

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

What is normally stored in Git for an asset correctly tracked by Git LFS?

- **A.** Only the asset's filename with no content identity
- **B.** A generated executable that downloads arbitrary code during checkout
- **C.** A pointer describing the associated LFS object
- **D.** Every previous binary version concatenated into the current file

## L05-Q005

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Which clue distinguishes an LFS pointer from the actual image content expected by an editor?

```text
version https://git-lfs.github.com/spec/v1
oid sha256: 0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
size 5278123
```

- **A.** The file contains LFS version object-identity and size fields
- **B.** The image has a filename ending in png
- **C.** The commit has an associated pull request
- **D.** The repository has an origin remote configured

## L05-Q006

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A developer wants a sparse working tree and reduced initial blob transfer where the server supports partial clone. Which combination addresses both concerns?

```bash
git clone --filter=blob:none --sparse https://example.invalid/team/monorepo.git
git sparse-checkout set services/api shared/contracts
```

- **A.** Use supported partial-clone filtering together with sparse checkout
- **B.** Use sparse checkout alone and assume no unselected blobs can ever exist locally
- **C.** Delete unrelated files after a full clone and assume transfer was avoided
- **D.** Apply a release tag before cloning and assume it removes all historical objects

## L05-Q007

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A team adds an LFS tracking rule today. Why does the repository remain large from older committed binaries?

- **A.** The rule applies only when the repository has no tags
- **B.** Every LFS pointer stores another complete copy of the old binary
- **C.** Existing historical blobs are not automatically rewritten by adding a rule
- **D.** LFS requires deleting all branches before any file can be tracked

## L05-Q008

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

After repairing LFS setup, what should a functional checkout check verify?

- **A.** Only that the current branch name matches the asset folder
- **B.** Only that the repository log lists the asset commit
- **C.** The expected asset content is usable and corresponds to the intended object
- **D.** Only that the pointer's text is under one kilobyte

## L05-Q009

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A sparse checkout builds incorrectly because a shared project was omitted. What should the team adjust?

- **A.** Remove the missing project reference without checking its functionality
- **B.** Include the paths required by the service's actual build dependency graph
- **C.** Disable the compiler's missing-project errors
- **D.** Commit copied binaries from a developer's old output folder

## L05-Q010

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Which repository file should be committed so collaborators use the agreed LFS tracking patterns for matching paths?

- **A.** .gitattributes with the intended LFS filters
- **B.** Only the developer's private shell history
- **C.** Only a local editor workspace preference
- **D.** Only an entry in .gitignore for the already tracked asset

## L05-Q011

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A custom LFS endpoint returns 403 while ordinary Git fetch succeeds. What should be inspected before replacing the credential with an administrator token?

- **A.** Only the ordinary Git remote credential that already fetched successfully
- **B.** Only the LFS object ID and local file extension
- **C.** Only whether the branch has a successful build
- **D.** The configured LFS endpoint and its required scoped authorization

## L05-Q012

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Why should large-repository maintenance be evaluated separately from LFS tracking?

- **A.** The two techniques require contradictory repository permission models
- **B.** Repository maintenance and large-content storage address different sources of overhead
- **C.** Scalar automatically converts every binary to an LFS pointer
- **D.** LFS makes every Git history operation constant time

## L05-Q013

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

The team must reduce old binary history, retain current assets, and avoid collaborators reintroducing the old graph. Which migration plan is appropriate?

- **A.** Rewrite the server branch silently while collaborators continue pushing old references
- **B.** Back up and test the history conversion, coordinate affected references and clones, then verify LFS objects and fresh checkout behavior
- **C.** Add a future LFS pattern and declare all old history already migrated
- **D.** Delete every local artwork file and ask Git to infer the missing contents later

## L05-Q014

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Learners need an offline demonstration using selected LFS assets, but storage and bandwidth are limited. Which preparation meets both constraints?

- **A.** Remove all tracking rules before going offline
- **B.** Retrieve the required versions while online, verify their local availability, and document which assets are intentionally excluded
- **C.** Clone only the pointer metadata and assume the offline client can reconstruct the image
- **D.** Fetch every historical asset version regardless of the exercise scope

## L05-Q015

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A GitHub support analyst must label, assign, and manage issues without pushing code. Which standard organization-repository role is designed for this responsibility?

- **A.** Triage
- **B.** Read
- **C.** Write
- **D.** Maintain

## L05-Q016

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Twenty repositories copy one security-sensitive build script and now apply different fixes. Which change reduces unmanaged copy drift?

- **A.** Consume a governed shared component at an intentional version
- **B.** Copy the newest file manually into a few selected repositories
- **C.** Rename every copied script to the same filename
- **D.** Delete the script's version information so consumers appear uniform

## L05-Q017

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A contractor needs to review one private repository but currently has permission to delete it. What is the appropriate access correction?

- **A.** Keep the broad role and rely only on a request not to delete
- **B.** Assign the narrow repository role required by the review task
- **C.** Remove branch protections while retaining the broad role
- **D.** Grant organization ownership so access problems stop occurring

## L05-Q018

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

An Azure Repos contributor belongs to an Allow group and an explicit Deny group at the relevant permission scope. Why can the push fail?

```text
Ordinary contributor at repository scope:
Group A Contribute: Allow
Group B Contribute: Deny
Observed push: permission denied
```

- **A.** The Git author email must match the group name
- **B.** A successful clone guarantees permission to push
- **C.** The effective permission includes the conflicting restriction rather than only the expected grant
- **D.** Membership in any Allow group always overrides every Deny

## L05-Q019

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A published release tag v1.0 is moved to a different commit. What traceability risk does this create?

- **A.** The original commit is necessarily deleted immediately
- **B.** Every collaborator's local tag is automatically rewritten at once
- **C.** The new target automatically passes the original release tests
- **D.** The same release label now identifies different source content

## L05-Q020

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

An annotated tag has an author and message but no signature. What claim is not justified by annotation alone?

- **A.** That the tag's publisher identity has been cryptographically verified
- **B.** That the tag can refer to a commit
- **C.** That the tag can retain a descriptive message
- **D.** That the tag can appear in repository history inspection

## L05-Q021

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A pipeline can read its own private repository but cannot read the private shared-template repository. What is the likely access requirement?

```text
Self repository checkout: success
Shared template repository: 403 Forbidden
Execution identity: project build service
Requested operation: read approved template revision
```

- **A.** Make the shared repository public immediately
- **B.** Disable source protection on the consuming repository
- **C.** Authorize the pipeline identity for the specific additional repository
- **D.** Grant every contributor project-administrator access

## L05-Q022

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A role change appears ineffective because the user also belongs to another privileged group. What must be inspected?

- **A.** Only whether a pull request was previously approved
- **B.** Effective access including inherited and explicit assignments
- **C.** Only the most recently edited role label
- **D.** Only the user's Git author name

## L05-Q023

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

What should a permission investigation retrieve before changing a failing Azure Repos contributor's role?

- **A.** The identity's effective permissions and relevant group and branch scopes
- **B.** Only the repository's default branch name
- **C.** Only the number of commits created by that user
- **D.** Only whether the user can open a dashboard

## L05-Q024

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

What additional information does an annotated Git tag provide compared with a lightweight tag?

- **A.** A complete copy of every release binary
- **B.** A tag object with tagging metadata and message
- **C.** A guarantee that the tagged code contains no defects
- **D.** A universal restriction preventing any maintainer from moving it

## L05-Q025

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A release process requires cryptographic publisher verification. Which tag form is relevant to that requirement?

- **A.** A lightweight tag named signed-release
- **B.** A branch name containing the release owner's email
- **C.** A signed tag verified under the intended trust policy
- **D.** An unsigned annotated tag with a long message

## L05-Q026

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A shared component uses a moving branch and breaks unchanged consumers. What reference policy improves repeatability?

- **A.** Always consume the newest branch head and suppress failure notifications
- **B.** Use the same filename in every repository without tracking the source revision
- **C.** Cache the first fetched copy forever without an upgrade owner
- **D.** Pin consumption to a reviewed immutable revision and update it deliberately

## L05-Q027

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Which validation best demonstrates suitable contractor access within a disposable training scope?

- **A.** The contractor's role description contains the word limited
- **B.** The contractor can perform the intended review and lacks the unneeded destructive capability
- **C.** The contractor cannot access anything including the assigned review
- **D.** The contractor can change organization-wide policies

## L05-Q028

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Which repair demonstrates that a conflicting permission was fixed without unnecessary elevation?

- **A.** The user can now delete every project in the organization
- **B.** The user switches to an administrator's credential for every operation
- **C.** All explicit restrictions are removed from every repository
- **D.** The intended push succeeds under the ordinary identity while unrelated protected actions remain denied

## L05-Q029

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Which verification binds a release tag to the source revision recorded by a build?

```text
Expected build source: 2f63a9b
Resolved tag v1.0 commit: 80a12de
Release labels are human-readable; commits differ
```

- **A.** Compare only the human-readable tag and build version labels
- **B.** Compare only the commit author and build requester
- **C.** Compare only the annotated tag message with the release notes
- **D.** Resolve the tag to its commit and compare the expected immutable commit identity

## L05-Q030

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signature is mathematically valid but belongs to a key outside the organization's approved release-signing policy. What remains unproven?

```text
Signature verification: cryptographically valid
Signer fingerprint: KEY-EXTERNAL
Authorized release signers: KEY-RELEASE-A, KEY-RELEASE-B
```

- **A.** That any bytes were signed at all
- **B.** That the tag has a human-readable name
- **C.** That Git can store the tagged commit
- **D.** That the release was attested by an authorized trusted signer

## L05-Q031

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Which evidence proves that a consumer actually adopted a required shared-script fix?

- **A.** The shared repository's default branch contains the fix
- **B.** The author sent an update message to the team
- **C.** The run records the approved shared revision and executes the relevant corrected behavior
- **D.** The consumer repository includes a comment saying latest template

## L05-Q032

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Why is granting project administration a poor default fix for a denied documentation review operation?

- **A.** Role elevation automatically removes all inherited restrictions safely
- **B.** It can grant broad unrelated capabilities instead of correcting the exact missing access
- **C.** Administrative roles always lack repository read access
- **D.** Review tasks require the ability to delete every project

## L05-Q033

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A deny assignment may intentionally protect another repository. What should precede removing it?

- **A.** Delete the group from the organization before examining membership
- **B.** Assume the oldest assignment is always obsolete
- **C.** Copy the user into every allowed group and stop investigating
- **D.** Identify its exact scope purpose and affected consumers

## L05-Q034

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Which policy can help preserve established GitHub release-tag references against unauthorized movement or deletion?

- **A.** A branch-only rule that never targets tags
- **B.** A longer annotated tag message
- **C.** Applicable tag rules with narrowly controlled bypass authority
- **D.** A README instruction saying do not move tags

## L05-Q035

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Why should release-signing keys have controlled access and a defined lifecycle?

- **A.** A key automatically prevents every malicious source change
- **B.** Signed tags never require any key rotation or revocation process
- **C.** Giving every build contributor the release key improves signer separation
- **D.** A compromised signing key can attest content under the expected identity

## L05-Q036

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

A shared security fix must reach many repositories, but one application is incompatible with its new interface. Which update process balances propagation and safety?

- **A.** Maintain an untracked special copy for the incompatible application
- **B.** Version the change, test representative consumers, stage adoption, and track remaining exceptions with owners
- **C.** Force every consumer to a moving main reference before running tests
- **D.** Leave every consumer permanently pinned to its old revision

## L05-Q037

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A temporary collaborator needs one repository for two weeks, must not delete it, and should lose access afterward. Which onboarding plan is appropriate?

- **A.** Grant the necessary scoped role, verify allowed and denied capabilities, and assign an access-removal owner and date
- **B.** Grant a permanent organization-owner role and record the intended two-week use in a comment
- **C.** Share an existing maintainer's credentials and ask the contractor not to use destructive commands
- **D.** Rely on removing the collaborator from one group without checking other memberships

## L05-Q038

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A contributor must write one training repository but remain restricted from shared production repositories through an existing group. Which access design is strongest?

- **A.** Remove the shared restrictive group globally to make the training push work
- **B.** Grant organization administration and assume the user will stay in the training repository
- **C.** Move the production repositories into the contributor's training project
- **D.** Resolve the conflicting assignment at the narrow appropriate scope while preserving the production restriction and testing effective access

## L05-Q039

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A release tag accidentally identifies the wrong commit and has already been consumed downstream. Audit policy requires stable published references. Which response is strongest?

- **A.** Delete the original release records before publishing the replacement
- **B.** Reuse the same name for a third commit if the first correction fails
- **C.** Preserve evidence, publish a clearly identified corrective release or approved correction process, and notify affected consumers
- **D.** Silently move the tag and assume downstream caches will update consistently

## L05-Q040

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signed release tag verifies successfully, but the published binary came from another commit. Which conclusion and repair are appropriate?

- **A.** The mismatch is harmless if both commits were authored by one person
- **B.** The signature authenticates the tag, so the binary still needs independent provenance tying it to that tagged source
- **C.** The signature automatically authenticates every file attached to the release page
- **D.** The binary is trustworthy whenever its filename matches the tag

## L05-Q041

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A monorepo has large binary history, slow Git maintenance, and a service requiring shared source outside its own folder. Which pilot can separate the bottlenecks without breaking builds?

- **A.** Convert binaries to LFS and assume repository maintenance and source dependency problems disappear
- **B.** Enable repository maintenance and retain all binary history in ordinary Git
- **C.** Measure blob transfer, local maintenance, and dependency paths separately; test supported LFS and sparse/partial-clone techniques with complete builds
- **D.** Enable sparse checkout for only the service directory and treat any faster clone as complete success

## L05-Q042

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A pipeline can read its own repository but not the private shared-template repository. It has project-scoped job authorization and explicit repository protection. Which repair is most targeted?

- **A.** Make the shared repository public solely to remove the permission error
- **B.** Authorize the pipeline identity and specific shared repository through the supported cross-repository access path
- **C.** Grant subscription Owner to the pipeline identity
- **D.** Use a collection-wide personal token in every consumer

## L05-Q043

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A historical LFS migration works in the author's existing clone. Fresh clones hydrate current images, but an older supported tag contains missing LFS objects. What should gate rollout?

- **A.** Publish the author's local object cache as an undocumented prerequisite
- **B.** Verify required assets at each supported revision and reconcile affected references and remote object availability
- **C.** Accept the migration because the default branch builds
- **D.** Delete the older release tag because LFS only supports the latest tree

## L05-Q044

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

A shared template is pinned and readable, but its new version requests a production credential and executes an unreviewed downloaded script. Consumers need the bug fix in that version. What should adoption require?

- **A.** Remove the pin so consumers receive any later corrective change automatically
- **B.** Grant the requested credential but test only template parsing
- **C.** Review the permission and executable-content delta, validate a safe version, and stage explicit consumer updates
- **D.** Adopt immediately because an immutable revision is inherently safe

## L05-Q045

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

A team needs reduced initial source transfer and an offline presentation containing only approved design assets. The server supports partial clone. Which preparation meets both needs?

- **A.** Use supported filtering and sparse paths, hydrate the required LFS versions while online, then validate the offline presentation
- **B.** Use a blob-filtered clone and assume every LFS asset is already cached
- **C.** Use sparse checkout only and assume it removes historical download costs
- **D.** Download only the latest image without recording its version

## L05-Q046

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

One hundred consumers pin a shared deployment template. A security correction changes an input contract, and ten consumers are incompatible. Which rollout balances urgent remediation and controlled change?

- **A.** Fork a unique undocumented template for each incompatible consumer
- **B.** Publish an identified corrected version, validate representative consumers, track adoption, and govern time-bounded incompatible exceptions
- **C.** Move the old tag to the new code so all pins update without review
- **D.** Leave every consumer unchanged until all one hundred upgrade simultaneously

## L05-Q047

Advanced · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

A contractor's direct role is reduced to read, but deletion still succeeds in the disposable repository. The contractor belongs to an inherited administrator group. What repair and test are strongest?

```text
Contractor direct role: Read
Inherited team: Repository administrators
Probe as contractor: review=allowed; delete sandbox repository=allowed
```

- **A.** Test deletion only with a different read-only account
- **B.** Remove the unnecessary effective grant at its appropriate scope and retest allowed review plus denied deletion using that identity
- **C.** Repeat the direct read assignment until the interface shows read
- **D.** Delete the administrator group globally without checking other members

## L05-Q048

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

A signed release tag verifies under an approved key, but the build record names a different source commit and the binary checksum is unexpected. What decision is justified?

```text
signed tag v3.0.0 -> abc123 (trusted signer)
build source       -> def456
approved SHA256    -> 111...
attached binary    -> 999...
```

- **A.** Stop release and reconcile the tag, build source, and approved artifact identity
- **B.** Accept the binary because a valid tag authenticates every attachment on the release page
- **C.** Move the signed tag to the build commit without retaining correction evidence
- **D.** Ignore the build source if the version label on the binary matches

## L05-Q049

Advanced · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md), [D2.2.2](../../docs/objective-map.md)

An LFS history conversion will change commit identities used by release tags, downstream clones, and build provenance. Releases must remain auditable. Which migration contract is best?

- **A.** Inventory consumers, rehearse conversion, retain a protected old-to-new identity record, and coordinate references and fresh-clone validation
- **B.** Move published tags silently so existing labels always point at the converted graph
- **C.** Convert only the maintainer's clone and let consumers resolve differences independently
- **D.** Keep the converted graph but discard the old mapping after a successful current build

## L05-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Several teams consume one private deployment template. The service account can read unrelated private repositories and bypass main policies; the template is pinned correctly. Which redesign meets least privilege without losing controlled updates?

- **A.** Narrow source access, remove unneeded bypass, document template inputs and required permissions, and test staged version updates
- **B.** Keep all privileges because the pinned revision prevents any misuse
- **C.** Remove all source access and copy the template manually into each consumer
- **D.** Change the pin to main while keeping broad access
