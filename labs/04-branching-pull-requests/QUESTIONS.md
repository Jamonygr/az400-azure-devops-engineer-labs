# Lab 04 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L04-Q001

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A feature branch has diverged from main for a month. The team wants earlier integration feedback without abandoning review. Which workflow is appropriate?

- **A.** Create a permanent branch per developer and merge only during release week
- **B.** Review the entire feature only after copying it directly into production
- **C.** Integrate smaller reviewed increments through short-lived branches
- **D.** Keep the same branch open and increase its local test frequency only

## L04-Q002

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

An Azure Repos team requires every change to main to pass through review, but direct pushes still succeed. Which control is missing?

- **A.** Make review recommended but allow contributors to complete without it
- **B.** Apply the approval policy only to feature branches instead of main
- **C.** A scheduled report counting commits after they reach main
- **D.** Enforced branch policies and permissions consistent with the review requirement

## L04-Q003

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A pull request is approved, then new code is pushed and merged under the old approval. Which GitHub protection addresses this gap?

```text
Commit A: reviewed and approved
Commit B: new permission change after approval
Required approvals displayed: 1
No new review submitted
```

- **A.** Increase the initial approval count but retain those approvals after every later push
- **B.** Require an approval only when the branch is first created
- **C.** Require the author alone to acknowledge each later push
- **D.** Dismiss stale approvals or require approval of the most recent reviewable push

## L04-Q004

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

In a trunk-oriented workflow, what distinguishes short-lived feature branches from long-running release branches?

- **A.** They automatically publish every unfinished feature to all customers
- **B.** Their work is integrated frequently rather than maintained as independent product versions
- **C.** They must never run automated tests before merging
- **D.** They necessarily bypass pull-request review

## L04-Q005

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

A GitHub administrator configures a required approval count. Why should bypass permissions also be reviewed?

- **A.** Required reviews automatically remove all administrator privileges
- **B.** A bypass role is required for every ordinary pull-request author
- **C.** An exempt principal may merge without satisfying ordinary protection
- **D.** Bypass access automatically makes every test result invalid

## L04-Q006

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Why can an earlier valid approval become insufficient after the author adds a risky commit?

- **A.** The approved content differs from the current merge candidate
- **B.** Approval of a branch name necessarily covers every future revision on that branch
- **C.** A new commit proves that the original reviewer was unauthorized
- **D.** A passed test result automatically extends every old human approval to new changes

## L04-Q007

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A team reports fewer source conflicts after reducing branch lifetime. Which evidence supports an actual integration improvement?

- **A.** Fewer branches exist because developers stopped pushing unfinished work
- **B.** The team deletes old branch names without merging their changes
- **C.** The release contains fewer commits only because history was squashed
- **D.** Comparable changes integrate earlier with less divergence and successful required checks

## L04-Q008

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

Which negative test most directly verifies a requirement for reviewed pull requests rather than direct writes to main?

```text
Identity: ordinary contributor
Policy: pull request with independent approval required
Probe: git push origin HEAD: main
Observed: push accepted
```

- **A.** Open a pull request and inspect its title
- **B.** Count the current reviewers on a merged request
- **C.** Confirm the repository contains a CONTRIBUTING document
- **D.** Attempt a direct push with the ordinary contributor identity and confirm rejection

## L04-Q009

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Which test demonstrates that approval freshness is enforced on a protected GitHub branch?

- **A.** Open two unrelated requests and count their comments
- **B.** Rerun a successful build without changing any source
- **C.** Approve a request, add a new relevant commit, and confirm fresh eligible review is required
- **D.** Merge the first approved request without adding another commit

## L04-Q010

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

What quality control should remain in place when the team starts merging smaller changes more frequently?

- **A.** Automatic approval whenever the pull request changes fewer than ten lines
- **B.** Required review and relevant automated validation on the protected target
- **C.** Only a weekly manual review of the accumulated release diff
- **D.** Permission for any author to force-push over a failing main branch

## L04-Q011

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

A service account can bypass branch rules although ordinary contributors cannot. What should be checked before declaring the review policy complete?

- **A.** Only whether the last bypassed push happened to pass tests
- **B.** Whether that service requires bypass and whether its effective permissions can be narrowed
- **C.** Only the rule shown for ordinary contributor identities
- **D.** Only the service account's read permission on feature branches

## L04-Q012

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A new commit is added after review. Which validation evidence should merge protection use for required tests?

- **A.** Checks associated with the current required merge candidate
- **B.** The oldest green run ever recorded for the branch
- **C.** A successful run from a different repository with the same job name
- **D.** The author's statement that local tests passed last week

## L04-Q013

Foundational · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

The service must integrate daily, retain independent approval, and keep an unfinished feature unavailable. Which strategy meets the combined requirements?

- **A.** Direct pushes to main with exposure disabled and retrospective approval
- **B.** A permanent release branch for every developer with no shared integration target
- **C.** Small reviewed integrations to protected main plus tested feature exposure control
- **D.** A month-long feature branch with a daily local build and one final review

## L04-Q014

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

Production fixes sometimes require urgent action, but auditors require accountable review. Which policy handles urgency without making bypass the ordinary path?

- **A.** Give every maintainer unrestricted bypass so no incident is delayed
- **B.** Automatically disable reviews whenever an issue has the urgent label
- **C.** Allow direct pushes at night because fewer reviewers are available
- **D.** Keep protection enforced and define a narrowly authorized audited emergency procedure

## L04-Q015

Foundational · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A GitHub pull request has its required approvals and current passing checks, but an unresolved review conversation remains. Which protection can require that discussion to be resolved before merge?

- **A.** Require conversation resolution before merging
- **B.** Require approval of the latest reviewable push only
- **C.** Require the branch to be up to date only
- **D.** Require signed commits only

## L04-Q016

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

Tests execute on a pull request and report failure, but the request can still merge. What must be configured?

- **A.** Publish a more detailed failure report but leave the status optional
- **B.** Add a second optional status containing the same failed test outcome
- **C.** Run the same optional test twice without changing the protection
- **D.** Make the appropriate status check a required merge condition

## L04-Q017

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

An Azure Repos policy counts the author's own approval toward the only required vote. Which change establishes independent review?

- **A.** Require two votes while allowing the requester to satisfy the independent-review condition
- **B.** Let the author approve from another account that they control
- **C.** Automatically approve after the author runs local tests
- **D.** Prevent requester self-approval from satisfying the required reviewer condition

## L04-Q018

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Main contains incompatible next-version work, while a supported release needs one urgent bug fix. Where should the patch begin?

- **A.** By moving the supported release tag to main without changing code
- **B.** From the supported release baseline with deliberate reconciliation into future development
- **C.** From the newest main commit including every unfinished change
- **D.** From an unrelated developer's unpushed directory

## L04-Q019

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Changes under infrastructure permissions require knowledgeable owner review. Which repository mechanism best routes that specialized review?

- **A.** A code comment listing a former administrator
- **B.** An issue label applied only after the pull request merges
- **C.** A branch name containing the word security
- **D.** Code ownership rules paired with required owner-review protection where supported

## L04-Q020

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A service account force-pushes main and removes reviewed commits despite ordinary branch restrictions. What is the targeted repair?

- **A.** Remove unnecessary rewrite and bypass authority from that automation identity
- **B.** Disable pull requests for ordinary contributors
- **C.** Rename main after each service run
- **D.** Increase the retention of CI logs only

## L04-Q021

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A required status is named build, but two workflows publish that same job name. What should the maintainer improve?

- **A.** Treat any success in the organization as sufficient
- **B.** Use clear unique status contexts for required validation
- **C.** Keep identical names and assume any matching success proves the intended validation
- **D.** Require only the shortest workflow display name rather than its emitted job context

## L04-Q022

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Why is a numeric approval count alone insufficient for a separation-of-duties requirement?

- **A.** Every counted approval necessarily comes from a different responsible person
- **B.** The count may not ensure that approvers are independent eligible reviewers
- **C.** A successful test run proves that every counted approval came from an independent eligible person
- **D.** A second approval automatically proves the reviewer understands the changed domain

## L04-Q023

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

Why should a hotfix applied to a supported branch also be reconciled into ongoing development?

- **A.** All branches always share identical files after any commit
- **B.** Otherwise a later release can reintroduce the fixed defect
- **C.** A supported-branch fix is automatically copied into every future release line
- **D.** A release branch can never contain a fix also present on main

## L04-Q024

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

A CODEOWNERS file names a team that lacks appropriate repository access. What should be checked?

- **A.** The team's eligibility and repository permissions to act as code owners
- **B.** Only whether the team name appears as plain text in CODEOWNERS
- **C.** Only whether the team is visible somewhere in the organization
- **D.** Only whether one team member can view the public repository page

## L04-Q025

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Why can strict rules for humans coexist with unreviewed automation writes?

- **A.** The automation principal can have separate effective exemptions or permissions
- **B.** All service accounts are automatically exempt by definition
- **C.** A signed automation commit always bypasses review safely
- **D.** Human approvals automatically apply to every later service commit

## L04-Q026

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

What is a strong acceptance test for a required CI merge gate?

```text
Required status: unit-tests
Candidate commit: 4f892ab
unit-tests result: failure
Expected merge readiness: blocked
```

- **A.** A previous unrelated request had a green check
- **B.** A reviewer can open the test report after merging
- **C.** A deliberately failing required check prevents merge and the repaired current check permits it
- **D.** Inspect the YAML and confirm the test command is present

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

- **A.** Confirm the requester cannot satisfy the rule alone and an eligible different reviewer can
- **B.** Have an administrator bypass the rule successfully
- **C.** Count reviewers listed in documentation without opening a request
- **D.** Ask the requester to sign their own commit twice

## L04-Q028

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

What evidence supports that a hotfix is safe for the supported release rather than only for main?

- **A.** Only whether the patch applies without textual conflicts
- **B.** Tests and review against the supported branch's actual dependencies and behavior
- **C.** Only the latest successful build on main
- **D.** Only matching commit messages between two branches

## L04-Q029

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Which test verifies that ownership routing covers a sensitive path?

- **A.** Open a change to the protected path and inspect the requested required owners
- **B.** Edit an unrelated documentation file and infer the sensitive path works
- **C.** Count team members without changing any owned file
- **D.** Add an owner name only to the pull-request description

## L04-Q030

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Which permission test demonstrates a useful narrower automation role?

- **A.** The service can propose its change but cannot directly rewrite protected main
- **B.** The service can delete and recreate main successfully
- **C.** The service can still force-push when it authored all affected commits
- **D.** The service can update branch-protection settings before writing its change

## L04-Q031

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A required job is renamed in a workflow, but its branch rule still expects the old name. What safe change is needed?

- **A.** Coordinate the workflow's emitted status name and the required-check configuration
- **B.** Mark every branch administrator exempt from all checks
- **C.** Add an always-successful placeholder under the retired required job name
- **D.** Rerun unrelated green jobs without updating the missing required context

## L04-Q032

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Only one qualified reviewer is configured and that person is on leave. What improves continuity while preserving independent scrutiny?

- **A.** Allow authors to approve their own changes whenever the reviewer is absent
- **B.** Remove all review requirements permanently
- **C.** Use a service account to approve all requests without examining code
- **D.** Maintain an approved group of qualified alternative reviewers

## L04-Q033

Applied · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

A hotfix uses a cherry-picked commit from main. What should the author inspect before release?

- **A.** Only whether main passed tests before the cherry-pick
- **B.** Only whether the patch changes the same number of lines on both branches
- **C.** Whether the selected patch depends on other changes absent from the supported branch
- **D.** Only whether the cherry-pick applies without a merge conflict

## L04-Q034

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

Why should changes to the ownership policy itself receive appropriate protection?

- **A.** Approving the application diff alone automatically approves any changed ownership policy
- **B.** An attacker could otherwise change the rule to avoid the intended sensitive reviewers
- **C.** Ownership files can never be edited through pull requests
- **D.** Protecting the file removes the need to review infrastructure code

## L04-Q035

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

Before removing a service's bypass permission, what operational dependency should the maintainer assess?

- **A.** Whether existing jobs must be changed to use a compliant reviewed update path
- **B.** Only whether the service can still clone the repository
- **C.** Only whether the latest pipeline run was green
- **D.** Whether the repository has any human reviewers configured

## L04-Q036

Applied · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A critical required-check provider is unavailable during an urgent production incident. Which response best preserves a meaningful control boundary?

- **A.** Make all contributors permanent bypass actors
- **B.** Close and reopen the request until a stale green status appears
- **C.** Use the documented narrowly authorized exception process with recorded reason and follow-up validation
- **D.** Change the required status to whichever unrelated green job is available

## L04-Q037

Applied · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

A small team requires independent approval for sensitive changes but needs an emergency path when all reviewers are unavailable. Which policy is strongest?

- **A.** Preserve ordinary independence and define restricted audited emergency authority with retrospective review obligations
- **B.** Count the requester as independent when they use a second email address
- **C.** Treat passing tests as an automatic human approval
- **D.** Disable reviewer eligibility rules during every weekend

## L04-Q038

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

An Azure Repos build validation passed, then the protected target branch advanced with changes that may conflict. Which policy behavior best verifies the updated integration candidate?

```text
10:00 request validation against main=A: passed
10:05 target main advances to B
10:06 request source branch unchanged; merge requested
```

- **A.** Expire validation immediately when the target branch updates and require a fresh valid build
- **B.** Never expire a successful build once its source branch passed
- **C.** Reset reviewer votes but leave the old build result valid indefinitely
- **D.** Run a nightly build but allow merge before it completes

## L04-Q039

Applied · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

A repository has nested ownership patterns and a sensitive permissions directory. A proposed update changes both permissions and CODEOWNERS. Which review plan is strongest?

- **A.** Review only the directory name rather than the effective file patterns
- **B.** Inspect effective path matching and require independent review of both the sensitive change and ownership-rule modification
- **C.** Approve only CODEOWNERS syntax and assume that guarantees the permissions change is safe
- **D.** Let the requester edit the owner pattern until no specialist review is required

## L04-Q040

Applied · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A bot updates dependency locks daily and currently pushes directly to protected main. Review is mandatory and the bot still needs to propose updates. Which redesign fits?

- **A.** Allow the bot to force-push only during a daily time window
- **B.** Remove all repository access from the bot and keep the same unattended update requirement
- **C.** Have the bot create narrowly scoped pull requests and pass ordinary required review and checks
- **D.** Retain unrestricted bypass and add the word reviewed to bot commit messages

## L04-Q041

Advanced · [CP3](README.md#task-3) · [D2.1.1](../../docs/objective-map.md), [D2.1.2](../../docs/objective-map.md)

A team squash-merges features, retains two independent approvals, and supports cherry-picking complete fixes into release branches. A feature's original commits include unrelated debugging changes later removed. Which transfer unit and review approach is strongest?

- **A.** Evaluate the resulting squash commit against the supported baseline and retain its pull request provenance
- **B.** Cherry-pick every original feature-branch commit because all were individually part of the request
- **C.** Move the release branch directly to current main
- **D.** Cherry-pick only the last original commit because squash merges retain that identity

## L04-Q042

Advanced · [CP4](README.md#task-4) · [D2.1.3](../../docs/objective-map.md)

A renamed workflow emits verify-linux while protection requires verify. One administrator can still merge through bypass, making the rollout appear successful. What test exposes the actual policy health?

```text
Protection: required context=verify
Current request: emitted context=verify-linux, success
Successful test merge identity: organization administrator with bypass
```

- **A.** Merge once as administrator and treat the successful merge as proof
- **B.** Compare workflow file names without executing a request
- **C.** Delete the old required check and wait to see whether any defects escape
- **D.** Use an ordinary non-bypass identity to verify the new current check satisfies the updated rule and a controlled failure blocks merge

## L04-Q043

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md)

Two reviewers approve a protected GitHub request, then the author pushes a small correction. Policy requires an independent approval of the latest push while retaining other eligible reviews. Which setting best fits?

- **A.** Require approval of the most recent reviewable push by someone other than its pusher
- **B.** Dismiss every stale approval on each push
- **C.** Require two approvals but no latest-push freshness condition
- **D.** Require only the author to resolve the final review thread

## L04-Q044

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

The required check is normally skipped by workflow-level path filters for docs changes. A security policy requires every merge to obtain a conclusive validation result. Which design best meets that contract?

- **A.** Rename the workflow to docs-safe without changing event or result behavior
- **B.** Use a supported gating design that always reports the required result while selectively running expensive checks
- **C.** Keep the path-filtered workflow and assume a missing run counts as passed
- **D.** Allow every documentation author permanent bypass

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

- **A.** Rename every pending check to the last pull request run's successful name
- **B.** Disable pull_request validation and run only on main after merge
- **C.** Add the supported merge_group path for required validation and test both ordinary requests and queued candidates
- **D.** Remove the check from protection so queued requests can merge

## L04-Q046

Advanced · [CP1](README.md#task-1) · [D2.1.1](../../docs/objective-map.md)

The supported branch needs a security correction, but main's version depends on a new schema forbidden in that release. The customer deadline is one day. Which release plan is strongest?

- **A.** Cherry-pick the main commit and trust its old main test result
- **B.** Implement the correction only on the supported branch and omit forward reconciliation
- **C.** Adapt the minimal correction to the supported baseline, test its actual dependencies, and reconcile the fix forward
- **D.** Merge all of main and disable the new schema checks until after release

## L04-Q047

Advanced · [CP3](README.md#task-3) · [D2.1.2](../../docs/objective-map.md)

CODEOWNERS has a broad rule followed by a sensitive-path rule. One request changes both the sensitive code and CODEOWNERS itself. What review must establish the intended protection?

```text
*                 @org/general
/infra/identity/  @org/security
/.github/CODEOWNERS @org/platform

Changed: infra/identity/roles.bicep, .github/CODEOWNERS
```

- **A.** Trust the broad first rule because later patterns cannot change matching
- **B.** Approve only CODEOWNERS and assume the code change inherits that approval forever
- **C.** Check effective path matching, owner eligibility, required owner-review enforcement, and review of the ownership-policy change
- **D.** Count the number of team names anywhere in CODEOWNERS

## L04-Q048

Advanced · [CP4](README.md#task-4) · [D2.1.2](../../docs/objective-map.md), [D2.1.3](../../docs/objective-map.md)

An Azure Repos branch needs two independent approvals and successful validation. The requester can vote, and an automatic build passed before new changes were pushed. What must policy verification cover?

- **A.** Only the total historical approval count
- **B.** Only that a build policy exists in project settings
- **C.** Only that a project administrator can complete the request
- **D.** Requester-vote eligibility, required reviewer count, and validation freshness for the current candidate

## L04-Q049

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

An Azure Repos bot can open updates but also bypass policies on push. The bot must keep proposing dependency changes; direct main updates are forbidden. Which permission and workflow change fits?

- **A.** Keep direct pushes but run policies only on a nightly mirror
- **B.** Remove unnecessary push bypass and have the bot submit updates through the required pull request path
- **C.** Remove all repository access from the bot
- **D.** Keep bypass and label bot commits reviewed automatically

## L04-Q050

Advanced · [CP5](README.md#task-5) · [D2.1.3](../../docs/objective-map.md)

A team enables a merge queue, renames a required job, and replaces the check's provider app in one change. Which rollout test best prevents silent bypass and missing-check deadlocks?

- **A.** Test ordinary and queued requests under a non-bypass identity, including current success, deliberate failure, and expected provider/check identity
- **B.** Confirm one successful workflow run on the default branch
- **C.** Retain the old status indefinitely and let administrators override pending checks
- **D.** Test only a deliberately failing pull request before enabling the queue
