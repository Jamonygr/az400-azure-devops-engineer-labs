# Lab 07 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L07-Q001

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which next change most directly satisfies the stated requirement?

- **A. Bind source tag build run and package identity in provenance** Release labels should identify the actual delivered bytes. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Use an Azure Artifacts feed with appropriate upstream sources** **Correct.** The feed supports governed local and upstream consumption. This directly addresses the constraint stated in this case.
- **C. Use feed views to expose promoted validated versions** Views distinguish lifecycle stages without rebuilding packages. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.

**Explanation:** The feed supports governed local and upstream consumption. The selected answer is use an Azure Artifacts feed with appropriate upstream sources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q002

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which explanation best accounts for the behavior or constraint described?

- **A. Source and package metadata were assigned independently** Matching names do not establish a shared build origin. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. A source repository is not a package feed** **Correct.** Code storage and dependency distribution serve different purposes. This directly addresses the constraint stated in this case.
- **C. Publication was being confused with release approval** A package can exist before it is approved for consumers. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.

**Explanation:** Code storage and dependency distribution serve different purposes. The selected answer is a source repository is not a package feed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q003

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release view contains only deliberately promoted versions** Consumer visibility should follow validation status. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.
- **B. The package records the same commit referenced by the tag** Consistent provenance ties source to distribution. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **C. The pipeline restores an approved package through the feed** **Correct.** Restoration demonstrates the intended consumption path. This directly addresses the constraint stated in this case.

**Explanation:** Restoration demonstrates the intended consumption path. The selected answer is the pipeline restores an approved package through the feed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q004

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify provenance before promotion rather than trusting filenames** Artifact names can be reused or assigned incorrectly. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Scope feed access to consuming and publishing identities** **Correct.** A working registry should not grant universal write access. This directly addresses the constraint stated in this case.
- **C. Control who can promote packages into trusted views** Promotion is part of the release trust boundary. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.

**Explanation:** A working registry should not grant universal write access. The selected answer is scope feed access to consuming and publishing identities.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q005

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. The team selects this remedy: "Use an Azure Artifacts feed with appropriate upstream sources." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Hosted feeds have storage and licensing considerations** **Correct.** Package convenience does not imply unlimited free storage. This directly addresses the constraint stated in this case.
- **B. Views add lifecycle administration** Teams must maintain clear promotion and consumption conventions. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.
- **C. Provenance collection adds release metadata management** It enables audit and reliable rollback decisions. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Package convenience does not imply unlimited free storage. The selected answer is hosted feeds have storage and licensing considerations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q006

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which next change most directly satisfies the stated requirement?

- **A. Use feed views to expose promoted validated versions** **Correct.** Views distinguish lifecycle stages without rebuilding packages. This directly addresses the constraint stated in this case.
- **B. Evaluate upstream caching through the managed feed** Saved upstream packages can improve repeat consumption resilience. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **C. Use an Azure Artifacts feed with appropriate upstream sources** The feed supports governed local and upstream consumption. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.

**Explanation:** Views distinguish lifecycle stages without rebuilding packages. The selected answer is use feed views to expose promoted validated versions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q007

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which explanation best accounts for the behavior or constraint described?

- **A. Publication was being confused with release approval** **Correct.** A package can exist before it is approved for consumers. This directly addresses the constraint stated in this case.
- **B. Direct external restores depend on live upstream availability** A public endpoint becomes part of every build path. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **C. A source repository is not a package feed** Code storage and dependency distribution serve different purposes. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.

**Explanation:** A package can exist before it is approved for consumers. The selected answer is publication was being confused with release approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q008

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release view contains only deliberately promoted versions** **Correct.** Consumer visibility should follow validation status. This directly addresses the constraint stated in this case.
- **B. Previously saved approved dependencies restore through the feed** The test must distinguish cached content from new requests. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **C. The pipeline restores an approved package through the feed** Restoration demonstrates the intended consumption path. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.

**Explanation:** Consumer visibility should follow validation status. The selected answer is the release view contains only deliberately promoted versions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q009

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which execution safeguard most directly addresses the risk in this case?

- **A. Pin dependencies and review upstream provenance** Caching does not establish that a dependency is safe. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **B. Scope feed access to consuming and publishing identities** A working registry should not grant universal write access. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.
- **C. Control who can promote packages into trusted views** **Correct.** Promotion is part of the release trust boundary. This directly addresses the constraint stated in this case.

**Explanation:** Promotion is part of the release trust boundary. The selected answer is control who can promote packages into trusted views.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q010

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. The team selects this remedy: "Use feed views to expose promoted validated versions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Hosted feeds have storage and licensing considerations** Package convenience does not imply unlimited free storage. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.
- **B. Views add lifecycle administration** **Correct.** Teams must maintain clear promotion and consumption conventions. This directly addresses the constraint stated in this case.
- **C. A cache cannot supply packages never saved** New versions may still require the upstream service. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.

**Explanation:** Teams must maintain clear promotion and consumption conventions. The selected answer is views add lifecycle administration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which next change most directly satisfies the stated requirement?

- **A. Publish a major-version change under the stated SemVer contract** Incompatible public API changes require an explicit compatibility signal. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **B. Use feed views to expose promoted validated versions** Views distinguish lifecycle stages without rebuilding packages. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.
- **C. Evaluate upstream caching through the managed feed** **Correct.** Saved upstream packages can improve repeat consumption resilience. This directly addresses the constraint stated in this case.

**Explanation:** Saved upstream packages can improve repeat consumption resilience. The selected answer is evaluate upstream caching through the managed feed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q012

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which explanation best accounts for the behavior or constraint described?

- **A. The version label understates the change's compatibility impact** A patch label should not promise incompatible behavior. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **B. Publication was being confused with release approval** A package can exist before it is approved for consumers. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.
- **C. Direct external restores depend on live upstream availability** **Correct.** A public endpoint becomes part of every build path. This directly addresses the constraint stated in this case.

**Explanation:** A public endpoint becomes part of every build path. The selected answer is direct external restores depend on live upstream availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q013

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release view contains only deliberately promoted versions** Consumer visibility should follow validation status. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.
- **B. Previously saved approved dependencies restore through the feed** **Correct.** The test must distinguish cached content from new requests. This directly addresses the constraint stated in this case.
- **C. Consumers can identify the breaking release before adopting it** The version should communicate the agreed compatibility semantics. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.

**Explanation:** The test must distinguish cached content from new requests. The selected answer is previously saved approved dependencies restore through the feed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q014

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which execution safeguard most directly addresses the risk in this case?

- **A. Pin dependencies and review upstream provenance** **Correct.** Caching does not establish that a dependency is safe. This directly addresses the constraint stated in this case.
- **B. Document migration steps and test supported consumer scenarios** A correct version number does not repair callers automatically. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **C. Control who can promote packages into trusted views** Promotion is part of the release trust boundary. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.

**Explanation:** Caching does not establish that a dependency is safe. The selected answer is pin dependencies and review upstream provenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q015

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. The team selects this remedy: "Evaluate upstream caching through the managed feed." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. A cache cannot supply packages never saved** **Correct.** New versions may still require the upstream service. This directly addresses the constraint stated in this case.
- **B. SemVer depends on a clearly defined public API** Ambiguous compatibility contracts undermine version meaning. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **C. Views add lifecycle administration** Teams must maintain clear promotion and consumption conventions. That addresses a different requirement: Premature package. It does not directly resolve this case's stated constraint.

**Explanation:** New versions may still require the upstream service. The selected answer is a cache cannot supply packages never saved.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q016

Foundational · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which next change most directly satisfies the stated requirement?

- **A. Publish a major-version change under the stated SemVer contract** **Correct.** Incompatible public API changes require an explicit compatibility signal. This directly addresses the constraint stated in this case.
- **B. Adopt a documented CalVer convention** Calendar versions communicate release timing by agreement. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **C. Evaluate upstream caching through the managed feed** Saved upstream packages can improve repeat consumption resilience. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.

**Explanation:** Incompatible public API changes require an explicit compatibility signal. The selected answer is publish a major-version change under the stated SemVer contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q017

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which explanation best accounts for the behavior or constraint described?

- **A. Direct external restores depend on live upstream availability** A public endpoint becomes part of every build path. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **B. The version label understates the change's compatibility impact** **Correct.** A patch label should not promise incompatible behavior. This directly addresses the constraint stated in this case.
- **C. Release chronology is the requested version signal** The stakeholders are not asking for API compatibility encoding. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.

**Explanation:** A patch label should not promise incompatible behavior. The selected answer is the version label understates the change's compatibility impact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q018

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The published version resolves unambiguously to its release period** The convention must be consistent and documented. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **B. Previously saved approved dependencies restore through the feed** The test must distinguish cached content from new requests. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **C. Consumers can identify the breaking release before adopting it** **Correct.** The version should communicate the agreed compatibility semantics. This directly addresses the constraint stated in this case.

**Explanation:** The version should communicate the agreed compatibility semantics. The selected answer is consumers can identify the breaking release before adopting it.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q019

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which execution safeguard most directly addresses the risk in this case?

- **A. Define uniqueness for multiple releases in one period** A calendar prefix alone may collide during hotfixes. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **B. Pin dependencies and review upstream provenance** Caching does not establish that a dependency is safe. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.
- **C. Document migration steps and test supported consumer scenarios** **Correct.** A correct version number does not repair callers automatically. This directly addresses the constraint stated in this case.

**Explanation:** A correct version number does not repair callers automatically. The selected answer is document migration steps and test supported consumer scenarios.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q020

Advanced · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. The team selects this remedy: "Publish a major-version change under the stated SemVer contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. SemVer depends on a clearly defined public API** **Correct.** Ambiguous compatibility contracts undermine version meaning. This directly addresses the constraint stated in this case.
- **B. CalVer does not inherently express breaking compatibility** Consumers need a separate compatibility policy. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **C. A cache cannot supply packages never saved** New versions may still require the upstream service. That addresses a different requirement: Upstream outage. It does not directly resolve this case's stated constraint.

**Explanation:** Ambiguous compatibility contracts undermine version meaning. The selected answer is semVer depends on a clearly defined public API.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q021

Foundational · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which next change most directly satisfies the stated requirement?

- **A. Publish a major-version change under the stated SemVer contract** Incompatible public API changes require an explicit compatibility signal. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **B. Adopt a documented CalVer convention** **Correct.** Calendar versions communicate release timing by agreement. This directly addresses the constraint stated in this case.
- **C. Use immutable artifact identity tied to the producing run** Retries should retrieve the same tested deliverable. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.

**Explanation:** Calendar versions communicate release timing by agreement. The selected answer is adopt a documented CalVer convention.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q022

Foundational · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which explanation best accounts for the behavior or constraint described?

- **A. The release input is a mutable alias** A stable label does not guarantee stable content. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **B. The version label understates the change's compatibility impact** A patch label should not promise incompatible behavior. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **C. Release chronology is the requested version signal** **Correct.** The stakeholders are not asking for API compatibility encoding. This directly addresses the constraint stated in this case.

**Explanation:** The stakeholders are not asking for API compatibility encoding. The selected answer is release chronology is the requested version signal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q023

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The published version resolves unambiguously to its release period** **Correct.** The convention must be consistent and documented. This directly addresses the constraint stated in this case.
- **B. A retried release downloads the identical recorded artifact digest** Content identity proves reproducible promotion. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **C. Consumers can identify the breaking release before adopting it** The version should communicate the agreed compatibility semantics. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.

**Explanation:** The convention must be consistent and documented. The selected answer is the published version resolves unambiguously to its release period.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q024

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which execution safeguard most directly addresses the risk in this case?

- **A. Retain the artifact and its provenance for required rollback windows** An immutable identifier is useless if its content is deleted. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **B. Document migration steps and test supported consumer scenarios** A correct version number does not repair callers automatically. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.
- **C. Define uniqueness for multiple releases in one period** **Correct.** A calendar prefix alone may collide during hotfixes. This directly addresses the constraint stated in this case.

**Explanation:** A calendar prefix alone may collide during hotfixes. The selected answer is define uniqueness for multiple releases in one period.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q025

Advanced · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. The team selects this remedy: "Adopt a documented CalVer convention." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. CalVer does not inherently express breaking compatibility** **Correct.** Consumers need a separate compatibility policy. This directly addresses the constraint stated in this case.
- **B. Immutable versioning increases retained artifact volume** Retention must balance recovery needs and storage cost. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **C. SemVer depends on a clearly defined public API** Ambiguous compatibility contracts undermine version meaning. That addresses a different requirement: Breaking library change. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers need a separate compatibility policy. The selected answer is calVer does not inherently express breaking compatibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q026

Foundational · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which next change most directly satisfies the stated requirement?

- **A. Adopt a documented CalVer convention** Calendar versions communicate release timing by agreement. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **B. Use immutable artifact identity tied to the producing run** **Correct.** Retries should retrieve the same tested deliverable. This directly addresses the constraint stated in this case.
- **C. Grant the workflow the specific package permission it needs** Package publication is a separate permission capability. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.

**Explanation:** Retries should retrieve the same tested deliverable. The selected answer is use immutable artifact identity tied to the producing run.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q027

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which explanation best accounts for the behavior or constraint described?

- **A. Release chronology is the requested version signal** The stakeholders are not asking for API compatibility encoding. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **B. The release input is a mutable alias** **Correct.** A stable label does not guarantee stable content. This directly addresses the constraint stated in this case.
- **C. Repository checkout authorization does not imply package write access** Token permissions must match the registry operation. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.

**Explanation:** A stable label does not guarantee stable content. The selected answer is the release input is a mutable alias.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q028

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A retried release downloads the identical recorded artifact digest** **Correct.** Content identity proves reproducible promotion. This directly addresses the constraint stated in this case.
- **B. The scoped workflow token publishes the intended package** The positive result should not require a broad personal token. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **C. The published version resolves unambiguously to its release period** The convention must be consistent and documented. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.

**Explanation:** Content identity proves reproducible promotion. The selected answer is a retried release downloads the identical recorded artifact digest.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q029

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which execution safeguard most directly addresses the risk in this case?

- **A. Restrict publish workflows to trusted events and branches** Package credentials must not run on untrusted contributions. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **B. Define uniqueness for multiple releases in one period** A calendar prefix alone may collide during hotfixes. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **C. Retain the artifact and its provenance for required rollback windows** **Correct.** An immutable identifier is useless if its content is deleted. This directly addresses the constraint stated in this case.

**Explanation:** An immutable identifier is useless if its content is deleted. The selected answer is retain the artifact and its provenance for required rollback windows.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q030

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. The team selects this remedy: "Use immutable artifact identity tied to the producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. CalVer does not inherently express breaking compatibility** Consumers need a separate compatibility policy. That addresses a different requirement: Calendar release. It does not directly resolve this case's stated constraint.
- **B. Immutable versioning increases retained artifact volume** **Correct.** Retention must balance recovery needs and storage cost. This directly addresses the constraint stated in this case.
- **C. Registry permission behavior varies by package type** Check the supported registry authentication model. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.

**Explanation:** Retention must balance recovery needs and storage cost. The selected answer is immutable versioning increases retained artifact volume.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q031

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which next change most directly satisfies the stated requirement?

- **A. Grant the workflow the specific package permission it needs** **Correct.** Package publication is a separate permission capability. This directly addresses the constraint stated in this case.
- **B. Control feed sources and package resolution precedence** Source design should avoid ambiguous dependency provenance. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. Use immutable artifact identity tied to the producing run** Retries should retrieve the same tested deliverable. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.

**Explanation:** Package publication is a separate permission capability. The selected answer is grant the workflow the specific package permission it needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q032

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which explanation best accounts for the behavior or constraint described?

- **A. Repository checkout authorization does not imply package write access** **Correct.** Token permissions must match the registry operation. This directly addresses the constraint stated in this case.
- **B. Identical names can resolve to unintended package origins** A successful restore does not prove the expected publisher. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. The release input is a mutable alias** A stable label does not guarantee stable content. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.

**Explanation:** Token permissions must match the registry operation. The selected answer is repository checkout authorization does not imply package write access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q033

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Resolved packages show the approved source and version** Provenance evidence detects unintended substitution. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **B. A retried release downloads the identical recorded artifact digest** Content identity proves reproducible promotion. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **C. The scoped workflow token publishes the intended package** **Correct.** The positive result should not require a broad personal token. This directly addresses the constraint stated in this case.

**Explanation:** The positive result should not require a broad personal token. The selected answer is the scoped workflow token publishes the intended package.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q034

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which execution safeguard most directly addresses the risk in this case?

- **A. Retain the artifact and its provenance for required rollback windows** An immutable identifier is useless if its content is deleted. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **B. Restrict publish workflows to trusted events and branches** **Correct.** Package credentials must not run on untrusted contributions. This directly addresses the constraint stated in this case.
- **C. Review upstream additions and restrict package publishing rights** Uncontrolled source changes can alter trusted resolution behavior. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.

**Explanation:** Package credentials must not run on untrusted contributions. The selected answer is restrict publish workflows to trusted events and branches.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q035

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. The team selects this remedy: "Grant the workflow the specific package permission it needs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Centralized source control can reduce package availability** New dependencies need deliberate onboarding and review. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **B. Immutable versioning increases retained artifact volume** Retention must balance recovery needs and storage cost. That addresses a different requirement: Mutable deployment input. It does not directly resolve this case's stated constraint.
- **C. Registry permission behavior varies by package type** **Correct.** Check the supported registry authentication model. This directly addresses the constraint stated in this case.

**Explanation:** Check the supported registry authentication model. The selected answer is registry permission behavior varies by package type.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q036

Foundational · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which next change most directly satisfies the stated requirement?

- **A. Lock resolved dependency versions for reproducible builds** The build should record its actual dependency graph. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.
- **B. Grant the workflow the specific package permission it needs** Package publication is a separate permission capability. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **C. Control feed sources and package resolution precedence** **Correct.** Source design should avoid ambiguous dependency provenance. This directly addresses the constraint stated in this case.

**Explanation:** Source design should avoid ambiguous dependency provenance. The selected answer is control feed sources and package resolution precedence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q037

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which explanation best accounts for the behavior or constraint described?

- **A. Repository checkout authorization does not imply package write access** Token permissions must match the registry operation. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **B. Identical names can resolve to unintended package origins** **Correct.** A successful restore does not prove the expected publisher. This directly addresses the constraint stated in this case.
- **C. A compatible range can select newer published versions** The same source revision can therefore produce different inputs. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.

**Explanation:** A successful restore does not prove the expected publisher. The selected answer is identical names can resolve to unintended package origins.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q038

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The scoped workflow token publishes the intended package** The positive result should not require a broad personal token. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **B. Resolved packages show the approved source and version** **Correct.** Provenance evidence detects unintended substitution. This directly addresses the constraint stated in this case.
- **C. A clean restore uses the recorded versions consistently** Repeatability requires stable transitive as well as direct inputs. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Provenance evidence detects unintended substitution. The selected answer is resolved packages show the approved source and version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q039

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which execution safeguard most directly addresses the risk in this case?

- **A. Restrict publish workflows to trusted events and branches** Package credentials must not run on untrusted contributions. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.
- **B. Review upstream additions and restrict package publishing rights** **Correct.** Uncontrolled source changes can alter trusted resolution behavior. This directly addresses the constraint stated in this case.
- **C. Update locks through reviewed dependency change workflows** Permanent pinning can leave known vulnerabilities unpatched. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Uncontrolled source changes can alter trusted resolution behavior. The selected answer is review upstream additions and restrict package publishing rights.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q040

Advanced · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. The team selects this remedy: "Control feed sources and package resolution precedence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Centralized source control can reduce package availability** **Correct.** New dependencies need deliberate onboarding and review. This directly addresses the constraint stated in this case.
- **B. Reproducibility and automatic freshness need a controlled balance** Locked dependencies require intentional update maintenance. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.
- **C. Registry permission behavior varies by package type** Check the supported registry authentication model. That addresses a different requirement: GitHub package access. It does not directly resolve this case's stated constraint.

**Explanation:** New dependencies need deliberate onboarding and review. The selected answer is centralized source control can reduce package availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q041

Foundational · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which next change most directly satisfies the stated requirement?

- **A. Bind source tag build run and package identity in provenance** Release labels should identify the actual delivered bytes. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Control feed sources and package resolution precedence** Source design should avoid ambiguous dependency provenance. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. Lock resolved dependency versions for reproducible builds** **Correct.** The build should record its actual dependency graph. This directly addresses the constraint stated in this case.

**Explanation:** The build should record its actual dependency graph. The selected answer is lock resolved dependency versions for reproducible builds.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q042

Foundational · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which explanation best accounts for the behavior or constraint described?

- **A. Source and package metadata were assigned independently** Matching names do not establish a shared build origin. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Identical names can resolve to unintended package origins** A successful restore does not prove the expected publisher. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. A compatible range can select newer published versions** **Correct.** The same source revision can therefore produce different inputs. This directly addresses the constraint stated in this case.

**Explanation:** The same source revision can therefore produce different inputs. The selected answer is a compatible range can select newer published versions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q043

Applied · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The package records the same commit referenced by the tag** Consistent provenance ties source to distribution. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Resolved packages show the approved source and version** Provenance evidence detects unintended substitution. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. A clean restore uses the recorded versions consistently** **Correct.** Repeatability requires stable transitive as well as direct inputs. This directly addresses the constraint stated in this case.

**Explanation:** Repeatability requires stable transitive as well as direct inputs. The selected answer is a clean restore uses the recorded versions consistently.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q044

Applied · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify provenance before promotion rather than trusting filenames** Artifact names can be reused or assigned incorrectly. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Review upstream additions and restrict package publishing rights** Uncontrolled source changes can alter trusted resolution behavior. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. Update locks through reviewed dependency change workflows** **Correct.** Permanent pinning can leave known vulnerabilities unpatched. This directly addresses the constraint stated in this case.

**Explanation:** Permanent pinning can leave known vulnerabilities unpatched. The selected answer is update locks through reviewed dependency change workflows.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q045

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. The team selects this remedy: "Lock resolved dependency versions for reproducible builds." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Provenance collection adds release metadata management** It enables audit and reliable rollback decisions. That addresses a different requirement: Tag artifact mismatch. It does not directly resolve this case's stated constraint.
- **B. Centralized source control can reduce package availability** New dependencies need deliberate onboarding and review. That addresses a different requirement: Dependency substitution. It does not directly resolve this case's stated constraint.
- **C. Reproducibility and automatic freshness need a controlled balance** **Correct.** Locked dependencies require intentional update maintenance. This directly addresses the constraint stated in this case.

**Explanation:** Locked dependencies require intentional update maintenance. The selected answer is reproducibility and automatic freshness need a controlled balance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q046

Foundational · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which next change most directly satisfies the stated requirement?

- **A. Bind source tag build run and package identity in provenance** **Correct.** Release labels should identify the actual delivered bytes. This directly addresses the constraint stated in this case.
- **B. Use an Azure Artifacts feed with appropriate upstream sources** The feed supports governed local and upstream consumption. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.
- **C. Lock resolved dependency versions for reproducible builds** The build should record its actual dependency graph. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Release labels should identify the actual delivered bytes. The selected answer is bind source tag build run and package identity in provenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q047

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which explanation best accounts for the behavior or constraint described?

- **A. A compatible range can select newer published versions** The same source revision can therefore produce different inputs. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.
- **B. Source and package metadata were assigned independently** **Correct.** Matching names do not establish a shared build origin. This directly addresses the constraint stated in this case.
- **C. A source repository is not a package feed** Code storage and dependency distribution serve different purposes. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.

**Explanation:** Matching names do not establish a shared build origin. The selected answer is source and package metadata were assigned independently.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q048

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The package records the same commit referenced by the tag** **Correct.** Consistent provenance ties source to distribution. This directly addresses the constraint stated in this case.
- **B. The pipeline restores an approved package through the feed** Restoration demonstrates the intended consumption path. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.
- **C. A clean restore uses the recorded versions consistently** Repeatability requires stable transitive as well as direct inputs. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Consistent provenance ties source to distribution. The selected answer is the package records the same commit referenced by the tag.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q049

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which execution safeguard most directly addresses the risk in this case?

- **A. Scope feed access to consuming and publishing identities** A working registry should not grant universal write access. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.
- **B. Update locks through reviewed dependency change workflows** Permanent pinning can leave known vulnerabilities unpatched. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.
- **C. Verify provenance before promotion rather than trusting filenames** **Correct.** Artifact names can be reused or assigned incorrectly. This directly addresses the constraint stated in this case.

**Explanation:** Artifact names can be reused or assigned incorrectly. The selected answer is verify provenance before promotion rather than trusting filenames.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)

## L07-Q050

Advanced · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. The team selects this remedy: "Bind source tag build run and package identity in provenance." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reproducibility and automatic freshness need a controlled balance** Locked dependencies require intentional update maintenance. That addresses a different requirement: Floating dependency. It does not directly resolve this case's stated constraint.
- **B. Provenance collection adds release metadata management** **Correct.** It enables audit and reliable rollback decisions. This directly addresses the constraint stated in this case.
- **C. Hosted feeds have storage and licensing considerations** Package convenience does not imply unlimited free storage. That addresses a different requirement: Registry selection. It does not directly resolve this case's stated constraint.

**Explanation:** It enables audit and reliable rollback decisions. The selected answer is provenance collection adds release metadata management.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops); [S3](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages)
