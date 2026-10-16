# Lab 22 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L22-Q001

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which next change most directly satisfies the stated requirement?

- **A. Require scan evidence for the exact release digest** Security evidence must match the delivered bytes. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **B. Add dependency vulnerability analysis to the scan strategy** **Correct.** Different risk classes need different scanning capabilities. This directly addresses the constraint stated in this case.
- **C. Configure the desired update workflow and review proposed fixes** Detection and automated update behavior are separate capabilities. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** Different risk classes need different scanning capabilities. The selected answer is add dependency vulnerability analysis to the scan strategy.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q002

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which explanation best accounts for the behavior or constraint described?

- **A. Secret detection does not inspect dependency advisories** **Correct.** One security tool does not cover every threat category. This directly addresses the constraint stated in this case.
- **B. An alert is not an automatically accepted remediation** Update configuration and review policy still matter. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.
- **C. A reused tag hides the change in image identity** An earlier result cannot validate a different image. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.

**Explanation:** One security tool does not cover every threat category. The selected answer is secret detection does not inspect dependency advisories.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q003

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known vulnerable test dependency produces the expected alert** **Correct.** The probe should target the previously missing scan class. This directly addresses the constraint stated in this case.
- **B. An affected dependency receives a reviewed tested update** The evidence must show actual risk treatment. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.
- **C. The release digest matches the scanned digest** Content identity connects the scan to deployment. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.

**Explanation:** The probe should target the previously missing scan class. The selected answer is a known vulnerable test dependency produces the expected alert.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q004

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. Which execution safeguard most directly addresses the risk in this case?

- **A. Prevent substitution after the security decision** Mutable release selection can invalidate approval evidence. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **B. Use a controlled fixture rather than a live exploitable deployment** **Correct.** Validation should not create unnecessary exposure. This directly addresses the constraint stated in this case.
- **C. Retain required tests before accepting dependency updates** A version bump can introduce compatibility changes. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** Validation should not create unnecessary exposure. The selected answer is use a controlled fixture rather than a live exploitable deployment.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q005

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

Scan gap: A pipeline only searches for leaked secrets, but stakeholders expect it to identify vulnerable dependency versions as well. The team selects this remedy: "Add dependency vulnerability analysis to the scan strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Digest-specific evidence increases metadata management** The benefit is trustworthy release traceability. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **B. More scanners add triage and maintenance work** **Correct.** Coverage should match the repository's actual risks. This directly addresses the constraint stated in this case.
- **C. Not every advisory has an available fix** Some findings need mitigation or documented risk decisions. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** Coverage should match the repository's actual risks. The selected answer is more scanners add triage and maintenance work.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q006

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which next change most directly satisfies the stated requirement?

- **A. Configure the desired update workflow and review proposed fixes** **Correct.** Detection and automated update behavior are separate capabilities. This directly addresses the constraint stated in this case.
- **B. Scan the final container image for package vulnerabilities** Source analysis and image-package analysis cover different layers. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **C. Add dependency vulnerability analysis to the scan strategy** Different risk classes need different scanning capabilities. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** Detection and automated update behavior are separate capabilities. The selected answer is configure the desired update workflow and review proposed fixes.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q007

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which explanation best accounts for the behavior or constraint described?

- **A. An alert is not an automatically accepted remediation** **Correct.** Update configuration and review policy still matter. This directly addresses the constraint stated in this case.
- **B. Code analysis does not inventory every image component** The base image can add vulnerabilities independent of source. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **C. Secret detection does not inspect dependency advisories** One security tool does not cover every threat category. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** Update configuration and review policy still matter. The selected answer is an alert is not an automatically accepted remediation.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q008

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which observation provides the strongest evidence that the requested result was achieved?

- **A. An affected dependency receives a reviewed tested update** **Correct.** The evidence must show actual risk treatment. This directly addresses the constraint stated in this case.
- **B. The built image produces findings tied to its immutable digest** The result should identify the actual deployable image. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **C. A known vulnerable test dependency produces the expected alert** The probe should target the previously missing scan class. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must show actual risk treatment. The selected answer is an affected dependency receives a reviewed tested update.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q009

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a controlled fixture rather than a live exploitable deployment** Validation should not create unnecessary exposure. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.
- **B. Retain required tests before accepting dependency updates** **Correct.** A version bump can introduce compatibility changes. This directly addresses the constraint stated in this case.
- **C. Rescan and rebuild when base-image advisories change** An unchanged application can inherit new known risks. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** A version bump can introduce compatibility changes. The selected answer is retain required tests before accepting dependency updates.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q010

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

Dependabot ambiguity: Dependabot alerts identify an affected package, and the team assumes every alert automatically opens and merges a fix. The team selects this remedy: "Configure the desired update workflow and review proposed fixes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Not every advisory has an available fix** **Correct.** Some findings need mitigation or documented risk decisions. This directly addresses the constraint stated in this case.
- **B. Image scanning cannot prove exploitability in every deployment** Findings still need contextual prioritization. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **C. More scanners add triage and maintenance work** Coverage should match the repository's actual risks. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** Some findings need mitigation or documented risk decisions. The selected answer is not every advisory has an available fix.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q011

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which next change most directly satisfies the stated requirement?

- **A. Install or configure the supported CodeQL analysis workflow explicitly** A container is an execution environment rather than a scanner. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **B. Configure the desired update workflow and review proposed fixes** Detection and automated update behavior are separate capabilities. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.
- **C. Scan the final container image for package vulnerabilities** **Correct.** Source analysis and image-package analysis cover different layers. This directly addresses the constraint stated in this case.

**Explanation:** Source analysis and image-package analysis cover different layers. The selected answer is scan the final container image for package vulnerabilities.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q012

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which explanation best accounts for the behavior or constraint described?

- **A. Code analysis does not inventory every image component** **Correct.** The base image can add vulnerabilities independent of source. This directly addresses the constraint stated in this case.
- **B. Container execution does not automatically create a CodeQL database** Analysis needs its supported setup and language handling. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **C. An alert is not an automatically accepted remediation** Update configuration and review policy still matter. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** The base image can add vulnerabilities independent of source. The selected answer is code analysis does not inventory every image component.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q013

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The built image produces findings tied to its immutable digest** **Correct.** The result should identify the actual deployable image. This directly addresses the constraint stated in this case.
- **B. The run uploads valid analysis results for the intended code** The proof must include completed analysis rather than container startup. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **C. An affected dependency receives a reviewed tested update** The evidence must show actual risk treatment. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** The result should identify the actual deployable image. The selected answer is the built image produces findings tied to its immutable digest.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q014

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a trusted analysis image and supported tool versions** The scanner environment is an executable dependency. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **B. Retain required tests before accepting dependency updates** A version bump can introduce compatibility changes. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.
- **C. Rescan and rebuild when base-image advisories change** **Correct.** An unchanged application can inherit new known risks. This directly addresses the constraint stated in this case.

**Explanation:** An unchanged application can inherit new known risks. The selected answer is rescan and rebuild when base-image advisories change.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q015

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Container blind spot: CodeQL passes for the application, but the container includes vulnerable operating-system packages. The team selects this remedy: "Scan the final container image for package vulnerabilities." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Image scanning cannot prove exploitability in every deployment** **Correct.** Findings still need contextual prioritization. This directly addresses the constraint stated in this case.
- **B. Containerized analysis still needs correct build context** Missing sources or toolchains can invalidate the intended analysis. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **C. Not every advisory has an available fix** Some findings need mitigation or documented risk decisions. That addresses a different requirement: Dependabot ambiguity. It does not directly resolve this case's stated constraint.

**Explanation:** Findings still need contextual prioritization. The selected answer is image scanning cannot prove exploitability in every deployment.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q016

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which next change most directly satisfies the stated requirement?

- **A. Scan the final container image for package vulnerabilities** Source analysis and image-package analysis cover different layers. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **B. Install or configure the supported CodeQL analysis workflow explicitly** **Correct.** A container is an execution environment rather than a scanner. This directly addresses the constraint stated in this case.
- **C. Add license inventory and policy review** Legal usage constraints differ from security advisories. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.

**Explanation:** A container is an execution environment rather than a scanner. The selected answer is install or configure the supported CodeQL analysis workflow explicitly.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q017

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which explanation best accounts for the behavior or constraint described?

- **A. Container execution does not automatically create a CodeQL database** **Correct.** Analysis needs its supported setup and language handling. This directly addresses the constraint stated in this case.
- **B. Vulnerability detection does not determine license compatibility** A secure package can still violate usage policy. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **C. Code analysis does not inventory every image component** The base image can add vulnerabilities independent of source. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** Analysis needs its supported setup and language handling. The selected answer is container execution does not automatically create a CodeQL database.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q018

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The built image produces findings tied to its immutable digest** The result should identify the actual deployable image. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **B. The run uploads valid analysis results for the intended code** **Correct.** The proof must include completed analysis rather than container startup. This directly addresses the constraint stated in this case.
- **C. The dependency inventory exposes the disallowed license for review** The evidence should identify package and applicable terms. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.

**Explanation:** The proof must include completed analysis rather than container startup. The selected answer is the run uploads valid analysis results for the intended code.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q019

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a trusted analysis image and supported tool versions** **Correct.** The scanner environment is an executable dependency. This directly addresses the constraint stated in this case.
- **B. Escalate ambiguous license interpretation to the responsible policy owner** Automated labels may not capture every legal obligation. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **C. Rescan and rebuild when base-image advisories change** An unchanged application can inherit new known risks. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** The scanner environment is an executable dependency. The selected answer is use a trusted analysis image and supported tool versions.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q020

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

CodeQL in container: A workflow runs inside a container and the team expects that fact alone to perform code analysis. The team selects this remedy: "Install or configure the supported CodeQL analysis workflow explicitly." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Image scanning cannot prove exploitability in every deployment** Findings still need contextual prioritization. That addresses a different requirement: Container blind spot. It does not directly resolve this case's stated constraint.
- **B. Containerized analysis still needs correct build context** **Correct.** Missing sources or toolchains can invalidate the intended analysis. This directly addresses the constraint stated in this case.
- **C. License policy can restrict otherwise useful dependencies** Exceptions require deliberate accountable decisions. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.

**Explanation:** Missing sources or toolchains can invalidate the intended analysis. The selected answer is containerized analysis still needs correct build context.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q021

Foundational · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which next change most directly satisfies the stated requirement?

- **A. Install or configure the supported CodeQL analysis workflow explicitly** A container is an execution environment rather than a scanner. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **B. Add license inventory and policy review** **Correct.** Legal usage constraints differ from security advisories. This directly addresses the constraint stated in this case.
- **C. Use a documented synthetic detection fixture in an isolated exercise** Testing should avoid real credential exposure. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.

**Explanation:** Legal usage constraints differ from security advisories. The selected answer is add license inventory and policy review.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q022

Foundational · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which explanation best accounts for the behavior or constraint described?

- **A. Vulnerability detection does not determine license compatibility** **Correct.** A secure package can still violate usage policy. This directly addresses the constraint stated in this case.
- **B. A live secret is unnecessary to validate the workflow** The educational goal is detection behavior. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **C. Container execution does not automatically create a CodeQL database** Analysis needs its supported setup and language handling. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.

**Explanation:** A secure package can still violate usage policy. The selected answer is vulnerability detection does not determine license compatibility.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q023

Applied · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The expected test finding appears without an active credential** The evidence should prove scanner execution safely. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **B. The run uploads valid analysis results for the intended code** The proof must include completed analysis rather than container startup. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.
- **C. The dependency inventory exposes the disallowed license for review** **Correct.** The evidence should identify package and applicable terms. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should identify package and applicable terms. The selected answer is the dependency inventory exposes the disallowed license for review.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q024

Applied · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. Which execution safeguard most directly addresses the risk in this case?

- **A. Escalate ambiguous license interpretation to the responsible policy owner** **Correct.** Automated labels may not capture every legal obligation. This directly addresses the constraint stated in this case.
- **B. Clearly label and clean up deliberate training findings** Synthetic alerts can otherwise confuse operational triage. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **C. Use a trusted analysis image and supported tool versions** The scanner environment is an executable dependency. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.

**Explanation:** Automated labels may not capture every legal obligation. The selected answer is escalate ambiguous license interpretation to the responsible policy owner.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q025

Advanced · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md)

License risk: All vulnerability scans pass, but a newly introduced dependency has a license the organization cannot accept. The team selects this remedy: "Add license inventory and policy review." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. License policy can restrict otherwise useful dependencies** **Correct.** Exceptions require deliberate accountable decisions. This directly addresses the constraint stated in this case.
- **B. A fixture may not cover every real secret format** Detection coverage needs broader documented understanding. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **C. Containerized analysis still needs correct build context** Missing sources or toolchains can invalidate the intended analysis. That addresses a different requirement: CodeQL in container. It does not directly resolve this case's stated constraint.

**Explanation:** Exceptions require deliberate accountable decisions. The selected answer is license policy can restrict otherwise useful dependencies.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which next change most directly satisfies the stated requirement?

- **A. Propagate policy-relevant scan outcomes into the release gate** Findings need enforceable policy handling. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. Add license inventory and policy review** Legal usage constraints differ from security advisories. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **C. Use a documented synthetic detection fixture in an isolated exercise** **Correct.** Testing should avoid real credential exposure. This directly addresses the constraint stated in this case.

**Explanation:** Testing should avoid real credential exposure. The selected answer is use a documented synthetic detection fixture in an isolated exercise.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q027

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline converts a failing security decision into success** Visible output alone does not block promotion. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. Vulnerability detection does not determine license compatibility** A secure package can still violate usage policy. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **C. A live secret is unnecessary to validate the workflow** **Correct.** The educational goal is detection behavior. This directly addresses the constraint stated in this case.

**Explanation:** The educational goal is detection behavior. The selected answer is a live secret is unnecessary to validate the workflow.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q028

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dependency inventory exposes the disallowed license for review** The evidence should identify package and applicable terms. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **B. The expected test finding appears without an active credential** **Correct.** The evidence should prove scanner execution safely. This directly addresses the constraint stated in this case.
- **C. A controlled disallowed finding stops the protected release** A negative probe demonstrates enforcement. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should prove scanner execution safely. The selected answer is the expected test finding appears without an active credential.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q029

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate tool failure from vulnerability-policy failure** Both need visible but appropriately classified handling. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. Escalate ambiguous license interpretation to the responsible policy owner** Automated labels may not capture every legal obligation. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.
- **C. Clearly label and clean up deliberate training findings** **Correct.** Synthetic alerts can otherwise confuse operational triage. This directly addresses the constraint stated in this case.

**Explanation:** Synthetic alerts can otherwise confuse operational triage. The selected answer is clearly label and clean up deliberate training findings.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Secret probe: A lab needs to demonstrate secret scanning without publishing an actual usable cloud credential. The team selects this remedy: "Use a documented synthetic detection fixture in an isolated exercise." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. A fixture may not cover every real secret format** **Correct.** Detection coverage needs broader documented understanding. This directly addresses the constraint stated in this case.
- **B. Strict gating can interrupt delivery for false positives** A reviewed exception process preserves accountability. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **C. License policy can restrict otherwise useful dependencies** Exceptions require deliberate accountable decisions. That addresses a different requirement: License risk. It does not directly resolve this case's stated constraint.

**Explanation:** Detection coverage needs broader documented understanding. The selected answer is a fixture may not cover every real secret format.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q031

Foundational · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which next change most directly satisfies the stated requirement?

- **A. Propagate policy-relevant scan outcomes into the release gate** **Correct.** Findings need enforceable policy handling. This directly addresses the constraint stated in this case.
- **B. Inspect the resolved graph and update the affected dependency chain** The deployed dependency graph includes transitive components. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **C. Use a documented synthetic detection fixture in an isolated exercise** Testing should avoid real credential exposure. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.

**Explanation:** Findings need enforceable policy handling. The selected answer is propagate policy-relevant scan outcomes into the release gate.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q032

Foundational · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which explanation best accounts for the behavior or constraint described?

- **A. A live secret is unnecessary to validate the workflow** The educational goal is detection behavior. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **B. The pipeline converts a failing security decision into success** **Correct.** Visible output alone does not block promotion. This directly addresses the constraint stated in this case.
- **C. Direct manifests alone do not describe all resolved packages** A safe top-level version can still resolve unsafe children. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Visible output alone does not block promotion. The selected answer is the pipeline converts a failing security decision into success.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q033

Applied · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A controlled disallowed finding stops the protected release** **Correct.** A negative probe demonstrates enforcement. This directly addresses the constraint stated in this case.
- **B. The resolved lock graph no longer includes the affected version** The proof must inspect actual build inputs. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **C. The expected test finding appears without an active credential** The evidence should prove scanner execution safely. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.

**Explanation:** A negative probe demonstrates enforcement. The selected answer is a controlled disallowed finding stops the protected release.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q034

Applied · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate tool failure from vulnerability-policy failure** **Correct.** Both need visible but appropriately classified handling. This directly addresses the constraint stated in this case.
- **B. Review compatibility and rerun representative tests** Transitive changes can affect application behavior. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **C. Clearly label and clean up deliberate training findings** Synthetic alerts can otherwise confuse operational triage. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.

**Explanation:** Both need visible but appropriately classified handling. The selected answer is separate tool failure from vulnerability-policy failure.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q035

Advanced · [CP2](README.md#task-2) · [D4.3.1](../../docs/objective-map.md)

Ignored scan exit: A scanner reports critical findings but the wrapper always exits successfully and release promotion proceeds. The team selects this remedy: "Propagate policy-relevant scan outcomes into the release gate." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. A fix may depend on an upstream maintainer release** Mitigation may be needed while waiting. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **B. A fixture may not cover every real secret format** Detection coverage needs broader documented understanding. That addresses a different requirement: Secret probe. It does not directly resolve this case's stated constraint.
- **C. Strict gating can interrupt delivery for false positives** **Correct.** A reviewed exception process preserves accountability. This directly addresses the constraint stated in this case.

**Explanation:** A reviewed exception process preserves accountability. The selected answer is strict gating can interrupt delivery for false positives.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q036

Foundational · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which next change most directly satisfies the stated requirement?

- **A. Propagate policy-relevant scan outcomes into the release gate** Findings need enforceable policy handling. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. Inspect the resolved graph and update the affected dependency chain** **Correct.** The deployed dependency graph includes transitive components. This directly addresses the constraint stated in this case.
- **C. Require justified dispositions and verify remediation evidence** Alert status should reflect an accountable risk decision. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.

**Explanation:** The deployed dependency graph includes transitive components. The selected answer is inspect the resolved graph and update the affected dependency chain.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q037

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which explanation best accounts for the behavior or constraint described?

- **A. Direct manifests alone do not describe all resolved packages** **Correct.** A safe top-level version can still resolve unsafe children. This directly addresses the constraint stated in this case.
- **B. Bulk dismissal changes reporting without fixing exposure** A green chart can hide unresolved vulnerabilities. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.
- **C. The pipeline converts a failing security decision into success** Visible output alone does not block promotion. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.

**Explanation:** A safe top-level version can still resolve unsafe children. The selected answer is direct manifests alone do not describe all resolved packages.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q038

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A controlled disallowed finding stops the protected release** A negative probe demonstrates enforcement. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. The resolved lock graph no longer includes the affected version** **Correct.** The proof must inspect actual build inputs. This directly addresses the constraint stated in this case.
- **C. Each critical finding has a fix or approved documented exception** The review should examine actual risk treatment. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.

**Explanation:** The proof must inspect actual build inputs. The selected answer is the resolved lock graph no longer includes the affected version.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q039

Applied · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate tool failure from vulnerability-policy failure** Both need visible but appropriately classified handling. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. Review compatibility and rerun representative tests** **Correct.** Transitive changes can affect application behavior. This directly addresses the constraint stated in this case.
- **C. Audit dismissal permissions and reasons** Uncontrolled suppression undermines the security signal. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.

**Explanation:** Transitive changes can affect application behavior. The selected answer is review compatibility and rerun representative tests.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q040

Advanced · [CP1](README.md#task-1) · [D4.3.6](../../docs/objective-map.md)

Stale transitive dependency: The direct dependency version is unchanged, but a vulnerable transitive component remains in the lock file. The team selects this remedy: "Inspect the resolved graph and update the affected dependency chain." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Strict gating can interrupt delivery for false positives** A reviewed exception process preserves accountability. That addresses a different requirement: Ignored scan exit. It does not directly resolve this case's stated constraint.
- **B. A fix may depend on an upstream maintainer release** **Correct.** Mitigation may be needed while waiting. This directly addresses the constraint stated in this case.
- **C. Accepted risks remain risks until resolved** Exceptions need owners scope and review dates. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.

**Explanation:** Mitigation may be needed while waiting. The selected answer is a fix may depend on an upstream maintainer release.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q041

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which next change most directly satisfies the stated requirement?

- **A. Require scan evidence for the exact release digest** Security evidence must match the delivered bytes. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **B. Inspect the resolved graph and update the affected dependency chain** The deployed dependency graph includes transitive components. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **C. Require justified dispositions and verify remediation evidence** **Correct.** Alert status should reflect an accountable risk decision. This directly addresses the constraint stated in this case.

**Explanation:** Alert status should reflect an accountable risk decision. The selected answer is require justified dispositions and verify remediation evidence.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q042

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which explanation best accounts for the behavior or constraint described?

- **A. Direct manifests alone do not describe all resolved packages** A safe top-level version can still resolve unsafe children. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.
- **B. Bulk dismissal changes reporting without fixing exposure** **Correct.** A green chart can hide unresolved vulnerabilities. This directly addresses the constraint stated in this case.
- **C. A reused tag hides the change in image identity** An earlier result cannot validate a different image. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.

**Explanation:** A green chart can hide unresolved vulnerabilities. The selected answer is bulk dismissal changes reporting without fixing exposure.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q043

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Each critical finding has a fix or approved documented exception** **Correct.** The review should examine actual risk treatment. This directly addresses the constraint stated in this case.
- **B. The release digest matches the scanned digest** Content identity connects the scan to deployment. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **C. The resolved lock graph no longer includes the affected version** The proof must inspect actual build inputs. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.

**Explanation:** The review should examine actual risk treatment. The selected answer is each critical finding has a fix or approved documented exception.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q044

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. Which execution safeguard most directly addresses the risk in this case?

- **A. Audit dismissal permissions and reasons** **Correct.** Uncontrolled suppression undermines the security signal. This directly addresses the constraint stated in this case.
- **B. Prevent substitution after the security decision** Mutable release selection can invalidate approval evidence. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **C. Review compatibility and rerun representative tests** Transitive changes can affect application behavior. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Uncontrolled suppression undermines the security signal. The selected answer is audit dismissal permissions and reasons.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q045

Advanced · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md), [D4.3.1](../../docs/objective-map.md)

Alert suppression: An engineer dismisses every high-severity alert to make the dashboard green before a release review. The team selects this remedy: "Require justified dispositions and verify remediation evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Accepted risks remain risks until resolved** **Correct.** Exceptions need owners scope and review dates. This directly addresses the constraint stated in this case.
- **B. Digest-specific evidence increases metadata management** The benefit is trustworthy release traceability. That addresses a different requirement: Scan provenance. It does not directly resolve this case's stated constraint.
- **C. A fix may depend on an upstream maintainer release** Mitigation may be needed while waiting. That addresses a different requirement: Stale transitive dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Exceptions need owners scope and review dates. The selected answer is accepted risks remain risks until resolved.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q046

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which next change most directly satisfies the stated requirement?

- **A. Require scan evidence for the exact release digest** **Correct.** Security evidence must match the delivered bytes. This directly addresses the constraint stated in this case.
- **B. Add dependency vulnerability analysis to the scan strategy** Different risk classes need different scanning capabilities. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.
- **C. Require justified dispositions and verify remediation evidence** Alert status should reflect an accountable risk decision. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.

**Explanation:** Security evidence must match the delivered bytes. The selected answer is require scan evidence for the exact release digest.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q047

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which explanation best accounts for the behavior or constraint described?

- **A. Bulk dismissal changes reporting without fixing exposure** A green chart can hide unresolved vulnerabilities. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.
- **B. A reused tag hides the change in image identity** **Correct.** An earlier result cannot validate a different image. This directly addresses the constraint stated in this case.
- **C. Secret detection does not inspect dependency advisories** One security tool does not cover every threat category. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** An earlier result cannot validate a different image. The selected answer is a reused tag hides the change in image identity.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q048

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known vulnerable test dependency produces the expected alert** The probe should target the previously missing scan class. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.
- **B. Each critical finding has a fix or approved documented exception** The review should examine actual risk treatment. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.
- **C. The release digest matches the scanned digest** **Correct.** Content identity connects the scan to deployment. This directly addresses the constraint stated in this case.

**Explanation:** Content identity connects the scan to deployment. The selected answer is the release digest matches the scanned digest.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q049

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. Which execution safeguard most directly addresses the risk in this case?

- **A. Audit dismissal permissions and reasons** Uncontrolled suppression undermines the security signal. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.
- **B. Prevent substitution after the security decision** **Correct.** Mutable release selection can invalidate approval evidence. This directly addresses the constraint stated in this case.
- **C. Use a controlled fixture rather than a live exploitable deployment** Validation should not create unnecessary exposure. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.

**Explanation:** Mutable release selection can invalidate approval evidence. The selected answer is prevent substitution after the security decision.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q050

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scan provenance: A clean image report belongs to yesterday's digest, but today's release uses a rebuilt tag with different content. The team selects this remedy: "Require scan evidence for the exact release digest." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More scanners add triage and maintenance work** Coverage should match the repository's actual risks. That addresses a different requirement: Scan gap. It does not directly resolve this case's stated constraint.
- **B. Accepted risks remain risks until resolved** Exceptions need owners scope and review dates. That addresses a different requirement: Alert suppression. It does not directly resolve this case's stated constraint.
- **C. Digest-specific evidence increases metadata management** **Correct.** The benefit is trustworthy release traceability. This directly addresses the constraint stated in this case.

**Explanation:** The benefit is trustworthy release traceability. The selected answer is digest-specific evidence increases metadata management.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)
