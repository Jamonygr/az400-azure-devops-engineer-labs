# Lab 05 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L05-Q001

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which next change most directly satisfies the stated requirement?

- **A.** Use Git LFS for supported large binary assets
- **B.** Install and configure the LFS client then fetch content
- **C.** Grant the pipeline identity scoped access to the shared repository

## L05-Q002

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which explanation best accounts for the behavior or constraint described?

- **A.** Source access does not imply access to another repository
- **B.** Binary revisions inflate repository object history
- **C.** The checkout retrieved pointer metadata without LFS objects

## L05-Q003

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The expected binary content is present after LFS retrieval
- **B.** The pipeline fetches the shared revision without a broad token
- **C.** A new asset commit stores an LFS pointer

## L05-Q004

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify LFS access separately from repository access
- **B.** Authorize the exact repository and review referenced content
- **C.** Confirm the remote supports LFS and account for quotas

## L05-Q005

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. The team selects this remedy: "Use Git LFS for supported large binary assets." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared repository availability can affect multiple consumers
- **B.** Existing history needs separate migration
- **C.** Offline work depends on locally available LFS objects

## L05-Q006

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which next change most directly satisfies the stated requirement?

- **A.** Evaluate sparse checkout and Scalar-supported repository maintenance
- **B.** Use Git LFS for supported large binary assets
- **C.** Install and configure the LFS client then fetch content

## L05-Q007

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which explanation best accounts for the behavior or constraint described?

- **A.** The working tree includes more content than the task needs
- **B.** Binary revisions inflate repository object history
- **C.** The checkout retrieved pointer metadata without LFS objects

## L05-Q008

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The required service is available with a smaller working tree
- **B.** A new asset commit stores an LFS pointer
- **C.** The expected binary content is present after LFS retrieval

## L05-Q009

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which execution safeguard most directly addresses the risk in this case?

- **A.** Confirm the remote supports LFS and account for quotas
- **B.** Verify LFS access separately from repository access
- **C.** Test cross-service build dependencies before narrowing checkout

## L05-Q010

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. The team selects this remedy: "Install and configure the LFS client then fetch content." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Existing history needs separate migration
- **B.** Offline work depends on locally available LFS objects
- **C.** Optimization cannot remove genuine cross-repository dependencies

## L05-Q011

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which next change most directly satisfies the stated requirement?

- **A.** Install and configure the LFS client then fetch content
- **B.** Evaluate sparse checkout and Scalar-supported repository maintenance
- **C.** Reference a governed shared component at a deliberate version

## L05-Q012

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which explanation best accounts for the behavior or constraint described?

- **A.** The working tree includes more content than the task needs
- **B.** Independent copies no longer share an update mechanism
- **C.** The checkout retrieved pointer metadata without LFS objects

## L05-Q013

Applied · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The required service is available with a smaller working tree
- **B.** Consumers report the intended shared component revision
- **C.** The expected binary content is present after LFS retrieval

## L05-Q014

Applied · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review shared changes before advancing consumer references
- **B.** Verify LFS access separately from repository access
- **C.** Test cross-service build dependencies before narrowing checkout

## L05-Q015

Advanced · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. The team selects this remedy: "Evaluate sparse checkout and Scalar-supported repository maintenance." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Offline work depends on locally available LFS objects
- **B.** Optimization cannot remove genuine cross-repository dependencies
- **C.** Central sharing creates a dependency and coordination point

## L05-Q016

Foundational · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which next change most directly satisfies the stated requirement?

- **A.** Reference a governed shared component at a deliberate version
- **B.** Assign the narrow repository role needed for documentation review
- **C.** Evaluate sparse checkout and Scalar-supported repository maintenance

## L05-Q017

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which explanation best accounts for the behavior or constraint described?

- **A.** Independent copies no longer share an update mechanism
- **B.** The principal inherited an overly broad role
- **C.** The working tree includes more content than the task needs

## L05-Q018

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The required service is available with a smaller working tree
- **B.** Consumers report the intended shared component revision
- **C.** The contractor can review but cannot delete the repository

## L05-Q019

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inspect inherited and explicit permissions before changing roles
- **B.** Test cross-service build dependencies before narrowing checkout
- **C.** Review shared changes before advancing consumer references

## L05-Q020

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. The team selects this remedy: "Reference a governed shared component at a deliberate version." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Optimization cannot remove genuine cross-repository dependencies
- **B.** Central sharing creates a dependency and coordination point
- **C.** Narrow roles can require explicit onboarding updates

## L05-Q021

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which next change most directly satisfies the stated requirement?

- **A.** Assign the narrow repository role needed for documentation review
- **B.** Inspect effective permissions and remove the unintended denial
- **C.** Reference a governed shared component at a deliberate version

## L05-Q022

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which explanation best accounts for the behavior or constraint described?

- **A.** Independent copies no longer share an update mechanism
- **B.** The principal inherited an overly broad role
- **C.** An explicit deny can override the expected allow

## L05-Q023

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The permitted push succeeds without broad administrative elevation
- **B.** Consumers report the intended shared component revision
- **C.** The contractor can review but cannot delete the repository

## L05-Q024

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inspect inherited and explicit permissions before changing roles
- **B.** Check the scope of each deny before removing it
- **C.** Review shared changes before advancing consumer references

## L05-Q025

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. The team selects this remedy: "Assign the narrow repository role needed for documentation review." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Central sharing creates a dependency and coordination point
- **B.** Narrow roles can require explicit onboarding updates
- **C.** Complex group inheritance makes access harder to reason about

## L05-Q026

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which next change most directly satisfies the stated requirement?

- **A.** Inspect effective permissions and remove the unintended denial
- **B.** Use distinct release tags and protect established release references
- **C.** Assign the narrow repository role needed for documentation review

## L05-Q027

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which explanation best accounts for the behavior or constraint described?

- **A.** The principal inherited an overly broad role
- **B.** An explicit deny can override the expected allow
- **C.** A mutable tag was being treated as immutable provenance

## L05-Q028

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The contractor can review but cannot delete the repository
- **B.** The permitted push succeeds without broad administrative elevation
- **C.** The release tag resolves to the documented commit

## L05-Q029

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check the scope of each deny before removing it
- **B.** Restrict deletion and movement of release tags where supported
- **C.** Inspect inherited and explicit permissions before changing roles

## L05-Q030

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. The team selects this remedy: "Inspect effective permissions and remove the unintended denial." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Tag protection adds controlled maintenance steps
- **B.** Narrow roles can require explicit onboarding updates
- **C.** Complex group inheritance makes access harder to reason about

## L05-Q031

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which next change most directly satisfies the stated requirement?

- **A.** Use distinct release tags and protect established release references
- **B.** Use signed tags when cryptographic identity verification is required
- **C.** Inspect effective permissions and remove the unintended denial

## L05-Q032

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which explanation best accounts for the behavior or constraint described?

- **A.** Tag metadata is not automatically a verified signature
- **B.** An explicit deny can override the expected allow
- **C.** A mutable tag was being treated as immutable provenance

## L05-Q033

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Signature verification succeeds with the expected trusted key
- **B.** The permitted push succeeds without broad administrative elevation
- **C.** The release tag resolves to the documented commit

## L05-Q034

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check the scope of each deny before removing it
- **B.** Restrict deletion and movement of release tags where supported
- **C.** Protect signing material and document key ownership

## L05-Q035

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. The team selects this remedy: "Use distinct release tags and protect established release references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Signing adds key lifecycle and trust management
- **B.** Complex group inheritance makes access harder to reason about
- **C.** Tag protection adds controlled maintenance steps

## L05-Q036

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which next change most directly satisfies the stated requirement?

- **A.** Use signed tags when cryptographic identity verification is required
- **B.** Compare tool support and select a maintained compatible solution
- **C.** Use distinct release tags and protect established release references

## L05-Q037

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which explanation best accounts for the behavior or constraint described?

- **A.** A named technique was mistaken for a required implementation
- **B.** A mutable tag was being treated as immutable provenance
- **C.** Tag metadata is not automatically a verified signature

## L05-Q038

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release tag resolves to the documented commit
- **B.** Signature verification succeeds with the expected trusted key
- **C.** The selected workflow works with the actual host and clients

## L05-Q039

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which execution safeguard most directly addresses the risk in this case?

- **A.** Restrict deletion and movement of release tags where supported
- **B.** Protect signing material and document key ownership
- **C.** Keep a rollback and backup plan for history migration

## L05-Q040

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. The team selects this remedy: "Use signed tags when cryptographic identity verification is required." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Tag protection adds controlled maintenance steps
- **B.** Signing adds key lifecycle and trust management
- **C.** Migration affects collaborators and existing clones

## L05-Q041

Foundational · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which next change most directly satisfies the stated requirement?

- **A.** Use signed tags when cryptographic identity verification is required
- **B.** Compare tool support and select a maintained compatible solution
- **C.** Grant the pipeline identity scoped access to the shared repository

## L05-Q042

Foundational · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which explanation best accounts for the behavior or constraint described?

- **A.** Source access does not imply access to another repository
- **B.** Tag metadata is not automatically a verified signature
- **C.** A named technique was mistaken for a required implementation

## L05-Q043

Applied · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Signature verification succeeds with the expected trusted key
- **B.** The selected workflow works with the actual host and clients
- **C.** The pipeline fetches the shared revision without a broad token

## L05-Q044

Applied · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize the exact repository and review referenced content
- **B.** Protect signing material and document key ownership
- **C.** Keep a rollback and backup plan for history migration

## L05-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. The team selects this remedy: "Compare tool support and select a maintained compatible solution." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Migration affects collaborators and existing clones
- **B.** Shared repository availability can affect multiple consumers
- **C.** Signing adds key lifecycle and trust management

## L05-Q046

Foundational · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which next change most directly satisfies the stated requirement?

- **A.** Grant the pipeline identity scoped access to the shared repository
- **B.** Use Git LFS for supported large binary assets
- **C.** Compare tool support and select a maintained compatible solution

## L05-Q047

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which explanation best accounts for the behavior or constraint described?

- **A.** Source access does not imply access to another repository
- **B.** Binary revisions inflate repository object history
- **C.** A named technique was mistaken for a required implementation

## L05-Q048

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A new asset commit stores an LFS pointer
- **B.** The selected workflow works with the actual host and clients
- **C.** The pipeline fetches the shared revision without a broad token

## L05-Q049

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize the exact repository and review referenced content
- **B.** Confirm the remote supports LFS and account for quotas
- **C.** Keep a rollback and backup plan for history migration

## L05-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. The team selects this remedy: "Grant the pipeline identity scoped access to the shared repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared repository availability can affect multiple consumers
- **B.** Existing history needs separate migration
- **C.** Migration affects collaborators and existing clones
