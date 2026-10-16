# Lab 05 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L05-Q001

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which next change most directly satisfies the stated requirement?

- **A. Use Git LFS for supported large binary assets** **Correct.** LFS separates large content from ordinary Git objects. This directly addresses the constraint stated in this case.
- **B. Install and configure the LFS client then fetch content** Pointers need LFS tooling to resolve actual objects. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **C. Grant the pipeline identity scoped access to the shared repository** Cross-repository consumption requires explicit authorization. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.

**Explanation:** LFS separates large content from ordinary Git objects. The selected answer is use Git LFS for supported large binary assets.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q002

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which explanation best accounts for the behavior or constraint described?

- **A. Source access does not imply access to another repository** Private resource boundaries are evaluated independently. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **B. Binary revisions inflate repository object history** **Correct.** Normal Git stores versions that clones must retrieve. This directly addresses the constraint stated in this case.
- **C. The checkout retrieved pointer metadata without LFS objects** The repository reference is not the binary payload. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.

**Explanation:** Normal Git stores versions that clones must retrieve. The selected answer is binary revisions inflate repository object history.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q003

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The expected binary content is present after LFS retrieval** Usable content verifies the complete asset checkout. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **B. The pipeline fetches the shared revision without a broad token** The result should prove both access and limited scope. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **C. A new asset commit stores an LFS pointer** **Correct.** The pointer demonstrates the configured content handling. This directly addresses the constraint stated in this case.

**Explanation:** The pointer demonstrates the configured content handling. The selected answer is a new asset commit stores an LFS pointer.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q004

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify LFS access separately from repository access** Object storage permissions can differ from Git permissions. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **B. Authorize the exact repository and review referenced content** Shared code becomes part of the execution trust chain. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **C. Confirm the remote supports LFS and account for quotas** **Correct.** Tracking patterns alone do not provide hosted storage. This directly addresses the constraint stated in this case.

**Explanation:** Tracking patterns alone do not provide hosted storage. The selected answer is confirm the remote supports LFS and account for quotas.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q005

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Binary growth: Artists commit large media files repeatedly, and ordinary clones download every historical binary revision. The team selects this remedy: "Use Git LFS for supported large binary assets." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared repository availability can affect multiple consumers** Version pins reduce drift but do not remove dependency risk. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **B. Existing history needs separate migration** **Correct.** Adding tracking does not remove previously committed blobs. This directly addresses the constraint stated in this case.
- **C. Offline work depends on locally available LFS objects** A pointer alone cannot reconstruct missing binary data. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.

**Explanation:** Adding tracking does not remove previously committed blobs. The selected answer is existing history needs separate migration.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q006

Foundational · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which next change most directly satisfies the stated requirement?

- **A. Evaluate sparse checkout and Scalar-supported repository maintenance** Large-repository tooling reduces unnecessary local work. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **B. Use Git LFS for supported large binary assets** LFS separates large content from ordinary Git objects. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. Install and configure the LFS client then fetch content** **Correct.** Pointers need LFS tooling to resolve actual objects. This directly addresses the constraint stated in this case.

**Explanation:** Pointers need LFS tooling to resolve actual objects. The selected answer is install and configure the LFS client then fetch content.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q007

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which explanation best accounts for the behavior or constraint described?

- **A. The working tree includes more content than the task needs** Checkout scope can dominate local resource consumption. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **B. Binary revisions inflate repository object history** Normal Git stores versions that clones must retrieve. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. The checkout retrieved pointer metadata without LFS objects** **Correct.** The repository reference is not the binary payload. This directly addresses the constraint stated in this case.

**Explanation:** The repository reference is not the binary payload. The selected answer is the checkout retrieved pointer metadata without LFS objects.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q008

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The required service is available with a smaller working tree** The measurement must include usability and local overhead. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **B. A new asset commit stores an LFS pointer** The pointer demonstrates the configured content handling. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. The expected binary content is present after LFS retrieval** **Correct.** Usable content verifies the complete asset checkout. This directly addresses the constraint stated in this case.

**Explanation:** Usable content verifies the complete asset checkout. The selected answer is the expected binary content is present after LFS retrieval.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q009

Applied · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. Which execution safeguard most directly addresses the risk in this case?

- **A. Confirm the remote supports LFS and account for quotas** Tracking patterns alone do not provide hosted storage. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **B. Verify LFS access separately from repository access** **Correct.** Object storage permissions can differ from Git permissions. This directly addresses the constraint stated in this case.
- **C. Test cross-service build dependencies before narrowing checkout** Sparse content can omit inputs required by tooling. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.

**Explanation:** Object storage permissions can differ from Git permissions. The selected answer is verify LFS access separately from repository access.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q010

Advanced · [CP2](README.md#task-2) · [D2.2.1](../../docs/objective-map.md)

Missing assets: A checkout contains small pointer files instead of usable artwork on a machine without the LFS client. The team selects this remedy: "Install and configure the LFS client then fetch content." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Existing history needs separate migration** Adding tracking does not remove previously committed blobs. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **B. Offline work depends on locally available LFS objects** **Correct.** A pointer alone cannot reconstruct missing binary data. This directly addresses the constraint stated in this case.
- **C. Optimization cannot remove genuine cross-repository dependencies** Some tasks still need broader source availability. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.

**Explanation:** A pointer alone cannot reconstruct missing binary data. The selected answer is offline work depends on locally available LFS objects.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q011

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which next change most directly satisfies the stated requirement?

- **A. Install and configure the LFS client then fetch content** Pointers need LFS tooling to resolve actual objects. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **B. Evaluate sparse checkout and Scalar-supported repository maintenance** **Correct.** Large-repository tooling reduces unnecessary local work. This directly addresses the constraint stated in this case.
- **C. Reference a governed shared component at a deliberate version** A maintained shared source reduces unmanaged copy divergence. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.

**Explanation:** Large-repository tooling reduces unnecessary local work. The selected answer is evaluate sparse checkout and Scalar-supported repository maintenance.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q012

Foundational · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which explanation best accounts for the behavior or constraint described?

- **A. The working tree includes more content than the task needs** **Correct.** Checkout scope can dominate local resource consumption. This directly addresses the constraint stated in this case.
- **B. Independent copies no longer share an update mechanism** Copying creates separate maintenance lifecycles. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **C. The checkout retrieved pointer metadata without LFS objects** The repository reference is not the binary payload. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.

**Explanation:** Checkout scope can dominate local resource consumption. The selected answer is the working tree includes more content than the task needs.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q013

Applied · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The required service is available with a smaller working tree** **Correct.** The measurement must include usability and local overhead. This directly addresses the constraint stated in this case.
- **B. Consumers report the intended shared component revision** Version evidence makes cross-repository adoption traceable. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **C. The expected binary content is present after LFS retrieval** Usable content verifies the complete asset checkout. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.

**Explanation:** The measurement must include usability and local overhead. The selected answer is the required service is available with a smaller working tree.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q014

Applied · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. Which execution safeguard most directly addresses the risk in this case?

- **A. Review shared changes before advancing consumer references** One central mistake can affect many dependent repositories. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **B. Verify LFS access separately from repository access** Object storage permissions can differ from Git permissions. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **C. Test cross-service build dependencies before narrowing checkout** **Correct.** Sparse content can omit inputs required by tooling. This directly addresses the constraint stated in this case.

**Explanation:** Sparse content can omit inputs required by tooling. The selected answer is test cross-service build dependencies before narrowing checkout.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q015

Advanced · [CP4](README.md#task-4) · [D2.2.2](../../docs/objective-map.md)

Huge working tree: Developers need one service from a monorepo, but checkout and maintenance overhead slow their laptops. The team selects this remedy: "Evaluate sparse checkout and Scalar-supported repository maintenance." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Offline work depends on locally available LFS objects** A pointer alone cannot reconstruct missing binary data. That addresses a different requirement: Missing assets. It does not directly resolve this case's stated constraint.
- **B. Optimization cannot remove genuine cross-repository dependencies** **Correct.** Some tasks still need broader source availability. This directly addresses the constraint stated in this case.
- **C. Central sharing creates a dependency and coordination point** Consumers need versioning and compatibility policies. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.

**Explanation:** Some tasks still need broader source availability. The selected answer is optimization cannot remove genuine cross-repository dependencies.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q016

Foundational · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which next change most directly satisfies the stated requirement?

- **A. Reference a governed shared component at a deliberate version** **Correct.** A maintained shared source reduces unmanaged copy divergence. This directly addresses the constraint stated in this case.
- **B. Assign the narrow repository role needed for documentation review** Deletion rights exceed the required collaboration task. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **C. Evaluate sparse checkout and Scalar-supported repository maintenance** Large-repository tooling reduces unnecessary local work. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.

**Explanation:** A maintained shared source reduces unmanaged copy divergence. The selected answer is reference a governed shared component at a deliberate version.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q017

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which explanation best accounts for the behavior or constraint described?

- **A. Independent copies no longer share an update mechanism** **Correct.** Copying creates separate maintenance lifecycles. This directly addresses the constraint stated in this case.
- **B. The principal inherited an overly broad role** Task intent does not automatically constrain permission grants. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **C. The working tree includes more content than the task needs** Checkout scope can dominate local resource consumption. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.

**Explanation:** Copying creates separate maintenance lifecycles. The selected answer is independent copies no longer share an update mechanism.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q018

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The required service is available with a smaller working tree** The measurement must include usability and local overhead. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **B. Consumers report the intended shared component revision** **Correct.** Version evidence makes cross-repository adoption traceable. This directly addresses the constraint stated in this case.
- **C. The contractor can review but cannot delete the repository** Positive and negative tests demonstrate the access boundary. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.

**Explanation:** Version evidence makes cross-repository adoption traceable. The selected answer is consumers report the intended shared component revision.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q019

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. Which execution safeguard most directly addresses the risk in this case?

- **A. Inspect inherited and explicit permissions before changing roles** Effective access can come through several group memberships. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **B. Test cross-service build dependencies before narrowing checkout** Sparse content can omit inputs required by tooling. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **C. Review shared changes before advancing consumer references** **Correct.** One central mistake can affect many dependent repositories. This directly addresses the constraint stated in this case.

**Explanation:** One central mistake can affect many dependent repositories. The selected answer is review shared changes before advancing consumer references.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q020

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md)

Shared template drift: Twenty repositories copy one build script and each copy now applies different security settings. The team selects this remedy: "Reference a governed shared component at a deliberate version." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Optimization cannot remove genuine cross-repository dependencies** Some tasks still need broader source availability. That addresses a different requirement: Huge working tree. It does not directly resolve this case's stated constraint.
- **B. Central sharing creates a dependency and coordination point** **Correct.** Consumers need versioning and compatibility policies. This directly addresses the constraint stated in this case.
- **C. Narrow roles can require explicit onboarding updates** New duties should trigger a deliberate permission review. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers need versioning and compatibility policies. The selected answer is central sharing creates a dependency and coordination point.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q021

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which next change most directly satisfies the stated requirement?

- **A. Assign the narrow repository role needed for documentation review** **Correct.** Deletion rights exceed the required collaboration task. This directly addresses the constraint stated in this case.
- **B. Inspect effective permissions and remove the unintended denial** Effective access includes overlapping grants and restrictions. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **C. Reference a governed shared component at a deliberate version** A maintained shared source reduces unmanaged copy divergence. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.

**Explanation:** Deletion rights exceed the required collaboration task. The selected answer is assign the narrow repository role needed for documentation review.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q022

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which explanation best accounts for the behavior or constraint described?

- **A. Independent copies no longer share an update mechanism** Copying creates separate maintenance lifecycles. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **B. The principal inherited an overly broad role** **Correct.** Task intent does not automatically constrain permission grants. This directly addresses the constraint stated in this case.
- **C. An explicit deny can override the expected allow** Group membership must be evaluated as a whole. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.

**Explanation:** Task intent does not automatically constrain permission grants. The selected answer is the principal inherited an overly broad role.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q023

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The permitted push succeeds without broad administrative elevation** The repair should address the actual permission conflict. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **B. Consumers report the intended shared component revision** Version evidence makes cross-repository adoption traceable. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **C. The contractor can review but cannot delete the repository** **Correct.** Positive and negative tests demonstrate the access boundary. This directly addresses the constraint stated in this case.

**Explanation:** Positive and negative tests demonstrate the access boundary. The selected answer is the contractor can review but cannot delete the repository.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q024

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. Which execution safeguard most directly addresses the risk in this case?

- **A. Inspect inherited and explicit permissions before changing roles** **Correct.** Effective access can come through several group memberships. This directly addresses the constraint stated in this case.
- **B. Check the scope of each deny before removing it** A restriction may intentionally protect another resource. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **C. Review shared changes before advancing consumer references** One central mistake can affect many dependent repositories. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.

**Explanation:** Effective access can come through several group memberships. The selected answer is inspect inherited and explicit permissions before changing roles.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q025

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Excess repository rights: A contractor who only reviews documentation can delete the entire training repository. The team selects this remedy: "Assign the narrow repository role needed for documentation review." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Central sharing creates a dependency and coordination point** Consumers need versioning and compatibility policies. That addresses a different requirement: Shared template drift. It does not directly resolve this case's stated constraint.
- **B. Narrow roles can require explicit onboarding updates** **Correct.** New duties should trigger a deliberate permission review. This directly addresses the constraint stated in this case.
- **C. Complex group inheritance makes access harder to reason about** Simpler role boundaries reduce surprising combinations. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.

**Explanation:** New duties should trigger a deliberate permission review. The selected answer is narrow roles can require explicit onboarding updates.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q026

Foundational · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which next change most directly satisfies the stated requirement?

- **A. Inspect effective permissions and remove the unintended denial** **Correct.** Effective access includes overlapping grants and restrictions. This directly addresses the constraint stated in this case.
- **B. Use distinct release tags and protect established release references** A release identifier should resolve consistently over time. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **C. Assign the narrow repository role needed for documentation review** Deletion rights exceed the required collaboration task. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.

**Explanation:** Effective access includes overlapping grants and restrictions. The selected answer is inspect effective permissions and remove the unintended denial.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q027

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which explanation best accounts for the behavior or constraint described?

- **A. The principal inherited an overly broad role** Task intent does not automatically constrain permission grants. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **B. An explicit deny can override the expected allow** **Correct.** Group membership must be evaluated as a whole. This directly addresses the constraint stated in this case.
- **C. A mutable tag was being treated as immutable provenance** The same label now identifies different source states. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.

**Explanation:** Group membership must be evaluated as a whole. The selected answer is an explicit deny can override the expected allow.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q028

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The contractor can review but cannot delete the repository** Positive and negative tests demonstrate the access boundary. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **B. The permitted push succeeds without broad administrative elevation** **Correct.** The repair should address the actual permission conflict. This directly addresses the constraint stated in this case.
- **C. The release tag resolves to the documented commit** Provenance depends on stable reference resolution. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.

**Explanation:** The repair should address the actual permission conflict. The selected answer is the permitted push succeeds without broad administrative elevation.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q029

Applied · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. Which execution safeguard most directly addresses the risk in this case?

- **A. Check the scope of each deny before removing it** **Correct.** A restriction may intentionally protect another resource. This directly addresses the constraint stated in this case.
- **B. Restrict deletion and movement of release tags where supported** Accidental rewrites can invalidate published release evidence. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **C. Inspect inherited and explicit permissions before changing roles** Effective access can come through several group memberships. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.

**Explanation:** A restriction may intentionally protect another resource. The selected answer is check the scope of each deny before removing it.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q030

Advanced · [CP1](README.md#task-1) · [D2.2.3](../../docs/objective-map.md)

Unexpected denial: A contributor belongs to an allowed group but still cannot push because another group explicitly denies the permission. The team selects this remedy: "Inspect effective permissions and remove the unintended denial." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Tag protection adds controlled maintenance steps** Correcting a mistaken release reference requires deliberate handling. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **B. Narrow roles can require explicit onboarding updates** New duties should trigger a deliberate permission review. That addresses a different requirement: Excess repository rights. It does not directly resolve this case's stated constraint.
- **C. Complex group inheritance makes access harder to reason about** **Correct.** Simpler role boundaries reduce surprising combinations. This directly addresses the constraint stated in this case.

**Explanation:** Simpler role boundaries reduce surprising combinations. The selected answer is complex group inheritance makes access harder to reason about.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q031

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which next change most directly satisfies the stated requirement?

- **A. Use distinct release tags and protect established release references** **Correct.** A release identifier should resolve consistently over time. This directly addresses the constraint stated in this case.
- **B. Use signed tags when cryptographic identity verification is required** Annotation and signature serve different provenance purposes. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **C. Inspect effective permissions and remove the unintended denial** Effective access includes overlapping grants and restrictions. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.

**Explanation:** A release identifier should resolve consistently over time. The selected answer is use distinct release tags and protect established release references.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q032

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which explanation best accounts for the behavior or constraint described?

- **A. Tag metadata is not automatically a verified signature** A message and author field are not cryptographic proof. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **B. An explicit deny can override the expected allow** Group membership must be evaluated as a whole. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **C. A mutable tag was being treated as immutable provenance** **Correct.** The same label now identifies different source states. This directly addresses the constraint stated in this case.

**Explanation:** The same label now identifies different source states. The selected answer is a mutable tag was being treated as immutable provenance.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q033

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Signature verification succeeds with the expected trusted key** The verifier must validate both signature and trust. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **B. The permitted push succeeds without broad administrative elevation** The repair should address the actual permission conflict. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **C. The release tag resolves to the documented commit** **Correct.** Provenance depends on stable reference resolution. This directly addresses the constraint stated in this case.

**Explanation:** Provenance depends on stable reference resolution. The selected answer is the release tag resolves to the documented commit.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q034

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. Which execution safeguard most directly addresses the risk in this case?

- **A. Check the scope of each deny before removing it** A restriction may intentionally protect another resource. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **B. Restrict deletion and movement of release tags where supported** **Correct.** Accidental rewrites can invalidate published release evidence. This directly addresses the constraint stated in this case.
- **C. Protect signing material and document key ownership** A compromised key can attest malicious release references. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.

**Explanation:** Accidental rewrites can invalidate published release evidence. The selected answer is restrict deletion and movement of release tags where supported.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q035

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Ambiguous release tag: A team reuses the tag v1.0 for a different commit, and consumers cannot identify the original release. The team selects this remedy: "Use distinct release tags and protect established release references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Signing adds key lifecycle and trust management** Consumers still need a policy for trusted signers. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **B. Complex group inheritance makes access harder to reason about** Simpler role boundaries reduce surprising combinations. That addresses a different requirement: Unexpected denial. It does not directly resolve this case's stated constraint.
- **C. Tag protection adds controlled maintenance steps** **Correct.** Correcting a mistaken release reference requires deliberate handling. This directly addresses the constraint stated in this case.

**Explanation:** Correcting a mistaken release reference requires deliberate handling. The selected answer is tag protection adds controlled maintenance steps.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q036

Foundational · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which next change most directly satisfies the stated requirement?

- **A. Use signed tags when cryptographic identity verification is required** **Correct.** Annotation and signature serve different provenance purposes. This directly addresses the constraint stated in this case.
- **B. Compare tool support and select a maintained compatible solution** Exam coverage does not mandate using every named technology. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.
- **C. Use distinct release tags and protect established release references** A release identifier should resolve consistently over time. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.

**Explanation:** Annotation and signature serve different provenance purposes. The selected answer is use signed tags when cryptographic identity verification is required.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q037

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which explanation best accounts for the behavior or constraint described?

- **A. A named technique was mistaken for a required implementation** Product compatibility and support remain design constraints. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.
- **B. A mutable tag was being treated as immutable provenance** The same label now identifies different source states. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **C. Tag metadata is not automatically a verified signature** **Correct.** A message and author field are not cryptographic proof. This directly addresses the constraint stated in this case.

**Explanation:** A message and author field are not cryptographic proof. The selected answer is tag metadata is not automatically a verified signature.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q038

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release tag resolves to the documented commit** Provenance depends on stable reference resolution. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **B. Signature verification succeeds with the expected trusted key** **Correct.** The verifier must validate both signature and trust. This directly addresses the constraint stated in this case.
- **C. The selected workflow works with the actual host and clients** Compatibility must be demonstrated in the target environment. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** The verifier must validate both signature and trust. The selected answer is signature verification succeeds with the expected trusted key.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q039

Applied · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. Which execution safeguard most directly addresses the risk in this case?

- **A. Restrict deletion and movement of release tags where supported** Accidental rewrites can invalidate published release evidence. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **B. Protect signing material and document key ownership** **Correct.** A compromised key can attest malicious release references. This directly addresses the constraint stated in this case.
- **C. Keep a rollback and backup plan for history migration** Large-file conversion can rewrite shared commit history. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** A compromised key can attest malicious release references. The selected answer is protect signing material and document key ownership.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q040

Advanced · [CP3](README.md#task-3) · [D2.2.4](../../docs/objective-map.md)

Unsigned provenance claim: A team assumes an annotated tag proves the publisher identity although the tag has no cryptographic signature. The team selects this remedy: "Use signed tags when cryptographic identity verification is required." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Tag protection adds controlled maintenance steps** Correcting a mistaken release reference requires deliberate handling. That addresses a different requirement: Ambiguous release tag. It does not directly resolve this case's stated constraint.
- **B. Signing adds key lifecycle and trust management** **Correct.** Consumers still need a policy for trusted signers. This directly addresses the constraint stated in this case.
- **C. Migration affects collaborators and existing clones** They may need coordinated cleanup or fresh checkouts. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers still need a policy for trusted signers. The selected answer is signing adds key lifecycle and trust management.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q041

Foundational · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which next change most directly satisfies the stated requirement?

- **A. Use signed tags when cryptographic identity verification is required** Annotation and signature serve different provenance purposes. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **B. Compare tool support and select a maintained compatible solution** **Correct.** Exam coverage does not mandate using every named technology. This directly addresses the constraint stated in this case.
- **C. Grant the pipeline identity scoped access to the shared repository** Cross-repository consumption requires explicit authorization. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.

**Explanation:** Exam coverage does not mandate using every named technology. The selected answer is compare tool support and select a maintained compatible solution.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q042

Foundational · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which explanation best accounts for the behavior or constraint described?

- **A. Source access does not imply access to another repository** Private resource boundaries are evaluated independently. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **B. Tag metadata is not automatically a verified signature** A message and author field are not cryptographic proof. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **C. A named technique was mistaken for a required implementation** **Correct.** Product compatibility and support remain design constraints. This directly addresses the constraint stated in this case.

**Explanation:** Product compatibility and support remain design constraints. The selected answer is a named technique was mistaken for a required implementation.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q043

Applied · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Signature verification succeeds with the expected trusted key** The verifier must validate both signature and trust. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **B. The selected workflow works with the actual host and clients** **Correct.** Compatibility must be demonstrated in the target environment. This directly addresses the constraint stated in this case.
- **C. The pipeline fetches the shared revision without a broad token** The result should prove both access and limited scope. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.

**Explanation:** Compatibility must be demonstrated in the target environment. The selected answer is the selected workflow works with the actual host and clients.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q044

Applied · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize the exact repository and review referenced content** Shared code becomes part of the execution trust chain. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **B. Protect signing material and document key ownership** A compromised key can attest malicious release references. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.
- **C. Keep a rollback and backup plan for history migration** **Correct.** Large-file conversion can rewrite shared commit history. This directly addresses the constraint stated in this case.

**Explanation:** Large-file conversion can rewrite shared commit history. The selected answer is keep a rollback and backup plan for history migration.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q045

Advanced · [CP5](README.md#task-5) · [D2.2.1](../../docs/objective-map.md)

Legacy large-file tool: A project proposes git-fat because it appears in exam material, but the hosting workflow already supports LFS. The team selects this remedy: "Compare tool support and select a maintained compatible solution." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Migration affects collaborators and existing clones** **Correct.** They may need coordinated cleanup or fresh checkouts. This directly addresses the constraint stated in this case.
- **B. Shared repository availability can affect multiple consumers** Version pins reduce drift but do not remove dependency risk. That addresses a different requirement: Cross-repository sharing. It does not directly resolve this case's stated constraint.
- **C. Signing adds key lifecycle and trust management** Consumers still need a policy for trusted signers. That addresses a different requirement: Unsigned provenance claim. It does not directly resolve this case's stated constraint.

**Explanation:** They may need coordinated cleanup or fresh checkouts. The selected answer is migration affects collaborators and existing clones.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q046

Foundational · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which next change most directly satisfies the stated requirement?

- **A. Grant the pipeline identity scoped access to the shared repository** **Correct.** Cross-repository consumption requires explicit authorization. This directly addresses the constraint stated in this case.
- **B. Use Git LFS for supported large binary assets** LFS separates large content from ordinary Git objects. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. Compare tool support and select a maintained compatible solution** Exam coverage does not mandate using every named technology. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** Cross-repository consumption requires explicit authorization. The selected answer is grant the pipeline identity scoped access to the shared repository.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q047

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which explanation best accounts for the behavior or constraint described?

- **A. Source access does not imply access to another repository** **Correct.** Private resource boundaries are evaluated independently. This directly addresses the constraint stated in this case.
- **B. Binary revisions inflate repository object history** Normal Git stores versions that clones must retrieve. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. A named technique was mistaken for a required implementation** Product compatibility and support remain design constraints. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** Private resource boundaries are evaluated independently. The selected answer is source access does not imply access to another repository.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q048

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A new asset commit stores an LFS pointer** The pointer demonstrates the configured content handling. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **B. The selected workflow works with the actual host and clients** Compatibility must be demonstrated in the target environment. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.
- **C. The pipeline fetches the shared revision without a broad token** **Correct.** The result should prove both access and limited scope. This directly addresses the constraint stated in this case.

**Explanation:** The result should prove both access and limited scope. The selected answer is the pipeline fetches the shared revision without a broad token.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q049

Applied · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize the exact repository and review referenced content** **Correct.** Shared code becomes part of the execution trust chain. This directly addresses the constraint stated in this case.
- **B. Confirm the remote supports LFS and account for quotas** Tracking patterns alone do not provide hosted storage. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. Keep a rollback and backup plan for history migration** Large-file conversion can rewrite shared commit history. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** Shared code becomes part of the execution trust chain. The selected answer is authorize the exact repository and review referenced content.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)

## L05-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.2](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

Cross-repository sharing: A pipeline can read its own source but cannot fetch a shared template from a second private repository. The team selects this remedy: "Grant the pipeline identity scoped access to the shared repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared repository availability can affect multiple consumers** **Correct.** Version pins reduce drift but do not remove dependency risk. This directly addresses the constraint stated in this case.
- **B. Existing history needs separate migration** Adding tracking does not remove previously committed blobs. That addresses a different requirement: Binary growth. It does not directly resolve this case's stated constraint.
- **C. Migration affects collaborators and existing clones** They may need coordinated cleanup or fresh checkouts. That addresses a different requirement: Legacy large-file tool. It does not directly resolve this case's stated constraint.

**Explanation:** Version pins reduce drift but do not remove dependency risk. The selected answer is shared repository availability can affect multiple consumers.

**Sources:** [S1](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage); [S2](https://git-scm.com/docs/scalar); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)
