# Lab 01 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L01-Q001

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A GitHub pull request implements issue 42 in the same repository. The author wants the issue to close when the change reaches the default branch. Which description text expresses that intent?

- **A. Related to #42** This references the issue but does not use a supported automatic closing keyword.
- **B. Fixes PR 42** This does not identify issue 42 using the supported issue-reference syntax.
- **C. AB#42** This is Azure Boards reference syntax rather than a GitHub issue-closing instruction.
- **D. Fixes #42** **Correct.** A supported closing keyword followed by the local issue reference links the work and requests closure on the qualifying merge.

**Explanation:** This references the issue but does not use a supported automatic closing keyword. This does not identify issue 42 using the supported issue-reference syntax. This is Azure Boards reference syntax rather than a GitHub issue-closing instruction. A supported closing keyword followed by the local issue reference links the work and requests closure on the qualifying merge.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)

## L01-Q002

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

An author adds AB#217 only to a GitHub pull request title, but no Azure Boards development link appears. Where should the reference be moved?

- **A. A pull request review comment** Azure Boards does not create this development link from a review comment alone.
- **B. The pull request description** **Correct.** Azure Boards recognizes AB references in supported descriptions; the pull request title alone does not create the development link.
- **C. The pull request title with a closing keyword** Adding a transition keyword does not make the unsupported title location create the link.
- **D. A GitHub issue comment that quotes the pull request URL** Quoting another artifact in an issue comment does not place the AB reference in the pull request description.

**Explanation:** Azure Boards does not create this development link from a review comment alone. Azure Boards recognizes AB references in supported descriptions; the pull request title alone does not create the development link. Adding a transition keyword does not make the unsupported title location create the link. Quoting another artifact in an issue comment does not place the AB reference in the pull request description.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q003

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A five-person team integrates changes daily and needs review before shared code changes. Which workflow fits GitHub flow?

- **A. Create a focused branch, open a pull request, review and test it, then merge** **Correct.** GitHub flow uses focused branch-based changes with pull request review before integration.
- **B. Maintain develop and release branches with scheduled monthly integration** This can suit other release models but adds a delayed integration boundary to the daily focused workflow.
- **C. Use personal long-lived branches and review their combined quarterly merge** A quarterly combined change delays the review and integration feedback the team needs.
- **D. Push directly to main and review the completed changes in a nightly batch** That puts changes into shared code before the requested independent review.

**Explanation:** GitHub flow uses focused branch-based changes with pull request review before integration. This can suit other release models but adds a delayed integration boundary to the daily focused workflow. A quarterly combined change delays the review and integration feedback the team needs. That puts changes into shared code before the requested independent review.

**Sources:** [S3](https://docs.github.com/en/get-started/using-github/github-flow)

## L01-Q004

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

An on-call engineer wants security discussion updates without receiving every issue notification from a busy repository. Which subscription choice best fits?

- **A. Watch all activity and rely only on manually deleting unwanted email** That subscribes to the noise the engineer wants to avoid rather than narrowing source categories.
- **B. Unwatch the repository and assume all security conversations still arrive** Unwatching does not guarantee the specifically desired notification stream.
- **C. Star the repository and expect it to behave like a custom watch subscription** Starring is distinct from configuring the repository notification events to receive.
- **D. Use a custom repository notification subscription for the relevant event categories** **Correct.** Custom notification settings can narrow subscribed event types without watching every discussion.

**Explanation:** That subscribes to the noise the engineer wants to avoid rather than narrowing source categories. Unwatching does not guarantee the specifically desired notification stream. Starring is distinct from configuring the repository notification events to receive. Custom notification settings can narrow subscribed event types without watching every discussion.

**Sources:** [S4](https://docs.github.com/en/subscriptions-and-notifications/get-started/configuring-notifications)

## L01-Q005

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A feature contains three independently tracked implementation tasks in Azure Boards. Which link best represents the decomposition?

- **A. Related links with no hierarchy** Related links show association but do not express the requested parent-child structure.
- **B. Predecessor links from every task to the feature** Dependency ordering is different from describing tasks that belong beneath a feature.
- **C. Parent/Child links from the feature to its tasks** **Correct.** Hierarchical links express that the tasks are constituent work beneath the feature.
- **D. Duplicate links among all four items** Duplicate links express redundant work records rather than a feature's decomposition.

**Explanation:** Related links show association but do not express the requested parent-child structure. Dependency ordering is different from describing tasks that belong beneath a feature. Hierarchical links express that the tasks are constituent work beneath the feature. Duplicate links express redundant work records rather than a feature's decomposition.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q006

Foundational · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A GitHub Project should move an issue to Done when that issue is closed. What is the appropriate first configuration?

- **A. Enable automatic archive after issue closure** Archiving changes item visibility rather than explicitly setting the requested Status field.
- **B. Apply a Done issue label when the issue closes** An issue label is distinct from the Project Status field.
- **C. Use the workflow that sets status when an item is added** Item addition is a different event from the requested issue-closed transition.
- **D. Enable the project's issue-closed status workflow** **Correct.** The built-in workflow supports updating project status in response to issue closure.

**Explanation:** Archiving changes item visibility rather than explicitly setting the requested Status field. An issue label is distinct from the Project Status field. Item addition is a different event from the requested issue-closed transition. The built-in workflow supports updating project status in response to issue closure.

**Sources:** [S5](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations)

## L01-Q007

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A pull request should link Azure Boards work item 91 without changing its workflow state. Which description is appropriate?

- **A. Resolved AB#91** A recognized state or category name can request a transition, exceeding the link-only intent.
- **B. Implements validation for AB#91** **Correct.** A plain AB reference creates linkage without a transition keyword.
- **C. Fixes AB#91** A fixes keyword requests the documented state transition on the qualifying merge.
- **D. Closed AB#91** A supported workflow state name requests closure rather than link-only behavior.

**Explanation:** A recognized state or category name can request a transition, exceeding the link-only intent. A plain AB reference creates linkage without a transition keyword. A fixes keyword requests the documented state transition on the qualifying merge. A supported workflow state name requests closure rather than link-only behavior.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q008

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A pull request in org/api fixes issue 28 in org/platform. Which closing reference identifies the intended issue?

- **A. Fixes org/platform#28** **Correct.** The owner/repository-qualified reference distinguishes the issue in another repository.
- **B. Fixes #28** The unqualified reference targets issue 28 in the pull request's repository.
- **C. Fixes platform/28** This is not the supported cross-repository issue reference syntax.
- **D. Fixes org/api#28** This explicitly targets the issue in the wrong repository.

**Explanation:** The owner/repository-qualified reference distinguishes the issue in another repository. The unqualified reference targets issue 28 in the pull request's repository. This is not the supported cross-repository issue reference syntax. This explicitly targets the issue in the wrong repository.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)

## L01-Q009

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A support queue repeatedly receives bugs without reproduction steps. Which repository feature best collects those details at issue creation?

- **A. An issue template that requires only priority and component labels** These fields help routing but do not require the missing reproduction details.
- **B. A pull request template with test instructions** That structures proposed code changes rather than the initial bug report.
- **C. A saved issue-search filter for titles containing bug** A query selects existing reports but does not collect required reproduction evidence at creation.
- **D. An issue form with required reproduction and expected-behavior fields** **Correct.** Structured issue forms can require the specific information needed for reproducible feedback.

**Explanation:** These fields help routing but do not require the missing reproduction details. That structures proposed code changes rather than the initial bug report. A query selects existing reports but does not collect required reproduction evidence at creation. Structured issue forms can require the specific information needed for reproducible feedback.

**Sources:** [S11](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms)

## L01-Q010

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A reviewer sees GitHub issue #125 and Azure Boards work item AB#125 mentioned together. What should be assumed about these references?

- **A. They automatically identify a synchronized record when their numbers match** The identifiers belong to separate products and number equality is not an identity mapping.
- **B. They refer to separate namespaces and may identify unrelated work** **Correct.** The GitHub issue number and Azure Boards work-item ID are not interchangeable identifiers.
- **C. They are two aliases within the same repository-local namespace** Azure Boards work-item identity is not the GitHub repository issue namespace.
- **D. AB#125 is resolved using whichever GitHub issue 125 is currently open** The user interface selection does not determine the Azure Boards target identity.

**Explanation:** The identifiers belong to separate products and number equality is not an identity mapping. The GitHub issue number and Azure Boards work-item ID are not interchangeable identifiers. Azure Boards work-item identity is not the GitHub repository issue namespace. The user interface selection does not determine the Azure Boards target identity.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q011

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A cross-team delivery cannot start database migration until a schema design task is complete. Which Azure Boards link captures the ordering?

- **A. Tested By only** A test relationship does not describe the prerequisite implementation task.
- **B. Predecessor/Successor** **Correct.** Dependency links describe that one work item must precede another.
- **C. Parent/Child only** Hierarchy describes decomposition and does not itself specify execution ordering.
- **D. Duplicate** A duplicate relation says the records represent redundant work, not sequential work.

**Explanation:** A test relationship does not describe the prerequisite implementation task. Dependency links describe that one work item must precede another. Hierarchy describes decomposition and does not itself specify execution ordering. A duplicate relation says the records represent redundant work, not sequential work.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q012

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A GitHub pull request contains Fixes #63 but merges into release/2 rather than the repository default branch. What should the author expect?

- **A. The issue closes immediately because the closing keyword overrides the base branch** The documented automatic behavior still depends on the qualifying default-branch merge.
- **B. The issue closes when the pull request is approved, even before merge** Approval is not the qualifying default-branch merge event.
- **C. The keyword will not automatically close the issue on that non-default-branch merge** **Correct.** GitHub's automatic closing behavior is tied to the qualifying default-branch merge.
- **D. The issue closes when the source branch is deleted after the release merge** Deleting a topic branch is not the documented issue-closing trigger.

**Explanation:** The documented automatic behavior still depends on the qualifying default-branch merge. Approval is not the qualifying default-branch merge event. GitHub's automatic closing behavior is tied to the qualifying default-branch merge. Deleting a topic branch is not the documented issue-closing trigger.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)

## L01-Q013

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

The Azure Boards app was installed for two selected GitHub repositories. A third repository needs work-item linking. What should be reviewed first?

- **A. Whether the third repository uses the same default branch name as the first two** Matching branch names do not put the repository within the installation authorization.
- **B. Whether the third repository has matching GitHub issue numbers** Issue numbering does not authorize the app to receive that repository activity.
- **C. The app installation's repository access and the Azure Boards connection scope** **Correct.** The third repository must be within the authorized installation and connection before linking can work.
- **D. Whether all three repositories have the same visibility** Matching visibility does not replace the selected-repository installation scope.

**Explanation:** Matching branch names do not put the repository within the installation authorization. Issue numbering does not authorize the app to receive that repository activity. The third repository must be within the authorized installation and connection before linking can work. Matching visibility does not replace the selected-repository installation scope.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q014

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A public webhook endpoint receives a request claiming to be a GitHub issue event. What must the receiver verify before trusting its contents?

- **A. Only that the JSON contains an issue title** Anyone able to send JSON can invent the expected payload fields.
- **B. Only that the request uses port 443** HTTPS transport does not establish that GitHub originated this particular request.
- **C. The delivery signature using the configured webhook secret** **Correct.** Signature verification checks request authenticity before event data drives workflow actions.
- **D. Only that User-Agent contains GitHub** A caller can forge a header value, so it is insufficient for authentication.

**Explanation:** Anyone able to send JSON can invent the expected payload fields. HTTPS transport does not establish that GitHub originated this particular request. Signature verification checks request authenticity before event data drives workflow actions. A caller can forge a header value, so it is insufficient for authentication.

**Sources:** [S10](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L01-Q015

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

An auditor wants to trace an Azure Boards requirement to its verification work. Which relation adds the appropriate test connection?

- **A. A Related link to the test plan homepage** A general association to a plan is weaker than the requested typed connection to the verifying test case.
- **B. A Parent link making the test case the requirement owner** A hierarchical relationship does not express that the test verifies this requirement.
- **C. A Tested By link to the relevant test case** **Correct.** A typed test relationship connects the requirement to the case intended to verify it.
- **D. A hyperlink to the latest overall build status** An aggregate run status does not identify the relevant test case or its requirement relationship.

**Explanation:** A general association to a plan is weaker than the requested typed connection to the verifying test case. A hierarchical relationship does not express that the test verifies this requirement. A typed test relationship connects the requirement to the case intended to verify it. An aggregate run status does not identify the relevant test case or its requirement relationship.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q016

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

The description contains Fixes AB#101, AB#102, and AB#103. All three items must transition on the default-branch merge. Which revision achieves this?

```text
Fixes AB#101, AB#102, and AB#103
```

- **A. Leave the text unchanged because the first keyword applies to every following item** The documented multi-reference example transitions only the first item when the keyword is not repeated.
- **B. Replace every reference with #101, #102, and #103** Those are GitHub issue references rather than Azure Boards transition targets.
- **C. Move the list to the pull request title only** Azure Boards does not create these work-item links from the title alone.
- **D. Fixes AB#101, Fixes AB#102, Fixes AB#103** **Correct.** Repeating the transition keyword associates it with each work-item reference.

**Explanation:** The documented multi-reference example transitions only the first item when the keyword is not repeated. Those are GitHub issue references rather than Azure Boards transition targets. Azure Boards does not create these work-item links from the title alone. Repeating the transition keyword associates it with each work-item reference.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q017

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A webhook receiver sometimes receives the same delivery twice. Creating two follow-up work items would corrupt the queue. Which receiver design addresses this?

- **A. Assume GitHub delivers each event exactly once and remove duplicate checks** Robust webhook handling must account for repeat deliveries.
- **B. Assign a new random event identity on every retry** A new random identity hides the fact that two requests represent the same delivery.
- **C. Track a stable delivery identifier and make processing idempotent** **Correct.** Delivery deduplication prevents repeat handling from creating duplicate work for the same event.
- **D. Compare only the issue title and discard every later matching title** Distinct events can legitimately share a title, so this can suppress real work.

**Explanation:** Robust webhook handling must account for repeat deliveries. A new random identity hides the fact that two requests represent the same delivery. Delivery deduplication prevents repeat handling from creating duplicate work for the same event. Distinct events can legitimately share a title, so this can suppress real work.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L01-Q018

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

Closing an issue sets its Project status to Done. The team also wants reopening to reset status, but the current documented built-in workflows do not promise that reverse mapping. What should the design say?

- **A. Verify available workflows and implement an explicit reopen handler if needed** **Correct.** The desired reverse transition needs confirmed product support or a separate tested automation.
- **B. Assume the issue-closed rule also handles the reopened event** The documented direction does not establish that inverse event mapping.
- **C. Enable automatic archiving for closed items and leave reopened items archived** Archive policy does not establish the requested active status transition.
- **D. Set every item to In progress on a nightly schedule** That also moves legitimately completed work and does not implement the event-specific rule.

**Explanation:** The desired reverse transition needs confirmed product support or a separate tested automation. The documented direction does not establish that inverse event mapping. Archive policy does not establish the requested active status transition. That also moves legitimately completed work and does not implement the event-specific rule.

**Sources:** [S5](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations)

## L01-Q019

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A task is blocked by an external team's issue, but both items are under different features. How should the relationship be recorded?

- **A. Move the blocked task beneath the external issue as its child** That changes hierarchy merely to express a dependency between separately owned work.
- **B. Duplicate the external issue into the local feature and stop linking it** Copying creates another record without a maintained dependency on the actual external work.
- **C. Mention blocked in the task title without identifying the blocker** The title alone does not provide a navigable relationship to the prerequisite.
- **D. Add a dependency link and keep each item's correct parent** **Correct.** Ordering and decomposition are different relationships, so both can be represented without falsifying ownership.

**Explanation:** That changes hierarchy merely to express a dependency between separately owned work. Copying creates another record without a maintained dependency on the actual external work. The title alone does not provide a navigable relationship to the prerequisite. Ordering and decomposition are different relationships, so both can be represented without falsifying ownership.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q020

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A GitHub repository is connected to projects in two Azure DevOps organizations, both containing work item 460. Linking is inconsistent. What is the strongest diagnosis?

```text
GitHub: org/api
Connections: dev.azure.com/first-org and dev.azure.com/second-org
Both organizations contain a work item numbered 460.
```

- **A. Remove project filters because work-item IDs are only project-unique** The IDs are organization-unique; the cross-organization connection is the relevant ambiguity.
- **B. Rename one project so its work-item number changes** Project display names do not change organization-level work-item identities.
- **C. Use the same AB text and rely on the last connected organization always winning** An assumed connection-order precedence is not a reliable supported resolution rule.
- **D. AB references can be ambiguous across connected organizations; consolidate the repository connection to one organization** **Correct.** Work-item IDs are organization-unique, and Microsoft recommends one connected organization for predictable AB linking.

**Explanation:** The IDs are organization-unique; the cross-organization connection is the relevant ambiguity. Project display names do not change organization-level work-item identities. An assumed connection-order precedence is not a reliable supported resolution rule. Work-item IDs are organization-unique, and Microsoft recommends one connected organization for predictable AB linking.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q021

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A maintainer manually links an issue to a pull request whose description has no closing keyword. Which evidence should confirm the intended automatic closure relationship?

- **A. The pull request source branch contains the issue number** A naming convention does not prove the server-side closing relationship.
- **B. The pull request title repeats the issue title** Text similarity does not establish which issue the request is linked to close.
- **C. The issue was assigned to the pull request author** Shared ownership does not establish a closing implementation relationship.
- **D. The issue and pull request linked-development sections showing the correct relationship** **Correct.** An explicit verified link can establish the connection without relying only on description text.

**Explanation:** A naming convention does not prove the server-side closing relationship. Text similarity does not establish which issue the request is linked to close. Shared ownership does not establish a closing implementation relationship. An explicit verified link can establish the connection without relying only on description text.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)

## L01-Q022

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A bug form requires Expected behavior and Actual behavior, yet reports still contain only vague text. What improvement most directly strengthens feedback quality?

- **A. Add a minimal reproducible example prompt and a triage check for usable evidence** **Correct.** Structured prompts and triage validation address whether submitted content can reproduce the defect.
- **B. Require a higher-priority label before allowing report submission** Priority classification does not supply reproducible steps.
- **C. Require a target release field while keeping reproduction guidance unchanged** A planned release can aid scheduling without addressing the missing reproduction evidence.
- **D. Route every report directly to implementation without triage** Implementation assignment does not validate whether the report can be reproduced.

**Explanation:** Structured prompts and triage validation address whether submitted content can reproduce the defect. Priority classification does not supply reproducible steps. A planned release can aid scheduling without addressing the missing reproduction evidence. Implementation assignment does not validate whether the report can be reproduced.

**Sources:** [S11](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms)

## L01-Q023

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A pull request was linked by AB#72 in its description. The author later removes that reference. Why can the link disappear from the GitHub development section?

- **A. The description-derived relationship becomes permanent after its first creation** The documented AB development link can be removed with the reference text.
- **B. That section's AB reference link depends on the description retaining the reference** **Correct.** The documented integration removes the description-derived development link when the AB reference is removed.
- **C. The issue reference automatically moves into the pull request title** Removing description text does not establish supported title-based linking.
- **D. The missing reference is restored automatically from the branch name** A branch naming convention does not guarantee restoration of this description-derived relationship.

**Explanation:** The documented AB development link can be removed with the reference text. The documented integration removes the description-derived development link when the AB reference is removed. Removing description text does not establish supported title-based linking. A branch naming convention does not guarantee restoration of this description-derived relationship.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q024

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A webhook receiver performs slow external work before returning a response, causing delivery timeouts. Which design improves reliability?

- **A. Validate and enqueue the event promptly, acknowledge it, and process durable work asynchronously** **Correct.** A fast response with durable background processing avoids tying delivery success to slow downstream work.
- **B. Keep synchronous processing and retry the entire external workflow after each timeout** This retains the timeout-sensitive request path and needs separate duplicate-side-effect handling.
- **C. Return success immediately and keep the accepted work only in process memory** A process crash can lose work already acknowledged to the sender.
- **D. Increase the sender retry count without changing receiver processing** More deliveries do not remove the slow synchronous acknowledgement bottleneck.

**Explanation:** A fast response with durable background processing avoids tying delivery success to slow downstream work. This retains the timeout-sensitive request path and needs separate duplicate-side-effect handling. A process crash can lose work already acknowledged to the sender. More deliveries do not remove the slow synchronous acknowledgement bottleneck.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L01-Q025

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A delivery report lists only work-item titles. Auditors cannot navigate to implementation or tests. Which addition most improves traceability?

- **A. A count of successful builds for the whole repository** An aggregate count cannot connect each work item to its actual implementation and verification.
- **B. A copied summary of the latest test result in every title** Copies drift and do not retain an authoritative artifact relationship.
- **C. A link to the newest default-branch commit for every work item** The latest moving revision may not implement or verify each specific requirement.
- **D. Stable work-item IDs and typed links to the actual code and verification artifacts** **Correct.** Identifiers and relationships connect the business record to evidence that can be independently inspected.

**Explanation:** An aggregate count cannot connect each work item to its actual implementation and verification. Copies drift and do not retain an authoritative artifact relationship. The latest moving revision may not implement or verify each specific requirement. Identifiers and relationships connect the business record to evidence that can be independently inspected.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q026

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A small fix has passed review and merged. The team wants to remove branch clutter while preserving the accepted implementation. What is appropriate?

- **A. Retain every merged topic branch as the required source of audit evidence** The accepted pull request and reachable merged history can retain evidence without the obsolete name.
- **B. Delete the merged topic branch after confirming the accepted pull request remains available** **Correct.** Retiring the obsolete branch reference is compatible with retaining merged history and review evidence.
- **C. Delete the issue relationship because the feature branch no longer exists** Branch cleanup does not justify removing business-to-implementation traceability.
- **D. Recreate the merged branch at the current main revision under the old name** That introduces a misleading moving branch reference rather than preserving the original accepted relationship.

**Explanation:** The accepted pull request and reachable merged history can retain evidence without the obsolete name. Retiring the obsolete branch reference is compatible with retaining merged history and review evidence. Branch cleanup does not justify removing business-to-implementation traceability. That introduces a misleading moving branch reference rather than preserving the original accepted relationship.

**Sources:** [S3](https://docs.github.com/en/get-started/using-github/github-flow)

## L01-Q027

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A project uses a custom Azure Boards workflow without a Resolved category. A valid Fixes AB reference is merged into the default branch. Which documented fallback should be checked?

```text
Process categories:
Proposed: New
InProgress: Active
Completed: Verified
Resolved: (none)
```

- **A. The work item's previous state because Fixes never supports custom processes** The documented category-based behavior can apply without a literal Resolved state.
- **B. The first alphabetical state in any category** The fallback uses workflow categories, not alphabetical ordering across all states.
- **C. The first available state in the Completed category** **Correct.** The documented fix-keyword behavior falls back to Completed when the process has no Resolved state.
- **D. The literal state Done regardless of process configuration** Custom processes do not have to define a state with that exact name.

**Explanation:** The documented category-based behavior can apply without a literal Resolved state. The fallback uses workflow categories, not alphabetical ordering across all states. The documented fix-keyword behavior falls back to Completed when the process has no Resolved state. Custom processes do not have to define a state with that exact name.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q028

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A custom GitHub Project workflow must update an item's Status using GraphQL. Which information is needed beyond the issue number?

- **A. The issue number and the displayed Status option name only** Project mutations require the Project item and field-option identities rather than just these labels.
- **B. The repository node ID and issue number only** These identify source content but not the Project field and target option.
- **C. The Project item ID, Status field ID, and target single-select option ID** **Correct.** The Project item and its field option have identities distinct from the repository issue number.
- **D. The Project ID and the issue URL only** These omit the Project item and field-option identifiers required for the status update.

**Explanation:** Project mutations require the Project item and field-option identities rather than just these labels. These identify source content but not the Project field and target option. The Project item and its field option have identities distinct from the repository issue number. These omit the Project item and field-option identifiers required for the status update.

**Sources:** [S9](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects)

## L01-Q029

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A developer keeps missing requests for their own pull request reviews while receiving unrelated repository notifications. What should be checked first?

- **A. The repository's default reviewer assignment rules only** Assignment rules do not establish whether personal delivery channels and subscriptions are configured correctly.
- **B. The developer customizes issue labels but leaves notification settings unchanged** Issue labels do not themselves route the requested pull request review notifications.
- **C. The team adds the developer to every repository watch subscription** Broader subscriptions can increase noise without diagnosing delivery of the specifically missing review requests.
- **D. Personal notification routing, review-request subscriptions, and delivery channel settings** **Correct.** The issue concerns the event subscription and channel used for the developer's requested reviews.

**Explanation:** Assignment rules do not establish whether personal delivery channels and subscriptions are configured correctly. Issue labels do not themselves route the requested pull request review notifications. Broader subscriptions can increase noise without diagnosing delivery of the specifically missing review requests. The issue concerns the event subscription and channel used for the developer's requested reviews.

**Sources:** [S4](https://docs.github.com/en/subscriptions-and-notifications/get-started/configuring-notifications)

## L01-Q030

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A team copies the same external dependency into five local work items. Updates become inconsistent. What is the better tracking structure?

- **A. Delete the dependency record and mention its owner in chat** That removes the stable object needed for durable cross-team traceability.
- **B. Keep one authoritative dependency and link the dependent items to it** **Correct.** A single maintained record with explicit relationships reduces divergent copies while preserving each consumer.
- **C. Keep five copies and periodically replace their titles** Periodic title synchronization does not create an authoritative source or typed dependencies.
- **D. Merge all dependent tasks into the external dependency regardless of ownership** The work items can depend on the same task while retaining separate implementation scope.

**Explanation:** That removes the stable object needed for durable cross-team traceability. A single maintained record with explicit relationships reduces divergent copies while preserving each consumer. Periodic title synchronization does not create an authoritative source or typed dependencies. The work items can depend on the same task while retaining separate implementation scope.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q031

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

An engineer manually adds a GitHub commit link from an Azure Boards work item, but validation rejects it. The commit exists. What prerequisite should be checked?

- **A. Whether the repository branch has an AB reference in every commit message** A valid manual link still requires the repository connection; repeated references do not replace it.
- **B. Whether the work item is in the Completed category** Completion state does not establish repository authorization for link validation.
- **C. Whether that GitHub repository is connected to the Azure Boards project** **Correct.** Boards validates GitHub links against repositories connected to the project.
- **D. Whether the GitHub issue and Boards work-item numbers match** Cross-product numeric equality is not a connection prerequisite.

**Explanation:** A valid manual link still requires the repository connection; repeated references do not replace it. Completion state does not establish repository authorization for link validation. Boards validates GitHub links against repositories connected to the project. Cross-product numeric equality is not a connection prerequisite.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q032

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A pull request expands from a small validation fix into an unrelated user-interface redesign. Review time rises sharply. Which adjustment best supports focused flow?

- **A. Combine all remaining planned features into this request to minimize pull request count** Reducing request count by increasing unrelated scope makes the review problem larger.
- **B. Remove reviewers and merge once the branch builds** That bypasses review rather than addressing the overly broad change.
- **C. Create a permanent branch for the request and defer integration indefinitely** A long-lived branch postpones feedback without resolving the change's mixed scope.
- **D. Split unrelated work into separate reviewed changes with their own acceptance criteria** **Correct.** Focused changes reduce review scope and preserve the reason each implementation exists.

**Explanation:** Reducing request count by increasing unrelated scope makes the review problem larger. That bypasses review rather than addressing the overly broad change. A long-lived branch postpones feedback without resolving the change's mixed scope. Focused changes reduce review scope and preserve the reason each implementation exists.

**Sources:** [S3](https://docs.github.com/en/get-started/using-github/github-flow)

## L01-Q033

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A signed webhook's event header says push, but the receiver processes it as issues because both payloads contain repository information. What should the receiver do?

- **A. Dispatch only supported event types and validate each event's expected action and payload shape** **Correct.** Authentication establishes origin; event-specific validation establishes the appropriate workflow behavior.
- **B. Use the presence of repository data as sufficient proof of an issues event** Repository data occurs in multiple event types and does not identify issue semantics.
- **C. Skip signature verification because the payload type will be checked** Schema checks do not authenticate who sent the payload.
- **D. Treat every push as an issue-close event to keep the queue current** Push and issue lifecycle events have different semantics and effects.

**Explanation:** Authentication establishes origin; event-specific validation establishes the appropriate workflow behavior. Repository data occurs in multiple event types and does not identify issue semantics. Schema checks do not authenticate who sent the payload. Push and issue lifecycle events have different semantics and effects.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks); [S10](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L01-Q034

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Two pull requests implement different parts of one GitHub issue. Only the second completes its acceptance criteria. How should the first describe its relationship?

- **A. Use Fixes on the first request because any partial implementation completes the issue** A closing instruction on partial work misrepresents the remaining acceptance criteria.
- **B. Omit all issue references from both requests until after release** That loses useful implementation traceability during review.
- **C. Close the issue manually when the first request opens** Opening partial implementation is not evidence that the acceptance criteria are complete.
- **D. Use a non-closing reference, reserving the closing relationship for the completing change** **Correct.** A reference preserves partial-work traceability without prematurely asserting the issue is complete.

**Explanation:** A closing instruction on partial work misrepresents the remaining acceptance criteria. That loses useful implementation traceability during review. Opening partial implementation is not evidence that the acceptance criteria are complete. A reference preserves partial-work traceability without prematurely asserting the issue is complete.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)

## L01-Q035

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A work item is marked Done, but its linked acceptance test failed in the release build. Which response best restores trustworthy quality traceability?

- **A. Treat any linked test as proof of success regardless of outcome** A relationship to a test does not establish that the test passed.
- **B. Change the requirement wording silently to exclude the failing behavior** Unreviewed acceptance changes do not establish a valid completed requirement.
- **C. Reopen or otherwise correct the work state under the team's workflow and link the failed verification and repair** **Correct.** The business state should agree with the recorded acceptance evidence and visible follow-up work.
- **D. Delete the failed test link so the completed item remains green** Removing contrary evidence obscures the quality gap rather than resolving it.

**Explanation:** A relationship to a test does not establish that the test passed. Unreviewed acceptance changes do not establish a valid completed requirement. The business state should agree with the recorded acceptance evidence and visible follow-up work. Removing contrary evidence obscures the quality gap rather than resolving it.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q036

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

The Project's built-in workflow sets Done on issue closure, but the team needs a status rule involving three custom fields and an external approval. Which implementation choice is sound?

- **A. Add the external approval URL as a Project text field and keep only the close rule** Storing an approval reference does not implement evaluation of the multi-field condition.
- **B. Run the built-in close rule repeatedly until the custom fields agree** Repeating the same event rule does not add external approval evaluation.
- **C. Use a supported custom automation with explicit permissions and tests for the multi-field rule** **Correct.** Complex external conditions need an implemented integration rather than an assumed built-in behavior.
- **D. Use only the issue-closed event and ignore later approval changes** That cannot correctly evaluate a condition whose external approval may arrive after closure.

**Explanation:** Storing an approval reference does not implement evaluation of the multi-field condition. Repeating the same event rule does not add external approval evaluation. Complex external conditions need an implemented integration rather than an assumed built-in behavior. That cannot correctly evaluate a condition whose external approval may arrive after closure.

**Sources:** [S5](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations); [S9](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects)

## L01-Q037

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A branch is created from an Azure Boards work item and later used to open a GitHub pull request. What should be verified before relying on automatic traceability?

- **A. The branch name includes the numeric work-item ID** The convention is useful context but does not prove the expected server-side links exist.
- **B. The pull request author also owns the work item** Matching ownership does not establish the development artifact relationship.
- **C. The work item's development links identify the actual pull request and subsequent merge commit** **Correct.** The documented link propagation should be checked against the actual artifacts rather than inferred from branch naming alone.
- **D. The branch is visible in both users local clones** Local visibility does not verify the actual Boards development link or merge association.

**Explanation:** The convention is useful context but does not prove the expected server-side links exist. Matching ownership does not establish the development artifact relationship. The documented link propagation should be checked against the actual artifacts rather than inferred from branch naming alone. Local visibility does not verify the actual Boards development link or merge association.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q038

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A requirement is reworded after its original acceptance test passed. What traceability update is most useful?

- **A. Record the requirement revision and reassess whether linked tests verify the new criteria** **Correct.** Test evidence is meaningful against the requirement version and behavior it actually verified.
- **B. Keep the old pass as unconditional proof for any future requirement text** Changed criteria can invalidate the relevance of earlier validation.
- **C. Remove all historical test records whenever wording changes** History remains useful if its applicable revision is clear.
- **D. Create a new unrelated test title without linking it to the requirement** An unlinked title does not restore navigable requirement-to-verification traceability.

**Explanation:** Test evidence is meaningful against the requirement version and behavior it actually verified. Changed criteria can invalidate the relevance of earlier validation. History remains useful if its applicable revision is clear. An unlinked title does not restore navigable requirement-to-verification traceability.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q039

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

The Azure Boards app needs one additional private repository after an approved pilot. Which change fits the requested access boundary?

- **A. Add only that repository to the installation and connection, then verify the existing integration still works** **Correct.** Scoped onboarding extends access deliberately without replacing the governed integration.
- **B. Grant the app all current and future repositories to avoid reviewing selection** That expands access beyond the newly approved repository.
- **C. Replace the app with an individual administrator's broad personal token** The requested scope extension does not require shifting to broader personal credentials.
- **D. Make the repository public solely to avoid configuring app access** Visibility is a separate security decision rather than a substitute for authorized integration scope.

**Explanation:** Scoped onboarding extends access deliberately without replacing the governed integration. That expands access beyond the newly approved repository. The requested scope extension does not require shifting to broader personal credentials. Visibility is a separate security decision rather than a substitute for authorized integration scope.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L01-Q040

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A receiver acknowledged a webhook, then crashed before its background work was durably queued. GitHub shows delivery success, but no work item exists. Which design corrects this failure window?

- **A. Acknowledge the event and store it in a process-local queue** A crash can lose the in-memory event after the sender has seen success.
- **B. Persist the accepted event durably before acknowledgement and retry processing idempotently** **Correct.** Durability before success closes the lost-event window, while idempotency controls duplicate retries.
- **C. Acknowledge first and rely only on GitHub to retry failed HTTP deliveries** An acknowledged delivery is not a failed HTTP delivery for the sender to retry.
- **D. Persist only the issue title and reconstruct the event on restart** The title lacks stable event identity and lifecycle details needed for correct recovery.

**Explanation:** A crash can lose the in-memory event after the sender has seen success. Durability before success closes the lost-event window, while idempotency controls duplicate retries. An acknowledged delivery is not a failed HTTP delivery for the sender to retry. The title lacks stable event identity and lifecycle details needed for correct recovery.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L01-Q041

Advanced · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

Two projects in one Azure DevOps organization link GitHub changes to work items 600 and 601. A proposed fix renumbers items because the engineer assumes IDs are project-local. What is the correct response?

```text
Organization: contoso
Project Alpha: work item 600
Project Beta: work item 601
The GitHub repository is installed for the expected organization.
```

- **A. Keep the organization-unique IDs and diagnose repository connection and supported reference placement** **Correct.** Work-item IDs are unique within the organization; project-local numeric collision is not the cause to fix.
- **B. Renumber both items until their IDs match their GitHub issue numbers** Cross-product number equality is not required and does not repair integration scope.
- **C. Connect the same repository to a second organization so the IDs become project-local** Another organization can add ambiguity rather than correcting the mistaken identifier model.
- **D. Replace AB references with project names only** A project name without a work-item reference does not identify the target work item.

**Explanation:** Work-item IDs are unique within the organization; project-local numeric collision is not the cause to fix. Cross-product number equality is not required and does not repair integration scope. Another organization can add ambiguity rather than correcting the mistaken identifier model. A project name without a work-item reference does not identify the target work item.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops); [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q042

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

One GitHub pull request completes issue 18 and Azure Boards work item 913. It must close the GitHub issue but only link the Boards item for a later business review. Which description meets both requirements?

- **A. AB#18; #913** This swaps the two identifier namespaces and fails to express the requested effects.
- **B. Fixes #18; implementation for AB#913** **Correct.** The GitHub closing keyword and plain Boards reference express different intended lifecycle effects.
- **C. Fixes #18; Fixes AB#913** This also requests the Boards state transition the business review must postpone.
- **D. Related to #18; Fixes AB#913** This omits GitHub automatic closure and requests the wrong Boards lifecycle effect.

**Explanation:** This swaps the two identifier namespaces and fails to express the requested effects. The GitHub closing keyword and plain Boards reference express different intended lifecycle effects. This also requests the Boards state transition the business review must postpone. This omits GitHub automatic closure and requests the wrong Boards lifecycle effect.

**Sources:** [S1](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue); [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q043

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A validly signed issue event is replayed after a previous successful delivery, and the issue was subsequently reopened. The automation creates a follow-up only once per close event. What is the best handling?

- **A. Create another follow-up because a valid signature guarantees a new event** A signature authenticates content but does not establish uniqueness.
- **B. Trust the payload action alone and skip delivery tracking** An action value does not prevent a replay from repeating the same side effect.
- **C. Authenticate the request, deduplicate its delivery identity, and process lifecycle events with their current-state rules** **Correct.** Authenticity, duplicate identity, and legitimate later state changes are separate checks needed for correct lifecycle handling.
- **D. Ignore all future events sharing that issue number** Issue-level suppression also discards the legitimate reopen and later close events.

**Explanation:** A signature authenticates content but does not establish uniqueness. An action value does not prevent a replay from repeating the same side effect. Authenticity, duplicate identity, and legitimate later state changes are separate checks needed for correct lifecycle handling. Issue-level suppression also discards the legitimate reopen and later close events.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks); [S10](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L01-Q044

Advanced · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A Project supports close-to-Done via a built-in workflow and a custom reopen-to-In progress handler. Reopening changes the issue state but leaves Status Done. What evidence best narrows the fault?

- **A. Inspect only the issue-closed built-in rule because Done was the last visible status** The missing update belongs to the custom reopen event path, not necessarily the working close rule.
- **B. Retry the Project mutation with the issue number as the Project item ID** The issue number and Project item identity are different identifiers.
- **C. Inspect the reopen event delivery, custom handler authorization and item mutation, separately from the built-in close rule** **Correct.** The failed direction belongs to the explicitly implemented custom path, so inspect its event and update chain.
- **D. Verify only that the webhook request returned HTTP 200** Acknowledgement alone does not establish authorization or completion of the Project field mutation.

**Explanation:** The missing update belongs to the custom reopen event path, not necessarily the working close rule. The issue number and Project item identity are different identifiers. The failed direction belongs to the explicitly implemented custom path, so inspect its event and update chain. Acknowledgement alone does not establish authorization or completion of the Project field mutation.

**Sources:** [S5](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations); [S9](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects)

## L01-Q045

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

An auditor follows a work item to a pull request that merged, but the deployed artifact came from an earlier commit. The work item is marked release-verified. What should be corrected?

```text
Work item: release-verified
Linked PR merge commit: bbb222
Deployed artifact source: aaa111
Deployment timestamp: after the PR merge
```

- **A. Use the successful merge check as sufficient release verification** A merge check verifies a source candidate, not inclusion in the deployed older artifact.
- **B. Link only the latest default-branch build and keep release-verified** A moving latest run can differ from the artifact actually deployed.
- **C. Link the actual build and deployed revision, then verify the requirement against that artifact before claiming release completion** **Correct.** A merged implementation is distinct from evidence that the deployed artifact contains and verifies that change.
- **D. Mark the older artifact verified because its own tests passed** Those tests cannot establish that the artifact contains the later requirement implementation.

**Explanation:** A merge check verifies a source candidate, not inclusion in the deployed older artifact. A moving latest run can differ from the artifact actually deployed. A merged implementation is distinct from evidence that the deployed artifact contains and verifies that change. Those tests cannot establish that the artifact contains the later requirement implementation.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q046

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A customer reports the same symptom as an existing issue, but reproduces it on a different supported version with different steps. The queue is overloaded. What is the best triage decision?

- **A. Compare reproduction and affected-version evidence before linking as duplicate or creating distinct work** **Correct.** Similar symptoms can arise from different defects, so classification should follow technical evidence.
- **B. Classify as duplicate using symptom text alone and preserve the new version only as a comment** A symptom match is insufficient when reproduction and supported-version behavior may differ.
- **C. Create separate work automatically for every report regardless of reproduction** This avoids false merging but can duplicate a single confirmed underlying defect.
- **D. Replace the old reproduction with the new steps without retaining version history** That obscures whether one defect or distinct version-specific failures are represented.

**Explanation:** Similar symptoms can arise from different defects, so classification should follow technical evidence. A symptom match is insufficient when reproduction and supported-version behavior may differ. This avoids false merging but can duplicate a single confirmed underlying defect. That obscures whether one defect or distinct version-specific failures are represented.

**Sources:** [S11](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms); [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q047

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A release contains a feature branch spanning four requirements, two passed tests, and one unresolved requirement. The team wants an auditable partial release. Which plan is strongest?

- **A. Close the unresolved requirement and file an unlinked note after deployment** That hides incomplete scope instead of recording an auditable release decision.
- **B. Separate the releasable changes where feasible and trace each included requirement to its implementation and acceptance result** **Correct.** An explicit inclusion boundary with per-requirement evidence supports a partial release without claiming unfinished work.
- **C. Mark all requirements complete because at least two tests passed** Some passing tests do not establish the unresolved requirement's acceptance.
- **D. Use the feature branch name as the only release scope record** A branch label does not enumerate included requirements or their verification states.

**Explanation:** That hides incomplete scope instead of recording an auditable release decision. An explicit inclusion boundary with per-requirement evidence supports a partial release without claiming unfinished work. Some passing tests do not establish the unresolved requirement's acceptance. A branch label does not enumerate included requirements or their verification states.

**Sources:** [S3](https://docs.github.com/en/get-started/using-github/github-flow); [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops)

## L01-Q048

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A private repository moves to a new GitHub organization. Existing local AB text remains, but new links stop appearing. A second Azure DevOps organization is proposed as a shortcut. What is the best recovery plan?

- **A. Reconnect the moved repository to an additional Azure DevOps organization** Adding a connection does not first repair the original authorization and can introduce AB ambiguity.
- **B. Recheck the moved repository's app installation and original connection, preserving a single connected Azure DevOps organization** **Correct.** A move can change authorization and connection context; adding another organization risks additional AB ambiguity.
- **C. Reinstall the app with access to every repository in the new organization** Broad access exceeds the moved repository recovery scope and still requires the correct Boards connection.
- **D. Change all references to link-only AB syntax while leaving installation access unchanged** Reference wording cannot restore repository access lost during a move.

**Explanation:** Adding a connection does not first repair the original authorization and can introduce AB ambiguity. A move can change authorization and connection context; adding another organization risks additional AB ambiguity. Broad access exceeds the moved repository recovery scope and still requires the correct Boards connection. Reference wording cannot restore repository access lost during a move.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)

## L01-Q049

Advanced · [CP5](README.md#task-5) · [D1.1.3](../../docs/objective-map.md)

A custom queue integration has retryable API failures, expiring credentials, and occasional duplicate deliveries. It must create one Project item per source issue. Which design best meets these constraints?

- **A. Use stable source identity, durable retry state, renewable least-privilege authentication, and idempotent create-or-update logic** **Correct.** Each element addresses a distinct failure mode while preserving one logical Project item per source issue.
- **B. Deduplicate by issue title and retry with a new Project item on every API failure** Titles can collide, and retries can create multiple items for one source issue.
- **C. Use durable delivery storage but perform unconditional creates after each worker retry** Durability prevents loss but does not by itself prevent duplicate side effects.
- **D. Use idempotent updates with one manually renewed broad personal token and no expiry recovery** This handles duplicates but leaves the stated credential-expiry failure without a reliable governed recovery path.

**Explanation:** Each element addresses a distinct failure mode while preserving one logical Project item per source issue. Titles can collide, and retries can create multiple items for one source issue. Durability prevents loss but does not by itself prevent duplicate side effects. This handles duplicates but leaves the stated credential-expiry failure without a reliable governed recovery path.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks); [S9](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects)

## L01-Q050

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A release export records work item 52 as accepted using test run 300. A rerun against the same source fails after a configuration change, and consumers already downloaded the export. What preserves an auditable decision history?

- **A. Leave the export unchanged because source code did not change** Configuration can affect behavior, so matching source does not invalidate the new failure evidence.
- **B. Delete the work item and replace it with a new unlinked record** An unlinked replacement loses the decision history consumers need to understand the correction.
- **C. Publish a superseding decision linked to both test runs and configuration revisions, and reassess release eligibility** **Correct.** Versioned correction retains what was originally claimed while clearly recording the newer contradictory verification evidence.
- **D. Overwrite test run 300's result with the rerun outcome** That erases the distinction between two executions and their different configuration contexts.

**Explanation:** Configuration can affect behavior, so matching source does not invalidate the new failure evidence. An unlinked replacement loses the decision history consumers need to understand the correction. Versioned correction retains what was originally claimed while clearly recording the newer contradictory verification evidence. That erases the distinction between two executions and their different configuration contexts.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)
