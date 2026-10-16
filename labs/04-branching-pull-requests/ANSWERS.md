# Lab 04 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L04-Q001

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which next change most directly satisfies the stated requirement?

- **A. Enforce pull-request review through protected-branch policies** Written process needs a server-enforced branch control. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **B. Update the required-check rule to the actual stable job name** Protection must reference a status the workflow can produce. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.
- **C. Use shorter integration cycles with a documented branch strategy** **Correct.** Smaller divergence reduces expensive late reconciliation. This directly addresses the constraint stated in this case.

**Explanation:** Smaller divergence reduces expensive late reconciliation. The selected answer is use shorter integration cycles with a documented branch strategy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q002

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which explanation best accounts for the behavior or constraint described?

- **A. The branch rule is waiting for an absent status context** Healthy jobs cannot satisfy a differently named requirement. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.
- **B. Long-lived isolated changes accumulated incompatible edits** **Correct.** Local correctness does not prevent integration conflicts. This directly addresses the constraint stated in this case.
- **C. The policy exists only as an agreement** Repository permissions still permit bypassing the intended workflow. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.

**Explanation:** Local correctness does not prevent integration conflicts. The selected answer is long-lived isolated changes accumulated incompatible edits.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q003

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Features integrate in small reviewed changes with fewer conflicts** **Correct.** The outcome should improve the actual integration process. This directly addresses the constraint stated in this case.
- **B. A direct push is rejected and a compliant pull request merges** Positive and negative probes confirm the required rule. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. The current workflow result satisfies the branch requirement** The policy and emitted check must agree. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.

**Explanation:** The outcome should improve the actual integration process. The selected answer is features integrate in small reviewed changes with fewer conflicts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q004

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep incomplete exposure controlled through flags or incremental work** **Correct.** Frequent merging must not expose unfinished behavior. This directly addresses the constraint stated in this case.
- **B. Review who can bypass branch protection** Broad bypass rights weaken otherwise correct policies. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. Coordinate workflow and protection changes in a controlled rollout** Changing only one side can block all pull requests. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.

**Explanation:** Frequent merging must not expose unfinished behavior. The selected answer is keep incomplete exposure controlled through flags or incremental work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q005

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. The team selects this remedy: "Use shorter integration cycles with a documented branch strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Trunk-oriented work requires strong automation and discipline** **Correct.** A smaller branch graph does not eliminate release risk. This directly addresses the constraint stated in this case.
- **B. Strict protection can delay urgent fixes** Define a reviewed emergency process rather than implicit bypass. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. Required-status naming becomes a compatibility contract** Renames need policy migration rather than isolated edits. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.

**Explanation:** A smaller branch graph does not eliminate release risk. The selected answer is trunk-oriented work requires strong automation and discipline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q006

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which next change most directly satisfies the stated requirement?

- **A. Enforce pull-request review through protected-branch policies** **Correct.** Written process needs a server-enforced branch control. This directly addresses the constraint stated in this case.
- **B. Dismiss stale approvals or require review of the latest push** New code should not inherit unrelated approval evidence. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. Use shorter integration cycles with a documented branch strategy** Smaller divergence reduces expensive late reconciliation. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.

**Explanation:** Written process needs a server-enforced branch control. The selected answer is enforce pull-request review through protected-branch policies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q007

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which explanation best accounts for the behavior or constraint described?

- **A. Long-lived isolated changes accumulated incompatible edits** Local correctness does not prevent integration conflicts. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.
- **B. The policy exists only as an agreement** **Correct.** Repository permissions still permit bypassing the intended workflow. This directly addresses the constraint stated in this case.
- **C. The approved revision differs from the merged revision** An earlier review may not cover the latest change. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.

**Explanation:** Repository permissions still permit bypassing the intended workflow. The selected answer is the policy exists only as an agreement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q008

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A direct push is rejected and a compliant pull request merges** **Correct.** Positive and negative probes confirm the required rule. This directly addresses the constraint stated in this case.
- **B. A new commit invalidates approval or requires fresh review** The rule must bind review to current content. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. Features integrate in small reviewed changes with fewer conflicts** The outcome should improve the actual integration process. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.

**Explanation:** Positive and negative probes confirm the required rule. The selected answer is a direct push is rejected and a compliant pull request merges.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q009

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep incomplete exposure controlled through flags or incremental work** Frequent merging must not expose unfinished behavior. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.
- **B. Review who can bypass branch protection** **Correct.** Broad bypass rights weaken otherwise correct policies. This directly addresses the constraint stated in this case.
- **C. Keep required checks associated with the latest commit** Old green results cannot validate a changed tree. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.

**Explanation:** Broad bypass rights weaken otherwise correct policies. The selected answer is review who can bypass branch protection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q010

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. The team selects this remedy: "Enforce pull-request review through protected-branch policies." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Fresh-review rules can increase review churn** Small focused pull requests reduce repeated review effort. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **B. Trunk-oriented work requires strong automation and discipline** A smaller branch graph does not eliminate release risk. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.
- **C. Strict protection can delay urgent fixes** **Correct.** Define a reviewed emergency process rather than implicit bypass. This directly addresses the constraint stated in this case.

**Explanation:** Define a reviewed emergency process rather than implicit bypass. The selected answer is strict protection can delay urgent fixes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q011

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which next change most directly satisfies the stated requirement?

- **A. Enforce pull-request review through protected-branch policies** Written process needs a server-enforced branch control. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **B. Dismiss stale approvals or require review of the latest push** **Correct.** New code should not inherit unrelated approval evidence. This directly addresses the constraint stated in this case.
- **C. Make the relevant status check a required merge condition** A reported result must be enforced to gate merging. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.

**Explanation:** New code should not inherit unrelated approval evidence. The selected answer is dismiss stale approvals or require review of the latest push.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q012

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which explanation best accounts for the behavior or constraint described?

- **A. CI execution and merge policy are separate controls** Running a test does not automatically block a bad merge. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. The policy exists only as an agreement** Repository permissions still permit bypassing the intended workflow. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. The approved revision differs from the merged revision** **Correct.** An earlier review may not cover the latest change. This directly addresses the constraint stated in this case.

**Explanation:** An earlier review may not cover the latest change. The selected answer is the approved revision differs from the merged revision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q013

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A direct push is rejected and a compliant pull request merges** Positive and negative probes confirm the required rule. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **B. A new commit invalidates approval or requires fresh review** **Correct.** The rule must bind review to current content. This directly addresses the constraint stated in this case.
- **C. A failing required check prevents merge until corrected** The rejection demonstrates enforcement rather than visibility. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.

**Explanation:** The rule must bind review to current content. The selected answer is a new commit invalidates approval or requires fresh review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q014

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which execution safeguard most directly addresses the risk in this case?

- **A. Use stable unambiguous check names for required results** Renamed jobs can leave protection waiting for missing checks. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. Review who can bypass branch protection** Broad bypass rights weaken otherwise correct policies. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. Keep required checks associated with the latest commit** **Correct.** Old green results cannot validate a changed tree. This directly addresses the constraint stated in this case.

**Explanation:** Old green results cannot validate a changed tree. The selected answer is keep required checks associated with the latest commit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q015

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. The team selects this remedy: "Dismiss stale approvals or require review of the latest push." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Required checks introduce dependency on CI availability** Teams need a documented response to infrastructure outages. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. Strict protection can delay urgent fixes** Define a reviewed emergency process rather than implicit bypass. That addresses a different requirement: Unreviewed merge. It does not directly resolve this case's stated constraint.
- **C. Fresh-review rules can increase review churn** **Correct.** Small focused pull requests reduce repeated review effort. This directly addresses the constraint stated in this case.

**Explanation:** Small focused pull requests reduce repeated review effort. The selected answer is fresh-review rules can increase review churn.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q016

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which next change most directly satisfies the stated requirement?

- **A. Require an eligible independent reviewer for protected changes** Review independence addresses the stated separation-of-duties need. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **B. Dismiss stale approvals or require review of the latest push** New code should not inherit unrelated approval evidence. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. Make the relevant status check a required merge condition** **Correct.** A reported result must be enforced to gate merging. This directly addresses the constraint stated in this case.

**Explanation:** A reported result must be enforced to gate merging. The selected answer is make the relevant status check a required merge condition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q017

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which explanation best accounts for the behavior or constraint described?

- **A. The policy allows author approval or lacks reviewer separation** A review count alone may not ensure independent judgment. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **B. The approved revision differs from the merged revision** An earlier review may not cover the latest change. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. CI execution and merge policy are separate controls** **Correct.** Running a test does not automatically block a bad merge. This directly addresses the constraint stated in this case.

**Explanation:** Running a test does not automatically block a bad merge. The selected answer is cI execution and merge policy are separate controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q018

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The author cannot satisfy the independent-review requirement** The negative check verifies the intended reviewer constraint. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **B. A new commit invalidates approval or requires fresh review** The rule must bind review to current content. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. A failing required check prevents merge until corrected** **Correct.** The rejection demonstrates enforcement rather than visibility. This directly addresses the constraint stated in this case.

**Explanation:** The rejection demonstrates enforcement rather than visibility. The selected answer is a failing required check prevents merge until corrected.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q019

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which execution safeguard most directly addresses the risk in this case?

- **A. Assign reviewers with relevant ownership and availability** A nominal independent reviewer may lack necessary context. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **B. Keep required checks associated with the latest commit** Old green results cannot validate a changed tree. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **C. Use stable unambiguous check names for required results** **Correct.** Renamed jobs can leave protection waiting for missing checks. This directly addresses the constraint stated in this case.

**Explanation:** Renamed jobs can leave protection waiting for missing checks. The selected answer is use stable unambiguous check names for required results.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q020

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. The team selects this remedy: "Make the relevant status check a required merge condition." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Fresh-review rules can increase review churn** Small focused pull requests reduce repeated review effort. That addresses a different requirement: Stale approval. It does not directly resolve this case's stated constraint.
- **B. Required checks introduce dependency on CI availability** **Correct.** Teams need a documented response to infrastructure outages. This directly addresses the constraint stated in this case.
- **C. Independent approval increases coordination cost** Sensitive changes trade speed for additional assurance. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.

**Explanation:** Teams need a documented response to infrastructure outages. The selected answer is required checks introduce dependency on CI availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q021

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which next change most directly satisfies the stated requirement?

- **A. Make the relevant status check a required merge condition** A reported result must be enforced to gate merging. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. Require an eligible independent reviewer for protected changes** **Correct.** Review independence addresses the stated separation-of-duties need. This directly addresses the constraint stated in this case.
- **C. Create the fix from the supported release and reconcile forward** The patch must remain compatible with the deployed baseline. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.

**Explanation:** Review independence addresses the stated separation-of-duties need. The selected answer is require an eligible independent reviewer for protected changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q022

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which explanation best accounts for the behavior or constraint described?

- **A. The default branch is ahead of the supported product** Releasing main would include unrelated incompatible changes. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **B. CI execution and merge policy are separate controls** Running a test does not automatically block a bad merge. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **C. The policy allows author approval or lacks reviewer separation** **Correct.** A review count alone may not ensure independent judgment. This directly addresses the constraint stated in this case.

**Explanation:** A review count alone may not ensure independent judgment. The selected answer is the policy allows author approval or lacks reviewer separation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q023

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A failing required check prevents merge until corrected** The rejection demonstrates enforcement rather than visibility. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. The author cannot satisfy the independent-review requirement** **Correct.** The negative check verifies the intended reviewer constraint. This directly addresses the constraint stated in this case.
- **C. The patch applies to the supported release and reaches main** Forward reconciliation prevents the fix disappearing later. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.

**Explanation:** The negative check verifies the intended reviewer constraint. The selected answer is the author cannot satisfy the independent-review requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q024

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which execution safeguard most directly addresses the risk in this case?

- **A. Assign reviewers with relevant ownership and availability** **Correct.** A nominal independent reviewer may lack necessary context. This directly addresses the constraint stated in this case.
- **B. Record the fix commit and test the release-specific path** Different branches can have different dependencies and behavior. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **C. Use stable unambiguous check names for required results** Renamed jobs can leave protection waiting for missing checks. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.

**Explanation:** A nominal independent reviewer may lack necessary context. The selected answer is assign reviewers with relevant ownership and availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q025

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. The team selects this remedy: "Require an eligible independent reviewer for protected changes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Required checks introduce dependency on CI availability** Teams need a documented response to infrastructure outages. That addresses a different requirement: Missing CI enforcement. It does not directly resolve this case's stated constraint.
- **B. Independent approval increases coordination cost** **Correct.** Sensitive changes trade speed for additional assurance. This directly addresses the constraint stated in this case.
- **C. Multiple supported branches increase maintenance effort** Each active release needs explicit patch and merge discipline. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.

**Explanation:** Sensitive changes trade speed for additional assurance. The selected answer is independent approval increases coordination cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q026

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which next change most directly satisfies the stated requirement?

- **A. Require an eligible independent reviewer for protected changes** Review independence addresses the stated separation-of-duties need. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **B. Create the fix from the supported release and reconcile forward** **Correct.** The patch must remain compatible with the deployed baseline. This directly addresses the constraint stated in this case.
- **C. Require the designated infrastructure owners for affected paths** Path-specific ownership routes sensitive changes to knowledgeable reviewers. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.

**Explanation:** The patch must remain compatible with the deployed baseline. The selected answer is create the fix from the supported release and reconcile forward.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q027

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which explanation best accounts for the behavior or constraint described?

- **A. The default branch is ahead of the supported product** **Correct.** Releasing main would include unrelated incompatible changes. This directly addresses the constraint stated in this case.
- **B. Generic review requirements do not ensure domain expertise** Approval can be procedurally valid but substantively weak. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **C. The policy allows author approval or lacks reviewer separation** A review count alone may not ensure independent judgment. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.

**Explanation:** Releasing main would include unrelated incompatible changes. The selected answer is the default branch is ahead of the supported product.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q028

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A permissions change requests the relevant owners' review** The rule should trigger for the sensitive path. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **B. The author cannot satisfy the independent-review requirement** The negative check verifies the intended reviewer constraint. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **C. The patch applies to the supported release and reaches main** **Correct.** Forward reconciliation prevents the fix disappearing later. This directly addresses the constraint stated in this case.

**Explanation:** Forward reconciliation prevents the fix disappearing later. The selected answer is the patch applies to the supported release and reaches main.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q029

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Record the fix commit and test the release-specific path** **Correct.** Different branches can have different dependencies and behavior. This directly addresses the constraint stated in this case.
- **B. Protect the ownership configuration from casual modification** Changing the rule could bypass the intended reviewers. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **C. Assign reviewers with relevant ownership and availability** A nominal independent reviewer may lack necessary context. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.

**Explanation:** Different branches can have different dependencies and behavior. The selected answer is record the fix commit and test the release-specific path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q030

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. The team selects this remedy: "Create the fix from the supported release and reconcile forward." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Owner-based reviews can become a bottleneck** Maintain enough qualified owners for availability. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **B. Independent approval increases coordination cost** Sensitive changes trade speed for additional assurance. That addresses a different requirement: Self-approved change. It does not directly resolve this case's stated constraint.
- **C. Multiple supported branches increase maintenance effort** **Correct.** Each active release needs explicit patch and merge discipline. This directly addresses the constraint stated in this case.

**Explanation:** Each active release needs explicit patch and merge discipline. The selected answer is multiple supported branches increase maintenance effort.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q031

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which next change most directly satisfies the stated requirement?

- **A. Create the fix from the supported release and reconcile forward** The patch must remain compatible with the deployed baseline. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **B. Require the designated infrastructure owners for affected paths** **Correct.** Path-specific ownership routes sensitive changes to knowledgeable reviewers. This directly addresses the constraint stated in this case.
- **C. Remove routine bypass and force-push permission from the service** Automation should follow the same integrity boundary as users. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.

**Explanation:** Path-specific ownership routes sensitive changes to knowledgeable reviewers. The selected answer is require the designated infrastructure owners for affected paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q032

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which explanation best accounts for the behavior or constraint described?

- **A. The default branch is ahead of the supported product** Releasing main would include unrelated incompatible changes. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **B. Generic review requirements do not ensure domain expertise** **Correct.** Approval can be procedurally valid but substantively weak. This directly addresses the constraint stated in this case.
- **C. An exempt identity circumvents normal branch restrictions** Strict policies do not constrain principals explicitly allowed to bypass. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.

**Explanation:** Approval can be procedurally valid but substantively weak. The selected answer is generic review requirements do not ensure domain expertise.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q033

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The patch applies to the supported release and reaches main** Forward reconciliation prevents the fix disappearing later. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **B. A permissions change requests the relevant owners' review** **Correct.** The rule should trigger for the sensitive path. This directly addresses the constraint stated in this case.
- **C. The service can create pull requests but cannot rewrite main** The test proves least privilege for automation. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.

**Explanation:** The rule should trigger for the sensitive path. The selected answer is a permissions change requests the relevant owners' review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q034

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which execution safeguard most directly addresses the risk in this case?

- **A. Protect the ownership configuration from casual modification** **Correct.** Changing the rule could bypass the intended reviewers. This directly addresses the constraint stated in this case.
- **B. Check dependent automation before reducing permissions** A permission correction can reveal workflows relying on bypass. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.
- **C. Record the fix commit and test the release-specific path** Different branches can have different dependencies and behavior. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.

**Explanation:** Changing the rule could bypass the intended reviewers. The selected answer is protect the ownership configuration from casual modification.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q035

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. The team selects this remedy: "Require the designated infrastructure owners for affected paths." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Multiple supported branches increase maintenance effort** Each active release needs explicit patch and merge discipline. That addresses a different requirement: Unsupported hotfix path. It does not directly resolve this case's stated constraint.
- **B. Owner-based reviews can become a bottleneck** **Correct.** Maintain enough qualified owners for availability. This directly addresses the constraint stated in this case.
- **C. Least-privilege automation may need workflow redesign** Direct writes must be replaced with reviewable operations. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.

**Explanation:** Maintain enough qualified owners for availability. The selected answer is owner-based reviews can become a bottleneck.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q036

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which next change most directly satisfies the stated requirement?

- **A. Remove routine bypass and force-push permission from the service** **Correct.** Automation should follow the same integrity boundary as users. This directly addresses the constraint stated in this case.
- **B. Use squash merging with an informative final commit message** Squash combines feature commits into one mainline change. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **C. Require the designated infrastructure owners for affected paths** Path-specific ownership routes sensitive changes to knowledgeable reviewers. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.

**Explanation:** Automation should follow the same integrity boundary as users. The selected answer is remove routine bypass and force-push permission from the service.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q037

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which explanation best accounts for the behavior or constraint described?

- **A. The desired mainline history is feature-oriented** Individual work-in-progress commits are not the reporting unit. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **B. Generic review requirements do not ensure domain expertise** Approval can be procedurally valid but substantively weak. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **C. An exempt identity circumvents normal branch restrictions** **Correct.** Strict policies do not constrain principals explicitly allowed to bypass. This directly addresses the constraint stated in this case.

**Explanation:** Strict policies do not constrain principals explicitly allowed to bypass. The selected answer is an exempt identity circumvents normal branch restrictions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q038

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Main contains one feature commit linked to the pull request** The history matches the agreed integration policy. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **B. A permissions change requests the relevant owners' review** The rule should trigger for the sensitive path. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **C. The service can create pull requests but cannot rewrite main** **Correct.** The test proves least privilege for automation. This directly addresses the constraint stated in this case.

**Explanation:** The test proves least privilege for automation. The selected answer is the service can create pull requests but cannot rewrite main.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q039

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which execution safeguard most directly addresses the risk in this case?

- **A. Protect the ownership configuration from casual modification** Changing the rule could bypass the intended reviewers. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **B. Check dependent automation before reducing permissions** **Correct.** A permission correction can reveal workflows relying on bypass. This directly addresses the constraint stated in this case.
- **C. Retain pull-request discussion and verification evidence** A compact commit history should not erase review context. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.

**Explanation:** A permission correction can reveal workflows relying on bypass. The selected answer is check dependent automation before reducing permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q040

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. The team selects this remedy: "Remove routine bypass and force-push permission from the service." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Owner-based reviews can become a bottleneck** Maintain enough qualified owners for availability. That addresses a different requirement: Specialized ownership. It does not directly resolve this case's stated constraint.
- **B. Least-privilege automation may need workflow redesign** **Correct.** Direct writes must be replaced with reviewable operations. This directly addresses the constraint stated in this case.
- **C. Squashing changes commit identity and detailed mainline history** Later cherry-picking may need the resulting squash commit. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.

**Explanation:** Direct writes must be replaced with reviewable operations. The selected answer is least-privilege automation may need workflow redesign.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q041

Foundational · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which next change most directly satisfies the stated requirement?

- **A. Use squash merging with an informative final commit message** **Correct.** Squash combines feature commits into one mainline change. This directly addresses the constraint stated in this case.
- **B. Update the required-check rule to the actual stable job name** Protection must reference a status the workflow can produce. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.
- **C. Remove routine bypass and force-push permission from the service** Automation should follow the same integrity boundary as users. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.

**Explanation:** Squash combines feature commits into one mainline change. The selected answer is use squash merging with an informative final commit message.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q042

Foundational · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which explanation best accounts for the behavior or constraint described?

- **A. The branch rule is waiting for an absent status context** Healthy jobs cannot satisfy a differently named requirement. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.
- **B. An exempt identity circumvents normal branch restrictions** Strict policies do not constrain principals explicitly allowed to bypass. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.
- **C. The desired mainline history is feature-oriented** **Correct.** Individual work-in-progress commits are not the reporting unit. This directly addresses the constraint stated in this case.

**Explanation:** Individual work-in-progress commits are not the reporting unit. The selected answer is the desired mainline history is feature-oriented.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q043

Applied · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The current workflow result satisfies the branch requirement** The policy and emitted check must agree. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.
- **B. The service can create pull requests but cannot rewrite main** The test proves least privilege for automation. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.
- **C. Main contains one feature commit linked to the pull request** **Correct.** The history matches the agreed integration policy. This directly addresses the constraint stated in this case.

**Explanation:** The history matches the agreed integration policy. The selected answer is main contains one feature commit linked to the pull request.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q044

Applied · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which execution safeguard most directly addresses the risk in this case?

- **A. Check dependent automation before reducing permissions** A permission correction can reveal workflows relying on bypass. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.
- **B. Retain pull-request discussion and verification evidence** **Correct.** A compact commit history should not erase review context. This directly addresses the constraint stated in this case.
- **C. Coordinate workflow and protection changes in a controlled rollout** Changing only one side can block all pull requests. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.

**Explanation:** A compact commit history should not erase review context. The selected answer is retain pull-request discussion and verification evidence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q045

Advanced · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. The team selects this remedy: "Use squash merging with an informative final commit message." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Least-privilege automation may need workflow redesign** Direct writes must be replaced with reviewable operations. That addresses a different requirement: Protection bypass. It does not directly resolve this case's stated constraint.
- **B. Squashing changes commit identity and detailed mainline history** **Correct.** Later cherry-picking may need the resulting squash commit. This directly addresses the constraint stated in this case.
- **C. Required-status naming becomes a compatibility contract** Renames need policy migration rather than isolated edits. That addresses a different requirement: Required-check deadlock. It does not directly resolve this case's stated constraint.

**Explanation:** Later cherry-picking may need the resulting squash commit. The selected answer is squashing changes commit identity and detailed mainline history.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q046

Foundational · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which next change most directly satisfies the stated requirement?

- **A. Use shorter integration cycles with a documented branch strategy** Smaller divergence reduces expensive late reconciliation. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.
- **B. Use squash merging with an informative final commit message** Squash combines feature commits into one mainline change. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **C. Update the required-check rule to the actual stable job name** **Correct.** Protection must reference a status the workflow can produce. This directly addresses the constraint stated in this case.

**Explanation:** Protection must reference a status the workflow can produce. The selected answer is update the required-check rule to the actual stable job name.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q047

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which explanation best accounts for the behavior or constraint described?

- **A. The desired mainline history is feature-oriented** Individual work-in-progress commits are not the reporting unit. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **B. The branch rule is waiting for an absent status context** **Correct.** Healthy jobs cannot satisfy a differently named requirement. This directly addresses the constraint stated in this case.
- **C. Long-lived isolated changes accumulated incompatible edits** Local correctness does not prevent integration conflicts. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.

**Explanation:** Healthy jobs cannot satisfy a differently named requirement. The selected answer is the branch rule is waiting for an absent status context.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q048

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The current workflow result satisfies the branch requirement** **Correct.** The policy and emitted check must agree. This directly addresses the constraint stated in this case.
- **B. Features integrate in small reviewed changes with fewer conflicts** The outcome should improve the actual integration process. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.
- **C. Main contains one feature commit linked to the pull request** The history matches the agreed integration policy. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.

**Explanation:** The policy and emitted check must agree. The selected answer is the current workflow result satisfies the branch requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q049

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which execution safeguard most directly addresses the risk in this case?

- **A. Retain pull-request discussion and verification evidence** A compact commit history should not erase review context. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **B. Coordinate workflow and protection changes in a controlled rollout** **Correct.** Changing only one side can block all pull requests. This directly addresses the constraint stated in this case.
- **C. Keep incomplete exposure controlled through flags or incremental work** Frequent merging must not expose unfinished behavior. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.

**Explanation:** Changing only one side can block all pull requests. The selected answer is coordinate workflow and protection changes in a controlled rollout.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q050

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. The team selects this remedy: "Update the required-check rule to the actual stable job name." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Squashing changes commit identity and detailed mainline history** Later cherry-picking may need the resulting squash commit. That addresses a different requirement: Merge choice. It does not directly resolve this case's stated constraint.
- **B. Required-status naming becomes a compatibility contract** **Correct.** Renames need policy migration rather than isolated edits. This directly addresses the constraint stated in this case.
- **C. Trunk-oriented work requires strong automation and discipline** A smaller branch graph does not eliminate release risk. That addresses a different requirement: Integration drift. It does not directly resolve this case's stated constraint.

**Explanation:** Renames need policy migration rather than isolated edits. The selected answer is required-status naming becomes a compatibility contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)
