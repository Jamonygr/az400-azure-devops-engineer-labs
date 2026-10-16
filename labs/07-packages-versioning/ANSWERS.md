# Lab 07 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L07-Q001

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

An Azure DevOps team needs a private package feed plus controlled consumption of public dependencies. Which service capability fits?

- **A. A wiki page linking directly to whichever public version is newest** Documentation links do not establish a controlled private feed or reproducible resolution.
- **B. Azure Artifacts with configured upstream sources** **Correct.** A feed can host local packages and save supported upstream dependencies through one governed endpoint.
- **C. An Azure Repos branch containing only package names** A source branch is not the package registry and upstream-consumption mechanism.
- **D. A pipeline run display number without a feed** A human-readable run label does not provide package distribution or access controls.

**Explanation:** Documentation links do not establish a controlled private feed or reproducible resolution. A feed can host local packages and save supported upstream dependencies through one governed endpoint. A source branch is not the package registry and upstream-consumption mechanism. A human-readable run label does not provide package distribution or access controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q002

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A package is published successfully but has not passed release validation. What prevents normal release consumers from treating it as approved?

- **A. Rebuild the package with the same version after each test** Rebuilding can change the deliverable and conflicts with immutable package-version expectations.
- **B. Ask consumers to infer readiness from package upload time** Chronology is not a release-quality decision.
- **C. Expose validated versions through an appropriate release view** **Correct.** Feed views can distinguish availability from deliberate lifecycle promotion.
- **D. Rename the build's display label to approved** A human label does not necessarily change which versions consumers can access.

**Explanation:** Rebuilding can change the deliverable and conflicts with immutable package-version expectations. Chronology is not a release-quality decision. Feed views can distinguish availability from deliberate lifecycle promotion. A human label does not necessarily change which versions consumers can access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

## L07-Q003

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

The public registry is temporarily unavailable. Which dependency can an upstream-enabled feed potentially continue to serve?

- **A. A version known only from a release-note title** A textual reference is not the package content.
- **B. A dependency excluded from every allowed source and absent from the feed** No configured available content path exists for that version.
- **C. A required version already saved through that feed** **Correct.** A saved package can remain available even when its upstream cannot be reached.
- **D. Any never-requested version that exists only on the offline upstream** The feed cannot supply bytes it has never saved or otherwise received.

**Explanation:** A textual reference is not the package content. No configured available content path exists for that version. A saved package can remain available even when its upstream cannot be reached. The feed cannot supply bytes it has never saved or otherwise received.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q004

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

What is the benefit of restoring approved upstream packages through a configured feed rather than independently querying public registries every time?

- **A. The feed guarantees that every upstream package is vulnerability free** Caching and distribution do not prove the dependency's security.
- **B. The feed converts every upstream package into source code** Package caching does not imply decompilation or source conversion.
- **C. The feed removes the need to define any dependency version** A registry path does not replace deliberate version selection.
- **D. The feed can save consumed upstream versions and provide a managed consumption path** **Correct.** Supported upstream caching and feed governance reduce dependence on repeated direct public retrieval.

**Explanation:** Caching and distribution do not prove the dependency's security. Package caching does not imply decompilation or source conversion. A registry path does not replace deliberate version selection. Supported upstream caching and feed governance reduce dependence on repeated direct public retrieval.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q005

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

What does promotion into a feed view normally represent in this design?

- **A. A guarantee that the version contains no possible runtime defect** A lifecycle label cannot establish universal correctness.
- **B. A requirement to regenerate identical source with different compiler inputs** Promotion is intended to avoid treating an unverified rebuild as the tested package.
- **C. Automatic permission for every organization user to administer the feed** View promotion does not universally grant registry administration.
- **D. A lifecycle decision to make that existing package version visible through the view** **Correct.** Promotion separates package quality stage from the version's compatibility meaning.

**Explanation:** A lifecycle label cannot establish universal correctness. Promotion is intended to avoid treating an unverified rebuild as the tested package. View promotion does not universally grant registry administration. Promotion separates package quality stage from the version's compatibility meaning.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

## L07-Q006

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Why is upstream caching not a substitute for reviewing dependency provenance?

```text
Required package: Contoso.Logging 2.1.0
Saved in feed: yes
Public upstream: temporarily unavailable
Private feed: available
```

- **A. Cached packages necessarily lose all version metadata** Saving packages does not inherently discard their identity.
- **B. A cache transforms untrusted packages into trusted Microsoft-authored code** Distribution through a feed does not change original authorship or risk.
- **C. Upstream caching prevents all dependency-name collisions automatically** Source governance and resolution choices still require deliberate design.
- **D. The cache preserves packages rather than proving the publisher and contents are acceptable** **Correct.** A consistently available dependency can still be unsafe or unintended.

**Explanation:** Saving packages does not inherently discard their identity. Distribution through a feed does not change original authorship or risk. Source governance and resolution choices still require deliberate design. A consistently available dependency can still be unsafe or unintended.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q007

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A build can download packages but cannot publish a new internal package. Which permission distinction should be checked?

- **A. Only repository branch protection on an unrelated project** That does not establish the build identity's feed publishing rights.
- **B. Only whether the package name contains a release version** Version syntax does not grant write access.
- **C. Only whether an engineer can open the registry homepage** Human page access does not establish the workflow identity's publish permission.
- **D. Package read or restore access versus package publishing access** **Correct.** Consumption and mutation are distinct capabilities in package authorization.

**Explanation:** That does not establish the build identity's feed publishing rights. Version syntax does not grant write access. Human page access does not establish the workflow identity's publish permission. Consumption and mutation are distinct capabilities in package authorization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q008

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Which evidence confirms that a release view serves the intended validation boundary?

```text
Feed@Local: 1.1.0-ci.12, 1.1.0-rc.1, 1.1.0
Feed@Release: 1.1.0
Consumer restore source: Feed@Release
```

- **A. A development restore succeeds against the unfiltered local view** That does not verify the separate release-view boundary.
- **B. Only approved package versions appear through the release-consumption path** **Correct.** The test should examine what the relevant consumers can actually resolve.
- **C. Every package in the feed has a similar filename** Names do not establish promotion status or access scope.
- **D. The package was created on the same day as a release meeting** A date does not prove the intended approval took place.

**Explanation:** That does not verify the separate release-view boundary. The test should examine what the relevant consumers can actually resolve. Names do not establish promotion status or access scope. A date does not prove the intended approval took place.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

## L07-Q009

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A clean build restores a previously saved dependency through the feed during an upstream outage. What is the supported conclusion?

- **A. Every future unseen dependency version is now guaranteed available offline** The test did not provide bytes for versions never saved.
- **B. The dependency is proven free of security advisories** Availability evidence does not establish vulnerability status.
- **C. The public registry can be removed from every project without inventory** Other projects may still need content absent from the saved feed.
- **D. That saved dependency's consumption path survived this outage** **Correct.** The test demonstrates the specific saved content rather than universal offline availability.

**Explanation:** The test did not provide bytes for versions never saved. Availability evidence does not establish vulnerability status. Other projects may still need content absent from the saved feed. The test demonstrates the specific saved content rather than universal offline availability.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q010

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A team selects a feed for training. What should it review before assuming package storage is unlimited and free?

- **A. The current service's storage licensing and retention terms** **Correct.** Managed package distribution has operational and commercial limits to understand.
- **B. Only whether the registry URL uses HTTPS** Transport encryption does not establish cost or capacity terms.
- **C. Only whether one package was successfully restored** A successful request does not prove unrestricted future usage.
- **D. Only the number of public repositories owned by the learner** Unrelated repository inventory does not define feed billing or storage policy.

**Explanation:** Managed package distribution has operational and commercial limits to understand. Transport encryption does not establish cost or capacity terms. A successful request does not prove unrestricted future usage. Unrelated repository inventory does not define feed billing or storage policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Who should be able to promote packages into a trusted release-consumption view?

- **A. Only whichever developer first created the feed** Ownership should follow accountable policy rather than accidental setup history.
- **B. The authorized release or package-governance identities required by policy** **Correct.** Promotion changes the set of versions considered acceptable for release consumption.
- **C. Every anonymous user who can browse public package metadata** Read visibility does not justify mutating trusted release eligibility.
- **D. Every source-code author regardless of release duties** Authoring permission does not automatically justify promotion authority.

**Explanation:** Ownership should follow accountable policy rather than accidental setup history. Promotion changes the set of versions considered acceptable for release consumption. Read visibility does not justify mutating trusted release eligibility. Authoring permission does not automatically justify promotion authority.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

## L07-Q012

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

What configuration change can alter trusted dependency resolution even when the application manifest remains unchanged?

- **A. Promoting a preexisting validated package into a release view** Promotion changes lifecycle visibility rather than adding or changing the feed upstream source resolution policy.
- **B. Adding or changing upstream package sources or their resolution policy** **Correct.** The source path is part of how package names and versions are obtained.
- **C. Changing the retention window for old pipeline log artifacts** Log retention does not determine which registry resolves a dependency name.
- **D. Changing the package publication workflow display name** A workflow label does not change the configured source used during restore.

**Explanation:** Promotion changes lifecycle visibility rather than adding or changing the feed upstream source resolution policy. The source path is part of how package names and versions are obtained. Log retention does not determine which registry resolves a dependency name. A workflow label does not change the configured source used during restore.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q013

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

The team needs private publishing, approved public dependencies, repeatable restores, and controlled promotion. Which design covers these separate needs?

- **A. Scoped feed roles, approved upstreams, recorded dependency versions, and validation-driven view promotion** **Correct.** Access, source provenance, version resolution, and release quality each need an explicit mechanism.
- **B. One shared administrator credential and direct latest-version restores from every public registry** That broadens authority and leaves both reproducibility and upstream governance uncontrolled.
- **C. Copy every dependency into each repository without source or version records** Independent untraceable copies make updates and provenance difficult to govern.
- **D. Use a release view alone and assume it automatically scans licenses and locks all transitive dependencies** A view is not a substitute for separate validation and dependency-resolution controls.

**Explanation:** Access, source provenance, version resolution, and release quality each need an explicit mechanism. That broadens authority and leaves both reproducibility and upstream governance uncontrolled. Independent untraceable copies make updates and provenance difficult to govern. A view is not a substitute for separate validation and dependency-resolution controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q014

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

A package passed testing before promotion. A proposal rebuilds it with the same version and publishes that rebuild to the release feed. What is the stronger release pattern?

- **A. Approve whichever file has the newest creation timestamp** Recency does not connect the artifact to its prior validation evidence.
- **B. Promote the exact validated package version and retain its provenance instead of substituting a rebuild** **Correct.** The tested bytes should remain the release candidate rather than a potentially different output.
- **C. Rebuild with unpinned dependencies because the source commit is unchanged** The same source can produce different inputs or outputs when dependencies vary.
- **D. Delete the first version and reuse its number for the new contents** Version reuse undermines identity and is not supported by immutable-version behavior in Azure Artifacts.

**Explanation:** Recency does not connect the artifact to its prior validation evidence. The tested bytes should remain the release candidate rather than a potentially different output. The same source can produce different inputs or outputs when dependencies vary. Version reuse undermines identity and is not supported by immutable-version behavior in Azure Artifacts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

## L07-Q015

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

The team wants resilience to an upstream outage but also must onboard a new version tomorrow. Which preparation is appropriate?

- **A. Increase retry count indefinitely when the upstream is offline** Unbounded retries do not supply missing package content and can stall delivery.
- **B. Verify required versions are approved and saved through the feed, then test restores with upstream access unavailable** **Correct.** The rehearsal establishes actual content availability for the intended dependency set.
- **C. Assume one successful cached restore proves every package and future version is saved** Caching behavior is version and content specific.
- **D. Remove the lock file so restore can choose any available cached version** That trades reproducibility and compatibility for accidental availability.

**Explanation:** Unbounded retries do not supply missing package content and can stall delivery. The rehearsal establishes actual content availability for the intended dependency set. Caching behavior is version and content specific. That trades reproducibility and compatibility for accidental availability.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q016

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Under a documented SemVer contract, a release removes a public method that existing callers use. Which version change communicates that incompatibility?

- **A. Change only build metadata after a plus sign** Build metadata is not the compatibility-major signal.
- **B. Retain the identical version and update its contents** Reusing one identity for different package contents undermines reliable distribution.
- **C. Increase the major version** **Correct.** An incompatible public API change requires the major compatibility signal under that contract.
- **D. Increase only the patch version** A patch version should not imply a breaking public API removal.

**Explanation:** Build metadata is not the compatibility-major signal. Reusing one identity for different package contents undermines reliable distribution. An incompatible public API change requires the major compatibility signal under that contract. A patch version should not imply a breaking public API removal.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

## L07-Q017

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

An internal tool uses the explicitly documented CalVer pattern YYYY.MM.SEQUENCE. What does its 2026.10.2 label communicate directly?

```text
Documented format: YYYY.MM.SEQUENCE
Published version: 2026.10.2
```

- **A. That the package has passed every security scan** A version label does not establish validation outcomes.
- **B. That all 2026 versions have identical public interfaces** Calendar placement does not guarantee compatibility.
- **C. The October 2026 release period and second sequence under that convention** **Correct.** The date-based meaning follows the team's published format rather than a SemVer compatibility promise.
- **D. That exactly two incompatible public methods were removed** The sequence has no such API-change meaning under this convention.

**Explanation:** A version label does not establish validation outcomes. Calendar placement does not guarantee compatibility. The date-based meaning follows the team's published format rather than a SemVer compatibility promise. The sequence has no such API-change meaning under this convention.

**Sources:** [S5](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)

## L07-Q018

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A deployment selects an artifact named latest and receives different bytes on retry. What input should replace the moving selector?

- **A. Whichever successful run completed most recently on any branch** The newest unrelated run may not be the approved candidate.
- **B. The current default branch rebuilt during every deployment** Rebuilding introduces another potentially different output rather than promoting the tested artifact.
- **C. The approved producing run and immutable artifact identity** **Correct.** Retries should select the same validated deliverable rather than a mutable alias.
- **D. The artifact with the shortest filename** Filename length does not establish intended release content.

**Explanation:** The newest unrelated run may not be the approved candidate. Rebuilding introduces another potentially different output rather than promoting the tested artifact. Retries should select the same validated deliverable rather than a mutable alias. Filename length does not establish intended release content.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q019

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A GitHub workflow can read source but cannot publish to GitHub Packages. Which token capability is normally relevant to publishing?

```yaml
permissions:
  contents: read
  packages: read
#Trusted job attempts to publish a new package version.
```

- **A. Appropriate packages write permission and package access for the workflow repository** **Correct.** Package publication is a distinct authorization capability from source checkout.
- **B. Only contents read permission** Read-only source access does not authorize package mutation.
- **C. Only issues write permission** Issue updates do not grant package publishing access.
- **D. Only permission to upload a workflow log artifact** Workflow artifact storage and package-registry publication are separate capabilities.

**Explanation:** Package publication is a distinct authorization capability from source checkout. Read-only source access does not authorize package mutation. Issue updates do not grant package publishing access. Workflow artifact storage and package-registry publication are separate capabilities.

**Sources:** [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q020

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

An internal package name also exists on a public upstream. What must the dependency design make explicit?

- **A. Approved sources resolution behavior and expected package provenance** **Correct.** A successful name match does not prove the intended publisher supplied the content.
- **B. Only the requested version range in the application manifest** A name and version constraint do not by themselves establish which source supplied the package.
- **C. Only whether the package description matches the internal documentation** Descriptions can be copied and do not establish the actual publisher or content origin.
- **D. Only the most recent successful build using that name** A successful build does not prove that the resolved package came from the intended approved source.

**Explanation:** A successful name match does not prove the intended publisher supplied the content. A name and version constraint do not by themselves establish which source supplied the package. Descriptions can be copied and do not establish the actual publisher or content origin. A successful build does not prove that the resolved package came from the intended approved source.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q021

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

A package adds a backward-compatible public capability under SemVer. Which component normally changes?

- **A. The minor version** **Correct.** A compatible feature addition is distinct from a breaking major change and a corrective patch.
- **B. Only the patch version because every code change is a bug fix** A new public capability is not merely a compatible defect correction.
- **C. Only the build metadata because public features do not affect versions** Consumers need the documented compatibility and feature progression signal.
- **D. The major version for every added method regardless of compatibility** A compatible addition does not inherently require a breaking-version increment.

**Explanation:** A compatible feature addition is distinct from a breaking major change and a corrective patch. A new public capability is not merely a compatible defect correction. Consumers need the documented compatibility and feature progression signal. A compatible addition does not inherently require a breaking-version increment.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

## L07-Q022

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

The team ships two hotfixes in one calendar month. Why does a YYYY.MM-only convention need an additional uniqueness rule?

- **A. The month automatically changes after every package upload** Publication does not alter the actual calendar.
- **B. A calendar label cryptographically identifies the binary contents** A readable version is not automatically a content digest.
- **C. Several distinct outputs can otherwise receive the same version identity** **Correct.** A release period alone may not distinguish multiple packages in that period.
- **D. Calendar versions are prohibited from describing hotfixes** The team can define an appropriate date-based convention.

**Explanation:** Publication does not alter the actual calendar. A readable version is not automatically a content digest. A release period alone may not distinguish multiple packages in that period. The team can define an appropriate date-based convention.

**Sources:** [S5](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)

## L07-Q023

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Why can rebuilding the same commit during promotion produce a different release candidate?

- **A. External dependencies toolchains or other build inputs can differ** **Correct.** Source identity alone does not fix every input or resulting output.
- **B. A commit hash changes automatically when another run starts** Starting a build does not rewrite an existing commit object.
- **C. Promotion necessarily changes every source file** The risk is different build inputs, not an inevitable source rewrite.
- **D. A pipeline artifact can never retain a content identity** Artifacts can be associated with their producing run and verification metadata.

**Explanation:** Source identity alone does not fix every input or resulting output. Starting a build does not rewrite an existing commit object. The risk is different build inputs, not an inevitable source rewrite. Artifacts can be associated with their producing run and verification metadata.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q024

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Why can a workflow token with a packages scope still fail to access a package with granular permissions?

- **A. The scope automatically makes every private package public** A token permission does not inherently change package visibility.
- **B. Every package registry ignores repository association** Supported registries can have repository or granular access relationships.
- **C. The workflow's branch name must equal the package name** A matching name is not the package authorization mechanism.
- **D. The package must also permit the workflow repository's relevant access** **Correct.** Token capability and the package's consumer authorization both affect access.

**Explanation:** A token permission does not inherently change package visibility. Supported registries can have repository or granular access relationships. A matching name is not the package authorization mechanism. Token capability and the package's consumer authorization both affect access.

**Sources:** [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q025

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Why is pinning only a dependency name insufficient to avoid unintended package substitution?

- **A. A private package can never share a name with a public package** Namespace overlap can be part of the dependency risk.
- **B. The same name can exist in different sources and versions** **Correct.** Name identity needs an approved source and deliberate resolution strategy.
- **C. Package names cryptographically guarantee publisher identity across all registries** Names are not a universal trust certificate.
- **D. Every package client resolves all sources in the same order** Resolution behavior depends on the client and configuration.

**Explanation:** Namespace overlap can be part of the dependency risk. Name identity needs an approved source and deliberate resolution strategy. Names are not a universal trust certificate. Resolution behavior depends on the client and configuration.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q026

Applied · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md)

How does the exhibited NuGet package version compare with the ordinary stable 1.0.0 release under SemVer-style precedence?

```xml
<PropertyGroup>
  <Version>1.0.0-rc.1</Version>
</PropertyGroup>
```

- **A. A prerelease candidate with lower precedence than stable 1.0.0** **Correct.** The hyphenated rc identifier marks a prerelease, which precedes the corresponding stable version.
- **B. A stable release with build metadata that leaves precedence unchanged** Build metadata uses a plus separator; the displayed hyphen introduces a prerelease identifier.
- **C. A major release above every 1.x version** The major component remains one, and a prerelease suffix does not increase it.
- **D. A patch release above stable 1.0.0** The numeric patch component remains zero; the prerelease suffix does not make it a later stable patch.

**Explanation:** The hyphenated rc identifier marks a prerelease, which precedes the corresponding stable version. Build metadata uses a plus separator; the displayed hyphen introduces a prerelease identifier. The major component remains one, and a prerelease suffix does not increase it. The numeric patch component remains zero; the prerelease suffix does not make it a later stable patch.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

## L07-Q027

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Which policy should accompany CalVer when callers need to understand breaking API changes?

- **A. Assume every new month is necessarily incompatible** A date transition does not itself prove a breaking API change.
- **B. Use the release sequence as the number of affected consumers** That is not the meaning of the documented date-based format.
- **C. An explicit compatibility and migration policy separate from the date signal** **Correct.** The calendar convention alone does not state backward-compatibility guarantees.
- **D. Assume every later month is always backward compatible** Chronological order does not establish caller compatibility.

**Explanation:** A date transition does not itself prove a breaking API change. That is not the meaning of the documented date-based format. The calendar convention alone does not state backward-compatibility guarantees. Chronological order does not establish caller compatibility.

**Sources:** [S5](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)

## L07-Q028

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

What evidence best verifies that production received the exact tested package?

- **A. The production filename includes the same friendly release word** A human label can be reused for different contents.
- **B. The deployment happened shortly after tests** Temporal proximity does not prove equal build output.
- **C. The same engineer clicked both buttons** Actor identity does not establish the artifact's content identity.
- **D. The deployed content identity matches the approved artifact from the producing run** **Correct.** The comparison binds validation evidence to the actual delivered bytes.

**Explanation:** A human label can be reused for different contents. Temporal proximity does not prove equal build output. Actor identity does not establish the artifact's content identity. The comparison binds validation evidence to the actual delivered bytes.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q029

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Which test demonstrates appropriately scoped GitHub package publishing?

- **A. The trusted workflow publishes the intended package while unrelated package operations remain denied** **Correct.** A useful positive path should coexist with limited excess authority.
- **B. The workflow obtains an organization-owner token** That proves broad authority rather than the required narrow package task.
- **C. A maintainer can upload manually from their own machine** Human access does not establish the workflow identity's effective permissions.
- **D. The workflow can create issues in a different repository** That is unrelated to the required package publishing boundary.

**Explanation:** A useful positive path should coexist with limited excess authority. That proves broad authority rather than the required narrow package task. Human access does not establish the workflow identity's effective permissions. That is unrelated to the required package publishing boundary.

**Sources:** [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q030

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Which restore evidence most directly verifies the intended package origin?

- **A. The resolved package source version and expected content identity** **Correct.** The evidence should identify what the build actually consumed.
- **B. Only a source-code comment containing the package name** Intent text does not establish the resolved dependency.
- **C. Only the registry homepage's availability** Reachability does not show which package was selected.
- **D. Only the top-level project display name** Project naming does not determine publisher provenance.

**Explanation:** The evidence should identify what the build actually consumed. Intent text does not establish the resolved dependency. Reachability does not show which package was selected. Project naming does not determine publisher provenance.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q031

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Why should a package's public API contract be defined before applying SemVer compatibility rules?

- **A. A major version is determined only by the number of changed lines** Diff size does not define consumer compatibility.
- **B. Every private refactor must be treated as a public breaking change** Internal changes need not alter the documented public contract.
- **C. The date of publication alone determines API compatibility** Chronology does not establish whether callers remain compatible.
- **D. Compatibility depends on what consumers are entitled to rely on** **Correct.** Version meaning is weak when the supported public surface is ambiguous.

**Explanation:** Diff size does not define consumer compatibility. Internal changes need not alter the documented public contract. Chronology does not establish whether callers remain compatible. Version meaning is weak when the supported public surface is ambiguous.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

## L07-Q032

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

A CalVer release record contains only 2026.10 and two different binaries were uploaded during that month. What traceability improvement is needed?

- **A. A unique release identity with source and content provenance for each output** **Correct.** One period label cannot unambiguously select between different delivered bytes.
- **B. Only a longer human-readable title for the month** A description without unique identity can retain the ambiguity.
- **C. Only the author's display name on both uploads** One author can produce several distinct outputs.
- **D. Only a note saying both builds are recent** Recency does not identify which content a consumer received.

**Explanation:** One period label cannot unambiguously select between different delivered bytes. A description without unique identity can retain the ambiguity. One author can produce several distinct outputs. Recency does not identify which content a consumer received.

**Sources:** [S5](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)

## L07-Q033

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A service promises redeployment of a supported release after newer candidates exist. Which version record most directly identifies the intended deployable input?

- **A. The exact package version, producing run, and trusted content identity** **Correct.** These fields bind the supported release to a specific produced artifact instead of a moving selector.
- **B. The package name and whichever build is currently latest** The latest selector can identify a newer candidate rather than the supported release.
- **C. The source branch name without a producing run** A moving branch does not uniquely identify the artifact already built for the release.
- **D. The month when the package was first tested** A calendar period can contain multiple distinct candidates and does not identify their content.

**Explanation:** These fields bind the supported release to a specific produced artifact instead of a moving selector. The latest selector can identify a newer candidate rather than the supported release. A moving branch does not uniquely identify the artifact already built for the release. A calendar period can contain multiple distinct candidates and does not identify their content.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q034

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

An external pull request can execute arbitrary build commands. How should the release-publishing credential be handled?

- **A. Allow the pull request to change the publishing permissions before running** That lets untrusted content define the authority it receives.
- **B. Keep package write authority out of the untrusted contribution execution path** **Correct.** Contributor-controlled code should not inherit the trusted package publication capability.
- **C. Expose the same credential but hide its variable name** Untrusted code can inspect execution inputs regardless of the friendly name.
- **D. Grant write access whenever the pull request title includes release** Caller-controlled text is not a trust decision.

**Explanation:** That lets untrusted content define the authority it receives. Contributor-controlled code should not inherit the trusted package publication capability. Untrusted code can inspect execution inputs regardless of the friendly name. Caller-controlled text is not a trust decision.

**Sources:** [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q035

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

A new upstream source is added to a trusted feed. What review should accompany the change?

- **A. Assume adding an upstream improves availability without affecting trust** An additional permitted source changes where package content can enter the dependency boundary.
- **B. Grant all consumers publishing rights before testing source resolution** Publish authority is separate from the right to restore approved upstream content.
- **C. Assess how it affects dependency resolution and approved provenance** **Correct.** A source change can alter consumed inputs without modifying application code.
- **D. Check only that a direct public restore succeeds outside the feed** That does not verify the feed path or provenance policy actually used by consumers.

**Explanation:** An additional permitted source changes where package content can enter the dependency boundary. Publish authority is separate from the right to restore approved upstream content. A source change can alter consumed inputs without modifying application code. That does not verify the feed path or provenance policy actually used by consumers.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q036

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

An internal refactor changes many files but preserves the documented public API; a one-line method removal breaks callers. Which release policy is defensible?

- **A. Classify version impact by the public compatibility contract and document the breaking migration** **Correct.** Change size and compatibility impact are different dimensions.
- **B. Assign the major increment to whichever change has the largest diff** Large internal work can be compatible while a small edit breaks callers.
- **C. Use only the publication day to infer backward compatibility** A date-based label does not define which APIs remain supported.
- **D. Reissue the same version for both because tests can reveal differences later** Consumers need stable package identity and a meaningful change contract before adoption.

**Explanation:** Change size and compatibility impact are different dimensions. Large internal work can be compatible while a small edit breaks callers. A date-based label does not define which APIs remain supported. Consumers need stable package identity and a meaningful change contract before adoption.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

## L07-Q037

Applied · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

A service uses CalVer for operational chronology but promises deterministic rollback and explicit breaking-change notices. Which release record meets all three goals?

- **A. A content digest alone and no user-facing compatibility guidance** A digest identifies bytes but does not explain release timing or breaking migration.
- **B. A new month number treated as proof that no API changed** Calendar progression cannot establish the promised compatibility information.
- **C. A unique calendar version plus immutable artifact and source identities with a separate compatibility notice** **Correct.** Date, exact content, and caller impact are distinct information requirements.
- **D. A monthly label reused for every rebuild with no retained source identity** That preserves chronology while losing deterministic content selection.

**Explanation:** A digest identifies bytes but does not explain release timing or breaking migration. Calendar progression cannot establish the promised compatibility information. Date, exact content, and caller impact are distinct information requirements. That preserves chronology while losing deterministic content selection.

**Sources:** [S5](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400); [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q038

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

The approved release must be retried after a failure, and main has advanced with newer dependencies. Which promotion plan maintains the approved candidate?

- **A. Retrieve the retained approved artifact by exact producing identity, verify it, and redeploy without rebuilding from main** **Correct.** The same candidate preserves the relationship between review, tests, and delivery.
- **B. Build current main and keep the old display version so the retry looks consistent** The new bytes would not be the approved release input.
- **C. Select the newest successful build and assume later is always safer** Approval and compatibility do not follow chronology alone.
- **D. Republish different bytes under the old package version after deleting its record** That destroys stable identity rather than preserving a retryable candidate.

**Explanation:** The same candidate preserves the relationship between review, tests, and delivery. The new bytes would not be the approved release input. Approval and compatibility do not follow chronology alone. That destroys stable identity rather than preserving a retryable candidate.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q039

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

A repository builds public pull requests and publishes private packages after trusted release approval. Which authorization design fits?

- **A. Assume a successful pull-request build alone authorizes publication of any package** Build success does not establish release approval or package scope.
- **B. Use minimally privileged contribution CI and a separately trusted publishing path with the required package access** **Correct.** The design separates code evaluation from a credentialed mutation step.
- **C. Give every contribution job the publishing token and rely on log masking** Masking does not prevent executed code from using an available credential.
- **D. Replace the repository token with an employee's unrestricted token in all jobs** That broadens access and introduces personal credential lifecycle dependence.

**Explanation:** Build success does not establish release approval or package scope. The design separates code evaluation from a credentialed mutation step. Masking does not prevent executed code from using an available credential. That broadens access and introduces personal credential lifecycle dependence.

**Sources:** [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q040

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

A build must consume internal packages from an approved feed and restore repeatably. A public package shares an internal name, and transitive versions can float. Which control set is strongest?

- **A. Govern allowed sources and package provenance, record the resolved graph, and review deliberate updates** **Correct.** Source trust and exact version resolution address different paths to unintended input change.
- **B. Lock only the top-level name while retaining unrestricted public source selection** That can preserve a name without establishing origin or all resolved versions.
- **C. Use whichever package downloads fastest during each build** Performance is not an acceptable provenance or compatibility selector.
- **D. Mirror every public package into the internal namespace and treat the mirror as automatically approved** Copying content does not itself provide a trust or review decision.

**Explanation:** Source trust and exact version resolution address different paths to unintended input change. That can preserve a name without establishing origin or all resolved versions. Performance is not an acceptable provenance or compatibility selector. Copying content does not itself provide a trust or review decision.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)

## L07-Q041

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

A locked restore fails after a developer changes a direct dependency version but does not update the reviewed lock file. Security requires the upgrade, and release inputs must stay deliberate. What should happen?

```text
Project reference: Contoso.Tools 2.4.0 -> 2.4.1
packages.lock.json: unchanged
CI: dotnet restore --locked-mode
error NU1004: lock file inconsistent with project dependencies
```

- **A. Revert the direct version change and close the security finding without further work** That abandons the required upgrade and supplies no remediation evidence.
- **B. Edit the displayed version in the lock file without verifying resolved transitive inputs** Manual label changes do not establish a consistent validated dependency graph.
- **C. Resolve and review the intended new graph in the dependency change, then require locked restore against that committed graph** **Correct.** The security update should become an explicit validated input change rather than be silently accepted during release.
- **D. Disable locked mode permanently so future updates cannot block the build** That removes the control against unintended graph changes instead of updating the reviewed dependency state.

**Explanation:** That abandons the required upgrade and supplies no remediation evidence. Manual label changes do not establish a consistent validated dependency graph. The security update should become an explicit validated input change rather than be silently accepted during release. That removes the control against unintended graph changes instead of updating the reviewed dependency state.

**Sources:** [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)

## L07-Q042

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md), [D2.2.4](../../docs/objective-map.md)

The release tag resolves to commit a, but the package's producing run records commit b. The version string matches, and both commits pass tests. What should block promotion?

```text
release tag v2.3 -> commit a111
package version -> 2.3.0
producing run  -> source b222
both source revisions have passing test runs
```

- **A. Only whether both commits were authored by the same person** Shared authorship does not make different source revisions interchangeable.
- **B. The unresolved tag-to-build-to-artifact provenance mismatch** **Correct.** Matching labels and separate passing tests do not establish that the approved source produced the candidate being promoted.
- **C. Nothing, because the same version string proves equivalent content** A textual version cannot override conflicting source provenance.
- **D. Only the age of commit b** Age does not determine whether the candidate matches the approved release source.

**Explanation:** Shared authorship does not make different source revisions interchangeable. Matching labels and separate passing tests do not establish that the approved source produced the candidate being promoted. A textual version cannot override conflicting source provenance. Age does not determine whether the candidate matches the approved release source.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q043

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

The direct package stays at 4.2.0, but two clean builds resolve different transitive versions. Both pass tests. What control best supports a reproducible next release while permitting reviewed updates?

- **A. Pin only the direct version and assume transitive resolution is fixed** The observed transitive variation contradicts that assumption.
- **B. Cache one developer's package directory as the only dependency record** A private cache lacks the reviewed, portable graph contract for clean builds.
- **C. Choose the newest transitive result at deployment time** That silently changes release inputs after the candidate was built and tested.
- **D. Commit the supported resolved lock graph, use locked restore in CI, and validate explicit graph updates** **Correct.** Passing tests do not make changing inputs reproducible; deliberate updates can remain supported under a reviewed lock workflow.

**Explanation:** The observed transitive variation contradicts that assumption. A private cache lacks the reviewed, portable graph contract for clean builds. That silently changes release inputs after the candidate was built and tested. Passing tests do not make changing inputs reproducible; deliberate updates can remain supported under a reviewed lock workflow.

**Sources:** [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)

## L07-Q044

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md), [D3.1.2](../../docs/objective-map.md)

A workflow has packages:write but still cannot publish to a granular-permission package. An administrator proposes a personal token with access to all packages. What should be checked first?

- **A. The package's granted workflow-repository access and the token's effective required permission** **Correct.** Package authorization and token capability are separate boundaries; both can be corrected without defaulting to broad personal access.
- **B. Only whether the repository checkout succeeded** Source read access does not establish package publishing authorization.
- **C. Only the package version format** A valid version label cannot authorize the workflow repository to publish.
- **D. Whether the workflow can administer unrelated repositories** That extra privilege is unrelated to the scoped package publishing requirement.

**Explanation:** Package authorization and token capability are separate boundaries; both can be corrected without defaulting to broad personal access. Source read access does not establish package publishing authorization. A valid version label cannot authorize the workflow repository to publish. That extra privilege is unrelated to the scoped package publishing requirement.

**Sources:** [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages); [S7](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages)

## L07-Q045

Advanced · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

A package claims a compatible minor release, but removes a documented public method. Consumers also use floating ranges. Which response addresses compatibility and deterministic adoption?

- **A. Keep the minor label because the source diff is only one line** Change size does not determine public API compatibility.
- **B. Keep floating ranges so every consumer discovers the break at runtime quickly** Automatic unreviewed adoption does not provide controlled compatibility validation.
- **C. Change only the release note date and leave the version and dependency policy unchanged** A date does not correct the compatibility signal or the floating input behavior.
- **D. Publish the breaking change under the appropriate major contract and have consumers review explicit resolved updates** **Correct.** The API break needs truthful versioning, and deterministic consumers need deliberate graph changes.

**Explanation:** Change size does not determine public API compatibility. Automatic unreviewed adoption does not provide controlled compatibility validation. A date does not correct the compatibility signal or the floating input behavior. The API break needs truthful versioning, and deterministic consumers need deliberate graph changes.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning); [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)

## L07-Q046

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

An upstream-enabled feed must serve approved dependencies during an outage. One required version was never saved, while another is cached. What acceptance test and readiness statement are accurate?

- **A. Test only a warm developer machine with direct public registry access** That does not exercise the intended feed path or the upstream-outage condition.
- **B. Test restores of the exact required graph with upstream unavailable, and record the uncached version as a readiness gap** **Correct.** Availability of one saved package does not establish offline availability of the whole dependency graph.
- **C. Claim complete outage resilience because at least one package was cached** The required unsaved dependency can still fail restoration.
- **D. Delete the lock file so restore can choose any cached version** That changes the approved inputs to hide the missing required package.

**Explanation:** That does not exercise the intended feed path or the upstream-outage condition. Availability of one saved package does not establish offline availability of the whole dependency graph. The required unsaved dependency can still fail restoration. That changes the approved inputs to hide the missing required package.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)

## L07-Q047

Advanced · [CP4](README.md#task-4) · [D3.1.3](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

The service uses YYYY.MM.SEQUENCE and promises rollback to every supported release. Two distinct artifacts were accidentally assigned 2026.10.2. Which correction best restores identity without rewriting consumed history silently?

- **A. Rebuild the older commit whenever rollback is needed** A rebuild can change toolchain or dependency inputs and does not retrieve the exact prior artifact.
- **B. Publish a uniquely identified corrective release and retain source, producing-run, and content identities for each supported artifact** **Correct.** Calendar notation alone is insufficient; unique records and retained content enable deterministic selection.
- **C. Keep the duplicate label and always select whichever artifact was uploaded last** Upload order makes the same requested version resolve to different content.
- **D. Rename only the documentation heading while leaving ambiguous artifact records** That does not repair the deployable identity consumers select.

**Explanation:** A rebuild can change toolchain or dependency inputs and does not retrieve the exact prior artifact. Calendar notation alone is insufficient; unique records and retained content enable deterministic selection. Upload order makes the same requested version resolve to different content. That does not repair the deployable identity consumers select.

**Sources:** [S4](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning); [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q048

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

A tested package is promoted to a release view, but deployment rebuilds it from the same commit using newer dependencies. Which release practice preserves the validated candidate?

- **A. Remove the release view because views guarantee reproducible rebuilding** Views govern visibility and lifecycle; they do not make arbitrary rebuild inputs identical.
- **B. Deploy the exact approved retained package by its producing and content identity** **Correct.** Promoting an existing version should preserve the tested bytes rather than substitute a potentially different rebuild.
- **C. Accept the rebuild because equal source commits imply identical external inputs** Toolchains and dependencies can change even when source is unchanged.
- **D. Promote the rebuilt package under the old version without recording another run** That obscures that validation and deployment involved different candidates.

**Explanation:** Views govern visibility and lifecycle; they do not make arbitrary rebuild inputs identical. Promoting an existing version should preserve the tested bytes rather than substitute a potentially different rebuild. Toolchains and dependencies can change even when source is unchanged. That obscures that validation and deployment involved different candidates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L07-Q049

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

A team pins a vulnerable transitive version for repeatability. The direct package maintainer offers a compatible update. What process satisfies both reproducibility and timely remediation?

- **A. Remove the lock file so any transitive version can change during each restore** That makes updates less controlled and can silently alter release inputs.
- **B. Retain the vulnerable graph indefinitely because all version changes break reproducibility** Reproducibility applies to identified inputs and does not prohibit reviewed new versions.
- **C. Patch the deployment cache in place without a new candidate identity** An in-place undocumented input change breaks the connection to the tested release artifact.
- **D. Review and validate the updated resolved graph, then publish a new identified candidate using the committed lock state** **Correct.** Repeatability and security updates coexist when changes are explicit and validated.

**Explanation:** That makes updates less controlled and can silently alter release inputs. Reproducibility applies to identified inputs and does not prohibit reviewed new versions. An in-place undocumented input change breaks the connection to the tested release artifact. Repeatability and security updates coexist when changes are explicit and validated.

**Sources:** [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)

## L07-Q050

Advanced · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md), [D3.1.3](../../docs/objective-map.md)

An internal package name also exists upstream, and a new feed source changes resolution. The lock file update shows a new content hash under the same expected name. What should the review establish before release?

- **A. Accept the graph solely because the package name matches** Names can collide across sources and do not establish provenance.
- **B. Remove content hashes from review so only version numbers remain visible** That discards evidence useful for detecting unexpected package substitution.
- **C. Disable all dependency updates permanently** The observed source concern requires governed resolution, not abandonment of necessary maintenance.
- **D. Approved package origin, exact resolved content, and intentional graph changes under governed source policy** **Correct.** A familiar name is insufficient when source resolution and content identity change.

**Explanation:** Names can collide across sources and do not establish provenance. That discards evidence useful for detecting unexpected package substitution. The observed source concern requires governed resolution, not abandonment of necessary maintenance. A familiar name is insufficient when source resolution and content identity change.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S6](https://learn.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files#locking-dependencies)
