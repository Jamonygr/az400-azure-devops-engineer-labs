# Lab 01 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L01-Q001

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which next change most directly satisfies the stated requirement?

- **A. Integrate small pull requests into the default branch frequently** **Correct.** Short feedback cycles reduce integration batch size. This directly addresses the constraint stated in this case.
- **B. Assign triage ownership and targeted issue notifications** Feedback needs an accountable recipient and response path. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **C. Restrict the installation to the training repository** The connector needs access only to participating repositories. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.

**Explanation:** Short feedback cycles reduce integration batch size. The selected answer is integrate small pull requests into the default branch frequently.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q002

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which explanation best accounts for the behavior or constraint described?

- **A. The integration installation was authorized too broadly** Visibility follows granted repository access rather than lab intent. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Long-lived branches defer integration feedback** **Correct.** Local tests do not exercise concurrent team changes. This directly addresses the constraint stated in this case.
- **C. Issue capture alone does not establish a feedback loop** Unassigned work can remain invisible to responders. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.

**Explanation:** Local tests do not exercise concurrent team changes. The selected answer is long-lived branches defer integration feedback.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q003

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test issue reaches its owner and receives acknowledgement** Acknowledgement proves the notification path is actionable. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **B. Only the training repository remains available to the connector** The access boundary should match the exercise scope. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **C. Small changes reach the default branch regularly** **Correct.** Integration cadence measures the requested workflow improvement. This directly addresses the constraint stated in this case.

**Explanation:** Integration cadence measures the requested workflow improvement. The selected answer is small changes reach the default branch regularly.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q004

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. Which execution safeguard most directly addresses the risk in this case?

- **A. Require review and automated checks before merging** **Correct.** Frequent integration still needs enforceable quality controls. This directly addresses the constraint stated in this case.
- **B. Avoid sending customer secrets into issue notifications** Operational feedback can contain sensitive customer details. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **C. Check existing integrations before removing repository permissions** Other projects may rely on the same installation. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.

**Explanation:** Frequent integration still needs enforceable quality controls. The selected answer is require review and automated checks before merging.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q005

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Short-lived branches: A team waits three weeks to integrate feature work, and conflicts delay feedback despite daily successful local tests. The team selects this remedy: "Integrate small pull requests into the default branch frequently." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Narrow access requires updates when new repositories join** Least privilege introduces deliberate onboarding work. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Frequent integration requires disciplined small changes** **Correct.** Large unfinished features may need feature flags. This directly addresses the constraint stated in this case.
- **C. More notifications can increase alert fatigue** Routing should prioritize useful events over volume. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.

**Explanation:** Large unfinished features may need feature flags. The selected answer is frequent integration requires disciplined small changes.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q006

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which next change most directly satisfies the stated requirement?

- **A. Integrate small pull requests into the default branch frequently** Short feedback cycles reduce integration batch size. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. Assign triage ownership and targeted issue notifications** **Correct.** Feedback needs an accountable recipient and response path. This directly addresses the constraint stated in this case.
- **C. Define one planning record and link repository activity** Shared identity prevents independent duplicate work records. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.

**Explanation:** Feedback needs an accountable recipient and response path. The selected answer is assign triage ownership and targeted issue notifications.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q007

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which explanation best accounts for the behavior or constraint described?

- **A. Long-lived branches defer integration feedback** Local tests do not exercise concurrent team changes. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. Issue capture alone does not establish a feedback loop** **Correct.** Unassigned work can remain invisible to responders. This directly addresses the constraint stated in this case.
- **C. Independent trackers lack a common work-item relationship** Duplicate records drift when updates are manual. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.

**Explanation:** Unassigned work can remain invisible to responders. The selected answer is issue capture alone does not establish a feedback loop.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q008

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A work item navigates to its corresponding pull request** Bidirectional navigation demonstrates the required traceability. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.
- **B. Small changes reach the default branch regularly** Integration cadence measures the requested workflow improvement. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **C. A test issue reaches its owner and receives acknowledgement** **Correct.** Acknowledgement proves the notification path is actionable. This directly addresses the constraint stated in this case.

**Explanation:** Acknowledgement proves the notification path is actionable. The selected answer is a test issue reaches its owner and receives acknowledgement.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q009

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid sending customer secrets into issue notifications** **Correct.** Operational feedback can contain sensitive customer details. This directly addresses the constraint stated in this case.
- **B. Agree ownership of status transitions before integrating tools** Competing updates can create inconsistent planning states. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.
- **C. Require review and automated checks before merging** Frequent integration still needs enforceable quality controls. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.

**Explanation:** Operational feedback can contain sensitive customer details. The selected answer is avoid sending customer secrets into issue notifications.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q010

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Silent triage: Production defects are filed in GitHub Issues, but no owner receives notifications and customer reports remain unacknowledged. The team selects this remedy: "Assign triage ownership and targeted issue notifications." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Frequent integration requires disciplined small changes** Large unfinished features may need feature flags. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. More notifications can increase alert fatigue** **Correct.** Routing should prioritize useful events over volume. This directly addresses the constraint stated in this case.
- **C. Tool integration does not resolve conflicting team processes** Workflow ownership remains an organizational decision. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.

**Explanation:** Routing should prioritize useful events over volume. The selected answer is more notifications can increase alert fatigue.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q011

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which next change most directly satisfies the stated requirement?

- **A. Define one planning record and link repository activity** **Correct.** Shared identity prevents independent duplicate work records. This directly addresses the constraint stated in this case.
- **B. Link bug, pull request, build, and release evidence** The delivery chain must preserve relationships end to end. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **C. Assign triage ownership and targeted issue notifications** Feedback needs an accountable recipient and response path. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.

**Explanation:** Shared identity prevents independent duplicate work records. The selected answer is define one planning record and link repository activity.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q012

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which explanation best accounts for the behavior or constraint described?

- **A. Deployment success does not identify business intent** A green run alone cannot explain the fix. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **B. Issue capture alone does not establish a feedback loop** Unassigned work can remain invisible to responders. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **C. Independent trackers lack a common work-item relationship** **Correct.** Duplicate records drift when updates are manual. This directly addresses the constraint stated in this case.

**Explanation:** Duplicate records drift when updates are manual. The selected answer is independent trackers lack a common work-item relationship.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q013

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test issue reaches its owner and receives acknowledgement** Acknowledgement proves the notification path is actionable. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **B. A work item navigates to its corresponding pull request** **Correct.** Bidirectional navigation demonstrates the required traceability. This directly addresses the constraint stated in this case.
- **C. The deployed commit can be traced back to its bug** This connects delivered behavior to the original report. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.

**Explanation:** Bidirectional navigation demonstrates the required traceability. The selected answer is a work item navigates to its corresponding pull request.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q014

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. Which execution safeguard most directly addresses the risk in this case?

- **A. Preserve immutable build identifiers with release records** Mutable labels can obscure the actual deployed version. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **B. Avoid sending customer secrets into issue notifications** Operational feedback can contain sensitive customer details. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **C. Agree ownership of status transitions before integrating tools** **Correct.** Competing updates can create inconsistent planning states. This directly addresses the constraint stated in this case.

**Explanation:** Competing updates can create inconsistent planning states. The selected answer is agree ownership of status transitions before integrating tools.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q015

Advanced · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

Split planning: Developers use GitHub Projects while administrators track delivery in Azure Boards; the same task is manually recreated twice. The team selects this remedy: "Define one planning record and link repository activity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Traceability depends on consistent linking practices** Missing relationships need explicit team enforcement. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **B. More notifications can increase alert fatigue** Routing should prioritize useful events over volume. That addresses a different requirement: Silent triage. It does not directly resolve this case's stated constraint.
- **C. Tool integration does not resolve conflicting team processes** **Correct.** Workflow ownership remains an organizational decision. This directly addresses the constraint stated in this case.

**Explanation:** Workflow ownership remains an organizational decision. The selected answer is tool integration does not resolve conflicting team processes.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q016

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which next change most directly satisfies the stated requirement?

- **A. Define one planning record and link repository activity** Shared identity prevents independent duplicate work records. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.
- **B. Link bug, pull request, build, and release evidence** **Correct.** The delivery chain must preserve relationships end to end. This directly addresses the constraint stated in this case.
- **C. Verify the Boards GitHub connection and supported linking syntax** Repository authorization and link syntax enable integration. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.

**Explanation:** The delivery chain must preserve relationships end to end. The selected answer is link bug, pull request, build, and release evidence.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q017

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which explanation best accounts for the behavior or constraint described?

- **A. A text URL is not necessarily a recognized development link** The connector must associate authorized repository events. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **B. Independent trackers lack a common work-item relationship** Duplicate records drift when updates are manual. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.
- **C. Deployment success does not identify business intent** **Correct.** A green run alone cannot explain the fix. This directly addresses the constraint stated in this case.

**Explanation:** A green run alone cannot explain the fix. The selected answer is deployment success does not identify business intent.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q018

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployed commit can be traced back to its bug** **Correct.** This connects delivered behavior to the original report. This directly addresses the constraint stated in this case.
- **B. The work item displays the pull request in development links** Recognized links demonstrate integration rather than plain text. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **C. A work item navigates to its corresponding pull request** Bidirectional navigation demonstrates the required traceability. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.

**Explanation:** This connects delivered behavior to the original report. The selected answer is the deployed commit can be traced back to its bug.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q019

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize only the repositories needed by the project** Broad connector access expands the integration trust boundary. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **B. Agree ownership of status transitions before integrating tools** Competing updates can create inconsistent planning states. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.
- **C. Preserve immutable build identifiers with release records** **Correct.** Mutable labels can obscure the actual deployed version. This directly addresses the constraint stated in this case.

**Explanation:** Mutable labels can obscure the actual deployed version. The selected answer is preserve immutable build identifiers with release records.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q020

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Audit gap: A successful release contains a defect fix, but the reviewer cannot determine which reported bug the deployment addressed. The team selects this remedy: "Link bug, pull request, build, and release evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Traceability depends on consistent linking practices** **Correct.** Missing relationships need explicit team enforcement. This directly addresses the constraint stated in this case.
- **B. Repository moves can require integration reconfiguration** External tool identity and authorization are dependencies. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **C. Tool integration does not resolve conflicting team processes** Workflow ownership remains an organizational decision. That addresses a different requirement: Split planning. It does not directly resolve this case's stated constraint.

**Explanation:** Missing relationships need explicit team enforcement. The selected answer is traceability depends on consistent linking practices.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q021

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which next change most directly satisfies the stated requirement?

- **A. Verify the Boards GitHub connection and supported linking syntax** **Correct.** Repository authorization and link syntax enable integration. This directly addresses the constraint stated in this case.
- **B. Merge incrementally behind a disabled feature flag** Exposure can be separated from code integration. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **C. Link bug, pull request, build, and release evidence** The delivery chain must preserve relationships end to end. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.

**Explanation:** Repository authorization and link syntax enable integration. The selected answer is verify the Boards GitHub connection and supported linking syntax.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q022

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which explanation best accounts for the behavior or constraint described?

- **A. Branch isolation was being used as a release mechanism** That unnecessarily delays integration of safe changes. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **B. Deployment success does not identify business intent** A green run alone cannot explain the fix. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **C. A text URL is not necessarily a recognized development link** **Correct.** The connector must associate authorized repository events. This directly addresses the constraint stated in this case.

**Explanation:** The connector must associate authorized repository events. The selected answer is a text URL is not necessarily a recognized development link.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q023

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployed commit can be traced back to its bug** This connects delivered behavior to the original report. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **B. The work item displays the pull request in development links** **Correct.** Recognized links demonstrate integration rather than plain text. This directly addresses the constraint stated in this case.
- **C. The merged feature remains hidden until explicitly enabled** This confirms independent control of integration and exposure. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.

**Explanation:** Recognized links demonstrate integration rather than plain text. The selected answer is the work item displays the pull request in development links.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q024

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. Which execution safeguard most directly addresses the risk in this case?

- **A. Test both enabled and disabled feature paths** Hidden code can still affect shared application behavior. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **B. Preserve immutable build identifiers with release records** Mutable labels can obscure the actual deployed version. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.
- **C. Authorize only the repositories needed by the project** **Correct.** Broad connector access expands the integration trust boundary. This directly addresses the constraint stated in this case.

**Explanation:** Broad connector access expands the integration trust boundary. The selected answer is authorize only the repositories needed by the project.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q025

Advanced · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Missing development panel: An Azure Boards work item references a GitHub pull request only as plain text after the repository was moved. The team selects this remedy: "Verify the Boards GitHub connection and supported linking syntax." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Repository moves can require integration reconfiguration** **Correct.** External tool identity and authorization are dependencies. This directly addresses the constraint stated in this case.
- **B. Flags add lifecycle and cleanup work** Temporary release flags can become permanent complexity. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **C. Traceability depends on consistent linking practices** Missing relationships need explicit team enforcement. That addresses a different requirement: Audit gap. It does not directly resolve this case's stated constraint.

**Explanation:** External tool identity and authorization are dependencies. The selected answer is repository moves can require integration reconfiguration.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q026

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which next change most directly satisfies the stated requirement?

- **A. Merge incrementally behind a disabled feature flag** **Correct.** Exposure can be separated from code integration. This directly addresses the constraint stated in this case.
- **B. Filter events and route actionable failures to owners** Signal quality matters more than notification count. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **C. Verify the Boards GitHub connection and supported linking syntax** Repository authorization and link syntax enable integration. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.

**Explanation:** Exposure can be separated from code integration. The selected answer is merge incrementally behind a disabled feature flag.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q027

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which explanation best accounts for the behavior or constraint described?

- **A. Branch isolation was being used as a release mechanism** **Correct.** That unnecessarily delays integration of safe changes. This directly addresses the constraint stated in this case.
- **B. Unfiltered automation creates noise without prioritization** Identical treatment hides important events among routine activity. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **C. A text URL is not necessarily a recognized development link** The connector must associate authorized repository events. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.

**Explanation:** That unnecessarily delays integration of safe changes. The selected answer is branch isolation was being used as a release mechanism.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q028

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The merged feature remains hidden until explicitly enabled** **Correct.** This confirms independent control of integration and exposure. This directly addresses the constraint stated in this case.
- **B. A simulated regression creates one actionable assigned issue** The test verifies routing without duplicating healthy events. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **C. The work item displays the pull request in development links** Recognized links demonstrate integration rather than plain text. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.

**Explanation:** This confirms independent control of integration and exposure. The selected answer is the merged feature remains hidden until explicitly enabled.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q029

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. Which execution safeguard most directly addresses the risk in this case?

- **A. Deduplicate repeated events for the same incident** Retries should not create multiple competing work items. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **B. Authorize only the repositories needed by the project** Broad connector access expands the integration trust boundary. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **C. Test both enabled and disabled feature paths** **Correct.** Hidden code can still affect shared application behavior. This directly addresses the constraint stated in this case.

**Explanation:** Hidden code can still affect shared application behavior. The selected answer is test both enabled and disabled feature paths.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q030

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Unfinished functionality: A team wants daily integration, but an incomplete feature must remain unavailable to customers until launch. The team selects this remedy: "Merge incrementally behind a disabled feature flag." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Repository moves can require integration reconfiguration** External tool identity and authorization are dependencies. That addresses a different requirement: Missing development panel. It does not directly resolve this case's stated constraint.
- **B. Flags add lifecycle and cleanup work** **Correct.** Temporary release flags can become permanent complexity. This directly addresses the constraint stated in this case.
- **C. Aggressive filtering can hide novel failure types** Review routing rules against missed operational feedback. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.

**Explanation:** Temporary release flags can become permanent complexity. The selected answer is flags add lifecycle and cleanup work.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q031

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which next change most directly satisfies the stated requirement?

- **A. Filter events and route actionable failures to owners** **Correct.** Signal quality matters more than notification count. This directly addresses the constraint stated in this case.
- **B. Reference the exact work-item identifier in the pull request** Stable identifiers disambiguate similar business descriptions. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. Merge incrementally behind a disabled feature flag** Exposure can be separated from code integration. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.

**Explanation:** Signal quality matters more than notification count. The selected answer is filter events and route actionable failures to owners.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q032

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which explanation best accounts for the behavior or constraint described?

- **A. Branch isolation was being used as a release mechanism** That unnecessarily delays integration of safe changes. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **B. Unfiltered automation creates noise without prioritization** **Correct.** Identical treatment hides important events among routine activity. This directly addresses the constraint stated in this case.
- **C. Human-readable titles are not unique traceability keys** Names can change or be reused across projects. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.

**Explanation:** Identical treatment hides important events among routine activity. The selected answer is unfiltered automation creates noise without prioritization.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q033

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A simulated regression creates one actionable assigned issue** **Correct.** The test verifies routing without duplicating healthy events. This directly addresses the constraint stated in this case.
- **B. The hotfix commit resolves to one specific bug record** A unique relationship prevents mistaken audit conclusions. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. The merged feature remains hidden until explicitly enabled** This confirms independent control of integration and exposure. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.

**Explanation:** The test verifies routing without duplicating healthy events. The selected answer is a simulated regression creates one actionable assigned issue.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q034

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. Which execution safeguard most directly addresses the risk in this case?

- **A. Test both enabled and disabled feature paths** Hidden code can still affect shared application behavior. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **B. Deduplicate repeated events for the same incident** **Correct.** Retries should not create multiple competing work items. This directly addresses the constraint stated in this case.
- **C. Confirm the target project and repository context** Identifiers may require project qualification across boundaries. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.

**Explanation:** Retries should not create multiple competing work items. The selected answer is deduplicate repeated events for the same incident.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q035

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

Feedback overload: Every build event creates an issue, and responders now ignore the notification stream containing real customer regressions. The team selects this remedy: "Filter events and route actionable failures to owners." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Flags add lifecycle and cleanup work** Temporary release flags can become permanent complexity. That addresses a different requirement: Unfinished functionality. It does not directly resolve this case's stated constraint.
- **B. Aggressive filtering can hide novel failure types** **Correct.** Review routing rules against missed operational feedback. This directly addresses the constraint stated in this case.
- **C. Strict links add authoring discipline to reviews** Automation can help enforce required relationships. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.

**Explanation:** Review routing rules against missed operational feedback. The selected answer is aggressive filtering can hide novel failure types.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q036

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which next change most directly satisfies the stated requirement?

- **A. Filter events and route actionable failures to owners** Signal quality matters more than notification count. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **B. Reference the exact work-item identifier in the pull request** **Correct.** Stable identifiers disambiguate similar business descriptions. This directly addresses the constraint stated in this case.
- **C. Align project automation with the agreed lifecycle** Issue state and project fields need coordinated rules. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Stable identifiers disambiguate similar business descriptions. The selected answer is reference the exact work-item identifier in the pull request.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q037

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which explanation best accounts for the behavior or constraint described?

- **A. Closing an issue does not guarantee every custom field updates** Project automation has its own configuration. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **B. Unfiltered automation creates noise without prioritization** Identical treatment hides important events among routine activity. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **C. Human-readable titles are not unique traceability keys** **Correct.** Names can change or be reused across projects. This directly addresses the constraint stated in this case.

**Explanation:** Names can change or be reused across projects. The selected answer is human-readable titles are not unique traceability keys.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q038

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test merge produces the expected issue and project states** Both planning representations must reflect the same transition. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **B. A simulated regression creates one actionable assigned issue** The test verifies routing without duplicating healthy events. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **C. The hotfix commit resolves to one specific bug record** **Correct.** A unique relationship prevents mistaken audit conclusions. This directly addresses the constraint stated in this case.

**Explanation:** A unique relationship prevents mistaken audit conclusions. The selected answer is the hotfix commit resolves to one specific bug record.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q039

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. Which execution safeguard most directly addresses the risk in this case?

- **A. Deduplicate repeated events for the same incident** Retries should not create multiple competing work items. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **B. Confirm the target project and repository context** **Correct.** Identifiers may require project qualification across boundaries. This directly addresses the constraint stated in this case.
- **C. Test automation on a disposable work item first** State rules can unexpectedly modify existing planning records. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Identifiers may require project qualification across boundaries. The selected answer is confirm the target project and repository context.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q040

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

Ambiguous hotfix: Two similarly named bugs exist, and a hotfix pull request mentions only a title rather than a stable identifier. The team selects this remedy: "Reference the exact work-item identifier in the pull request." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Aggressive filtering can hide novel failure types** Review routing rules against missed operational feedback. That addresses a different requirement: Feedback overload. It does not directly resolve this case's stated constraint.
- **B. Strict links add authoring discipline to reviews** **Correct.** Automation can help enforce required relationships. This directly addresses the constraint stated in this case.
- **C. Custom workflows increase integration maintenance** Additional fields require explicit transition ownership. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Automation can help enforce required relationships. The selected answer is strict links add authoring discipline to reviews.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q041

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which next change most directly satisfies the stated requirement?

- **A. Restrict the installation to the training repository** The connector needs access only to participating repositories. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Reference the exact work-item identifier in the pull request** Stable identifiers disambiguate similar business descriptions. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. Align project automation with the agreed lifecycle** **Correct.** Issue state and project fields need coordinated rules. This directly addresses the constraint stated in this case.

**Explanation:** Issue state and project fields need coordinated rules. The selected answer is align project automation with the agreed lifecycle.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q042

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which explanation best accounts for the behavior or constraint described?

- **A. The integration installation was authorized too broadly** Visibility follows granted repository access rather than lab intent. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Human-readable titles are not unique traceability keys** Names can change or be reused across projects. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. Closing an issue does not guarantee every custom field updates** **Correct.** Project automation has its own configuration. This directly addresses the constraint stated in this case.

**Explanation:** Project automation has its own configuration. The selected answer is closing an issue does not guarantee every custom field updates.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q043

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Only the training repository remains available to the connector** The access boundary should match the exercise scope. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. The hotfix commit resolves to one specific bug record** A unique relationship prevents mistaken audit conclusions. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. A test merge produces the expected issue and project states** **Correct.** Both planning representations must reflect the same transition. This directly addresses the constraint stated in this case.

**Explanation:** Both planning representations must reflect the same transition. The selected answer is a test merge produces the expected issue and project states.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q044

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. Which execution safeguard most directly addresses the risk in this case?

- **A. Check existing integrations before removing repository permissions** Other projects may rely on the same installation. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Confirm the target project and repository context** Identifiers may require project qualification across boundaries. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. Test automation on a disposable work item first** **Correct.** State rules can unexpectedly modify existing planning records. This directly addresses the constraint stated in this case.

**Explanation:** State rules can unexpectedly modify existing planning records. The selected answer is test automation on a disposable work item first.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q045

Advanced · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

State mismatch: A merged pull request closes an issue, but a separate project field remains In Progress and the team dashboard disagrees. The team selects this remedy: "Align project automation with the agreed lifecycle." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Narrow access requires updates when new repositories join** Least privilege introduces deliberate onboarding work. That addresses a different requirement: Excess integration access. It does not directly resolve this case's stated constraint.
- **B. Strict links add authoring discipline to reviews** Automation can help enforce required relationships. That addresses a different requirement: Ambiguous hotfix. It does not directly resolve this case's stated constraint.
- **C. Custom workflows increase integration maintenance** **Correct.** Additional fields require explicit transition ownership. This directly addresses the constraint stated in this case.

**Explanation:** Additional fields require explicit transition ownership. The selected answer is custom workflows increase integration maintenance.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q046

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which next change most directly satisfies the stated requirement?

- **A. Integrate small pull requests into the default branch frequently** Short feedback cycles reduce integration batch size. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. Align project automation with the agreed lifecycle** Issue state and project fields need coordinated rules. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **C. Restrict the installation to the training repository** **Correct.** The connector needs access only to participating repositories. This directly addresses the constraint stated in this case.

**Explanation:** The connector needs access only to participating repositories. The selected answer is restrict the installation to the training repository.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q047

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which explanation best accounts for the behavior or constraint described?

- **A. The integration installation was authorized too broadly** **Correct.** Visibility follows granted repository access rather than lab intent. This directly addresses the constraint stated in this case.
- **B. Long-lived branches defer integration feedback** Local tests do not exercise concurrent team changes. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **C. Closing an issue does not guarantee every custom field updates** Project automation has its own configuration. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Visibility follows granted repository access rather than lab intent. The selected answer is the integration installation was authorized too broadly.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q048

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test merge produces the expected issue and project states** Both planning representations must reflect the same transition. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **B. Only the training repository remains available to the connector** **Correct.** The access boundary should match the exercise scope. This directly addresses the constraint stated in this case.
- **C. Small changes reach the default branch regularly** Integration cadence measures the requested workflow improvement. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.

**Explanation:** The access boundary should match the exercise scope. The selected answer is only the training repository remains available to the connector.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q049

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. Which execution safeguard most directly addresses the risk in this case?

- **A. Require review and automated checks before merging** Frequent integration still needs enforceable quality controls. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. Test automation on a disposable work item first** State rules can unexpectedly modify existing planning records. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **C. Check existing integrations before removing repository permissions** **Correct.** Other projects may rely on the same installation. This directly addresses the constraint stated in this case.

**Explanation:** Other projects may rely on the same installation. The selected answer is check existing integrations before removing repository permissions.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q050

Advanced · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

Excess integration access: A training Boards connection can see unrelated private GitHub repositories although the lab uses one repository. The team selects this remedy: "Restrict the installation to the training repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Frequent integration requires disciplined small changes** Large unfinished features may need feature flags. That addresses a different requirement: Short-lived branches. It does not directly resolve this case's stated constraint.
- **B. Custom workflows increase integration maintenance** Additional fields require explicit transition ownership. That addresses a different requirement: State mismatch. It does not directly resolve this case's stated constraint.
- **C. Narrow access requires updates when new repositories join** **Correct.** Least privilege introduces deliberate onboarding work. This directly addresses the constraint stated in this case.

**Explanation:** Least privilege introduces deliberate onboarding work. The selected answer is narrow access requires updates when new repositories join.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)
