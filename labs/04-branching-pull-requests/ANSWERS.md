# Lab 04 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L04-Q001

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A feature branch has diverged from main for a month. The team wants earlier integration feedback without abandoning review. Which workflow is appropriate?

- **A. Create a permanent branch per developer and merge only during release week** Permanent isolation postpones the integration feedback the team needs.
- **B. Review the entire feature only after copying it directly into production** That moves review after the risky delivery instead of controlling source integration.
- **C. Integrate smaller reviewed increments through short-lived branches** **Correct.** Smaller divergence provides earlier shared feedback while preserving review.
- **D. Keep the same branch open and increase its local test frequency only** Isolated tests do not exercise integration with colleagues' accepted changes.

**Explanation:** Permanent isolation postpones the integration feedback the team needs. That moves review after the risky delivery instead of controlling source integration. Smaller divergence provides earlier shared feedback while preserving review. Isolated tests do not exercise integration with colleagues' accepted changes.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q002

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

An Azure Repos team requires every change to main to pass through review, but direct pushes still succeed. Which control is missing?

- **A. Make review recommended but allow contributors to complete without it** A recommendation still does not enforce the stated reviewed-only write requirement.
- **B. Apply the approval policy only to feature branches instead of main** The target accepting production changes remains outside the intended protection.
- **C. A scheduled report counting commits after they reach main** After-the-fact reporting does not block the prohibited write.
- **D. Enforced branch policies and permissions consistent with the review requirement** **Correct.** A written process alone does not restrict the accepted write paths.

**Explanation:** A recommendation still does not enforce the stated reviewed-only write requirement. The target accepting production changes remains outside the intended protection. After-the-fact reporting does not block the prohibited write. A written process alone does not restrict the accepted write paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q003

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A pull request is approved, then new code is pushed and merged under the old approval. Which GitHub protection addresses this gap?

```text
Commit A: reviewed and approved
Commit B: new permission change after approval
Required approvals displayed: 1
No new review submitted
```

- **A. Increase the initial approval count but retain those approvals after every later push** More stale approvals still do not cover newly changed source content.
- **B. Require an approval only when the branch is first created** That still allows later unreviewed changes to inherit approval.
- **C. Require the author alone to acknowledge each later push** An author acknowledgement does not provide renewed eligible independent review.
- **D. Dismiss stale approvals or require approval of the most recent reviewable push** **Correct.** The review evidence must cover the content actually being merged.

**Explanation:** More stale approvals still do not cover newly changed source content. That still allows later unreviewed changes to inherit approval. An author acknowledgement does not provide renewed eligible independent review. The review evidence must cover the content actually being merged.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q004

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

In a trunk-oriented workflow, what distinguishes short-lived feature branches from long-running release branches?

- **A. They automatically publish every unfinished feature to all customers** Source integration and customer exposure can be controlled separately.
- **B. Their work is integrated frequently rather than maintained as independent product versions** **Correct.** The purpose is small-batch development integration, not prolonged release-line maintenance.
- **C. They must never run automated tests before merging** Short lifetime does not remove validation requirements.
- **D. They necessarily bypass pull-request review** A short-lived branch can still use enforced independent review.

**Explanation:** Source integration and customer exposure can be controlled separately. The purpose is small-batch development integration, not prolonged release-line maintenance. Short lifetime does not remove validation requirements. A short-lived branch can still use enforced independent review.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q005

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

A GitHub administrator configures a required approval count. Why should bypass permissions also be reviewed?

- **A. Required reviews automatically remove all administrator privileges** Review configuration does not necessarily revoke separate bypass capability.
- **B. A bypass role is required for every ordinary pull-request author** Normal compliant authors do not need an exemption from protection.
- **C. An exempt principal may merge without satisfying ordinary protection** **Correct.** Effective enforcement depends on both the rule and who may avoid it.
- **D. Bypass access automatically makes every test result invalid** The access changes enforcement, not whether test execution produced a valid result.

**Explanation:** Review configuration does not necessarily revoke separate bypass capability. Normal compliant authors do not need an exemption from protection. Effective enforcement depends on both the rule and who may avoid it. The access changes enforcement, not whether test execution produced a valid result.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q006

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Why can an earlier valid approval become insufficient after the author adds a risky commit?

- **A. The approved content differs from the current merge candidate** **Correct.** Review of one revision does not necessarily cover later modifications.
- **B. Approval of a branch name necessarily covers every future revision on that branch** Review assurance concerns content, not an indefinitely authorized mutable branch name.
- **C. A new commit proves that the original reviewer was unauthorized** Authorization and the freshness of reviewed content are separate issues.
- **D. A passed test result automatically extends every old human approval to new changes** Automated execution and review freshness are separate evidence and enforcement concerns.

**Explanation:** Review of one revision does not necessarily cover later modifications. Review assurance concerns content, not an indefinitely authorized mutable branch name. Authorization and the freshness of reviewed content are separate issues. Automated execution and review freshness are separate evidence and enforcement concerns.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q007

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A team reports fewer source conflicts after reducing branch lifetime. Which evidence supports an actual integration improvement?

- **A. Fewer branches exist because developers stopped pushing unfinished work** Hidden local work can preserve divergence while lowering the visible branch count.
- **B. The team deletes old branch names without merging their changes** Deleting references does not establish that useful work integrated safely.
- **C. The release contains fewer commits only because history was squashed** Commit presentation alone does not prove reduced integration delay.
- **D. Comparable changes integrate earlier with less divergence and successful required checks** **Correct.** Both the integration timing and maintained quality conditions should be observed.

**Explanation:** Hidden local work can preserve divergence while lowering the visible branch count. Deleting references does not establish that useful work integrated safely. Commit presentation alone does not prove reduced integration delay. Both the integration timing and maintained quality conditions should be observed.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q008

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

Which negative test most directly verifies a requirement for reviewed pull requests rather than direct writes to main?

```text
Identity: ordinary contributor
Policy: pull request with independent approval required
Probe: git push origin HEAD: main
Observed: push accepted
```

- **A. Open a pull request and inspect its title** Creation does not prove a direct push would be rejected.
- **B. Count the current reviewers on a merged request** A historical review does not establish server enforcement against alternate writes.
- **C. Confirm the repository contains a CONTRIBUTING document** Documentation states intent but does not prove enforced permissions.
- **D. Attempt a direct push with the ordinary contributor identity and confirm rejection** **Correct.** The test exercises the write path the policy must prohibit.

**Explanation:** Creation does not prove a direct push would be rejected. A historical review does not establish server enforcement against alternate writes. Documentation states intent but does not prove enforced permissions. The test exercises the write path the policy must prohibit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q009

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Which test demonstrates that approval freshness is enforced on a protected GitHub branch?

- **A. Open two unrelated requests and count their comments** Comment volume does not test whether a changed candidate needs renewed review.
- **B. Rerun a successful build without changing any source** A repeated check does not exercise new code after approval.
- **C. Approve a request, add a new relevant commit, and confirm fresh eligible review is required** **Correct.** The sequence exercises the exact transition that previously retained stale approval.
- **D. Merge the first approved request without adding another commit** That covers normal approval but not the stale-review failure path.

**Explanation:** Comment volume does not test whether a changed candidate needs renewed review. A repeated check does not exercise new code after approval. The sequence exercises the exact transition that previously retained stale approval. That covers normal approval but not the stale-review failure path.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q010

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

What quality control should remain in place when the team starts merging smaller changes more frequently?

- **A. Automatic approval whenever the pull request changes fewer than ten lines** Small diffs can still contain security or correctness defects.
- **B. Required review and relevant automated validation on the protected target** **Correct.** Small changes still need the controls that establish acceptable merge evidence.
- **C. Only a weekly manual review of the accumulated release diff** Late aggregate review does not gate each accepted change.
- **D. Permission for any author to force-push over a failing main branch** A rewrite can bypass the review and validation boundary.

**Explanation:** Small diffs can still contain security or correctness defects. Small changes still need the controls that establish acceptable merge evidence. Late aggregate review does not gate each accepted change. A rewrite can bypass the review and validation boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q011

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

A service account can bypass branch rules although ordinary contributors cannot. What should be checked before declaring the review policy complete?

- **A. Only whether the last bypassed push happened to pass tests** One acceptable historical change does not establish an enforced future review boundary.
- **B. Whether that service requires bypass and whether its effective permissions can be narrowed** **Correct.** An automation exception is part of the same protected-write trust boundary.
- **C. Only the rule shown for ordinary contributor identities** A rule affecting contributors does not prove an exempt service is constrained.
- **D. Only the service account's read permission on feature branches** Reading a branch is different from the bypass and rewrite capabilities at issue.

**Explanation:** One acceptable historical change does not establish an enforced future review boundary. An automation exception is part of the same protected-write trust boundary. A rule affecting contributors does not prove an exempt service is constrained. Reading a branch is different from the bypass and rewrite capabilities at issue.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q012

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A new commit is added after review. Which validation evidence should merge protection use for required tests?

- **A. Checks associated with the current required merge candidate** **Correct.** Earlier successful execution does not validate newly changed source.
- **B. The oldest green run ever recorded for the branch** That can predate the code now being considered.
- **C. A successful run from a different repository with the same job name** The name alone does not establish the candidate's source or result.
- **D. The author's statement that local tests passed last week** Self-reported historical execution is not the required current check.

**Explanation:** Earlier successful execution does not validate newly changed source. That can predate the code now being considered. The name alone does not establish the candidate's source or result. Self-reported historical execution is not the required current check.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q013

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

The service must integrate daily, retain independent approval, and keep an unfinished feature unavailable. Which strategy meets the combined requirements?

- **A. Direct pushes to main with exposure disabled and retrospective approval** A hidden feature does not justify omitting the independent merge approval.
- **B. A permanent release branch for every developer with no shared integration target** That creates ongoing divergence instead of the required shared daily integration.
- **C. Small reviewed integrations to protected main plus tested feature exposure control** **Correct.** The plan separates integration cadence from release exposure while retaining approval evidence.
- **D. A month-long feature branch with a daily local build and one final review** That validates isolated work but fails the required daily integration.

**Explanation:** A hidden feature does not justify omitting the independent merge approval. That creates ongoing divergence instead of the required shared daily integration. The plan separates integration cadence from release exposure while retaining approval evidence. That validates isolated work but fails the required daily integration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q014

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

Production fixes sometimes require urgent action, but auditors require accountable review. Which policy handles urgency without making bypass the ordinary path?

- **A. Give every maintainer unrestricted bypass so no incident is delayed** Universal exemption removes the normal assurance boundary.
- **B. Automatically disable reviews whenever an issue has the urgent label** A mutable label is insufficient authorization to remove independent review.
- **C. Allow direct pushes at night because fewer reviewers are available** Time of day does not establish that an unreviewed production change is safe.
- **D. Keep protection enforced and define a narrowly authorized audited emergency procedure** **Correct.** The exceptional path remains explicit and accountable while routine changes retain their controls.

**Explanation:** Universal exemption removes the normal assurance boundary. A mutable label is insufficient authorization to remove independent review. Time of day does not establish that an unreviewed production change is safe. The exceptional path remains explicit and accountable while routine changes retain their controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q015

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A GitHub pull request has its required approvals and current passing checks, but an unresolved review conversation remains. Which protection can require that discussion to be resolved before merge?

- **A. Require conversation resolution before merging** **Correct.** This protection directly makes unresolved review conversations part of merge eligibility.
- **B. Require approval of the latest reviewable push only** Approval freshness does not by itself require every conversation to be resolved.
- **C. Require the branch to be up to date only** Current base synchronization does not settle an unresolved review discussion.
- **D. Require signed commits only** Commit provenance does not resolve the review conversation.

**Explanation:** This protection directly makes unresolved review conversations part of merge eligibility. Approval freshness does not by itself require every conversation to be resolved. Current base synchronization does not settle an unresolved review discussion. Commit provenance does not resolve the review conversation.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q016

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Tests execute on a pull request and report failure, but the request can still merge. What must be configured?

- **A. Publish a more detailed failure report but leave the status optional** Better diagnosis does not turn the informational result into a merge gate.
- **B. Add a second optional status containing the same failed test outcome** Duplicating an optional result still does not require success before merging.
- **C. Run the same optional test twice without changing the protection** Repeated informational failures remain informational if no rule requires success.
- **D. Make the appropriate status check a required merge condition** **Correct.** Execution visibility and enforced acceptance are separate configuration concerns.

**Explanation:** Better diagnosis does not turn the informational result into a merge gate. Duplicating an optional result still does not require success before merging. Repeated informational failures remain informational if no rule requires success. Execution visibility and enforced acceptance are separate configuration concerns.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q017

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

An Azure Repos policy counts the author's own approval toward the only required vote. Which change establishes independent review?

- **A. Require two votes while allowing the requester to satisfy the independent-review condition** A numeric threshold must still enforce which eligible identities can satisfy it.
- **B. Let the author approve from another account that they control** A second account controlled by the requester does not establish an independent person.
- **C. Automatically approve after the author runs local tests** Local validation is not a separate independent review decision.
- **D. Prevent requester self-approval from satisfying the required reviewer condition** **Correct.** The decision must come from an eligible person other than the change requester.

**Explanation:** A numeric threshold must still enforce which eligible identities can satisfy it. A second account controlled by the requester does not establish an independent person. Local validation is not a separate independent review decision. The decision must come from an eligible person other than the change requester.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q018

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Main contains incompatible next-version work, while a supported release needs one urgent bug fix. Where should the patch begin?

- **A. By moving the supported release tag to main without changing code** Renaming the reference does not make main compatible with the old release.
- **B. From the supported release baseline with deliberate reconciliation into future development** **Correct.** The patch must remain compatible with the version actually receiving the fix.
- **C. From the newest main commit including every unfinished change** That broadens the hotfix to unrelated incompatible work.
- **D. From an unrelated developer's unpushed directory** That lacks the controlled supported-release source baseline.

**Explanation:** Renaming the reference does not make main compatible with the old release. The patch must remain compatible with the version actually receiving the fix. That broadens the hotfix to unrelated incompatible work. That lacks the controlled supported-release source baseline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q019

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Changes under infrastructure permissions require knowledgeable owner review. Which repository mechanism best routes that specialized review?

- **A. A code comment listing a former administrator** A source comment does not route or require an eligible review.
- **B. An issue label applied only after the pull request merges** Postmerge labeling cannot gate the sensitive change.
- **C. A branch name containing the word security** A name alone does not ensure the relevant experts approve.
- **D. Code ownership rules paired with required owner-review protection where supported** **Correct.** Ownership identifies the relevant reviewers and enforcement makes that review required.

**Explanation:** A source comment does not route or require an eligible review. Postmerge labeling cannot gate the sensitive change. A name alone does not ensure the relevant experts approve. Ownership identifies the relevant reviewers and enforcement makes that review required.

**Sources:** [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q020

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A service account force-pushes main and removes reviewed commits despite ordinary branch restrictions. What is the targeted repair?

- **A. Remove unnecessary rewrite and bypass authority from that automation identity** **Correct.** The exempt service currently crosses the protected history boundary.
- **B. Disable pull requests for ordinary contributors** That restricts the compliant path without constraining the exempt service.
- **C. Rename main after each service run** A naming workaround does not establish durable least-privilege protection.
- **D. Increase the retention of CI logs only** More evidence does not prevent the unauthorized history rewrite.

**Explanation:** The exempt service currently crosses the protected history boundary. That restricts the compliant path without constraining the exempt service. A naming workaround does not establish durable least-privilege protection. More evidence does not prevent the unauthorized history rewrite.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q021

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A required status is named build, but two workflows publish that same job name. What should the maintainer improve?

- **A. Treat any success in the organization as sufficient** A result must belong to the intended repository and validation context.
- **B. Use clear unique status contexts for required validation** **Correct.** Ambiguous job names can make the intended required result unclear.
- **C. Keep identical names and assume any matching success proves the intended validation** A successful unrelated job can create ambiguity about which assurance was provided.
- **D. Require only the shortest workflow display name rather than its emitted job context** Display naming and the actual status context must be distinguished when configuring the rule.

**Explanation:** A result must belong to the intended repository and validation context. Ambiguous job names can make the intended required result unclear. A successful unrelated job can create ambiguity about which assurance was provided. Display naming and the actual status context must be distinguished when configuring the rule.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q022

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Why is a numeric approval count alone insufficient for a separation-of-duties requirement?

- **A. Every counted approval necessarily comes from a different responsible person** Account and eligibility rules must establish the intended reviewer independence.
- **B. The count may not ensure that approvers are independent eligible reviewers** **Correct.** Who approves matters in addition to how many approvals exist.
- **C. A successful test run proves that every counted approval came from an independent eligible person** Automated execution does not establish who supplied the human review decision.
- **D. A second approval automatically proves the reviewer understands the changed domain** Eligibility does not establish expertise without additional ownership or review practice.

**Explanation:** Account and eligibility rules must establish the intended reviewer independence. Who approves matters in addition to how many approvals exist. Automated execution does not establish who supplied the human review decision. Eligibility does not establish expertise without additional ownership or review practice.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q023

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Why should a hotfix applied to a supported branch also be reconciled into ongoing development?

- **A. All branches always share identical files after any commit** Branches represent independent histories until changes are integrated.
- **B. Otherwise a later release can reintroduce the fixed defect** **Correct.** Parallel supported lines need deliberate propagation of valid fixes.
- **C. A supported-branch fix is automatically copied into every future release line** Changes must be deliberately integrated into each relevant maintained source line.
- **D. A release branch can never contain a fix also present on main** Equivalent fixes can be maintained across supported source lines.

**Explanation:** Branches represent independent histories until changes are integrated. Parallel supported lines need deliberate propagation of valid fixes. Changes must be deliberately integrated into each relevant maintained source line. Equivalent fixes can be maintained across supported source lines.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q024

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

A CODEOWNERS file names a team that lacks appropriate repository access. What should be checked?

- **A. The team's eligibility and repository permissions to act as code owners** **Correct.** An ownership entry must refer to eligible reviewers with suitable access.
- **B. Only whether the team name appears as plain text in CODEOWNERS** A syntactically present name can still reference an ineligible or unauthorized owner.
- **C. Only whether the team is visible somewhere in the organization** Organization visibility does not establish the required repository access and team eligibility.
- **D. Only whether one team member can view the public repository page** An individual view does not establish that the nominated team is an eligible code owner.

**Explanation:** An ownership entry must refer to eligible reviewers with suitable access. A syntactically present name can still reference an ineligible or unauthorized owner. Organization visibility does not establish the required repository access and team eligibility. An individual view does not establish that the nominated team is an eligible code owner.

**Sources:** [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q025

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Why can strict rules for humans coexist with unreviewed automation writes?

- **A. The automation principal can have separate effective exemptions or permissions** **Correct.** Protection must be evaluated for every identity that can change the target.
- **B. All service accounts are automatically exempt by definition** Exemption depends on configuration rather than the mere account category.
- **C. A signed automation commit always bypasses review safely** A signature does not establish independent review or acceptable behavior.
- **D. Human approvals automatically apply to every later service commit** Review evidence does not automatically cover future unrelated changes.

**Explanation:** Protection must be evaluated for every identity that can change the target. Exemption depends on configuration rather than the mere account category. A signature does not establish independent review or acceptable behavior. Review evidence does not automatically cover future unrelated changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q026

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

What is a strong acceptance test for a required CI merge gate?

```text
Required status: unit-tests
Candidate commit: 4f892ab
unit-tests result: failure
Expected merge readiness: blocked
```

- **A. A previous unrelated request had a green check** Historical success does not verify the current branch rule.
- **B. A reviewer can open the test report after merging** Postmerge visibility does not show that failure would have blocked acceptance.
- **C. A deliberately failing required check prevents merge and the repaired current check permits it** **Correct.** Positive and negative execution demonstrate the intended acceptance boundary.
- **D. Inspect the YAML and confirm the test command is present** Static presence alone does not establish execution and merge enforcement on the candidate.

**Explanation:** Historical success does not verify the current branch rule. Postmerge visibility does not show that failure would have blocked acceptance. Positive and negative execution demonstrate the intended acceptance boundary. Static presence alone does not establish execution and merge enforcement on the candidate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q027

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Which test best verifies an independent-review rule for an ordinary contribution?

```text
Requester: alex
Required votes: 1
Alex vote: approve
Different reviewer: approve
Policy expectation: requester alone cannot satisfy requirement
```

- **A. Confirm the requester cannot satisfy the rule alone and an eligible different reviewer can** **Correct.** The two outcomes establish the intended reviewer-identity distinction.
- **B. Have an administrator bypass the rule successfully** That tests an exception rather than ordinary independent review.
- **C. Count reviewers listed in documentation without opening a request** A written list does not establish effective enforcement.
- **D. Ask the requester to sign their own commit twice** Commit signatures do not create a separate reviewer.

**Explanation:** The two outcomes establish the intended reviewer-identity distinction. That tests an exception rather than ordinary independent review. A written list does not establish effective enforcement. Commit signatures do not create a separate reviewer.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q028

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

What evidence supports that a hotfix is safe for the supported release rather than only for main?

- **A. Only whether the patch applies without textual conflicts** A clean textual application does not establish runtime or dependency compatibility.
- **B. Tests and review against the supported branch's actual dependencies and behavior** **Correct.** Different baselines can have different compatibility and regression risks.
- **C. Only the latest successful build on main** That can validate a different dependency and code baseline.
- **D. Only matching commit messages between two branches** Messages do not establish equal behavior or compatibility.

**Explanation:** A clean textual application does not establish runtime or dependency compatibility. Different baselines can have different compatibility and regression risks. That can validate a different dependency and code baseline. Messages do not establish equal behavior or compatibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q029

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Which test verifies that ownership routing covers a sensitive path?

- **A. Open a change to the protected path and inspect the requested required owners** **Correct.** The test exercises the path-to-reviewer behavior intended by the rule.
- **B. Edit an unrelated documentation file and infer the sensitive path works** Different path patterns can select different owners.
- **C. Count team members without changing any owned file** Membership inventory alone does not test matching or enforcement.
- **D. Add an owner name only to the pull-request description** A manual mention does not prove the ownership policy matched.

**Explanation:** The test exercises the path-to-reviewer behavior intended by the rule. Different path patterns can select different owners. Membership inventory alone does not test matching or enforcement. A manual mention does not prove the ownership policy matched.

**Sources:** [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q030

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Which permission test demonstrates a useful narrower automation role?

- **A. The service can propose its change but cannot directly rewrite protected main** **Correct.** The test preserves necessary work while rejecting the excessive capability.
- **B. The service can delete and recreate main successfully** That demonstrates the risky rewrite authority remains available.
- **C. The service can still force-push when it authored all affected commits** Authorship does not justify bypassing protection of already accepted shared history.
- **D. The service can update branch-protection settings before writing its change** The ability to disable the control preserves an effective bypass capability.

**Explanation:** The test preserves necessary work while rejecting the excessive capability. That demonstrates the risky rewrite authority remains available. Authorship does not justify bypassing protection of already accepted shared history. The ability to disable the control preserves an effective bypass capability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q031

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A required job is renamed in a workflow, but its branch rule still expects the old name. What safe change is needed?

- **A. Coordinate the workflow's emitted status name and the required-check configuration** **Correct.** The rule must require a status the intended workflow actually produces.
- **B. Mark every branch administrator exempt from all checks** That bypasses the gate instead of repairing the reference.
- **C. Add an always-successful placeholder under the retired required job name** A dummy success satisfies a name without providing the validation originally required.
- **D. Rerun unrelated green jobs without updating the missing required context** Their success cannot publish the absent old status name the rule still requires.

**Explanation:** The rule must require a status the intended workflow actually produces. That bypasses the gate instead of repairing the reference. A dummy success satisfies a name without providing the validation originally required. Their success cannot publish the absent old status name the rule still requires.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q032

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Only one qualified reviewer is configured and that person is on leave. What improves continuity while preserving independent scrutiny?

- **A. Allow authors to approve their own changes whenever the reviewer is absent** That removes independence at the moment it is inconvenient.
- **B. Remove all review requirements permanently** That trades a temporary availability problem for an ongoing missing control.
- **C. Use a service account to approve all requests without examining code** A nominal independent identity is not substantive qualified review.
- **D. Maintain an approved group of qualified alternative reviewers** **Correct.** More eligible experts can preserve both availability and meaningful review.

**Explanation:** That removes independence at the moment it is inconvenient. That trades a temporary availability problem for an ongoing missing control. A nominal independent identity is not substantive qualified review. More eligible experts can preserve both availability and meaningful review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q033

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A hotfix uses a cherry-picked commit from main. What should the author inspect before release?

- **A. Only whether main passed tests before the cherry-pick** Tests on main may include prerequisites missing from the supported baseline.
- **B. Only whether the patch changes the same number of lines on both branches** Equal diff size does not establish equivalent surrounding contracts or dependencies.
- **C. Whether the selected patch depends on other changes absent from the supported branch** **Correct.** A narrow transfer can still rely on surrounding newer code.
- **D. Only whether the cherry-pick applies without a merge conflict** Textual applicability does not prove the patch has every required dependency.

**Explanation:** Tests on main may include prerequisites missing from the supported baseline. Equal diff size does not establish equivalent surrounding contracts or dependencies. A narrow transfer can still rely on surrounding newer code. Textual applicability does not prove the patch has every required dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q034

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Why should changes to the ownership policy itself receive appropriate protection?

- **A. Approving the application diff alone automatically approves any changed ownership policy** The policy change can alter future enforcement and deserves its own review.
- **B. An attacker could otherwise change the rule to avoid the intended sensitive reviewers** **Correct.** The control's configuration is part of the same review trust boundary.
- **C. Ownership files can never be edited through pull requests** They are source files that need governed changes rather than assumed immutability.
- **D. Protecting the file removes the need to review infrastructure code** Configuration protection does not validate every future implementation change.

**Explanation:** The policy change can alter future enforcement and deserves its own review. The control's configuration is part of the same review trust boundary. They are source files that need governed changes rather than assumed immutability. Configuration protection does not validate every future implementation change.

**Sources:** [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q035

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Before removing a service's bypass permission, what operational dependency should the maintainer assess?

- **A. Whether existing jobs must be changed to use a compliant reviewed update path** **Correct.** The permission repair can expose automation that relied on the forbidden shortcut.
- **B. Only whether the service can still clone the repository** Read access does not identify the jobs that depend on direct protected writes.
- **C. Only whether the latest pipeline run was green** A past success does not identify the update path or minimum permission needed.
- **D. Whether the repository has any human reviewers configured** Reviewer availability alone does not migrate automation away from its bypassing write path.

**Explanation:** The permission repair can expose automation that relied on the forbidden shortcut. Read access does not identify the jobs that depend on direct protected writes. A past success does not identify the update path or minimum permission needed. Reviewer availability alone does not migrate automation away from its bypassing write path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q036

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A critical required-check provider is unavailable during an urgent production incident. Which response best preserves a meaningful control boundary?

- **A. Make all contributors permanent bypass actors** A temporary outage would create an ongoing broad exemption.
- **B. Close and reopen the request until a stale green status appears** Reusing stale evidence does not validate the current candidate.
- **C. Use the documented narrowly authorized exception process with recorded reason and follow-up validation** **Correct.** An accountable exception addresses availability without silently redefining failed or absent checks as success.
- **D. Change the required status to whichever unrelated green job is available** That substitutes different evidence for the missing assurance.

**Explanation:** A temporary outage would create an ongoing broad exemption. Reusing stale evidence does not validate the current candidate. An accountable exception addresses availability without silently redefining failed or absent checks as success. That substitutes different evidence for the missing assurance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q037

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A small team requires independent approval for sensitive changes but needs an emergency path when all reviewers are unavailable. Which policy is strongest?

- **A. Preserve ordinary independence and define restricted audited emergency authority with retrospective review obligations** **Correct.** The exception has explicit accountability rather than silently making self-approval normal.
- **B. Count the requester as independent when they use a second email address** A second account does not create an independent decision-maker.
- **C. Treat passing tests as an automatic human approval** Automated validation and independent review provide different assurance.
- **D. Disable reviewer eligibility rules during every weekend** A recurring broad exemption exceeds the stated exceptional need.

**Explanation:** The exception has explicit accountability rather than silently making self-approval normal. A second account does not create an independent decision-maker. Automated validation and independent review provide different assurance. A recurring broad exemption exceeds the stated exceptional need.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q038

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

An Azure Repos build validation passed, then the protected target branch advanced with changes that may conflict. Which policy behavior best verifies the updated integration candidate?

```text
10:00 request validation against main=A: passed
10:05 target main advances to B
10:06 request source branch unchanged; merge requested
```

- **A. Expire validation immediately when the target branch updates and require a fresh valid build** **Correct.** Immediate expiration avoids accepting the old validation as proof for the changed target integration.
- **B. Never expire a successful build once its source branch passed** That can keep a passing result whose target integration context is obsolete.
- **C. Reset reviewer votes but leave the old build result valid indefinitely** Human review freshness and build validation freshness are separate policy concerns.
- **D. Run a nightly build but allow merge before it completes** That defers validation beyond the merge the policy needs to protect.

**Explanation:** Immediate expiration avoids accepting the old validation as proof for the changed target integration. That can keep a passing result whose target integration context is obsolete. Human review freshness and build validation freshness are separate policy concerns. That defers validation beyond the merge the policy needs to protect.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q039

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

A repository has nested ownership patterns and a sensitive permissions directory. A proposed update changes both permissions and CODEOWNERS. Which review plan is strongest?

- **A. Review only the directory name rather than the effective file patterns** Patterns and ordering can determine which owners actually apply.
- **B. Inspect effective path matching and require independent review of both the sensitive change and ownership-rule modification** **Correct.** The candidate can affect both protected behavior and the reviewers selected to examine it.
- **C. Approve only CODEOWNERS syntax and assume that guarantees the permissions change is safe** A valid rule file does not establish the implementation's security correctness.
- **D. Let the requester edit the owner pattern until no specialist review is required** That defeats the intended independent domain-ownership boundary.

**Explanation:** Patterns and ordering can determine which owners actually apply. The candidate can affect both protected behavior and the reviewers selected to examine it. A valid rule file does not establish the implementation's security correctness. That defeats the intended independent domain-ownership boundary.

**Sources:** [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q040

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A bot updates dependency locks daily and currently pushes directly to protected main. Review is mandatory and the bot still needs to propose updates. Which redesign fits?

- **A. Allow the bot to force-push only during a daily time window** Scheduling a prohibited write does not satisfy mandatory review.
- **B. Remove all repository access from the bot and keep the same unattended update requirement** That prevents the legitimate automation task rather than implementing it safely.
- **C. Have the bot create narrowly scoped pull requests and pass ordinary required review and checks** **Correct.** The service retains its legitimate proposal capability without bypassing the acceptance boundary.
- **D. Retain unrestricted bypass and add the word reviewed to bot commit messages** A message cannot substitute for actual independent review.

**Explanation:** Scheduling a prohibited write does not satisfy mandatory review. That prevents the legitimate automation task rather than implementing it safely. The service retains its legitimate proposal capability without bypassing the acceptance boundary. A message cannot substitute for actual independent review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops); [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q041

Advanced · [CP3](README.md#task-3) · [D2.1.1](../../docs/objective-map.md), [D2.1.2](../../docs/objective-map.md)

A team squash-merges features, retains two independent approvals, and supports cherry-picking complete fixes into release branches. A feature's original commits include unrelated debugging changes later removed. Which transfer unit and review approach is strongest?

- **A. Evaluate the resulting squash commit against the supported baseline and retain its pull request provenance** **Correct.** The accepted combined result is the relevant unit, while baseline compatibility and review evidence still matter.
- **B. Cherry-pick every original feature-branch commit because all were individually part of the request** Those commits can include intermediate changes absent from the accepted squash result.
- **C. Move the release branch directly to current main** That transfers unrelated next-version changes beyond the required supported fix.
- **D. Cherry-pick only the last original commit because squash merges retain that identity** A squash result has its own identity and may combine changes from multiple original commits.

**Explanation:** The accepted combined result is the relevant unit, while baseline compatibility and review evidence still matter. Those commits can include intermediate changes absent from the accepted squash result. That transfers unrelated next-version changes beyond the required supported fix. A squash result has its own identity and may combine changes from multiple original commits.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q042

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A renamed workflow emits verify-linux while protection requires verify. One administrator can still merge through bypass, making the rollout appear successful. What test exposes the actual policy health?

```text
Protection: required context=verify
Current request: emitted context=verify-linux, success
Successful test merge identity: organization administrator with bypass
```

- **A. Merge once as administrator and treat the successful merge as proof** Bypass can mask the missing required-check wiring.
- **B. Compare workflow file names without executing a request** File naming does not prove the emitted status context or effective branch behavior.
- **C. Delete the old required check and wait to see whether any defects escape** That removes the gate without positively verifying its replacement.
- **D. Use an ordinary non-bypass identity to verify the new current check satisfies the updated rule and a controlled failure blocks merge** **Correct.** The test must cover exact check identity and the normal contributor's effective protection.

**Explanation:** Bypass can mask the missing required-check wiring. File naming does not prove the emitted status context or effective branch behavior. That removes the gate without positively verifying its replacement. The test must cover exact check identity and the normal contributor's effective protection.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q043

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Two reviewers approve a protected GitHub request, then the author pushes a small correction. Policy requires an independent approval of the latest push while retaining other eligible reviews. Which setting best fits?

- **A. Require approval of the most recent reviewable push by someone other than its pusher** **Correct.** This targets freshness of the latest push without the broader removal of all stale approvals.
- **B. Dismiss every stale approval on each push** This enforces freshness but discards the previous approvals the stated policy wants to retain.
- **C. Require two approvals but no latest-push freshness condition** Both existing approvals can predate the newly added content.
- **D. Require only the author to resolve the final review thread** Thread resolution does not establish independent approval of the latest push.

**Explanation:** This targets freshness of the latest push without the broader removal of all stale approvals. This enforces freshness but discards the previous approvals the stated policy wants to retain. Both existing approvals can predate the newly added content. Thread resolution does not establish independent approval of the latest push.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q044

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

The required check is normally skipped by workflow-level path filters for docs changes. A security policy requires every merge to obtain a conclusive validation result. Which design best meets that contract?

- **A. Rename the workflow to docs-safe without changing event or result behavior** A display name does not establish a current required check outcome.
- **B. Use a supported gating design that always reports the required result while selectively running expensive checks** **Correct.** A conclusive required result must be emitted even when expensive work is unnecessary.
- **C. Keep the path-filtered workflow and assume a missing run counts as passed** A missing required status can leave requests blocked rather than establish successful validation.
- **D. Allow every documentation author permanent bypass** That introduces an identity exemption instead of solving the required-result contract.

**Explanation:** A display name does not establish a current required check outcome. A conclusive required result must be emitted even when expensive work is unnecessary. A missing required status can leave requests blocked rather than establish successful validation. That introduces an identity exemption instead of solving the required-result contract.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)

## L04-Q045

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A required GitHub check passes for pull_request events but stays pending in a merge queue. Its workflow has no merge_group trigger. What is the best repair and validation?

```yaml
on:
  pull_request:
  push:
    branches: [main]
jobs:
  verify:
    runs-on: ubuntu-latest
    steps:
      - run: ./ci/check.sh
```

- **A. Rename every pending check to the last pull request run's successful name** A status label cannot substitute for validating the queued candidate content.
- **B. Disable pull_request validation and run only on main after merge** Post-merge validation does not protect either pre-merge path.
- **C. Add the supported merge_group path for required validation and test both ordinary requests and queued candidates** **Correct.** The queued merge candidate needs the required check on its own event path.
- **D. Remove the check from protection so queued requests can merge** That removes the requested validation instead of making it run for queue candidates.

**Explanation:** A status label cannot substitute for validating the queued candidate content. Post-merge validation does not protect either pre-merge path. The queued merge candidate needs the required check on its own event path. That removes the requested validation instead of making it run for queue candidates.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches); [S4](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group)

## L04-Q046

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

The supported branch needs a security correction, but main's version depends on a new schema forbidden in that release. The customer deadline is one day. Which release plan is strongest?

- **A. Cherry-pick the main commit and trust its old main test result** The supported branch has different dependencies and needs its own validation.
- **B. Implement the correction only on the supported branch and omit forward reconciliation** The urgent fix can then be lost from future development and reintroduced as a regression.
- **C. Adapt the minimal correction to the supported baseline, test its actual dependencies, and reconcile the fix forward** **Correct.** This targets the required behavior without importing unsupported schema dependencies or losing the fix in future releases.
- **D. Merge all of main and disable the new schema checks until after release** That exceeds the support boundary and suppresses the exact incompatibility evidence.

**Explanation:** The supported branch has different dependencies and needs its own validation. The urgent fix can then be lost from future development and reintroduced as a regression. This targets the required behavior without importing unsupported schema dependencies or losing the fix in future releases. That exceeds the support boundary and suppresses the exact incompatibility evidence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q047

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

CODEOWNERS has a broad rule followed by a sensitive-path rule. One request changes both the sensitive code and CODEOWNERS itself. What review must establish the intended protection?

```text
*                 @org/general
/infra/identity/  @org/security
/.github/CODEOWNERS @org/platform

Changed: infra/identity/roles.bicep, .github/CODEOWNERS
```

- **A. Trust the broad first rule because later patterns cannot change matching** CODEOWNERS pattern ordering matters, so the effective rule must be inspected.
- **B. Approve only CODEOWNERS and assume the code change inherits that approval forever** Policy-file approval does not replace required review of the current sensitive implementation.
- **C. Check effective path matching, owner eligibility, required owner-review enforcement, and review of the ownership-policy change** **Correct.** Routing rules and branch enforcement work together, and the policy file itself can alter future protection.
- **D. Count the number of team names anywhere in CODEOWNERS** The presence of names does not establish which rule applies or whether their review is required.

**Explanation:** CODEOWNERS pattern ordering matters, so the effective rule must be inspected. Policy-file approval does not replace required review of the current sensitive implementation. Routing rules and branch enforcement work together, and the policy file itself can alter future protection. The presence of names does not establish which rule applies or whether their review is required.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches); [S3](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## L04-Q048

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

An Azure Repos branch needs two independent approvals and successful validation. The requester can vote, and an automatic build passed before new changes were pushed. What must policy verification cover?

- **A. Only the total historical approval count** This can count the requester and approvals for older content.
- **B. Only that a build policy exists in project settings** Existence does not prove the relevant branch scope or current candidate has satisfied it.
- **C. Only that a project administrator can complete the request** Administrative completion can bypass the ordinary policy behavior being assessed.
- **D. Requester-vote eligibility, required reviewer count, and validation freshness for the current candidate** **Correct.** Approval count and an old passing run do not establish independent review and current-content validation.

**Explanation:** This can count the requester and approvals for older content. Existence does not prove the relevant branch scope or current candidate has satisfied it. Administrative completion can bypass the ordinary policy behavior being assessed. Approval count and an old passing run do not establish independent review and current-content validation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q049

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

An Azure Repos bot can open updates but also bypass policies on push. The bot must keep proposing dependency changes; direct main updates are forbidden. Which permission and workflow change fits?

- **A. Keep direct pushes but run policies only on a nightly mirror** Delayed validation of a mirror does not enforce the main branch's required integration boundary.
- **B. Remove unnecessary push bypass and have the bot submit updates through the required pull request path** **Correct.** This preserves proposal capability while making accepted changes satisfy the protected integration process.
- **C. Remove all repository access from the bot** That blocks the required update proposals rather than narrowing the undesired capability.
- **D. Keep bypass and label bot commits reviewed automatically** A label does not supply the required review before shared source changes.

**Explanation:** Delayed validation of a mirror does not enforce the main branch's required integration boundary. This preserves proposal capability while making accepted changes satisfy the protected integration process. That blocks the required update proposals rather than narrowing the undesired capability. A label does not supply the required review before shared source changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops)

## L04-Q050

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A team enables a merge queue, renames a required job, and replaces the check's provider app in one change. Which rollout test best prevents silent bypass and missing-check deadlocks?

- **A. Test ordinary and queued requests under a non-bypass identity, including current success, deliberate failure, and expected provider/check identity** **Correct.** All changed dimensions affect whether the actual candidate receives trusted required validation.
- **B. Confirm one successful workflow run on the default branch** That does not exercise pre-merge event paths, failure blocking, or the non-bypass identity.
- **C. Retain the old status indefinitely and let administrators override pending checks** This hides integration failures behind routine bypass rather than validating the new contract.
- **D. Test only a deliberately failing pull request before enabling the queue** That omits queued candidates and the successful required-check completion path.

**Explanation:** All changed dimensions affect whether the actual candidate receives trusted required validation. That does not exercise pre-merge event paths, failure blocking, or the non-bypass identity. This hides integration failures behind routine bypass rather than validating the new contract. That omits queued candidates and the successful required-check completion path.

**Sources:** [S2](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches); [S4](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group)
