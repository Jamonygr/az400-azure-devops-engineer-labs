# Lab 07 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L07-Q001

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which next change most directly satisfies the stated requirement?

- **A.** Bind source tag build run and package identity in provenance
- **B.** Use an Azure Artifacts feed with appropriate upstream sources
- **C.** Use feed views to expose promoted validated versions

## L07-Q002

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which explanation best accounts for the behavior or constraint described?

- **A.** Source and package metadata were assigned independently
- **B.** A source repository is not a package feed
- **C.** Publication was being confused with release approval

## L07-Q003

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release view contains only deliberately promoted versions
- **B.** The package records the same commit referenced by the tag
- **C.** The pipeline restores an approved package through the feed

## L07-Q004

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify provenance before promotion rather than trusting filenames
- **B.** Scope feed access to consuming and publishing identities
- **C.** Control who can promote packages into trusted views

## L07-Q005

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

Registry selection: A team needs private packages integrated with its Azure DevOps project and upstream dependencies from public registries. The team selects this remedy: "Use an Azure Artifacts feed with appropriate upstream sources." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Hosted feeds have storage and licensing considerations
- **B.** Views add lifecycle administration
- **C.** Provenance collection adds release metadata management

## L07-Q006

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which next change most directly satisfies the stated requirement?

- **A.** Use feed views to expose promoted validated versions
- **B.** Evaluate upstream caching through the managed feed
- **C.** Use an Azure Artifacts feed with appropriate upstream sources

## L07-Q007

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which explanation best accounts for the behavior or constraint described?

- **A.** Publication was being confused with release approval
- **B.** Direct external restores depend on live upstream availability
- **C.** A source repository is not a package feed

## L07-Q008

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release view contains only deliberately promoted versions
- **B.** Previously saved approved dependencies restore through the feed
- **C.** The pipeline restores an approved package through the feed

## L07-Q009

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. Which execution safeguard most directly addresses the risk in this case?

- **A.** Pin dependencies and review upstream provenance
- **B.** Scope feed access to consuming and publishing identities
- **C.** Control who can promote packages into trusted views

## L07-Q010

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Premature package: Consumers accidentally install an unvalidated build because every published package is treated as release ready. The team selects this remedy: "Use feed views to expose promoted validated versions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Hosted feeds have storage and licensing considerations
- **B.** Views add lifecycle administration
- **C.** A cache cannot supply packages never saved

## L07-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which next change most directly satisfies the stated requirement?

- **A.** Publish a major-version change under the stated SemVer contract
- **B.** Use feed views to expose promoted validated versions
- **C.** Evaluate upstream caching through the managed feed

## L07-Q012

Foundational · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which explanation best accounts for the behavior or constraint described?

- **A.** The version label understates the change's compatibility impact
- **B.** Publication was being confused with release approval
- **C.** Direct external restores depend on live upstream availability

## L07-Q013

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release view contains only deliberately promoted versions
- **B.** Previously saved approved dependencies restore through the feed
- **C.** Consumers can identify the breaking release before adopting it

## L07-Q014

Applied · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Pin dependencies and review upstream provenance
- **B.** Document migration steps and test supported consumer scenarios
- **C.** Control who can promote packages into trusted views

## L07-Q015

Advanced · [CP5](README.md#task-5) · [D3.1.2](../../docs/objective-map.md)

Upstream outage: The build repeatedly fails when a public registry is unavailable even though approved dependencies were previously consumed. The team selects this remedy: "Evaluate upstream caching through the managed feed." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** A cache cannot supply packages never saved
- **B.** SemVer depends on a clearly defined public API
- **C.** Views add lifecycle administration

## L07-Q016

Foundational · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which next change most directly satisfies the stated requirement?

- **A.** Publish a major-version change under the stated SemVer contract
- **B.** Adopt a documented CalVer convention
- **C.** Evaluate upstream caching through the managed feed

## L07-Q017

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which explanation best accounts for the behavior or constraint described?

- **A.** Direct external restores depend on live upstream availability
- **B.** The version label understates the change's compatibility impact
- **C.** Release chronology is the requested version signal

## L07-Q018

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The published version resolves unambiguously to its release period
- **B.** Previously saved approved dependencies restore through the feed
- **C.** Consumers can identify the breaking release before adopting it

## L07-Q019

Applied · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. Which execution safeguard most directly addresses the risk in this case?

- **A.** Define uniqueness for multiple releases in one period
- **B.** Pin dependencies and review upstream provenance
- **C.** Document migration steps and test supported consumer scenarios

## L07-Q020

Advanced · [CP2](README.md#task-2) · [D3.1.3](../../docs/objective-map.md)

Breaking library change: Version 1.4.2 removes a public API method and existing consumers fail after an apparently safe update. The team selects this remedy: "Publish a major-version change under the stated SemVer contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** SemVer depends on a clearly defined public API
- **B.** CalVer does not inherently express breaking compatibility
- **C.** A cache cannot supply packages never saved

## L07-Q021

Foundational · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which next change most directly satisfies the stated requirement?

- **A.** Publish a major-version change under the stated SemVer contract
- **B.** Adopt a documented CalVer convention
- **C.** Use immutable artifact identity tied to the producing run

## L07-Q022

Foundational · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which explanation best accounts for the behavior or constraint described?

- **A.** The release input is a mutable alias
- **B.** The version label understates the change's compatibility impact
- **C.** Release chronology is the requested version signal

## L07-Q023

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The published version resolves unambiguously to its release period
- **B.** A retried release downloads the identical recorded artifact digest
- **C.** Consumers can identify the breaking release before adopting it

## L07-Q024

Applied · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retain the artifact and its provenance for required rollback windows
- **B.** Document migration steps and test supported consumer scenarios
- **C.** Define uniqueness for multiple releases in one period

## L07-Q025

Advanced · [CP1](README.md#task-1) · [D3.1.3](../../docs/objective-map.md)

Calendar release: An internal tool ships every month and stakeholders need the version to identify its release period. The team selects this remedy: "Adopt a documented CalVer convention." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** CalVer does not inherently express breaking compatibility
- **B.** Immutable versioning increases retained artifact volume
- **C.** SemVer depends on a clearly defined public API

## L07-Q026

Foundational · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which next change most directly satisfies the stated requirement?

- **A.** Adopt a documented CalVer convention
- **B.** Use immutable artifact identity tied to the producing run
- **C.** Grant the workflow the specific package permission it needs

## L07-Q027

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which explanation best accounts for the behavior or constraint described?

- **A.** Release chronology is the requested version signal
- **B.** The release input is a mutable alias
- **C.** Repository checkout authorization does not imply package write access

## L07-Q028

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A retried release downloads the identical recorded artifact digest
- **B.** The scoped workflow token publishes the intended package
- **C.** The published version resolves unambiguously to its release period

## L07-Q029

Applied · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. Which execution safeguard most directly addresses the risk in this case?

- **A.** Restrict publish workflows to trusted events and branches
- **B.** Define uniqueness for multiple releases in one period
- **C.** Retain the artifact and its provenance for required rollback windows

## L07-Q030

Advanced · [CP4](README.md#task-4) · [D3.1.4](../../docs/objective-map.md)

Mutable deployment input: A release downloads an artifact named latest and receives different bytes when the run is retried. The team selects this remedy: "Use immutable artifact identity tied to the producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** CalVer does not inherently express breaking compatibility
- **B.** Immutable versioning increases retained artifact volume
- **C.** Registry permission behavior varies by package type

## L07-Q031

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which next change most directly satisfies the stated requirement?

- **A.** Grant the workflow the specific package permission it needs
- **B.** Control feed sources and package resolution precedence
- **C.** Use immutable artifact identity tied to the producing run

## L07-Q032

Foundational · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which explanation best accounts for the behavior or constraint described?

- **A.** Repository checkout authorization does not imply package write access
- **B.** Identical names can resolve to unintended package origins
- **C.** The release input is a mutable alias

## L07-Q033

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Resolved packages show the approved source and version
- **B.** A retried release downloads the identical recorded artifact digest
- **C.** The scoped workflow token publishes the intended package

## L07-Q034

Applied · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retain the artifact and its provenance for required rollback windows
- **B.** Restrict publish workflows to trusted events and branches
- **C.** Review upstream additions and restrict package publishing rights

## L07-Q035

Advanced · [CP5](README.md#task-5) · [D3.1.1](../../docs/objective-map.md)

GitHub package access: A workflow can read source but fails to publish a package to the repository's registry namespace. The team selects this remedy: "Grant the workflow the specific package permission it needs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Centralized source control can reduce package availability
- **B.** Immutable versioning increases retained artifact volume
- **C.** Registry permission behavior varies by package type

## L07-Q036

Foundational · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which next change most directly satisfies the stated requirement?

- **A.** Lock resolved dependency versions for reproducible builds
- **B.** Grant the workflow the specific package permission it needs
- **C.** Control feed sources and package resolution precedence

## L07-Q037

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which explanation best accounts for the behavior or constraint described?

- **A.** Repository checkout authorization does not imply package write access
- **B.** Identical names can resolve to unintended package origins
- **C.** A compatible range can select newer published versions

## L07-Q038

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The scoped workflow token publishes the intended package
- **B.** Resolved packages show the approved source and version
- **C.** A clean restore uses the recorded versions consistently

## L07-Q039

Applied · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. Which execution safeguard most directly addresses the risk in this case?

- **A.** Restrict publish workflows to trusted events and branches
- **B.** Review upstream additions and restrict package publishing rights
- **C.** Update locks through reviewed dependency change workflows

## L07-Q040

Advanced · [CP3](README.md#task-3) · [D3.1.2](../../docs/objective-map.md)

Dependency substitution: A private package name also exists upstream, and builds must consistently choose the organization's approved package. The team selects this remedy: "Control feed sources and package resolution precedence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Centralized source control can reduce package availability
- **B.** Reproducibility and automatic freshness need a controlled balance
- **C.** Registry permission behavior varies by package type

## L07-Q041

Foundational · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which next change most directly satisfies the stated requirement?

- **A.** Bind source tag build run and package identity in provenance
- **B.** Control feed sources and package resolution precedence
- **C.** Lock resolved dependency versions for reproducible builds

## L07-Q042

Foundational · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which explanation best accounts for the behavior or constraint described?

- **A.** Source and package metadata were assigned independently
- **B.** Identical names can resolve to unintended package origins
- **C.** A compatible range can select newer published versions

## L07-Q043

Applied · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The package records the same commit referenced by the tag
- **B.** Resolved packages show the approved source and version
- **C.** A clean restore uses the recorded versions consistently

## L07-Q044

Applied · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify provenance before promotion rather than trusting filenames
- **B.** Review upstream additions and restrict package publishing rights
- **C.** Update locks through reviewed dependency change workflows

## L07-Q045

Advanced · [CP3](README.md#task-3) · [D3.1.3](../../docs/objective-map.md)

Floating dependency: Two builds of the same commit resolve different minor versions because the dependency specification permits updates. The team selects this remedy: "Lock resolved dependency versions for reproducible builds." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Provenance collection adds release metadata management
- **B.** Centralized source control can reduce package availability
- **C.** Reproducibility and automatic freshness need a controlled balance

## L07-Q046

Foundational · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which next change most directly satisfies the stated requirement?

- **A.** Bind source tag build run and package identity in provenance
- **B.** Use an Azure Artifacts feed with appropriate upstream sources
- **C.** Lock resolved dependency versions for reproducible builds

## L07-Q047

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which explanation best accounts for the behavior or constraint described?

- **A.** A compatible range can select newer published versions
- **B.** Source and package metadata were assigned independently
- **C.** A source repository is not a package feed

## L07-Q048

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The package records the same commit referenced by the tag
- **B.** The pipeline restores an approved package through the feed
- **C.** A clean restore uses the recorded versions consistently

## L07-Q049

Applied · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. Which execution safeguard most directly addresses the risk in this case?

- **A.** Scope feed access to consuming and publishing identities
- **B.** Update locks through reviewed dependency change workflows
- **C.** Verify provenance before promotion rather than trusting filenames

## L07-Q050

Advanced · [CP4](README.md#task-4) · [D2.2.4](../../docs/objective-map.md), [D3.1.4](../../docs/objective-map.md)

Tag artifact mismatch: Release v2.3 points to one commit while the uploaded package was built from a different branch head. The team selects this remedy: "Bind source tag build run and package identity in provenance." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reproducibility and automatic freshness need a controlled balance
- **B.** Provenance collection adds release metadata management
- **C.** Hosted feeds have storage and licensing considerations
