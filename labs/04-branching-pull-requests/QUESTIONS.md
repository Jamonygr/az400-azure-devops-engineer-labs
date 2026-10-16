# Lab 04 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L04-Q001

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which next change most directly satisfies the stated requirement?

- **A.** Enforce pull-request review through protected-branch policies
- **B.** Update the required-check rule to the actual stable job name
- **C.** Use shorter integration cycles with a documented branch strategy

## L04-Q002

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which explanation best accounts for the behavior or constraint described?

- **A.** The branch rule is waiting for an absent status context
- **B.** Long-lived isolated changes accumulated incompatible edits
- **C.** The policy exists only as an agreement

## L04-Q003

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Features integrate in small reviewed changes with fewer conflicts
- **B.** A direct push is rejected and a compliant pull request merges
- **C.** The current workflow result satisfies the branch requirement

## L04-Q004

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep incomplete exposure controlled through flags or incremental work
- **B.** Review who can bypass branch protection
- **C.** Coordinate workflow and protection changes in a controlled rollout

## L04-Q005

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Integration drift: A feature branch remains isolated for a month and repeatedly conflicts with the release branch during stabilization. The team selects this remedy: "Use shorter integration cycles with a documented branch strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Trunk-oriented work requires strong automation and discipline
- **B.** Strict protection can delay urgent fixes
- **C.** Required-status naming becomes a compatibility contract

## L04-Q006

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which next change most directly satisfies the stated requirement?

- **A.** Enforce pull-request review through protected-branch policies
- **B.** Dismiss stale approvals or require review of the latest push
- **C.** Use shorter integration cycles with a documented branch strategy

## L04-Q007

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which explanation best accounts for the behavior or constraint described?

- **A.** Long-lived isolated changes accumulated incompatible edits
- **B.** The policy exists only as an agreement
- **C.** The approved revision differs from the merged revision

## L04-Q008

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A direct push is rejected and a compliant pull request merges
- **B.** A new commit invalidates approval or requires fresh review
- **C.** Features integrate in small reviewed changes with fewer conflicts

## L04-Q009

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep incomplete exposure controlled through flags or incremental work
- **B.** Review who can bypass branch protection
- **C.** Keep required checks associated with the latest commit

## L04-Q010

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Unreviewed merge: Contributors can push directly to main even though the team says every production change requires a reviewed pull request. The team selects this remedy: "Enforce pull-request review through protected-branch policies." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Fresh-review rules can increase review churn
- **B.** Trunk-oriented work requires strong automation and discipline
- **C.** Strict protection can delay urgent fixes

## L04-Q011

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which next change most directly satisfies the stated requirement?

- **A.** Enforce pull-request review through protected-branch policies
- **B.** Dismiss stale approvals or require review of the latest push
- **C.** Make the relevant status check a required merge condition

## L04-Q012

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which explanation best accounts for the behavior or constraint described?

- **A.** CI execution and merge policy are separate controls
- **B.** The policy exists only as an agreement
- **C.** The approved revision differs from the merged revision

## L04-Q013

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A direct push is rejected and a compliant pull request merges
- **B.** A new commit invalidates approval or requires fresh review
- **C.** A failing required check prevents merge until corrected

## L04-Q014

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use stable unambiguous check names for required results
- **B.** Review who can bypass branch protection
- **C.** Keep required checks associated with the latest commit

## L04-Q015

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Stale approval: A pull request receives approval, then a contributor adds a risky commit and merges without another review. The team selects this remedy: "Dismiss stale approvals or require review of the latest push." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Required checks introduce dependency on CI availability
- **B.** Strict protection can delay urgent fixes
- **C.** Fresh-review rules can increase review churn

## L04-Q016

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which next change most directly satisfies the stated requirement?

- **A.** Require an eligible independent reviewer for protected changes
- **B.** Dismiss stale approvals or require review of the latest push
- **C.** Make the relevant status check a required merge condition

## L04-Q017

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which explanation best accounts for the behavior or constraint described?

- **A.** The policy allows author approval or lacks reviewer separation
- **B.** The approved revision differs from the merged revision
- **C.** CI execution and merge policy are separate controls

## L04-Q018

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The author cannot satisfy the independent-review requirement
- **B.** A new commit invalidates approval or requires fresh review
- **C.** A failing required check prevents merge until corrected

## L04-Q019

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. Which execution safeguard most directly addresses the risk in this case?

- **A.** Assign reviewers with relevant ownership and availability
- **B.** Keep required checks associated with the latest commit
- **C.** Use stable unambiguous check names for required results

## L04-Q020

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Missing CI enforcement: A pull request merges while its test workflow is red because the check is informative rather than required. The team selects this remedy: "Make the relevant status check a required merge condition." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Fresh-review rules can increase review churn
- **B.** Required checks introduce dependency on CI availability
- **C.** Independent approval increases coordination cost

## L04-Q021

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which next change most directly satisfies the stated requirement?

- **A.** Make the relevant status check a required merge condition
- **B.** Require an eligible independent reviewer for protected changes
- **C.** Create the fix from the supported release and reconcile forward

## L04-Q022

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which explanation best accounts for the behavior or constraint described?

- **A.** The default branch is ahead of the supported product
- **B.** CI execution and merge policy are separate controls
- **C.** The policy allows author approval or lacks reviewer separation

## L04-Q023

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A failing required check prevents merge until corrected
- **B.** The author cannot satisfy the independent-review requirement
- **C.** The patch applies to the supported release and reaches main

## L04-Q024

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. Which execution safeguard most directly addresses the risk in this case?

- **A.** Assign reviewers with relevant ownership and availability
- **B.** Record the fix commit and test the release-specific path
- **C.** Use stable unambiguous check names for required results

## L04-Q025

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Self-approved change: The only required reviewer is also the pull-request author, and a high-risk change reaches production without independent inspection. The team selects this remedy: "Require an eligible independent reviewer for protected changes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Required checks introduce dependency on CI availability
- **B.** Independent approval increases coordination cost
- **C.** Multiple supported branches increase maintenance effort

## L04-Q026

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which next change most directly satisfies the stated requirement?

- **A.** Require an eligible independent reviewer for protected changes
- **B.** Create the fix from the supported release and reconcile forward
- **C.** Require the designated infrastructure owners for affected paths

## L04-Q027

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which explanation best accounts for the behavior or constraint described?

- **A.** The default branch is ahead of the supported product
- **B.** Generic review requirements do not ensure domain expertise
- **C.** The policy allows author approval or lacks reviewer separation

## L04-Q028

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A permissions change requests the relevant owners' review
- **B.** The author cannot satisfy the independent-review requirement
- **C.** The patch applies to the supported release and reaches main

## L04-Q029

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Record the fix commit and test the release-specific path
- **B.** Protect the ownership configuration from casual modification
- **C.** Assign reviewers with relevant ownership and availability

## L04-Q030

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Unsupported hotfix path: A critical patch must target the supported release while main already contains incompatible next-version changes. The team selects this remedy: "Create the fix from the supported release and reconcile forward." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Owner-based reviews can become a bottleneck
- **B.** Independent approval increases coordination cost
- **C.** Multiple supported branches increase maintenance effort

## L04-Q031

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which next change most directly satisfies the stated requirement?

- **A.** Create the fix from the supported release and reconcile forward
- **B.** Require the designated infrastructure owners for affected paths
- **C.** Remove routine bypass and force-push permission from the service

## L04-Q032

Foundational · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which explanation best accounts for the behavior or constraint described?

- **A.** The default branch is ahead of the supported product
- **B.** Generic review requirements do not ensure domain expertise
- **C.** An exempt identity circumvents normal branch restrictions

## L04-Q033

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The patch applies to the supported release and reaches main
- **B.** A permissions change requests the relevant owners' review
- **C.** The service can create pull requests but cannot rewrite main

## L04-Q034

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. Which execution safeguard most directly addresses the risk in this case?

- **A.** Protect the ownership configuration from casual modification
- **B.** Check dependent automation before reducing permissions
- **C.** Record the fix commit and test the release-specific path

## L04-Q035

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Specialized ownership: A change alters infrastructure permissions, but ordinary code reviewers lack authorization context and approve it anyway. The team selects this remedy: "Require the designated infrastructure owners for affected paths." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Multiple supported branches increase maintenance effort
- **B.** Owner-based reviews can become a bottleneck
- **C.** Least-privilege automation may need workflow redesign

## L04-Q036

Foundational · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which next change most directly satisfies the stated requirement?

- **A.** Remove routine bypass and force-push permission from the service
- **B.** Use squash merging with an informative final commit message
- **C.** Require the designated infrastructure owners for affected paths

## L04-Q037

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which explanation best accounts for the behavior or constraint described?

- **A.** The desired mainline history is feature-oriented
- **B.** Generic review requirements do not ensure domain expertise
- **C.** An exempt identity circumvents normal branch restrictions

## L04-Q038

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Main contains one feature commit linked to the pull request
- **B.** A permissions change requests the relevant owners' review
- **C.** The service can create pull requests but cannot rewrite main

## L04-Q039

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. Which execution safeguard most directly addresses the risk in this case?

- **A.** Protect the ownership configuration from casual modification
- **B.** Check dependent automation before reducing permissions
- **C.** Retain pull-request discussion and verification evidence

## L04-Q040

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Protection bypass: A service account routinely force-pushes main, erasing the review history despite otherwise strict pull-request controls. The team selects this remedy: "Remove routine bypass and force-push permission from the service." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Owner-based reviews can become a bottleneck
- **B.** Least-privilege automation may need workflow redesign
- **C.** Squashing changes commit identity and detailed mainline history

## L04-Q041

Foundational · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which next change most directly satisfies the stated requirement?

- **A.** Use squash merging with an informative final commit message
- **B.** Update the required-check rule to the actual stable job name
- **C.** Remove routine bypass and force-push permission from the service

## L04-Q042

Foundational · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which explanation best accounts for the behavior or constraint described?

- **A.** The branch rule is waiting for an absent status context
- **B.** An exempt identity circumvents normal branch restrictions
- **C.** The desired mainline history is feature-oriented

## L04-Q043

Applied · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The current workflow result satisfies the branch requirement
- **B.** The service can create pull requests but cannot rewrite main
- **C.** Main contains one feature commit linked to the pull request

## L04-Q044

Applied · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check dependent automation before reducing permissions
- **B.** Retain pull-request discussion and verification evidence
- **C.** Coordinate workflow and protection changes in a controlled rollout

## L04-Q045

Advanced · [CP2](README.md#task-2) · [D2.1.1](../../docs/objective-map.md)

Merge choice: A team wants one logical commit per feature on main, while keeping detailed intermediate commits visible in pull-request discussion. The team selects this remedy: "Use squash merging with an informative final commit message." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Least-privilege automation may need workflow redesign
- **B.** Squashing changes commit identity and detailed mainline history
- **C.** Required-status naming becomes a compatibility contract

## L04-Q046

Foundational · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which next change most directly satisfies the stated requirement?

- **A.** Use shorter integration cycles with a documented branch strategy
- **B.** Use squash merging with an informative final commit message
- **C.** Update the required-check rule to the actual stable job name

## L04-Q047

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which explanation best accounts for the behavior or constraint described?

- **A.** The desired mainline history is feature-oriented
- **B.** The branch rule is waiting for an absent status context
- **C.** Long-lived isolated changes accumulated incompatible edits

## L04-Q048

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The current workflow result satisfies the branch requirement
- **B.** Features integrate in small reviewed changes with fewer conflicts
- **C.** Main contains one feature commit linked to the pull request

## L04-Q049

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retain pull-request discussion and verification evidence
- **B.** Coordinate workflow and protection changes in a controlled rollout
- **C.** Keep incomplete exposure controlled through flags or incremental work

## L04-Q050

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Required-check deadlock: A branch rule requires a job name that no longer exists after the CI workflow was renamed. The team selects this remedy: "Update the required-check rule to the actual stable job name." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Squashing changes commit identity and detailed mainline history
- **B.** Required-status naming becomes a compatibility contract
- **C.** Trunk-oriented work requires strong automation and discipline
