# Lab 01 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L01-Q001

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A GitHub pull request implements issue 42 in the same repository. The author wants the issue to close when the change reaches the default branch. Which description text expresses that intent?

- **A.** Related to #42
- **B.** Fixes PR 42
- **C.** AB#42
- **D.** Fixes #42

## L01-Q002

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

An author adds AB#217 only to a GitHub pull request title, but no Azure Boards development link appears. Where should the reference be moved?

- **A.** A pull request review comment
- **B.** The pull request description
- **C.** The pull request title with a closing keyword
- **D.** A GitHub issue comment that quotes the pull request URL

## L01-Q003

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A five-person team integrates changes daily and needs review before shared code changes. Which workflow fits GitHub flow?

- **A.** Create a focused branch, open a pull request, review and test it, then merge
- **B.** Maintain develop and release branches with scheduled monthly integration
- **C.** Use personal long-lived branches and review their combined quarterly merge
- **D.** Push directly to main and review the completed changes in a nightly batch

## L01-Q004

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

An on-call engineer wants security discussion updates without receiving every issue notification from a busy repository. Which subscription choice best fits?

- **A.** Watch all activity and rely only on manually deleting unwanted email
- **B.** Unwatch the repository and assume all security conversations still arrive
- **C.** Star the repository and expect it to behave like a custom watch subscription
- **D.** Use a custom repository notification subscription for the relevant event categories

## L01-Q005

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A feature contains three independently tracked implementation tasks in Azure Boards. Which link best represents the decomposition?

- **A.** Related links with no hierarchy
- **B.** Predecessor links from every task to the feature
- **C.** Parent/Child links from the feature to its tasks
- **D.** Duplicate links among all four items

## L01-Q006

Foundational · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A GitHub Project should move an issue to Done when that issue is closed. What is the appropriate first configuration?

- **A.** Enable automatic archive after issue closure
- **B.** Apply a Done issue label when the issue closes
- **C.** Use the workflow that sets status when an item is added
- **D.** Enable the project's issue-closed status workflow

## L01-Q007

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A pull request should link Azure Boards work item 91 without changing its workflow state. Which description is appropriate?

- **A.** Resolved AB#91
- **B.** Implements validation for AB#91
- **C.** Fixes AB#91
- **D.** Closed AB#91

## L01-Q008

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A pull request in org/api fixes issue 28 in org/platform. Which closing reference identifies the intended issue?

- **A.** Fixes org/platform#28
- **B.** Fixes #28
- **C.** Fixes platform/28
- **D.** Fixes org/api#28

## L01-Q009

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A support queue repeatedly receives bugs without reproduction steps. Which repository feature best collects those details at issue creation?

- **A.** An issue template that requires only priority and component labels
- **B.** A pull request template with test instructions
- **C.** A saved issue-search filter for titles containing bug
- **D.** An issue form with required reproduction and expected-behavior fields

## L01-Q010

Foundational · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A reviewer sees GitHub issue #125 and Azure Boards work item AB#125 mentioned together. What should be assumed about these references?

- **A.** They automatically identify a synchronized record when their numbers match
- **B.** They refer to separate namespaces and may identify unrelated work
- **C.** They are two aliases within the same repository-local namespace
- **D.** AB#125 is resolved using whichever GitHub issue 125 is currently open

## L01-Q011

Foundational · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A cross-team delivery cannot start database migration until a schema design task is complete. Which Azure Boards link captures the ordering?

- **A.** Tested By only
- **B.** Predecessor/Successor
- **C.** Parent/Child only
- **D.** Duplicate

## L01-Q012

Foundational · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A GitHub pull request contains Fixes #63 but merges into release/2 rather than the repository default branch. What should the author expect?

- **A.** The issue closes immediately because the closing keyword overrides the base branch
- **B.** The issue closes when the pull request is approved, even before merge
- **C.** The keyword will not automatically close the issue on that non-default-branch merge
- **D.** The issue closes when the source branch is deleted after the release merge

## L01-Q013

Foundational · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

The Azure Boards app was installed for two selected GitHub repositories. A third repository needs work-item linking. What should be reviewed first?

- **A.** Whether the third repository uses the same default branch name as the first two
- **B.** Whether the third repository has matching GitHub issue numbers
- **C.** The app installation's repository access and the Azure Boards connection scope
- **D.** Whether all three repositories have the same visibility

## L01-Q014

Foundational · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A public webhook endpoint receives a request claiming to be a GitHub issue event. What must the receiver verify before trusting its contents?

- **A.** Only that the JSON contains an issue title
- **B.** Only that the request uses port 443
- **C.** The delivery signature using the configured webhook secret
- **D.** Only that User-Agent contains GitHub

## L01-Q015

Foundational · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

An auditor wants to trace an Azure Boards requirement to its verification work. Which relation adds the appropriate test connection?

- **A.** A Related link to the test plan homepage
- **B.** A Parent link making the test case the requirement owner
- **C.** A Tested By link to the relevant test case
- **D.** A hyperlink to the latest overall build status

## L01-Q016

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

The description contains Fixes AB#101, AB#102, and AB#103. All three items must transition on the default-branch merge. Which revision achieves this?

```text
Fixes AB#101, AB#102, and AB#103
```

- **A.** Leave the text unchanged because the first keyword applies to every following item
- **B.** Replace every reference with #101, #102, and #103
- **C.** Move the list to the pull request title only
- **D.** Fixes AB#101, Fixes AB#102, Fixes AB#103

## L01-Q017

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A webhook receiver sometimes receives the same delivery twice. Creating two follow-up work items would corrupt the queue. Which receiver design addresses this?

- **A.** Assume GitHub delivers each event exactly once and remove duplicate checks
- **B.** Assign a new random event identity on every retry
- **C.** Track a stable delivery identifier and make processing idempotent
- **D.** Compare only the issue title and discard every later matching title

## L01-Q018

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

Closing an issue sets its Project status to Done. The team also wants reopening to reset status, but the current documented built-in workflows do not promise that reverse mapping. What should the design say?

- **A.** Verify available workflows and implement an explicit reopen handler if needed
- **B.** Assume the issue-closed rule also handles the reopened event
- **C.** Enable automatic archiving for closed items and leave reopened items archived
- **D.** Set every item to In progress on a nightly schedule

## L01-Q019

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A task is blocked by an external team's issue, but both items are under different features. How should the relationship be recorded?

- **A.** Move the blocked task beneath the external issue as its child
- **B.** Duplicate the external issue into the local feature and stop linking it
- **C.** Mention blocked in the task title without identifying the blocker
- **D.** Add a dependency link and keep each item's correct parent

## L01-Q020

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A GitHub repository is connected to projects in two Azure DevOps organizations, both containing work item 460. Linking is inconsistent. What is the strongest diagnosis?

```text
GitHub: org/api
Connections: dev.azure.com/first-org and dev.azure.com/second-org
Both organizations contain a work item numbered 460.
```

- **A.** Remove project filters because work-item IDs are only project-unique
- **B.** Rename one project so its work-item number changes
- **C.** Use the same AB text and rely on the last connected organization always winning
- **D.** AB references can be ambiguous across connected organizations; consolidate the repository connection to one organization

## L01-Q021

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A maintainer manually links an issue to a pull request whose description has no closing keyword. Which evidence should confirm the intended automatic closure relationship?

- **A.** The pull request source branch contains the issue number
- **B.** The pull request title repeats the issue title
- **C.** The issue was assigned to the pull request author
- **D.** The issue and pull request linked-development sections showing the correct relationship

## L01-Q022

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A bug form requires Expected behavior and Actual behavior, yet reports still contain only vague text. What improvement most directly strengthens feedback quality?

- **A.** Add a minimal reproducible example prompt and a triage check for usable evidence
- **B.** Require a higher-priority label before allowing report submission
- **C.** Require a target release field while keeping reproduction guidance unchanged
- **D.** Route every report directly to implementation without triage

## L01-Q023

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A pull request was linked by AB#72 in its description. The author later removes that reference. Why can the link disappear from the GitHub development section?

- **A.** The description-derived relationship becomes permanent after its first creation
- **B.** That section's AB reference link depends on the description retaining the reference
- **C.** The issue reference automatically moves into the pull request title
- **D.** The missing reference is restored automatically from the branch name

## L01-Q024

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A webhook receiver performs slow external work before returning a response, causing delivery timeouts. Which design improves reliability?

- **A.** Validate and enqueue the event promptly, acknowledge it, and process durable work asynchronously
- **B.** Keep synchronous processing and retry the entire external workflow after each timeout
- **C.** Return success immediately and keep the accepted work only in process memory
- **D.** Increase the sender retry count without changing receiver processing

## L01-Q025

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A delivery report lists only work-item titles. Auditors cannot navigate to implementation or tests. Which addition most improves traceability?

- **A.** A count of successful builds for the whole repository
- **B.** A copied summary of the latest test result in every title
- **C.** A link to the newest default-branch commit for every work item
- **D.** Stable work-item IDs and typed links to the actual code and verification artifacts

## L01-Q026

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A small fix has passed review and merged. The team wants to remove branch clutter while preserving the accepted implementation. What is appropriate?

- **A.** Retain every merged topic branch as the required source of audit evidence
- **B.** Delete the merged topic branch after confirming the accepted pull request remains available
- **C.** Delete the issue relationship because the feature branch no longer exists
- **D.** Recreate the merged branch at the current main revision under the old name

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

- **A.** The work item's previous state because Fixes never supports custom processes
- **B.** The first alphabetical state in any category
- **C.** The first available state in the Completed category
- **D.** The literal state Done regardless of process configuration

## L01-Q028

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A custom GitHub Project workflow must update an item's Status using GraphQL. Which information is needed beyond the issue number?

- **A.** The issue number and the displayed Status option name only
- **B.** The repository node ID and issue number only
- **C.** The Project item ID, Status field ID, and target single-select option ID
- **D.** The Project ID and the issue URL only

## L01-Q029

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A developer keeps missing requests for their own pull request reviews while receiving unrelated repository notifications. What should be checked first?

- **A.** The repository's default reviewer assignment rules only
- **B.** The developer customizes issue labels but leaves notification settings unchanged
- **C.** The team adds the developer to every repository watch subscription
- **D.** Personal notification routing, review-request subscriptions, and delivery channel settings

## L01-Q030

Applied · [CP2](README.md#task-2) · [D1.1.3](../../docs/objective-map.md)

A team copies the same external dependency into five local work items. Updates become inconsistent. What is the better tracking structure?

- **A.** Delete the dependency record and mention its owner in chat
- **B.** Keep one authoritative dependency and link the dependent items to it
- **C.** Keep five copies and periodically replace their titles
- **D.** Merge all dependent tasks into the external dependency regardless of ownership

## L01-Q031

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

An engineer manually adds a GitHub commit link from an Azure Boards work item, but validation rejects it. The commit exists. What prerequisite should be checked?

- **A.** Whether the repository branch has an AB reference in every commit message
- **B.** Whether the work item is in the Completed category
- **C.** Whether that GitHub repository is connected to the Azure Boards project
- **D.** Whether the GitHub issue and Boards work-item numbers match

## L01-Q032

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A pull request expands from a small validation fix into an unrelated user-interface redesign. Review time rises sharply. Which adjustment best supports focused flow?

- **A.** Combine all remaining planned features into this request to minimize pull request count
- **B.** Remove reviewers and merge once the branch builds
- **C.** Create a permanent branch for the request and defer integration indefinitely
- **D.** Split unrelated work into separate reviewed changes with their own acceptance criteria

## L01-Q033

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A signed webhook's event header says push, but the receiver processes it as issues because both payloads contain repository information. What should the receiver do?

- **A.** Dispatch only supported event types and validate each event's expected action and payload shape
- **B.** Use the presence of repository data as sufficient proof of an issues event
- **C.** Skip signature verification because the payload type will be checked
- **D.** Treat every push as an issue-close event to keep the queue current

## L01-Q034

Applied · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

Two pull requests implement different parts of one GitHub issue. Only the second completes its acceptance criteria. How should the first describe its relationship?

- **A.** Use Fixes on the first request because any partial implementation completes the issue
- **B.** Omit all issue references from both requests until after release
- **C.** Close the issue manually when the first request opens
- **D.** Use a non-closing reference, reserving the closing relationship for the completing change

## L01-Q035

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A work item is marked Done, but its linked acceptance test failed in the release build. Which response best restores trustworthy quality traceability?

- **A.** Treat any linked test as proof of success regardless of outcome
- **B.** Change the requirement wording silently to exclude the failing behavior
- **C.** Reopen or otherwise correct the work state under the team's workflow and link the failed verification and repair
- **D.** Delete the failed test link so the completed item remains green

## L01-Q036

Applied · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

The Project's built-in workflow sets Done on issue closure, but the team needs a status rule involving three custom fields and an external approval. Which implementation choice is sound?

- **A.** Add the external approval URL as a Project text field and keep only the close rule
- **B.** Run the built-in close rule repeatedly until the custom fields agree
- **C.** Use a supported custom automation with explicit permissions and tests for the multi-field rule
- **D.** Use only the issue-closed event and ignore later approval changes

## L01-Q037

Applied · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

A branch is created from an Azure Boards work item and later used to open a GitHub pull request. What should be verified before relying on automatic traceability?

- **A.** The branch name includes the numeric work-item ID
- **B.** The pull request author also owns the work item
- **C.** The work item's development links identify the actual pull request and subsequent merge commit
- **D.** The branch is visible in both users local clones

## L01-Q038

Applied · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A requirement is reworded after its original acceptance test passed. What traceability update is most useful?

- **A.** Record the requirement revision and reassess whether linked tests verify the new criteria
- **B.** Keep the old pass as unconditional proof for any future requirement text
- **C.** Remove all historical test records whenever wording changes
- **D.** Create a new unrelated test title without linking it to the requirement

## L01-Q039

Applied · [CP3](README.md#task-3) · [D1.3.5](../../docs/objective-map.md)

The Azure Boards app needs one additional private repository after an approved pilot. Which change fits the requested access boundary?

- **A.** Add only that repository to the installation and connection, then verify the existing integration still works
- **B.** Grant the app all current and future repositories to avoid reviewing selection
- **C.** Replace the app with an individual administrator's broad personal token
- **D.** Make the repository public solely to avoid configuring app access

## L01-Q040

Applied · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A receiver acknowledged a webhook, then crashed before its background work was durably queued. GitHub shows delivery success, but no work item exists. Which design corrects this failure window?

- **A.** Acknowledge the event and store it in a process-local queue
- **B.** Persist the accepted event durably before acknowledgement and retry processing idempotently
- **C.** Acknowledge first and rely only on GitHub to retry failed HTTP deliveries
- **D.** Persist only the issue title and reconstruct the event on restart

## L01-Q041

Advanced · [CP3](README.md#task-3) · [D1.1.3](../../docs/objective-map.md)

Two projects in one Azure DevOps organization link GitHub changes to work items 600 and 601. A proposed fix renumbers items because the engineer assumes IDs are project-local. What is the correct response?

```text
Organization: contoso
Project Alpha: work item 600
Project Beta: work item 601
The GitHub repository is installed for the expected organization.
```

- **A.** Keep the organization-unique IDs and diagnose repository connection and supported reference placement
- **B.** Renumber both items until their IDs match their GitHub issue numbers
- **C.** Connect the same repository to a second organization so the IDs become project-local
- **D.** Replace AB references with project names only

## L01-Q042

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

One GitHub pull request completes issue 18 and Azure Boards work item 913. It must close the GitHub issue but only link the Boards item for a later business review. Which description meets both requirements?

- **A.** AB#18; #913
- **B.** Fixes #18; implementation for AB#913
- **C.** Fixes #18; Fixes AB#913
- **D.** Related to #18; Fixes AB#913

## L01-Q043

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A validly signed issue event is replayed after a previous successful delivery, and the issue was subsequently reopened. The automation creates a follow-up only once per close event. What is the best handling?

- **A.** Create another follow-up because a valid signature guarantees a new event
- **B.** Trust the payload action alone and skip delivery tracking
- **C.** Authenticate the request, deduplicate its delivery identity, and process lifecycle events with their current-state rules
- **D.** Ignore all future events sharing that issue number

## L01-Q044

Advanced · [CP5](README.md#task-5) · [D1.1.1](../../docs/objective-map.md)

A Project supports close-to-Done via a built-in workflow and a custom reopen-to-In progress handler. Reopening changes the issue state but leaves Status Done. What evidence best narrows the fault?

- **A.** Inspect only the issue-closed built-in rule because Done was the last visible status
- **B.** Retry the Project mutation with the issue number as the Project item ID
- **C.** Inspect the reopen event delivery, custom handler authorization and item mutation, separately from the built-in close rule
- **D.** Verify only that the webhook request returned HTTP 200

## L01-Q045

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

An auditor follows a work item to a pull request that merged, but the deployed artifact came from an earlier commit. The work item is marked release-verified. What should be corrected?

```text
Work item: release-verified
Linked PR merge commit: bbb222
Deployed artifact source: aaa111
Deployment timestamp: after the PR merge
```

- **A.** Use the successful merge check as sufficient release verification
- **B.** Link only the latest default-branch build and keep release-verified
- **C.** Link the actual build and deployed revision, then verify the requirement against that artifact before claiming release completion
- **D.** Mark the older artifact verified because its own tests passed

## L01-Q046

Advanced · [CP1](README.md#task-1) · [D1.1.2](../../docs/objective-map.md)

A customer reports the same symptom as an existing issue, but reproduces it on a different supported version with different steps. The queue is overloaded. What is the best triage decision?

- **A.** Compare reproduction and affected-version evidence before linking as duplicate or creating distinct work
- **B.** Classify as duplicate using symptom text alone and preserve the new version only as a comment
- **C.** Create separate work automatically for every report regardless of reproduction
- **D.** Replace the old reproduction with the new steps without retaining version history

## L01-Q047

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A release contains a feature branch spanning four requirements, two passed tests, and one unresolved requirement. The team wants an auditable partial release. Which plan is strongest?

- **A.** Close the unresolved requirement and file an unlinked note after deployment
- **B.** Separate the releasable changes where feasible and trace each included requirement to its implementation and acceptance result
- **C.** Mark all requirements complete because at least two tests passed
- **D.** Use the feature branch name as the only release scope record

## L01-Q048

Advanced · [CP4](README.md#task-4) · [D1.1.1](../../docs/objective-map.md)

A private repository moves to a new GitHub organization. Existing local AB text remains, but new links stop appearing. A second Azure DevOps organization is proposed as a shortcut. What is the best recovery plan?

- **A.** Reconnect the moved repository to an additional Azure DevOps organization
- **B.** Recheck the moved repository's app installation and original connection, preserving a single connected Azure DevOps organization
- **C.** Reinstall the app with access to every repository in the new organization
- **D.** Change all references to link-only AB syntax while leaving installation access unchanged

## L01-Q049

Advanced · [CP5](README.md#task-5) · [D1.1.3](../../docs/objective-map.md)

A custom queue integration has retryable API failures, expiring credentials, and occasional duplicate deliveries. It must create one Project item per source issue. Which design best meets these constraints?

- **A.** Use stable source identity, durable retry state, renewable least-privilege authentication, and idempotent create-or-update logic
- **B.** Deduplicate by issue title and retry with a new Project item on every API failure
- **C.** Use durable delivery storage but perform unconditional creates after each worker retry
- **D.** Use idempotent updates with one manually renewed broad personal token and no expiry recovery

## L01-Q050

Advanced · [CP5](README.md#task-5) · [D1.1.4](../../docs/objective-map.md)

A release export records work item 52 as accepted using test run 300. A rerun against the same source fails after a configuration change, and consumers already downloaded the export. What preserves an auditable decision history?

- **A.** Leave the export unchanged because source code did not change
- **B.** Delete the work item and replace it with a new unlinked record
- **C.** Publish a superseding decision linked to both test runs and configuration revisions, and reassess release eligibility
- **D.** Overwrite test run 300's result with the rerun outcome
