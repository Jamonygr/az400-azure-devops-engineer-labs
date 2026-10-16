# Lab 13 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L13-Q001

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which next change most directly satisfies the stated requirement?

- **A.** Configure protected environment checks outside author-controlled YAML
- **B.** Require an eligible independent approver
- **C.** Choose the gate whose trust boundary matches the requirement

## L13-Q002

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which explanation best accounts for the behavior or constraint described?

- **A.** Execution pause and independent resource protection are different mechanisms
- **B.** The author controls both deployment and its approval rule
- **C.** Approval identity is not independent of the request

## L13-Q003

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The requester cannot approve their own protected deployment
- **B.** An author cannot edit away the required independent protection
- **C.** Removing YAML steps does not bypass the environment approval

## L13-Q004

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review who can modify each gate and pipeline definition
- **B.** Limit environment administration to accountable owners
- **C.** Keep an available backup approver group

## L13-Q005

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. The team selects this remedy: "Configure protected environment checks outside author-controlled YAML." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Porting gates across platforms may require redesign
- **B.** External checks need separate configuration management
- **C.** Independent approval adds coordination latency

## L13-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which next change most directly satisfies the stated requirement?

- **A.** Add a protected branch-control check for the environment
- **B.** Configure protected environment checks outside author-controlled YAML
- **C.** Require an eligible independent approver

## L13-Q007

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which explanation best accounts for the behavior or constraint described?

- **A.** The author controls both deployment and its approval rule
- **B.** Approval identity is not independent of the request
- **C.** The gate checks success but not authorized source branch

## L13-Q008

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Removing YAML steps does not bypass the environment approval
- **B.** The requester cannot approve their own protected deployment
- **C.** A feature-branch run is rejected while main is accepted

## L13-Q009

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep an available backup approver group
- **B.** Protect the permitted branch and its required validations
- **C.** Limit environment administration to accountable owners

## L13-Q010

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. The team selects this remedy: "Require an eligible independent approver." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Branch controls depend on accurate linked-resource provenance
- **B.** External checks need separate configuration management
- **C.** Independent approval adds coordination latency

## L13-Q011

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which next change most directly satisfies the stated requirement?

- **A.** Require an eligible independent approver
- **B.** Add a protected branch-control check for the environment
- **C.** Use an exclusive lock with an intentional queue policy

## L13-Q012

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which explanation best accounts for the behavior or constraint described?

- **A.** Approval identity is not independent of the request
- **B.** The gate checks success but not authorized source branch
- **C.** Approval does not serialize concurrent execution

## L13-Q013

Applied · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Only one protected deployment changes the environment at a time
- **B.** The requester cannot approve their own protected deployment
- **C.** A feature-branch run is rejected while main is accepted

## L13-Q014

Applied · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which execution safeguard most directly addresses the risk in this case?

- **A.** Choose cancellation or sequential behavior based on recovery safety
- **B.** Keep an available backup approver group
- **C.** Protect the permitted branch and its required validations

## L13-Q015

Advanced · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. The team selects this remedy: "Add a protected branch-control check for the environment." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Independent approval adds coordination latency
- **B.** Branch controls depend on accurate linked-resource provenance
- **C.** Serialization increases queue time

## L13-Q016

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which next change most directly satisfies the stated requirement?

- **A.** Add a protected branch-control check for the environment
- **B.** Use an exclusive lock with an intentional queue policy
- **C.** Gate promotion on relevant runtime health evidence

## L13-Q017

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which explanation best accounts for the behavior or constraint described?

- **A.** The gate checks success but not authorized source branch
- **B.** Approval does not serialize concurrent execution
- **C.** The release gate omits the failing operational signal

## L13-Q018

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A failed health probe prevents traffic promotion
- **B.** A feature-branch run is rejected while main is accepted
- **C.** Only one protected deployment changes the environment at a time

## L13-Q019

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use bounded observation periods and a defined recovery action
- **B.** Protect the permitted branch and its required validations
- **C.** Choose cancellation or sequential behavior based on recovery safety

## L13-Q020

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. The team selects this remedy: "Use an exclusive lock with an intentional queue policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Branch controls depend on accurate linked-resource provenance
- **B.** Serialization increases queue time
- **C.** Health gates can produce false positives

## L13-Q021

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which next change most directly satisfies the stated requirement?

- **A.** Set an explicit approval timeout and communicate the outcome
- **B.** Use an exclusive lock with an intentional queue policy
- **C.** Gate promotion on relevant runtime health evidence

## L13-Q022

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which explanation best accounts for the behavior or constraint described?

- **A.** Approval does not serialize concurrent execution
- **B.** The release gate omits the failing operational signal
- **C.** The workflow lacks a defined expired-approval path

## L13-Q023

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A failed health probe prevents traffic promotion
- **B.** An unanswered request expires with a visible failed or skipped outcome
- **C.** Only one protected deployment changes the environment at a time

## L13-Q024

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document how to retry after renewed authorization
- **B.** Choose cancellation or sequential behavior based on recovery safety
- **C.** Use bounded observation periods and a defined recovery action

## L13-Q025

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. The team selects this remedy: "Gate promotion on relevant runtime health evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Short timeouts may reject otherwise valid releases
- **B.** Serialization increases queue time
- **C.** Health gates can produce false positives

## L13-Q026

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which next change most directly satisfies the stated requirement?

- **A.** Gate promotion on relevant runtime health evidence
- **B.** Set an explicit approval timeout and communicate the outcome
- **C.** Use a schedule or business-hours check appropriate to the platform

## L13-Q027

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which explanation best accounts for the behavior or constraint described?

- **A.** The release gate omits the failing operational signal
- **B.** The workflow lacks a defined expired-approval path
- **C.** An approval alone does not enforce the calendar boundary

## L13-Q028

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployment waits until the permitted window
- **B.** A failed health probe prevents traffic promotion
- **C.** An unanswered request expires with a visible failed or skipped outcome

## L13-Q029

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check timezone and window duration explicitly
- **B.** Use bounded observation periods and a defined recovery action
- **C.** Document how to retry after renewed authorization

## L13-Q030

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. The team selects this remedy: "Set an explicit approval timeout and communicate the outcome." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Health gates can produce false positives
- **B.** Short timeouts may reject otherwise valid releases
- **C.** Calendar gates can delay urgent remediations

## L13-Q031

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which next change most directly satisfies the stated requirement?

- **A.** Set an explicit approval timeout and communicate the outcome
- **B.** Use a schedule or business-hours check appropriate to the platform
- **C.** Present the immutable release identity and validation evidence

## L13-Q032

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which explanation best accounts for the behavior or constraint described?

- **A.** Approval is being treated as a ceremonial click
- **B.** The workflow lacks a defined expired-approval path
- **C.** An approval alone does not enforce the calendar boundary

## L13-Q033

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployment waits until the permitted window
- **B.** The request links to the exact artifact and its checks
- **C.** An unanswered request expires with a visible failed or skipped outcome

## L13-Q034

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check timezone and window duration explicitly
- **B.** Prevent substitution of the artifact after approval
- **C.** Document how to retry after renewed authorization

## L13-Q035

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. The team selects this remedy: "Use a schedule or business-hours check appropriate to the platform." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Rich evidence takes effort to collect and maintain
- **B.** Short timeouts may reject otherwise valid releases
- **C.** Calendar gates can delay urgent remediations

## L13-Q036

Foundational · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which next change most directly satisfies the stated requirement?

- **A.** Restrict and audit exceptional bypass use
- **B.** Use a schedule or business-hours check appropriate to the platform
- **C.** Present the immutable release identity and validation evidence

## L13-Q037

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which explanation best accounts for the behavior or constraint described?

- **A.** An approval alone does not enforce the calendar boundary
- **B.** Approval is being treated as a ceremonial click
- **C.** Normal delivery is avoiding the required control

## L13-Q038

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployment waits until the permitted window
- **B.** The request links to the exact artifact and its checks
- **C.** Bypass events identify an owner reason and reviewed incident

## L13-Q039

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check timezone and window duration explicitly
- **B.** Prevent substitution of the artifact after approval
- **C.** Use a narrowly defined emergency access process

## L13-Q040

Advanced · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. The team selects this remedy: "Present the immutable release identity and validation evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Emergency access remains a residual risk
- **B.** Calendar gates can delay urgent remediations
- **C.** Rich evidence takes effort to collect and maintain

## L13-Q041

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which next change most directly satisfies the stated requirement?

- **A.** Present the immutable release identity and validation evidence
- **B.** Restrict and audit exceptional bypass use
- **C.** Choose the gate whose trust boundary matches the requirement

## L13-Q042

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which explanation best accounts for the behavior or constraint described?

- **A.** Approval is being treated as a ceremonial click
- **B.** Normal delivery is avoiding the required control
- **C.** Execution pause and independent resource protection are different mechanisms

## L13-Q043

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Bypass events identify an owner reason and reviewed incident
- **B.** An author cannot edit away the required independent protection
- **C.** The request links to the exact artifact and its checks

## L13-Q044

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a narrowly defined emergency access process
- **B.** Review who can modify each gate and pipeline definition
- **C.** Prevent substitution of the artifact after approval

## L13-Q045

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. The team selects this remedy: "Restrict and audit exceptional bypass use." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Emergency access remains a residual risk
- **B.** Porting gates across platforms may require redesign
- **C.** Rich evidence takes effort to collect and maintain

## L13-Q046

Foundational · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which next change most directly satisfies the stated requirement?

- **A.** Restrict and audit exceptional bypass use
- **B.** Choose the gate whose trust boundary matches the requirement
- **C.** Configure protected environment checks outside author-controlled YAML

## L13-Q047

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which explanation best accounts for the behavior or constraint described?

- **A.** Execution pause and independent resource protection are different mechanisms
- **B.** The author controls both deployment and its approval rule
- **C.** Normal delivery is avoiding the required control

## L13-Q048

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** An author cannot edit away the required independent protection
- **B.** Removing YAML steps does not bypass the environment approval
- **C.** Bypass events identify an owner reason and reviewed incident

## L13-Q049

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a narrowly defined emergency access process
- **B.** Review who can modify each gate and pipeline definition
- **C.** Limit environment administration to accountable owners

## L13-Q050

Advanced · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. The team selects this remedy: "Choose the gate whose trust boundary matches the requirement." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** External checks need separate configuration management
- **B.** Emergency access remains a residual risk
- **C.** Porting gates across platforms may require redesign
