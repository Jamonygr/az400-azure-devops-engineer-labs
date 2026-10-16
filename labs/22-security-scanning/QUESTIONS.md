# Lab 22 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L22-Q001

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which next change most directly satisfies the stated requirement?

- **A.** Require scan evidence for the exact release digest
- **B.** Add dependency vulnerability analysis to the scan strategy
- **C.** Configure the desired update workflow and review proposed fixes

## L22-Q002

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which explanation best accounts for the behavior or constraint described?

- **A.** Secret detection does not inspect dependency advisories
- **B.** An alert is not an automatically accepted remediation
- **C.** A reused tag hides the change in image identity

## L22-Q003

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A known vulnerable test dependency produces the expected alert
- **B.** An affected dependency receives a reviewed tested update
- **C.** The release digest matches the scanned digest

## L22-Q004

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which execution safeguard most directly addresses the risk in this case?

- **A.** Prevent substitution after the security decision
- **B.** Use a controlled fixture rather than a live exploitable deployment
- **C.** Retain required tests before accepting dependency updates

## L22-Q005

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. The team selects this remedy: "Add dependency vulnerability analysis to the scan strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Digest-specific evidence increases metadata management
- **B.** More scanners add triage and maintenance work
- **C.** Not every advisory has an available fix

## L22-Q006

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which next change most directly satisfies the stated requirement?

- **A.** Configure the desired update workflow and review proposed fixes
- **B.** Scan the final container image for package vulnerabilities
- **C.** Add dependency vulnerability analysis to the scan strategy

## L22-Q007

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which explanation best accounts for the behavior or constraint described?

- **A.** An alert is not an automatically accepted remediation
- **B.** Code analysis does not inventory every image component
- **C.** Secret detection does not inspect dependency advisories

## L22-Q008

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** An affected dependency receives a reviewed tested update
- **B.** The built image produces findings tied to its immutable digest
- **C.** A known vulnerable test dependency produces the expected alert

## L22-Q009

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a controlled fixture rather than a live exploitable deployment
- **B.** Retain required tests before accepting dependency updates
- **C.** Rescan and rebuild when base-image advisories change

## L22-Q010

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. The team selects this remedy: "Configure the desired update workflow and review proposed fixes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Not every advisory has an available fix
- **B.** Image scanning cannot prove exploitability in every deployment
- **C.** More scanners add triage and maintenance work

## L22-Q011

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which next change most directly satisfies the stated requirement?

- **A.** Install or configure the supported CodeQL analysis workflow explicitly
- **B.** Configure the desired update workflow and review proposed fixes
- **C.** Scan the final container image for package vulnerabilities

## L22-Q012

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which explanation best accounts for the behavior or constraint described?

- **A.** Code analysis does not inventory every image component
- **B.** Container execution does not automatically create a CodeQL database
- **C.** An alert is not an automatically accepted remediation

## L22-Q013

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The built image produces findings tied to its immutable digest
- **B.** The run uploads valid analysis results for the intended code
- **C.** An affected dependency receives a reviewed tested update

## L22-Q014

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a trusted analysis image and supported tool versions
- **B.** Retain required tests before accepting dependency updates
- **C.** Rescan and rebuild when base-image advisories change

## L22-Q015

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. The team selects this remedy: "Scan the final container image for package vulnerabilities." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Image scanning cannot prove exploitability in every deployment
- **B.** Containerized analysis still needs correct build context
- **C.** Not every advisory has an available fix

## L22-Q016

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which next change most directly satisfies the stated requirement?

- **A.** Scan the final container image for package vulnerabilities
- **B.** Install or configure the supported CodeQL analysis workflow explicitly
- **C.** Add license inventory and policy review

## L22-Q017

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which explanation best accounts for the behavior or constraint described?

- **A.** Container execution does not automatically create a CodeQL database
- **B.** Vulnerability detection does not determine license compatibility
- **C.** Code analysis does not inventory every image component

## L22-Q018

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The built image produces findings tied to its immutable digest
- **B.** The run uploads valid analysis results for the intended code
- **C.** The dependency inventory exposes the disallowed license for review

## L22-Q019

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a trusted analysis image and supported tool versions
- **B.** Escalate ambiguous license interpretation to the responsible policy owner
- **C.** Rescan and rebuild when base-image advisories change

## L22-Q020

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. The team selects this remedy: "Install or configure the supported CodeQL analysis workflow explicitly." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Image scanning cannot prove exploitability in every deployment
- **B.** Containerized analysis still needs correct build context
- **C.** License policy can restrict otherwise useful dependencies

## L22-Q021

Foundational · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which next change most directly satisfies the stated requirement?

- **A.** Install or configure the supported CodeQL analysis workflow explicitly
- **B.** Add license inventory and policy review
- **C.** Use a documented synthetic detection fixture in an isolated exercise

## L22-Q022

Foundational · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which explanation best accounts for the behavior or constraint described?

- **A.** Vulnerability detection does not determine license compatibility
- **B.** A live secret is unnecessary to validate the workflow
- **C.** Container execution does not automatically create a CodeQL database

## L22-Q023

Applied · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The expected test finding appears without an active credential
- **B.** The run uploads valid analysis results for the intended code
- **C.** The dependency inventory exposes the disallowed license for review

## L22-Q024

Applied · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which execution safeguard most directly addresses the risk in this case?

- **A.** Escalate ambiguous license interpretation to the responsible policy owner
- **B.** Clearly label and clean up deliberate training findings
- **C.** Use a trusted analysis image and supported tool versions

## L22-Q025

Advanced · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. The team selects this remedy: "Add license inventory and policy review." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** License policy can restrict otherwise useful dependencies
- **B.** A fixture may not cover every real secret format
- **C.** Containerized analysis still needs correct build context

## L22-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which next change most directly satisfies the stated requirement?

- **A.** Propagate policy-relevant scan outcomes into the release gate
- **B.** Add license inventory and policy review
- **C.** Use a documented synthetic detection fixture in an isolated exercise

## L22-Q027

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline converts a failing security decision into success
- **B.** Vulnerability detection does not determine license compatibility
- **C.** A live secret is unnecessary to validate the workflow

## L22-Q028

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dependency inventory exposes the disallowed license for review
- **B.** The expected test finding appears without an active credential
- **C.** A controlled disallowed finding stops the protected release

## L22-Q029

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate tool failure from vulnerability-policy failure
- **B.** Escalate ambiguous license interpretation to the responsible policy owner
- **C.** Clearly label and clean up deliberate training findings

## L22-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. The team selects this remedy: "Use a documented synthetic detection fixture in an isolated exercise." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** A fixture may not cover every real secret format
- **B.** Strict gating can interrupt delivery for false positives
- **C.** License policy can restrict otherwise useful dependencies

## L22-Q031

Foundational · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which next change most directly satisfies the stated requirement?

- **A.** Propagate policy-relevant scan outcomes into the release gate
- **B.** Inspect the resolved graph and update the affected dependency chain
- **C.** Use a documented synthetic detection fixture in an isolated exercise

## L22-Q032

Foundational · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which explanation best accounts for the behavior or constraint described?

- **A.** A live secret is unnecessary to validate the workflow
- **B.** The pipeline converts a failing security decision into success
- **C.** Direct manifests alone do not describe all resolved packages

## L22-Q033

Applied · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A controlled disallowed finding stops the protected release
- **B.** The resolved lock graph no longer includes the affected version
- **C.** The expected test finding appears without an active credential

## L22-Q034

Applied · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate tool failure from vulnerability-policy failure
- **B.** Review compatibility and rerun representative tests
- **C.** Clearly label and clean up deliberate training findings

## L22-Q035

Advanced · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. The team selects this remedy: "Propagate policy-relevant scan outcomes into the release gate." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** A fix may depend on an upstream maintainer release
- **B.** A fixture may not cover every real secret format
- **C.** Strict gating can interrupt delivery for false positives

## L22-Q036

Foundational · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which next change most directly satisfies the stated requirement?

- **A.** Propagate policy-relevant scan outcomes into the release gate
- **B.** Inspect the resolved graph and update the affected dependency chain
- **C.** Require justified dispositions and verify remediation evidence

## L22-Q037

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which explanation best accounts for the behavior or constraint described?

- **A.** Direct manifests alone do not describe all resolved packages
- **B.** Bulk dismissal changes reporting without fixing exposure
- **C.** The pipeline converts a failing security decision into success

## L22-Q038

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A controlled disallowed finding stops the protected release
- **B.** The resolved lock graph no longer includes the affected version
- **C.** Each critical finding has a fix or approved documented exception

## L22-Q039

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate tool failure from vulnerability-policy failure
- **B.** Review compatibility and rerun representative tests
- **C.** Audit dismissal permissions and reasons

## L22-Q040

Advanced · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. The team selects this remedy: "Inspect the resolved graph and update the affected dependency chain." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Strict gating can interrupt delivery for false positives
- **B.** A fix may depend on an upstream maintainer release
- **C.** Accepted risks remain risks until resolved

## L22-Q041

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which next change most directly satisfies the stated requirement?

- **A.** Require scan evidence for the exact release digest
- **B.** Inspect the resolved graph and update the affected dependency chain
- **C.** Require justified dispositions and verify remediation evidence

## L22-Q042

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which explanation best accounts for the behavior or constraint described?

- **A.** Direct manifests alone do not describe all resolved packages
- **B.** Bulk dismissal changes reporting without fixing exposure
- **C.** A reused tag hides the change in image identity

## L22-Q043

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Each critical finding has a fix or approved documented exception
- **B.** The release digest matches the scanned digest
- **C.** The resolved lock graph no longer includes the affected version

## L22-Q044

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which execution safeguard most directly addresses the risk in this case?

- **A.** Audit dismissal permissions and reasons
- **B.** Prevent substitution after the security decision
- **C.** Review compatibility and rerun representative tests

## L22-Q045

Advanced · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. The team selects this remedy: "Require justified dispositions and verify remediation evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Accepted risks remain risks until resolved
- **B.** Digest-specific evidence increases metadata management
- **C.** A fix may depend on an upstream maintainer release

## L22-Q046

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which next change most directly satisfies the stated requirement?

- **A.** Require scan evidence for the exact release digest
- **B.** Add dependency vulnerability analysis to the scan strategy
- **C.** Require justified dispositions and verify remediation evidence

## L22-Q047

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which explanation best accounts for the behavior or constraint described?

- **A.** Bulk dismissal changes reporting without fixing exposure
- **B.** A reused tag hides the change in image identity
- **C.** Secret detection does not inspect dependency advisories

## L22-Q048

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A known vulnerable test dependency produces the expected alert
- **B.** Each critical finding has a fix or approved documented exception
- **C.** The release digest matches the scanned digest

## L22-Q049

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which execution safeguard most directly addresses the risk in this case?

- **A.** Audit dismissal permissions and reasons
- **B.** Prevent substitution after the security decision
- **C.** Use a controlled fixture rather than a live exploitable deployment

## L22-Q050

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. The team selects this remedy: "Require scan evidence for the exact release digest." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More scanners add triage and maintenance work
- **B.** Accepted risks remain risks until resolved
- **C.** Digest-specific evidence increases metadata management
