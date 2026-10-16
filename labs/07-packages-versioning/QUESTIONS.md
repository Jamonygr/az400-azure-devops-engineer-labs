# Lab 07 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L07-Q001

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

An Azure DevOps team needs a private package feed plus controlled consumption of public dependencies. Which service capability fits?

- **A.** A wiki page linking directly to whichever public version is newest
- **B.** Azure Artifacts with configured upstream sources
- **C.** An Azure Repos branch containing only package names
- **D.** A pipeline run display number without a feed

## L07-Q002

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A package is published successfully but has not passed release validation. What prevents normal release consumers from treating it as approved?

- **A.** Rebuild the package with the same version after each test
- **B.** Ask consumers to infer readiness from package upload time
- **C.** Expose validated versions through an appropriate release view
- **D.** Rename the build's display label to approved

## L07-Q003

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

The public registry is temporarily unavailable. Which dependency can an upstream-enabled feed potentially continue to serve?

- **A.** A version known only from a release-note title
- **B.** A dependency excluded from every allowed source and absent from the feed
- **C.** A required version already saved through that feed
- **D.** Any never-requested version that exists only on the offline upstream

## L07-Q004

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

What is the benefit of restoring approved upstream packages through a configured feed rather than independently querying public registries every time?

- **A.** The feed guarantees that every upstream package is vulnerability free
- **B.** The feed converts every upstream package into source code
- **C.** The feed removes the need to define any dependency version
- **D.** The feed can save consumed upstream versions and provide a managed consumption path

## L07-Q005

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

What does promotion into a feed view normally represent in this design?

- **A.** A guarantee that the version contains no possible runtime defect
- **B.** A requirement to regenerate identical source with different compiler inputs
- **C.** Automatic permission for every organization user to administer the feed
- **D.** A lifecycle decision to make that existing package version visible through the view

## L07-Q006

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Why is upstream caching not a substitute for reviewing dependency provenance?

```text
Required package: Contoso.Logging 2.1.0
Saved in feed: yes
Public upstream: temporarily unavailable
Private feed: available
```

- **A.** Cached packages necessarily lose all version metadata
- **B.** A cache transforms untrusted packages into trusted Microsoft-authored code
- **C.** Upstream caching prevents all dependency-name collisions automatically
- **D.** The cache preserves packages rather than proving the publisher and contents are acceptable

## L07-Q007

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A build can download packages but cannot publish a new internal package. Which permission distinction should be checked?

- **A.** Only repository branch protection on an unrelated project
- **B.** Only whether the package name contains a release version
- **C.** Only whether an engineer can open the registry homepage
- **D.** Package read or restore access versus package publishing access

## L07-Q008

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Which evidence confirms that a release view serves the intended validation boundary?

```text
Feed@Local: 1.1.0-ci.12, 1.1.0-rc.1, 1.1.0
Feed@Release: 1.1.0
Consumer restore source: Feed@Release
```

- **A.** A development restore succeeds against the unfiltered local view
- **B.** Only approved package versions appear through the release-consumption path
- **C.** Every package in the feed has a similar filename
- **D.** The package was created on the same day as a release meeting

## L07-Q009

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A clean build restores a previously saved dependency through the feed during an upstream outage. What is the supported conclusion?

- **A.** Every future unseen dependency version is now guaranteed available offline
- **B.** The dependency is proven free of security advisories
- **C.** The public registry can be removed from every project without inventory
- **D.** That saved dependency's consumption path survived this outage

## L07-Q010

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A team selects a feed for training. What should it review before assuming package storage is unlimited and free?

- **A.** The current service's storage licensing and retention terms
- **B.** Only whether the registry URL uses HTTPS
- **C.** Only whether one package was successfully restored
- **D.** Only the number of public repositories owned by the learner

## L07-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Who should be able to promote packages into a trusted release-consumption view?

- **A.** Only whichever developer first created the feed
- **B.** The authorized release or package-governance identities required by policy
- **C.** Every anonymous user who can browse public package metadata
- **D.** Every source-code author regardless of release duties

## L07-Q012

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

What configuration change can alter trusted dependency resolution even when the application manifest remains unchanged?

- **A.** Promoting a preexisting validated package into a release view
- **B.** Adding or changing upstream package sources or their resolution policy
- **C.** Changing the retention window for old pipeline log artifacts
- **D.** Changing the package publication workflow display name

## L07-Q013

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

The team needs private publishing, approved public dependencies, repeatable restores, and controlled promotion. Which design covers these separate needs?

- **A.** Scoped feed roles, approved upstreams, recorded dependency versions, and validation-driven view promotion
- **B.** One shared administrator credential and direct latest-version restores from every public registry
- **C.** Copy every dependency into each repository without source or version records
- **D.** Use a release view alone and assume it automatically scans licenses and locks all transitive dependencies

## L07-Q014

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A package passed testing before promotion. A proposal rebuilds it with the same version and publishes that rebuild to the release feed. What is the stronger release pattern?

- **A.** Approve whichever file has the newest creation timestamp
- **B.** Promote the exact validated package version and retain its provenance instead of substituting a rebuild
- **C.** Rebuild with unpinned dependencies because the source commit is unchanged
- **D.** Delete the first version and reuse its number for the new contents

## L07-Q015

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

The team wants resilience to an upstream outage but also must onboard a new version tomorrow. Which preparation is appropriate?

- **A.** Increase retry count indefinitely when the upstream is offline
- **B.** Verify required versions are approved and saved through the feed, then test restores with upstream access unavailable
- **C.** Assume one successful cached restore proves every package and future version is saved
- **D.** Remove the lock file so restore can choose any available cached version

## L07-Q016

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Under a documented SemVer contract, a release removes a public method that existing callers use. Which version change communicates that incompatibility?

- **A.** Change only build metadata after a plus sign
- **B.** Retain the identical version and update its contents
- **C.** Increase the major version
- **D.** Increase only the patch version

## L07-Q017

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

An internal tool uses the explicitly documented CalVer pattern YYYY.MM.SEQUENCE. What does its 2026.10.2 label communicate directly?

```text
Documented format: YYYY.MM.SEQUENCE
Published version: 2026.10.2
```

- **A.** That the package has passed every security scan
- **B.** That all 2026 versions have identical public interfaces
- **C.** The October 2026 release period and second sequence under that convention
- **D.** That exactly two incompatible public methods were removed

## L07-Q018

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A deployment selects an artifact named latest and receives different bytes on retry. What input should replace the moving selector?

- **A.** Whichever successful run completed most recently on any branch
- **B.** The current default branch rebuilt during every deployment
- **C.** The approved producing run and immutable artifact identity
- **D.** The artifact with the shortest filename

## L07-Q019

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A GitHub workflow can read source but cannot publish to GitHub Packages. Which token capability is normally relevant to publishing?

```yaml
permissions:
  contents: read
  packages: read
#Trusted job attempts to publish a new package version.
```

- **A.** Appropriate packages write permission and package access for the workflow repository
- **B.** Only contents read permission
- **C.** Only issues write permission
- **D.** Only permission to upload a workflow log artifact

## L07-Q020

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

An internal package name also exists on a public upstream. What must the dependency design make explicit?

- **A.** Approved sources resolution behavior and expected package provenance
- **B.** Only the requested version range in the application manifest
- **C.** Only whether the package description matches the internal documentation
- **D.** Only the most recent successful build using that name

## L07-Q021

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

A package adds a backward-compatible public capability under SemVer. Which component normally changes?

- **A.** The minor version
- **B.** Only the patch version because every code change is a bug fix
- **C.** Only the build metadata because public features do not affect versions
- **D.** The major version for every added method regardless of compatibility

## L07-Q022

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

The team ships two hotfixes in one calendar month. Why does a YYYY.MM-only convention need an additional uniqueness rule?

- **A.** The month automatically changes after every package upload
- **B.** A calendar label cryptographically identifies the binary contents
- **C.** Several distinct outputs can otherwise receive the same version identity
- **D.** Calendar versions are prohibited from describing hotfixes

## L07-Q023

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Why can rebuilding the same commit during promotion produce a different release candidate?

- **A.** External dependencies toolchains or other build inputs can differ
- **B.** A commit hash changes automatically when another run starts
- **C.** Promotion necessarily changes every source file
- **D.** A pipeline artifact can never retain a content identity

## L07-Q024

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Why can a workflow token with a packages scope still fail to access a package with granular permissions?

- **A.** The scope automatically makes every private package public
- **B.** Every package registry ignores repository association
- **C.** The workflow's branch name must equal the package name
- **D.** The package must also permit the workflow repository's relevant access

## L07-Q025

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Why is pinning only a dependency name insufficient to avoid unintended package substitution?

- **A.** A private package can never share a name with a public package
- **B.** The same name can exist in different sources and versions
- **C.** Package names cryptographically guarantee publisher identity across all registries
- **D.** Every package client resolves all sources in the same order

## L07-Q026

Applied · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md)

How does the exhibited NuGet package version compare with the ordinary stable 1.0.0 release under SemVer-style precedence?

```xml
<PropertyGroup>
  <Version>1.0.0-rc.1</Version>
</PropertyGroup>
```

- **A.** A prerelease candidate with lower precedence than stable 1.0.0
- **B.** A stable release with build metadata that leaves precedence unchanged
- **C.** A major release above every 1.x version
- **D.** A patch release above stable 1.0.0

## L07-Q027

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Which policy should accompany CalVer when callers need to understand breaking API changes?

- **A.** Assume every new month is necessarily incompatible
- **B.** Use the release sequence as the number of affected consumers
- **C.** An explicit compatibility and migration policy separate from the date signal
- **D.** Assume every later month is always backward compatible

## L07-Q028

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

What evidence best verifies that production received the exact tested package?

- **A.** The production filename includes the same friendly release word
- **B.** The deployment happened shortly after tests
- **C.** The same engineer clicked both buttons
- **D.** The deployed content identity matches the approved artifact from the producing run

## L07-Q029

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Which test demonstrates appropriately scoped GitHub package publishing?

- **A.** The trusted workflow publishes the intended package while unrelated package operations remain denied
- **B.** The workflow obtains an organization-owner token
- **C.** A maintainer can upload manually from their own machine
- **D.** The workflow can create issues in a different repository

## L07-Q030

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Which restore evidence most directly verifies the intended package origin?

- **A.** The resolved package source version and expected content identity
- **B.** Only a source-code comment containing the package name
- **C.** Only the registry homepage's availability
- **D.** Only the top-level project display name

## L07-Q031

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Why should a package's public API contract be defined before applying SemVer compatibility rules?

- **A.** A major version is determined only by the number of changed lines
- **B.** Every private refactor must be treated as a public breaking change
- **C.** The date of publication alone determines API compatibility
- **D.** Compatibility depends on what consumers are entitled to rely on

## L07-Q032

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

A CalVer release record contains only 2026.10 and two different binaries were uploaded during that month. What traceability improvement is needed?

- **A.** A unique release identity with source and content provenance for each output
- **B.** Only a longer human-readable title for the month
- **C.** Only the author's display name on both uploads
- **D.** Only a note saying both builds are recent

## L07-Q033

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A service promises redeployment of a supported release after newer candidates exist. Which version record most directly identifies the intended deployable input?

- **A.** The exact package version, producing run, and trusted content identity
- **B.** The package name and whichever build is currently latest
- **C.** The source branch name without a producing run
- **D.** The month when the package was first tested

## L07-Q034

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

An external pull request can execute arbitrary build commands. How should the release-publishing credential be handled?

- **A.** Allow the pull request to change the publishing permissions before running
- **B.** Keep package write authority out of the untrusted contribution execution path
- **C.** Expose the same credential but hide its variable name
- **D.** Grant write access whenever the pull request title includes release

## L07-Q035

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

A new upstream source is added to a trusted feed. What review should accompany the change?

- **A.** Assume adding an upstream improves availability without affecting trust
- **B.** Grant all consumers publishing rights before testing source resolution
- **C.** Assess how it affects dependency resolution and approved provenance
- **D.** Check only that a direct public restore succeeds outside the feed

## L07-Q036

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

An internal refactor changes many files but preserves the documented public API; a one-line method removal breaks callers. Which release policy is defensible?

- **A.** Classify version impact by the public compatibility contract and document the breaking migration
- **B.** Assign the major increment to whichever change has the largest diff
- **C.** Use only the publication day to infer backward compatibility
- **D.** Reissue the same version for both because tests can reveal differences later

## L07-Q037

Applied · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

A service uses CalVer for operational chronology but promises deterministic rollback and explicit breaking-change notices. Which release record meets all three goals?

- **A.** A content digest alone and no user-facing compatibility guidance
- **B.** A new month number treated as proof that no API changed
- **C.** A unique calendar version plus immutable artifact and source identities with a separate compatibility notice
- **D.** A monthly label reused for every rebuild with no retained source identity

## L07-Q038

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

The approved release must be retried after a failure, and main has advanced with newer dependencies. Which promotion plan maintains the approved candidate?

- **A.** Retrieve the retained approved artifact by exact producing identity, verify it, and redeploy without rebuilding from main
- **B.** Build current main and keep the old display version so the retry looks consistent
- **C.** Select the newest successful build and assume later is always safer
- **D.** Republish different bytes under the old package version after deleting its record

## L07-Q039

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A repository builds public pull requests and publishes private packages after trusted release approval. Which authorization design fits?

- **A.** Assume a successful pull-request build alone authorizes publication of any package
- **B.** Use minimally privileged contribution CI and a separately trusted publishing path with the required package access
- **C.** Give every contribution job the publishing token and rely on log masking
- **D.** Replace the repository token with an employee's unrestricted token in all jobs

## L07-Q040

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

A build must consume internal packages from an approved feed and restore repeatably. A public package shares an internal name, and transitive versions can float. Which control set is strongest?

- **A.** Govern allowed sources and package provenance, record the resolved graph, and review deliberate updates
- **B.** Lock only the top-level name while retaining unrestricted public source selection
- **C.** Use whichever package downloads fastest during each build
- **D.** Mirror every public package into the internal namespace and treat the mirror as automatically approved

## L07-Q041

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

A locked restore fails after a developer changes a direct dependency version but does not update the reviewed lock file. Security requires the upgrade, and release inputs must stay deliberate. What should happen?

```text
Project reference: Contoso.Tools 2.4.0 -> 2.4.1
packages.lock.json: unchanged
CI: dotnet restore --locked-mode
error NU1004: lock file inconsistent with project dependencies
```

- **A.** Revert the direct version change and close the security finding without further work
- **B.** Edit the displayed version in the lock file without verifying resolved transitive inputs
- **C.** Resolve and review the intended new graph in the dependency change, then require locked restore against that committed graph
- **D.** Disable locked mode permanently so future updates cannot block the build

## L07-Q042

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md), [D2.2.4](../../docs/objective-map.md)

The release tag resolves to commit a, but the package's producing run records commit b. The version string matches, and both commits pass tests. What should block promotion?

```text
release tag v2.3 -> commit a111
package version -> 2.3.0
producing run  -> source b222
both source revisions have passing test runs
```

- **A.** Only whether both commits were authored by the same person
- **B.** The unresolved tag-to-build-to-artifact provenance mismatch
- **C.** Nothing, because the same version string proves equivalent content
- **D.** Only the age of commit b

## L07-Q043

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

The direct package stays at 4.2.0, but two clean builds resolve different transitive versions. Both pass tests. What control best supports a reproducible next release while permitting reviewed updates?

- **A.** Pin only the direct version and assume transitive resolution is fixed
- **B.** Cache one developer's package directory as the only dependency record
- **C.** Choose the newest transitive result at deployment time
- **D.** Commit the supported resolved lock graph, use locked restore in CI, and validate explicit graph updates

## L07-Q044

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md), [D3.1.2](../../docs/objective-map.md)

A workflow has packages:write but still cannot publish to a granular-permission package. An administrator proposes a personal token with access to all packages. What should be checked first?

- **A.** The package's granted workflow-repository access and the token's effective required permission
- **B.** Only whether the repository checkout succeeded
- **C.** Only the package version format
- **D.** Whether the workflow can administer unrelated repositories

## L07-Q045

Advanced · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

A package claims a compatible minor release, but removes a documented public method. Consumers also use floating ranges. Which response addresses compatibility and deterministic adoption?

- **A.** Keep the minor label because the source diff is only one line
- **B.** Keep floating ranges so every consumer discovers the break at runtime quickly
- **C.** Change only the release note date and leave the version and dependency policy unchanged
- **D.** Publish the breaking change under the appropriate major contract and have consumers review explicit resolved updates

## L07-Q046

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

An upstream-enabled feed must serve approved dependencies during an outage. One required version was never saved, while another is cached. What acceptance test and readiness statement are accurate?

- **A.** Test only a warm developer machine with direct public registry access
- **B.** Test restores of the exact required graph with upstream unavailable, and record the uncached version as a readiness gap
- **C.** Claim complete outage resilience because at least one package was cached
- **D.** Delete the lock file so restore can choose any cached version

## L07-Q047

Advanced · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

The service uses YYYY.MM.SEQUENCE and promises rollback to every supported release. Two distinct artifacts were accidentally assigned 2026.10.2. Which correction best restores identity without rewriting consumed history silently?

- **A.** Rebuild the older commit whenever rollback is needed
- **B.** Publish a uniquely identified corrective release and retain source, producing-run, and content identities for each supported artifact
- **C.** Keep the duplicate label and always select whichever artifact was uploaded last
- **D.** Rename only the documentation heading while leaving ambiguous artifact records

## L07-Q048

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A tested package is promoted to a release view, but deployment rebuilds it from the same commit using newer dependencies. Which release practice preserves the validated candidate?

- **A.** Remove the release view because views guarantee reproducible rebuilding
- **B.** Deploy the exact approved retained package by its producing and content identity
- **C.** Accept the rebuild because equal source commits imply identical external inputs
- **D.** Promote the rebuilt package under the old version without recording another run

## L07-Q049

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

A team pins a vulnerable transitive version for repeatability. The direct package maintainer offers a compatible update. What process satisfies both reproducibility and timely remediation?

- **A.** Remove the lock file so any transitive version can change during each restore
- **B.** Retain the vulnerable graph indefinitely because all version changes break reproducibility
- **C.** Patch the deployment cache in place without a new candidate identity
- **D.** Review and validate the updated resolved graph, then publish a new identified candidate using the committed lock state

## L07-Q050

Advanced · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md), [D3.1.3](../../docs/objective-map.md)

An internal package name also exists upstream, and a new feed source changes resolution. The lock file update shows a new content hash under the same expected name. What should the review establish before release?

- **A.** Accept the graph solely because the package name matches
- **B.** Remove content hashes from review so only version numbers remain visible
- **C.** Disable all dependency updates permanently
- **D.** Approved package origin, exact resolved content, and intentional graph changes under governed source policy
