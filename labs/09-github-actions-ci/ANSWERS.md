# Lab 09 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L09-Q001

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which next change most directly satisfies the stated requirement?

- **A. Add checkout before the build steps** The runner needs repository files before compiling source. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **B. Pin third-party actions to reviewed full commit references** Immutable references reduce unnoticed executable dependency changes. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.
- **C. Add event and path filters matching the intended CI scope** **Correct.** Trigger rules should reflect the changes requiring validation. This directly addresses the constraint stated in this case.

**Explanation:** Trigger rules should reflect the changes requiring validation. The selected answer is add event and path filters matching the intended CI scope.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which explanation best accounts for the behavior or constraint described?

- **A. The workflow trigger is broader than the intended workload** **Correct.** Every pull request is currently eligible for execution. This directly addresses the constraint stated in this case.
- **B. A fresh hosted runner does not contain the repository automatically** Workflow scheduling is distinct from source retrieval. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **C. A moving tag can resolve to different action code** The workflow text can stay unchanged while execution changes. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** Every pull request is currently eligible for execution. The selected answer is the workflow trigger is broader than the intended workload.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q003

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The action reference resolves to the approved commit** The dependency identity should be explicit and verifiable. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.
- **B. Application changes trigger CI while unrelated documentation follows its intended path** **Correct.** Both positive and negative cases verify filter behavior. This directly addresses the constraint stated in this case.
- **C. The build step can read the expected project at the selected commit** Checkout should bind execution to the triggering revision. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.

**Explanation:** Both positive and negative cases verify filter behavior. The selected answer is application changes trigger CI while unrelated documentation follows its intended path.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q004

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which execution safeguard most directly addresses the risk in this case?

- **A. Ensure required branch checks are compatible with filtering** **Correct.** A skipped required workflow can leave merges waiting. This directly addresses the constraint stated in this case.
- **B. Use a trusted checkout action version and limited credentials** Source retrieval is part of the workflow trust boundary. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **C. Use a reviewed process to advance pinned action versions** A permanent pin can retain old vulnerabilities. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** A skipped required workflow can leave merges waiting. The selected answer is ensure required branch checks are compatible with filtering.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q005

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. The team selects this remedy: "Add event and path filters matching the intended CI scope." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Narrow filters can miss indirect dependencies** **Correct.** Review scope when shared build inputs change. This directly addresses the constraint stated in this case.
- **B. Shallow checkout may omit history needed by later tasks** Request additional history only when required. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **C. Commit pinning creates update maintenance** It improves change control rather than removing supply-chain risk. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** Review scope when shared build inputs change. The selected answer is narrow filters can miss indirect dependencies.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which next change most directly satisfies the stated requirement?

- **A. Add checkout before the build steps** **Correct.** The runner needs repository files before compiling source. This directly addresses the constraint stated in this case.
- **B. Declare read-only permissions for the build workflow** Compilation ordinarily does not need repository mutation rights. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. Add event and path filters matching the intended CI scope** Trigger rules should reflect the changes requiring validation. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.

**Explanation:** The runner needs repository files before compiling source. The selected answer is add checkout before the build steps.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q007

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which explanation best accounts for the behavior or constraint described?

- **A. A fresh hosted runner does not contain the repository automatically** **Correct.** Workflow scheduling is distinct from source retrieval. This directly addresses the constraint stated in this case.
- **B. The token inherited permissions beyond the task requirements** Default authorization may be broader than the workflow needs. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. The workflow trigger is broader than the intended workload** Every pull request is currently eligible for execution. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.

**Explanation:** Workflow scheduling is distinct from source retrieval. The selected answer is a fresh hosted runner does not contain the repository automatically.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q008

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Application changes trigger CI while unrelated documentation follows its intended path** Both positive and negative cases verify filter behavior. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.
- **B. The build step can read the expected project at the selected commit** **Correct.** Checkout should bind execution to the triggering revision. This directly addresses the constraint stated in this case.
- **C. The workflow builds successfully while write operations are denied** Least privilege requires both useful access and rejected excess. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.

**Explanation:** Checkout should bind execution to the triggering revision. The selected answer is the build step can read the expected project at the selected commit.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q009

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a trusted checkout action version and limited credentials** **Correct.** Source retrieval is part of the workflow trust boundary. This directly addresses the constraint stated in this case.
- **B. Separate publishing permissions into a trusted publishing job** Untrusted build paths should not inherit release credentials. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. Ensure required branch checks are compatible with filtering** A skipped required workflow can leave merges waiting. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.

**Explanation:** Source retrieval is part of the workflow trust boundary. The selected answer is use a trusted checkout action version and limited credentials.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q010

Advanced · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. The team selects this remedy: "Add checkout before the build steps." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shallow checkout may omit history needed by later tasks** **Correct.** Request additional history only when required. This directly addresses the constraint stated in this case.
- **B. Permission tightening may expose implicit workflow dependencies** Those dependencies need explicit review rather than blanket grants. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. Narrow filters can miss indirect dependencies** Review scope when shared build inputs change. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.

**Explanation:** Request additional history only when required. The selected answer is shallow checkout may omit history needed by later tasks.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which next change most directly satisfies the stated requirement?

- **A. Add checkout before the build steps** The runner needs repository files before compiling source. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **B. Declare read-only permissions for the build workflow** **Correct.** Compilation ordinarily does not need repository mutation rights. This directly addresses the constraint stated in this case.
- **C. Install the supported SDK explicitly in the workflow** The runtime should be an intentional build input. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.

**Explanation:** Compilation ordinarily does not need repository mutation rights. The selected answer is declare read-only permissions for the build workflow.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which explanation best accounts for the behavior or constraint described?

- **A. The workflow depended on an uncontrolled image default** Hosted environments change over time. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **B. A fresh hosted runner does not contain the repository automatically** Workflow scheduling is distinct from source retrieval. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **C. The token inherited permissions beyond the task requirements** **Correct.** Default authorization may be broader than the workflow needs. This directly addresses the constraint stated in this case.

**Explanation:** Default authorization may be broader than the workflow needs. The selected answer is the token inherited permissions beyond the task requirements.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q013

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The workflow builds successfully while write operations are denied** **Correct.** Least privilege requires both useful access and rejected excess. This directly addresses the constraint stated in this case.
- **B. A clean run reports the required SDK and builds successfully** Version evidence demonstrates environmental reproducibility. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **C. The build step can read the expected project at the selected commit** Checkout should bind execution to the triggering revision. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.

**Explanation:** Least privilege requires both useful access and rejected excess. The selected answer is the workflow builds successfully while write operations are denied.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q014

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate publishing permissions into a trusted publishing job** **Correct.** Untrusted build paths should not inherit release credentials. This directly addresses the constraint stated in this case.
- **B. Update pinned toolchains through reviewed maintenance** Explicit versions still need security and support updates. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **C. Use a trusted checkout action version and limited credentials** Source retrieval is part of the workflow trust boundary. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.

**Explanation:** Untrusted build paths should not inherit release credentials. The selected answer is separate publishing permissions into a trusted publishing job.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. The team selects this remedy: "Declare read-only permissions for the build workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Toolchain installation adds startup time** Caching may reduce overhead but must preserve correctness. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **B. Shallow checkout may omit history needed by later tasks** Request additional history only when required. That addresses a different requirement: Wrong working tree. It does not directly resolve this case's stated constraint.
- **C. Permission tightening may expose implicit workflow dependencies** **Correct.** Those dependencies need explicit review rather than blanket grants. This directly addresses the constraint stated in this case.

**Explanation:** Those dependencies need explicit review rather than blanket grants. The selected answer is permission tightening may expose implicit workflow dependencies.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q016

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which next change most directly satisfies the stated requirement?

- **A. Install the supported SDK explicitly in the workflow** **Correct.** The runtime should be an intentional build input. This directly addresses the constraint stated in this case.
- **B. Keep untrusted pull-request execution separate from privileged deployment** Contributor code must not run with deployment credentials. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. Declare read-only permissions for the build workflow** Compilation ordinarily does not need repository mutation rights. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.

**Explanation:** The runtime should be an intentional build input. The selected answer is install the supported SDK explicitly in the workflow.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q017

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which explanation best accounts for the behavior or constraint described?

- **A. The proposed design crosses an untrusted-code boundary** Forked code can execute arbitrary build instructions. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **B. The token inherited permissions beyond the task requirements** Default authorization may be broader than the workflow needs. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. The workflow depended on an uncontrolled image default** **Correct.** Hosted environments change over time. This directly addresses the constraint stated in this case.

**Explanation:** Hosted environments change over time. The selected answer is the workflow depended on an uncontrolled image default.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q018

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Forked tests run without access to deployment credentials** The safety property must hold for malicious test code. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **B. The workflow builds successfully while write operations are denied** Least privilege requires both useful access and rejected excess. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.
- **C. A clean run reports the required SDK and builds successfully** **Correct.** Version evidence demonstrates environmental reproducibility. This directly addresses the constraint stated in this case.

**Explanation:** Version evidence demonstrates environmental reproducibility. The selected answer is a clean run reports the required SDK and builds successfully.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q019

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Update pinned toolchains through reviewed maintenance** **Correct.** Explicit versions still need security and support updates. This directly addresses the constraint stated in this case.
- **B. Avoid checking out untrusted code in a privileged event context** Event selection alone does not make code trustworthy. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. Separate publishing permissions into a trusted publishing job** Untrusted build paths should not inherit release credentials. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.

**Explanation:** Explicit versions still need security and support updates. The selected answer is update pinned toolchains through reviewed maintenance.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q020

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. The team selects this remedy: "Install the supported SDK explicitly in the workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Toolchain installation adds startup time** **Correct.** Caching may reduce overhead but must preserve correctness. This directly addresses the constraint stated in this case.
- **B. Privileged follow-up workflows require careful provenance validation** A successful untrusted build is not automatically trusted input. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. Permission tightening may expose implicit workflow dependencies** Those dependencies need explicit review rather than blanket grants. That addresses a different requirement: Overprivileged CI. It does not directly resolve this case's stated constraint.

**Explanation:** Caching may reduce overhead but must preserve correctness. The selected answer is toolchain installation adds startup time.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q021

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which next change most directly satisfies the stated requirement?

- **A. Upload sanitized test reports under an appropriate failure-aware condition** Diagnostic evidence should survive failed test execution. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **B. Install the supported SDK explicitly in the workflow** The runtime should be an intentional build input. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **C. Keep untrusted pull-request execution separate from privileged deployment** **Correct.** Contributor code must not run with deployment credentials. This directly addresses the constraint stated in this case.

**Explanation:** Contributor code must not run with deployment credentials. The selected answer is keep untrusted pull-request execution separate from privileged deployment.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q022

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which explanation best accounts for the behavior or constraint described?

- **A. The proposed design crosses an untrusted-code boundary** **Correct.** Forked code can execute arbitrary build instructions. This directly addresses the constraint stated in this case.
- **B. Success-only execution skipped the report upload** A failed test stops normal dependent steps. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **C. The workflow depended on an uncontrolled image default** Hosted environments change over time. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.

**Explanation:** Forked code can execute arbitrary build instructions. The selected answer is the proposed design crosses an untrusted-code boundary.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q023

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Forked tests run without access to deployment credentials** **Correct.** The safety property must hold for malicious test code. This directly addresses the constraint stated in this case.
- **B. The failed run exposes the expected test report artifact** The report should remain tied to the failing run. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **C. A clean run reports the required SDK and builds successfully** Version evidence demonstrates environmental reproducibility. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.

**Explanation:** The safety property must hold for malicious test code. The selected answer is forked tests run without access to deployment credentials.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q024

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid checking out untrusted code in a privileged event context** **Correct.** Event selection alone does not make code trustworthy. This directly addresses the constraint stated in this case.
- **B. Set retention and exclude credentials from uploaded diagnostics** Artifacts can contain sensitive environment details. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **C. Update pinned toolchains through reviewed maintenance** Explicit versions still need security and support updates. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.

**Explanation:** Event selection alone does not make code trustworthy. The selected answer is avoid checking out untrusted code in a privileged event context.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q025

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. The team selects this remedy: "Keep untrusted pull-request execution separate from privileged deployment." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Toolchain installation adds startup time** Caching may reduce overhead but must preserve correctness. That addresses a different requirement: Runtime drift. It does not directly resolve this case's stated constraint.
- **B. Privileged follow-up workflows require careful provenance validation** **Correct.** A successful untrusted build is not automatically trusted input. This directly addresses the constraint stated in this case.
- **C. Longer report retention increases storage exposure** Retain evidence only for the required learning and support window. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.

**Explanation:** A successful untrusted build is not automatically trusted input. The selected answer is privileged follow-up workflows require careful provenance validation.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q026

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which next change most directly satisfies the stated requirement?

- **A. Use a matrix that exercises each supported runtime** Compatibility claims require execution on the relevant variants. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **B. Keep untrusted pull-request execution separate from privileged deployment** Contributor code must not run with deployment credentials. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. Upload sanitized test reports under an appropriate failure-aware condition** **Correct.** Diagnostic evidence should survive failed test execution. This directly addresses the constraint stated in this case.

**Explanation:** Diagnostic evidence should survive failed test execution. The selected answer is upload sanitized test reports under an appropriate failure-aware condition.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q027

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which explanation best accounts for the behavior or constraint described?

- **A. The proposed design crosses an untrusted-code boundary** Forked code can execute arbitrary build instructions. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **B. Success-only execution skipped the report upload** **Correct.** A failed test stops normal dependent steps. This directly addresses the constraint stated in this case.
- **C. A single successful environment cannot establish multi-runtime support** The unsupported path remains untested. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.

**Explanation:** A failed test stops normal dependent steps. The selected answer is success-only execution skipped the report upload.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q028

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Both runtime jobs execute and report their own outcomes** The matrix must expand into the intended combinations. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **B. Forked tests run without access to deployment credentials** The safety property must hold for malicious test code. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. The failed run exposes the expected test report artifact** **Correct.** The report should remain tied to the failing run. This directly addresses the constraint stated in this case.

**Explanation:** The report should remain tied to the failing run. The selected answer is the failed run exposes the expected test report artifact.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q029

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid checking out untrusted code in a privileged event context** Event selection alone does not make code trustworthy. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **B. Set retention and exclude credentials from uploaded diagnostics** **Correct.** Artifacts can contain sensitive environment details. This directly addresses the constraint stated in this case.
- **C. Keep experimental variants separate from required supported variants** Optional failures should not weaken mandatory compatibility checks. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.

**Explanation:** Artifacts can contain sensitive environment details. The selected answer is set retention and exclude credentials from uploaded diagnostics.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q030

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. The team selects this remedy: "Upload sanitized test reports under an appropriate failure-aware condition." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Matrices multiply runner time and scheduling demand** Include meaningful combinations rather than every theoretical permutation. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **B. Privileged follow-up workflows require careful provenance validation** A successful untrusted build is not automatically trusted input. That addresses a different requirement: Unsafe event. It does not directly resolve this case's stated constraint.
- **C. Longer report retention increases storage exposure** **Correct.** Retain evidence only for the required learning and support window. This directly addresses the constraint stated in this case.

**Explanation:** Retain evidence only for the required learning and support window. The selected answer is longer report retention increases storage exposure.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q031

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which next change most directly satisfies the stated requirement?

- **A. Promote the exact validated build artifact** The released bytes should be the bytes that passed tests. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. Upload sanitized test reports under an appropriate failure-aware condition** Diagnostic evidence should survive failed test execution. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **C. Use a matrix that exercises each supported runtime** **Correct.** Compatibility claims require execution on the relevant variants. This directly addresses the constraint stated in this case.

**Explanation:** Compatibility claims require execution on the relevant variants. The selected answer is use a matrix that exercises each supported runtime.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q032

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which explanation best accounts for the behavior or constraint described?

- **A. A single successful environment cannot establish multi-runtime support** **Correct.** The unsupported path remains untested. This directly addresses the constraint stated in this case.
- **B. Rebuilding introduces a second potentially different output** Dependencies and environment can change between runs. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **C. Success-only execution skipped the report upload** A failed test stops normal dependent steps. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.

**Explanation:** The unsupported path remains untested. The selected answer is a single successful environment cannot establish multi-runtime support.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q033

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Both runtime jobs execute and report their own outcomes** **Correct.** The matrix must expand into the intended combinations. This directly addresses the constraint stated in this case.
- **B. The deployment records the tested artifact's immutable identity** Identity links verification evidence to the actual release. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **C. The failed run exposes the expected test report artifact** The report should remain tied to the failing run. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.

**Explanation:** The matrix must expand into the intended combinations. The selected answer is both runtime jobs execute and report their own outcomes.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q034

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify artifact provenance before privileged deployment** Untrusted workflows must not substitute arbitrary release inputs. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. Set retention and exclude credentials from uploaded diagnostics** Artifacts can contain sensitive environment details. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.
- **C. Keep experimental variants separate from required supported variants** **Correct.** Optional failures should not weaken mandatory compatibility checks. This directly addresses the constraint stated in this case.

**Explanation:** Optional failures should not weaken mandatory compatibility checks. The selected answer is keep experimental variants separate from required supported variants.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q035

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. The team selects this remedy: "Use a matrix that exercises each supported runtime." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Matrices multiply runner time and scheduling demand** **Correct.** Include meaningful combinations rather than every theoretical permutation. This directly addresses the constraint stated in this case.
- **B. Artifact promotion requires reliable storage and retention** A missing artifact can block rollback or later deployment. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **C. Longer report retention increases storage exposure** Retain evidence only for the required learning and support window. That addresses a different requirement: Lost test reports. It does not directly resolve this case's stated constraint.

**Explanation:** Include meaningful combinations rather than every theoretical permutation. The selected answer is matrices multiply runner time and scheduling demand.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q036

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which next change most directly satisfies the stated requirement?

- **A. Use a matrix that exercises each supported runtime** Compatibility claims require execution on the relevant variants. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **B. Promote the exact validated build artifact** **Correct.** The released bytes should be the bytes that passed tests. This directly addresses the constraint stated in this case.
- **C. Use environment-specific concurrency with an intentional cancellation policy** Deployment order needs explicit control for shared targets. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.

**Explanation:** The released bytes should be the bytes that passed tests. The selected answer is promote the exact validated build artifact.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q037

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which explanation best accounts for the behavior or constraint described?

- **A. Independent workflow runs race on one mutable environment** Completion order can differ from commit order. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **B. A single successful environment cannot establish multi-runtime support** The unsupported path remains untested. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **C. Rebuilding introduces a second potentially different output** **Correct.** Dependencies and environment can change between runs. This directly addresses the constraint stated in this case.

**Explanation:** Dependencies and environment can change between runs. The selected answer is rebuilding introduces a second potentially different output.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q038

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployment records the tested artifact's immutable identity** **Correct.** Identity links verification evidence to the actual release. This directly addresses the constraint stated in this case.
- **B. The environment ends on the intended accepted release** The evidence must include competing runs rather than one happy path. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **C. Both runtime jobs execute and report their own outcomes** The matrix must expand into the intended combinations. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.

**Explanation:** Identity links verification evidence to the actual release. The selected answer is the deployment records the tested artifact's immutable identity.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q039

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify artifact provenance before privileged deployment** **Correct.** Untrusted workflows must not substitute arbitrary release inputs. This directly addresses the constraint stated in this case.
- **B. Avoid cancelling a deployment during a nonrecoverable database operation** Cancellation safety depends on the deployment phase. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **C. Keep experimental variants separate from required supported variants** Optional failures should not weaken mandatory compatibility checks. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.

**Explanation:** Untrusted workflows must not substitute arbitrary release inputs. The selected answer is verify artifact provenance before privileged deployment.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q040

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. The team selects this remedy: "Promote the exact validated build artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Matrices multiply runner time and scheduling demand** Include meaningful combinations rather than every theoretical permutation. That addresses a different requirement: Matrix gap. It does not directly resolve this case's stated constraint.
- **B. Artifact promotion requires reliable storage and retention** **Correct.** A missing artifact can block rollback or later deployment. This directly addresses the constraint stated in this case.
- **C. Serial deployment can reduce delivery throughput** Consistency may justify waiting for the previous run. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.

**Explanation:** A missing artifact can block rollback or later deployment. The selected answer is artifact promotion requires reliable storage and retention.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q041

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which next change most directly satisfies the stated requirement?

- **A. Promote the exact validated build artifact** The released bytes should be the bytes that passed tests. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. Use environment-specific concurrency with an intentional cancellation policy** **Correct.** Deployment order needs explicit control for shared targets. This directly addresses the constraint stated in this case.
- **C. Pin third-party actions to reviewed full commit references** Immutable references reduce unnoticed executable dependency changes. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** Deployment order needs explicit control for shared targets. The selected answer is use environment-specific concurrency with an intentional cancellation policy.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q042

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which explanation best accounts for the behavior or constraint described?

- **A. Independent workflow runs race on one mutable environment** **Correct.** Completion order can differ from commit order. This directly addresses the constraint stated in this case.
- **B. A moving tag can resolve to different action code** The workflow text can stay unchanged while execution changes. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.
- **C. Rebuilding introduces a second potentially different output** Dependencies and environment can change between runs. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.

**Explanation:** Completion order can differ from commit order. The selected answer is independent workflow runs race on one mutable environment.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q043

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployment records the tested artifact's immutable identity** Identity links verification evidence to the actual release. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. The environment ends on the intended accepted release** **Correct.** The evidence must include competing runs rather than one happy path. This directly addresses the constraint stated in this case.
- **C. The action reference resolves to the approved commit** The dependency identity should be explicit and verifiable. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must include competing runs rather than one happy path. The selected answer is the environment ends on the intended accepted release.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q044

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify artifact provenance before privileged deployment** Untrusted workflows must not substitute arbitrary release inputs. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. Avoid cancelling a deployment during a nonrecoverable database operation** **Correct.** Cancellation safety depends on the deployment phase. This directly addresses the constraint stated in this case.
- **C. Use a reviewed process to advance pinned action versions** A permanent pin can retain old vulnerabilities. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** Cancellation safety depends on the deployment phase. The selected answer is avoid cancelling a deployment during a nonrecoverable database operation.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q045

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. The team selects this remedy: "Use environment-specific concurrency with an intentional cancellation policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Artifact promotion requires reliable storage and retention** A missing artifact can block rollback or later deployment. That addresses a different requirement: Rebuilt release. It does not directly resolve this case's stated constraint.
- **B. Serial deployment can reduce delivery throughput** **Correct.** Consistency may justify waiting for the previous run. This directly addresses the constraint stated in this case.
- **C. Commit pinning creates update maintenance** It improves change control rather than removing supply-chain risk. That addresses a different requirement: Action supply-chain drift. It does not directly resolve this case's stated constraint.

**Explanation:** Consistency may justify waiting for the previous run. The selected answer is serial deployment can reduce delivery throughput.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q046

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which next change most directly satisfies the stated requirement?

- **A. Use environment-specific concurrency with an intentional cancellation policy** Deployment order needs explicit control for shared targets. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **B. Pin third-party actions to reviewed full commit references** **Correct.** Immutable references reduce unnoticed executable dependency changes. This directly addresses the constraint stated in this case.
- **C. Add event and path filters matching the intended CI scope** Trigger rules should reflect the changes requiring validation. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.

**Explanation:** Immutable references reduce unnoticed executable dependency changes. The selected answer is pin third-party actions to reviewed full commit references.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q047

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which explanation best accounts for the behavior or constraint described?

- **A. A moving tag can resolve to different action code** **Correct.** The workflow text can stay unchanged while execution changes. This directly addresses the constraint stated in this case.
- **B. The workflow trigger is broader than the intended workload** Every pull request is currently eligible for execution. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.
- **C. Independent workflow runs race on one mutable environment** Completion order can differ from commit order. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.

**Explanation:** The workflow text can stay unchanged while execution changes. The selected answer is a moving tag can resolve to different action code.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q048

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Application changes trigger CI while unrelated documentation follows its intended path** Both positive and negative cases verify filter behavior. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.
- **B. The environment ends on the intended accepted release** The evidence must include competing runs rather than one happy path. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **C. The action reference resolves to the approved commit** **Correct.** The dependency identity should be explicit and verifiable. This directly addresses the constraint stated in this case.

**Explanation:** The dependency identity should be explicit and verifiable. The selected answer is the action reference resolves to the approved commit.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q049

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a reviewed process to advance pinned action versions** **Correct.** A permanent pin can retain old vulnerabilities. This directly addresses the constraint stated in this case.
- **B. Ensure required branch checks are compatible with filtering** A skipped required workflow can leave merges waiting. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.
- **C. Avoid cancelling a deployment during a nonrecoverable database operation** Cancellation safety depends on the deployment phase. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.

**Explanation:** A permanent pin can retain old vulnerabilities. The selected answer is use a reviewed process to advance pinned action versions.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. The team selects this remedy: "Pin third-party actions to reviewed full commit references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Narrow filters can miss indirect dependencies** Review scope when shared build inputs change. That addresses a different requirement: Unexpected workflow. It does not directly resolve this case's stated constraint.
- **B. Serial deployment can reduce delivery throughput** Consistency may justify waiting for the previous run. That addresses a different requirement: Release race. It does not directly resolve this case's stated constraint.
- **C. Commit pinning creates update maintenance** **Correct.** It improves change control rather than removing supply-chain risk. This directly addresses the constraint stated in this case.

**Explanation:** It improves change control rather than removing supply-chain risk. The selected answer is commit pinning creates update maintenance.

**Sources:** [S1](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions); [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)
