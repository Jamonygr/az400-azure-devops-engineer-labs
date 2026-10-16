# Lab 01 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L01-Q001

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which next change most directly satisfies the stated requirement?

- **A.** Integrate small pull requests into the default branch frequently
- **B.** Assign triage ownership and targeted issue notifications
- **C.** Restrict the installation to the training repository

## L01-Q002

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which explanation best accounts for the behavior or constraint described?

- **A.** The integration installation was authorized too broadly
- **B.** Long-lived branches defer integration feedback
- **C.** Issue capture alone does not establish a feedback loop

## L01-Q003

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test issue reaches its owner and receives acknowledgement
- **B.** Only the training repository remains available to the connector
- **C.** Small changes reach the default branch regularly

## L01-Q004

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which execution safeguard most directly addresses the risk in this case?

- **A.** Require review and automated checks before merging
- **B.** Avoid sending customer secrets into issue notifications
- **C.** Check existing integrations before removing repository permissions

## L01-Q005

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. The team selects this remedy: "Integrate small pull requests into the default branch frequently." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Narrow access requires updates when new repositories join
- **B.** Frequent integration requires disciplined small changes
- **C.** More notifications can increase alert fatigue

## L01-Q006

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which next change most directly satisfies the stated requirement?

- **A.** Integrate small pull requests into the default branch frequently
- **B.** Assign triage ownership and targeted issue notifications
- **C.** Define one planning record and link repository activity

## L01-Q007

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which explanation best accounts for the behavior or constraint described?

- **A.** Long-lived branches defer integration feedback
- **B.** Issue capture alone does not establish a feedback loop
- **C.** Independent trackers lack a common work-item relationship

## L01-Q008

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A work item navigates to its corresponding pull request
- **B.** Small changes reach the default branch regularly
- **C.** A test issue reaches its owner and receives acknowledgement

## L01-Q009

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid sending customer secrets into issue notifications
- **B.** Agree ownership of status transitions before integrating tools
- **C.** Require review and automated checks before merging

## L01-Q010

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. The team selects this remedy: "Assign triage ownership and targeted issue notifications." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Frequent integration requires disciplined small changes
- **B.** More notifications can increase alert fatigue
- **C.** Tool integration does not resolve conflicting team processes

## L01-Q011

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which next change most directly satisfies the stated requirement?

- **A.** Define one planning record and link repository activity
- **B.** Link bug, pull request, build, and release evidence
- **C.** Assign triage ownership and targeted issue notifications

## L01-Q012

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which explanation best accounts for the behavior or constraint described?

- **A.** Deployment success does not identify business intent
- **B.** Issue capture alone does not establish a feedback loop
- **C.** Independent trackers lack a common work-item relationship

## L01-Q013

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test issue reaches its owner and receives acknowledgement
- **B.** A work item navigates to its corresponding pull request
- **C.** The deployed commit can be traced back to its bug

## L01-Q014

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which execution safeguard most directly addresses the risk in this case?

- **A.** Preserve immutable build identifiers with release records
- **B.** Avoid sending customer secrets into issue notifications
- **C.** Agree ownership of status transitions before integrating tools

## L01-Q015

Advanced · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. The team selects this remedy: "Define one planning record and link repository activity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Traceability depends on consistent linking practices
- **B.** More notifications can increase alert fatigue
- **C.** Tool integration does not resolve conflicting team processes

## L01-Q016

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which next change most directly satisfies the stated requirement?

- **A.** Define one planning record and link repository activity
- **B.** Link bug, pull request, build, and release evidence
- **C.** Verify the Boards GitHub connection and supported linking syntax

## L01-Q017

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which explanation best accounts for the behavior or constraint described?

- **A.** A text URL is not necessarily a recognized development link
- **B.** Independent trackers lack a common work-item relationship
- **C.** Deployment success does not identify business intent

## L01-Q018

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployed commit can be traced back to its bug
- **B.** The work item displays the pull request in development links
- **C.** A work item navigates to its corresponding pull request

## L01-Q019

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize only the repositories needed by the project
- **B.** Agree ownership of status transitions before integrating tools
- **C.** Preserve immutable build identifiers with release records

## L01-Q020

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. The team selects this remedy: "Link bug, pull request, build, and release evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Traceability depends on consistent linking practices
- **B.** Repository moves can require integration reconfiguration
- **C.** Tool integration does not resolve conflicting team processes

## L01-Q021

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which next change most directly satisfies the stated requirement?

- **A.** Verify the Boards GitHub connection and supported linking syntax
- **B.** Merge incrementally behind a disabled feature flag
- **C.** Link bug, pull request, build, and release evidence

## L01-Q022

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which explanation best accounts for the behavior or constraint described?

- **A.** Branch isolation was being used as a release mechanism
- **B.** Deployment success does not identify business intent
- **C.** A text URL is not necessarily a recognized development link

## L01-Q023

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployed commit can be traced back to its bug
- **B.** The work item displays the pull request in development links
- **C.** The merged feature remains hidden until explicitly enabled

## L01-Q024

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which execution safeguard most directly addresses the risk in this case?

- **A.** Test both enabled and disabled feature paths
- **B.** Preserve immutable build identifiers with release records
- **C.** Authorize only the repositories needed by the project

## L01-Q025

Advanced · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. The team selects this remedy: "Verify the Boards GitHub connection and supported linking syntax." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Repository moves can require integration reconfiguration
- **B.** Flags add lifecycle and cleanup work
- **C.** Traceability depends on consistent linking practices

## L01-Q026

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which next change most directly satisfies the stated requirement?

- **A.** Merge incrementally behind a disabled feature flag
- **B.** Filter events and route actionable failures to owners
- **C.** Verify the Boards GitHub connection and supported linking syntax

## L01-Q027

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which explanation best accounts for the behavior or constraint described?

- **A.** Branch isolation was being used as a release mechanism
- **B.** Unfiltered automation creates noise without prioritization
- **C.** A text URL is not necessarily a recognized development link

## L01-Q028

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The merged feature remains hidden until explicitly enabled
- **B.** A simulated regression creates one actionable assigned issue
- **C.** The work item displays the pull request in development links

## L01-Q029

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which execution safeguard most directly addresses the risk in this case?

- **A.** Deduplicate repeated events for the same incident
- **B.** Authorize only the repositories needed by the project
- **C.** Test both enabled and disabled feature paths

## L01-Q030

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. The team selects this remedy: "Merge incrementally behind a disabled feature flag." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Repository moves can require integration reconfiguration
- **B.** Flags add lifecycle and cleanup work
- **C.** Aggressive filtering can hide novel failure types

## L01-Q031

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which next change most directly satisfies the stated requirement?

- **A.** Filter events and route actionable failures to owners
- **B.** Reference the exact work-item identifier in the pull request
- **C.** Merge incrementally behind a disabled feature flag

## L01-Q032

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which explanation best accounts for the behavior or constraint described?

- **A.** Branch isolation was being used as a release mechanism
- **B.** Unfiltered automation creates noise without prioritization
- **C.** Human-readable titles are not unique traceability keys

## L01-Q033

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A simulated regression creates one actionable assigned issue
- **B.** The hotfix commit resolves to one specific bug record
- **C.** The merged feature remains hidden until explicitly enabled

## L01-Q034

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which execution safeguard most directly addresses the risk in this case?

- **A.** Test both enabled and disabled feature paths
- **B.** Deduplicate repeated events for the same incident
- **C.** Confirm the target project and repository context

## L01-Q035

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. The team selects this remedy: "Filter events and route actionable failures to owners." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Flags add lifecycle and cleanup work
- **B.** Aggressive filtering can hide novel failure types
- **C.** Strict links add authoring discipline to reviews

## L01-Q036

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which next change most directly satisfies the stated requirement?

- **A.** Filter events and route actionable failures to owners
- **B.** Reference the exact work-item identifier in the pull request
- **C.** Align project automation with the agreed lifecycle

## L01-Q037

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which explanation best accounts for the behavior or constraint described?

- **A.** Closing an issue does not guarantee every custom field updates
- **B.** Unfiltered automation creates noise without prioritization
- **C.** Human-readable titles are not unique traceability keys

## L01-Q038

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test merge produces the expected issue and project states
- **B.** A simulated regression creates one actionable assigned issue
- **C.** The hotfix commit resolves to one specific bug record

## L01-Q039

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which execution safeguard most directly addresses the risk in this case?

- **A.** Deduplicate repeated events for the same incident
- **B.** Confirm the target project and repository context
- **C.** Test automation on a disposable work item first

## L01-Q040

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. The team selects this remedy: "Reference the exact work-item identifier in the pull request." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Aggressive filtering can hide novel failure types
- **B.** Strict links add authoring discipline to reviews
- **C.** Custom workflows increase integration maintenance

## L01-Q041

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which next change most directly satisfies the stated requirement?

- **A.** Restrict the installation to the training repository
- **B.** Reference the exact work-item identifier in the pull request
- **C.** Align project automation with the agreed lifecycle

## L01-Q042

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which explanation best accounts for the behavior or constraint described?

- **A.** The integration installation was authorized too broadly
- **B.** Human-readable titles are not unique traceability keys
- **C.** Closing an issue does not guarantee every custom field updates

## L01-Q043

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Only the training repository remains available to the connector
- **B.** The hotfix commit resolves to one specific bug record
- **C.** A test merge produces the expected issue and project states

## L01-Q044

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check existing integrations before removing repository permissions
- **B.** Confirm the target project and repository context
- **C.** Test automation on a disposable work item first

## L01-Q045

Advanced · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. The team selects this remedy: "Align project automation with the agreed lifecycle." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Narrow access requires updates when new repositories join
- **B.** Strict links add authoring discipline to reviews
- **C.** Custom workflows increase integration maintenance

## L01-Q046

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which next change most directly satisfies the stated requirement?

- **A.** Integrate small pull requests into the default branch frequently
- **B.** Align project automation with the agreed lifecycle
- **C.** Restrict the installation to the training repository

## L01-Q047

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which explanation best accounts for the behavior or constraint described?

- **A.** The integration installation was authorized too broadly
- **B.** Long-lived branches defer integration feedback
- **C.** Closing an issue does not guarantee every custom field updates

## L01-Q048

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test merge produces the expected issue and project states
- **B.** Only the training repository remains available to the connector
- **C.** Small changes reach the default branch regularly

## L01-Q049

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which execution safeguard most directly addresses the risk in this case?

- **A.** Require review and automated checks before merging
- **B.** Test automation on a disposable work item first
- **C.** Check existing integrations before removing repository permissions

## L01-Q050

Advanced · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. The team selects this remedy: "Restrict the installation to the training repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Frequent integration requires disciplined small changes
- **B.** Custom workflows increase integration maintenance
- **C.** Narrow access requires updates when new repositories join
