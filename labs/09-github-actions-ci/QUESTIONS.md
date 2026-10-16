# Lab 09 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L09-Q001

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which next change most directly satisfies the stated requirement?

- **A.** Add checkout before the build steps
- **B.** Pin third-party actions to reviewed full commit references
- **C.** Add event and path filters matching the intended CI scope

## L09-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which explanation best accounts for the behavior or constraint described?

- **A.** The workflow trigger is broader than the intended workload
- **B.** A fresh hosted runner does not contain the repository automatically
- **C.** A moving tag can resolve to different action code

## L09-Q003

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The action reference resolves to the approved commit
- **B.** Application changes trigger CI while unrelated documentation follows its intended path
- **C.** The build step can read the expected project at the selected commit

## L09-Q004

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Ensure required branch checks are compatible with filtering
- **B.** Use a trusted checkout action version and limited credentials
- **C.** Use a reviewed process to advance pinned action versions

## L09-Q005

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Unexpected workflow: A documentation-only pull request consumes expensive integration runners although no application or pipeline files changed. The team selects this remedy: "Add event and path filters matching the intended CI scope." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Narrow filters can miss indirect dependencies
- **B.** Shallow checkout may omit history needed by later tasks
- **C.** Commit pinning creates update maintenance

## L09-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which next change most directly satisfies the stated requirement?

- **A.** Add checkout before the build steps
- **B.** Declare read-only permissions for the build workflow
- **C.** Add event and path filters matching the intended CI scope

## L09-Q007

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which explanation best accounts for the behavior or constraint described?

- **A.** A fresh hosted runner does not contain the repository automatically
- **B.** The token inherited permissions beyond the task requirements
- **C.** The workflow trigger is broader than the intended workload

## L09-Q008

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Application changes trigger CI while unrelated documentation follows its intended path
- **B.** The build step can read the expected project at the selected commit
- **C.** The workflow builds successfully while write operations are denied

## L09-Q009

Applied · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a trusted checkout action version and limited credentials
- **B.** Separate publishing permissions into a trusted publishing job
- **C.** Ensure required branch checks are compatible with filtering

## L09-Q010

Advanced · [CP1](README.md#task-1) · [D3.3.5](../../docs/objective-map.md)

Wrong working tree: A workflow starts a build without checking out the repository, and the expected project file is missing. The team selects this remedy: "Add checkout before the build steps." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shallow checkout may omit history needed by later tasks
- **B.** Permission tightening may expose implicit workflow dependencies
- **C.** Narrow filters can miss indirect dependencies

## L09-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which next change most directly satisfies the stated requirement?

- **A.** Add checkout before the build steps
- **B.** Declare read-only permissions for the build workflow
- **C.** Install the supported SDK explicitly in the workflow

## L09-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which explanation best accounts for the behavior or constraint described?

- **A.** The workflow depended on an uncontrolled image default
- **B.** A fresh hosted runner does not contain the repository automatically
- **C.** The token inherited permissions beyond the task requirements

## L09-Q013

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The workflow builds successfully while write operations are denied
- **B.** A clean run reports the required SDK and builds successfully
- **C.** The build step can read the expected project at the selected commit

## L09-Q014

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate publishing permissions into a trusted publishing job
- **B.** Update pinned toolchains through reviewed maintenance
- **C.** Use a trusted checkout action version and limited credentials

## L09-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Overprivileged CI: A workflow only compiles code but its token has repository write permission across every job. The team selects this remedy: "Declare read-only permissions for the build workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Toolchain installation adds startup time
- **B.** Shallow checkout may omit history needed by later tasks
- **C.** Permission tightening may expose implicit workflow dependencies

## L09-Q016

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which next change most directly satisfies the stated requirement?

- **A.** Install the supported SDK explicitly in the workflow
- **B.** Keep untrusted pull-request execution separate from privileged deployment
- **C.** Declare read-only permissions for the build workflow

## L09-Q017

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which explanation best accounts for the behavior or constraint described?

- **A.** The proposed design crosses an untrusted-code boundary
- **B.** The token inherited permissions beyond the task requirements
- **C.** The workflow depended on an uncontrolled image default

## L09-Q018

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Forked tests run without access to deployment credentials
- **B.** The workflow builds successfully while write operations are denied
- **C.** A clean run reports the required SDK and builds successfully

## L09-Q019

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Update pinned toolchains through reviewed maintenance
- **B.** Avoid checking out untrusted code in a privileged event context
- **C.** Separate publishing permissions into a trusted publishing job

## L09-Q020

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Runtime drift: A build relies on the hosted image's default SDK and breaks when the image default changes. The team selects this remedy: "Install the supported SDK explicitly in the workflow." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Toolchain installation adds startup time
- **B.** Privileged follow-up workflows require careful provenance validation
- **C.** Permission tightening may expose implicit workflow dependencies

## L09-Q021

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which next change most directly satisfies the stated requirement?

- **A.** Upload sanitized test reports under an appropriate failure-aware condition
- **B.** Install the supported SDK explicitly in the workflow
- **C.** Keep untrusted pull-request execution separate from privileged deployment

## L09-Q022

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which explanation best accounts for the behavior or constraint described?

- **A.** The proposed design crosses an untrusted-code boundary
- **B.** Success-only execution skipped the report upload
- **C.** The workflow depended on an uncontrolled image default

## L09-Q023

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Forked tests run without access to deployment credentials
- **B.** The failed run exposes the expected test report artifact
- **C.** A clean run reports the required SDK and builds successfully

## L09-Q024

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid checking out untrusted code in a privileged event context
- **B.** Set retention and exclude credentials from uploaded diagnostics
- **C.** Update pinned toolchains through reviewed maintenance

## L09-Q025

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Unsafe event: A pull-request workflow needs to test forked code, and a proposal would expose a cloud credential to that code. The team selects this remedy: "Keep untrusted pull-request execution separate from privileged deployment." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Toolchain installation adds startup time
- **B.** Privileged follow-up workflows require careful provenance validation
- **C.** Longer report retention increases storage exposure

## L09-Q026

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which next change most directly satisfies the stated requirement?

- **A.** Use a matrix that exercises each supported runtime
- **B.** Keep untrusted pull-request execution separate from privileged deployment
- **C.** Upload sanitized test reports under an appropriate failure-aware condition

## L09-Q027

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which explanation best accounts for the behavior or constraint described?

- **A.** The proposed design crosses an untrusted-code boundary
- **B.** Success-only execution skipped the report upload
- **C.** A single successful environment cannot establish multi-runtime support

## L09-Q028

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Both runtime jobs execute and report their own outcomes
- **B.** Forked tests run without access to deployment credentials
- **C.** The failed run exposes the expected test report artifact

## L09-Q029

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid checking out untrusted code in a privileged event context
- **B.** Set retention and exclude credentials from uploaded diagnostics
- **C.** Keep experimental variants separate from required supported variants

## L09-Q030

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Lost test reports: GitHub CI fails during tests, and the subsequent artifact step is skipped, leaving no report for diagnosis. The team selects this remedy: "Upload sanitized test reports under an appropriate failure-aware condition." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Matrices multiply runner time and scheduling demand
- **B.** Privileged follow-up workflows require careful provenance validation
- **C.** Longer report retention increases storage exposure

## L09-Q031

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which next change most directly satisfies the stated requirement?

- **A.** Promote the exact validated build artifact
- **B.** Upload sanitized test reports under an appropriate failure-aware condition
- **C.** Use a matrix that exercises each supported runtime

## L09-Q032

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which explanation best accounts for the behavior or constraint described?

- **A.** A single successful environment cannot establish multi-runtime support
- **B.** Rebuilding introduces a second potentially different output
- **C.** Success-only execution skipped the report upload

## L09-Q033

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Both runtime jobs execute and report their own outcomes
- **B.** The deployment records the tested artifact's immutable identity
- **C.** The failed run exposes the expected test report artifact

## L09-Q034

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify artifact provenance before privileged deployment
- **B.** Set retention and exclude credentials from uploaded diagnostics
- **C.** Keep experimental variants separate from required supported variants

## L09-Q035

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Matrix gap: The application must support two runtimes, but the workflow validates only one before merging changes. The team selects this remedy: "Use a matrix that exercises each supported runtime." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Matrices multiply runner time and scheduling demand
- **B.** Artifact promotion requires reliable storage and retention
- **C.** Longer report retention increases storage exposure

## L09-Q036

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which next change most directly satisfies the stated requirement?

- **A.** Use a matrix that exercises each supported runtime
- **B.** Promote the exact validated build artifact
- **C.** Use environment-specific concurrency with an intentional cancellation policy

## L09-Q037

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which explanation best accounts for the behavior or constraint described?

- **A.** Independent workflow runs race on one mutable environment
- **B.** A single successful environment cannot establish multi-runtime support
- **C.** Rebuilding introduces a second potentially different output

## L09-Q038

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployment records the tested artifact's immutable identity
- **B.** The environment ends on the intended accepted release
- **C.** Both runtime jobs execute and report their own outcomes

## L09-Q039

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify artifact provenance before privileged deployment
- **B.** Avoid cancelling a deployment during a nonrecoverable database operation
- **C.** Keep experimental variants separate from required supported variants

## L09-Q040

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Rebuilt release: Deployment recompiles source after CI instead of promoting the artifact tested by the original run. The team selects this remedy: "Promote the exact validated build artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Matrices multiply runner time and scheduling demand
- **B.** Artifact promotion requires reliable storage and retention
- **C.** Serial deployment can reduce delivery throughput

## L09-Q041

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which next change most directly satisfies the stated requirement?

- **A.** Promote the exact validated build artifact
- **B.** Use environment-specific concurrency with an intentional cancellation policy
- **C.** Pin third-party actions to reviewed full commit references

## L09-Q042

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which explanation best accounts for the behavior or constraint described?

- **A.** Independent workflow runs race on one mutable environment
- **B.** A moving tag can resolve to different action code
- **C.** Rebuilding introduces a second potentially different output

## L09-Q043

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployment records the tested artifact's immutable identity
- **B.** The environment ends on the intended accepted release
- **C.** The action reference resolves to the approved commit

## L09-Q044

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify artifact provenance before privileged deployment
- **B.** Avoid cancelling a deployment during a nonrecoverable database operation
- **C.** Use a reviewed process to advance pinned action versions

## L09-Q045

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Release race: Two commits deploy to the same environment concurrently and the older run completes last, overwriting the newer version. The team selects this remedy: "Use environment-specific concurrency with an intentional cancellation policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Artifact promotion requires reliable storage and retention
- **B.** Serial deployment can reduce delivery throughput
- **C.** Commit pinning creates update maintenance

## L09-Q046

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which next change most directly satisfies the stated requirement?

- **A.** Use environment-specific concurrency with an intentional cancellation policy
- **B.** Pin third-party actions to reviewed full commit references
- **C.** Add event and path filters matching the intended CI scope

## L09-Q047

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which explanation best accounts for the behavior or constraint described?

- **A.** A moving tag can resolve to different action code
- **B.** The workflow trigger is broader than the intended workload
- **C.** Independent workflow runs race on one mutable environment

## L09-Q048

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Application changes trigger CI while unrelated documentation follows its intended path
- **B.** The environment ends on the intended accepted release
- **C.** The action reference resolves to the approved commit

## L09-Q049

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a reviewed process to advance pinned action versions
- **B.** Ensure required branch checks are compatible with filtering
- **C.** Avoid cancelling a deployment during a nonrecoverable database operation

## L09-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Action supply-chain drift: A workflow references a moving action tag, and its implementation changes without a repository review. The team selects this remedy: "Pin third-party actions to reviewed full commit references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Narrow filters can miss indirect dependencies
- **B.** Serial deployment can reduce delivery throughput
- **C.** Commit pinning creates update maintenance
