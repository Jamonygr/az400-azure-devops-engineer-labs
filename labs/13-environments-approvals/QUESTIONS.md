# Lab 13 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L13-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A code change has two pull-request approvals but production requires a separate release authorization. What boundary is still needed?

- **A.** Only a longer test timeout
- **B.** Only another compilation of identical source
- **C.** Only a different artifact friendly name
- **D.** A protected deployment environment approval

## L13-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The release author must not approve their own GitHub environment transition. Which protection should the provider configuration enforce?

- **A.** Prevent self-review for the required environment reviewers
- **B.** Use the author name in the environment label
- **C.** Store the policy only in a repository comment
- **D.** Give the author a broader deployment token

## L13-Q003

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A pipeline author can edit YAML but must not remove production approvals. Where should Azure DevOps checks be controlled?

- **A.** Only inside a script the author can replace
- **B.** Only in an artifact filename
- **C.** Only in a build number format
- **D.** On protected resources by their authorized owners

## L13-Q004

Foundational · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The lab copies a deployment workflow to a review directory outside active workflow discovery. What has that action established?

- **A.** A successful Azure deployment with production approval
- **B.** Automatic creation of all environment reviewers
- **C.** A dormant reviewed contract rather than an executed release
- **D.** Automatic assignment of a managed identity role

## L13-Q005

Foundational · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md)

An environment exists, but its required reviewer policy is empty. Which validation outcome matches a required independent approval gate?

```json
{"environment":"release-run42","required_reviewers":[],"prevent_self_review":true}
```

- **A.** Pass because every environment name implies approval
- **B.** Reject the missing protection despite resource existence
- **C.** Pass if the artifact test count is large
- **D.** Pass if the source repository contains a README policy

## L13-Q006

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

A local release request names the author as its only approver while independent approval is required. What should the decision fixture do?

- **A.** Approve because the artifact filename is correct
- **B.** Approve whenever the author also owns the branch
- **C.** Deny the request under the independence rule
- **D.** Skip the policy because the fixture is local

## L13-Q007

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

An Azure pipeline YAML contains environment: production. Does that declaration alone establish configured approval checks on that environment?

- **A.** No; approvals are impossible in YAML-based pipelines
- **B.** No; inspect the protected resource checks separately
- **C.** Yes; the word production automatically supplies independent reviewers
- **D.** Yes; every deployment job is always manually approved

## L13-Q008

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A private repository lacks entitlement for a requested environment protection feature. How should this checkpoint be recorded?

- **A.** Passed because a local JSON policy looks correct
- **B.** Passed after removing reviewer checks without revising the requirement
- **C.** Gated until the authorized account prerequisite is satisfied
- **D.** Automatically purchase a plan during lab execution

## L13-Q009

Foundational · [CP1](README.md#task-1) · [D3.2.1](../../docs/objective-map.md)

Tests pass, but required deployment approval is pending. What should the release state indicate before promotion?

- **A.** Test failure because approval has not arrived yet
- **B.** Cleanup completed because no deployment started
- **C.** Quality passed while environment authorization remains pending
- **D.** Fully deployed because tests provide every authorization

## L13-Q010

Foundational · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The dormant workflow references production, while the lab created release-run42. What must happen before activation uses the intended protected boundary?

- **A.** Only increase pipeline log retention
- **B.** Deliberately map the workflow environment to the owned protected resource
- **C.** Assume similar names share all reviewers automatically
- **D.** Only rename the downloaded application archive

## L13-Q011

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A production service connection should be available to one approved release pipeline only. What provider boundary should be configured?

- **A.** An artifact name matching the connection name
- **B.** Specific pipeline authorization for that connection
- **C.** A comment asking other pipelines not to use it
- **D.** An unrestricted shared administrator credential

## L13-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A local rule evaluator denies an unapproved release request. Which claim is justified before a provider deployment job runs?

- **A.** The local decision logic rejected that request
- **B.** The release artifact has already been promoted successfully
- **C.** Every organization pipeline inherits the tested local policy
- **D.** The production environment actually blocked a live deployment

## L13-Q013

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The environment configuration request succeeds. What additional read should verify the intended independent reviewer rule persisted?

- **A.** Read only the environment creation timestamp
- **B.** Read only the YAML environment name
- **C.** Read only the configured environment secrets list
- **D.** Read the actual protection rules and reviewer identities

## L13-Q014

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A waiting period is configured, but the requirement demands a human release decision. Why is the timer insufficient by itself?

- **A.** Elapsed time does not provide independent human authorization
- **B.** A timer proves application readiness and latency
- **C.** Any timer automatically adds the repository administrator as reviewer
- **D.** A timer makes every artifact source revision trusted

## L13-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A request has an independent approver but its required tests failed. What should a combined release decision require?

```json
{"testsPassed":false,"sourceAllowed":true,"independentApprover":true}
```

- **A.** Both passing mandatory quality and valid independent authorization
- **B.** Test failures should erase the approver identity record
- **C.** Only the artifact display name should decide
- **D.** Approval should override all application test failures automatically

## L13-Q016

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A pipeline change removes an approval-looking script, but the resource owner configured genuine protected checks. What should still gate access?

- **A.** The provider checks attached to the protected resource
- **B.** Only the pipeline display name
- **C.** Only a previously uploaded report
- **D.** Only the removed script because YAML always controls every check

## L13-Q017

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The release job references an environment but exposes a powerful repository secret to earlier untrusted steps. What gap remains despite approval?

- **A.** The artifact download should use a different transfer action
- **B.** Every untrusted step becomes safe after a later approval
- **C.** The job needs a second approval after its untrusted steps
- **D.** Credential exposure occurs before the intended protected boundary

## L13-Q018

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Two approved release runs could update the same production app concurrently. Which additional control addresses resource contention?

- **A.** A longer friendly artifact filename
- **B.** More independent reviewers for each run only
- **C.** An exclusive resource lock or explicit release concurrency boundary
- **D.** A source comment asking jobs to be careful

## L13-Q019

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Only main releases should reach production. Which control should accompany approval to enforce the intended source boundary?

- **A.** Only an artifact label that contains main
- **B.** Only a build variable set by contributor code
- **C.** Only a reviewer selected from the contributor author list
- **D.** A protected allowed-branch policy for the environment resource

## L13-Q020

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The author cannot supply an independent reviewer for this lab account. What result preserves the intended learning requirement?

- **A.** Turn off self-review prevention without revising the requirement
- **B.** Leave the reviewer-enforced operation visibly gated
- **C.** Add the author twice and count two entries
- **D.** Treat successful local parsing as provider approval

## L13-Q021

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The decision fixture accepts one independent reviewer despite a failed required quality signal. What validator improvement catches this policy defect?

```text
Required: quality AND source AND independent reviewer
Fixture accepts: independent reviewer only
```

- **A.** Assert denial for each unmet mandatory prerequisite
- **B.** Assert only that the JSON file exists
- **C.** Assume every readable policy file enforces its prose
- **D.** Count the total number of strings in the policy

## L13-Q022

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

A dormant template contains azure/login but has not been activated or dispatched. What completion claim remains unsupported?

- **A.** The activation path still requires explicit review
- **B.** A successful live workload federation exchange
- **C.** The source can be inspected without cloud deployment
- **D.** The reviewed source contains a login action reference

## L13-Q023

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

The connection is authorized to a pipeline, but the environment reviewer denies its release. What should deployment do?

- **A.** Stop at the denied required environment gate
- **B.** Deploy because service connection authorization is sufficient alone
- **C.** Retry with an unrestricted personal credential automatically
- **D.** Delete the denial from the downloaded evidence

## L13-Q024

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

An environment reviewer approves candidate A, then the workflow switches to unrelated artifact B. Which boundary should review and provenance checks preserve?

- **A.** Approval must apply to the actual selected deployment candidate
- **B.** Any approval authorizes all future artifacts permanently
- **C.** A matching artifact filename proves A and B are identical
- **D.** The operator can silently change the recorded approved SHA

## L13-Q025

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

The database and application promotion require different owners. What environment design supports their distinct approval boundaries?

- **A.** Only a longer combined deployment script
- **B.** One shared unchecked variable named Approved
- **C.** Only a shared package archive containing both outputs
- **D.** Separate protected database and application environments

## L13-Q026

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A policy is stored in JSON and marked approved:true, but no evaluator reads that field. What practice is missing?

- **A.** A successful healthy test that ignores invalid approval inputs
- **B.** An additional schema check that only validates JSON field types
- **C.** A hash of the policy with no decision-path tests
- **D.** Observable decisions connected to the declared policy inputs

## L13-Q027

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A protected job receives environment-scoped secrets only after its approval boundary. What risk does this timing reduce?

- **A.** Premature secret exposure before authorized environment execution
- **B.** All ability of the approved job to misuse its available secret
- **C.** All future vulnerability risk in application code
- **D.** Every risk from public artifact retention

## L13-Q028

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release request passes quality, source and reviewer checks but exceeds its allowed deployment window. What should a combined mandatory policy do?

- **A.** Delete the window field after approval
- **B.** Ignore the window because three other fields passed
- **C.** Deny until the window requirement is satisfied
- **D.** Change the local clock to make evidence appear valid

## L13-Q029

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Production checks time out before approval arrives. How should the run be reported before an explicitly authorized retry?

- **A.** Passed because tests were successful earlier
- **B.** Cleaned up because the stage did not deploy
- **C.** Passed because no reviewer explicitly rejected it
- **D.** Incomplete or failed at the gate with retained reason

## L13-Q030

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

Activating the dormant workflow would target an environment without the intended restrictions. Which review must precede publication?

- **A.** Review only code indentation and ignore resource references
- **B.** Review only how many files the package includes
- **C.** Review only the workflow friendly display name
- **D.** Verify environment names, protection settings and exact federation subject

## L13-Q031

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The workflow uses environment release-run42, but the federated credential trusts production. What identity prerequisite is inconsistent?

```text
Workflow environment: release-run42
Federation subject suffix: environment:production
```

- **A.** The issuer must always be the SQL database hostname
- **B.** Changing the audience alone repairs the environment mismatch
- **C.** The token environment subject does not match the trusted subject
- **D.** The token must use a password instead of federation

## L13-Q032

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Resource owners require every release run to acquire a lock in order rather than replace older waiting runs. Which explicit lock behavior fits?

- **A.** Require another source code comment
- **B.** Use sequential behavior for the exclusive lock
- **C.** Remove the shared resource lock entirely
- **D.** Set cancel-in-progress on every running deployment

## L13-Q033

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The local approval fixture passes the healthy case but never exercises author self-approval. What negative test should be added?

- **A.** Increase the healthy request artifact size
- **B.** Rename the healthy request to forbidden
- **C.** Submit an otherwise valid self-approved request and require denial
- **D.** Count only the number of policy files

## L13-Q034

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

An emergency needs urgent promotion, but the existing gate requires independent approval. Which response retains accountable release control?

- **A.** Use an explicitly authorized audited emergency path with defined ownership
- **B.** Replace the artifact source SHA with the last approved SHA
- **C.** Let the requesting author disable all checks without evidence
- **D.** Erase the failed gate record before queueing again

## L13-Q035

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The provider returns reviewers and prevent_self_review correctly, but no deployment job ran. Which conclusion is supportable?

- **A.** Every future release is guaranteed to be safe
- **B.** The intended protection is configured; runtime enforcement remains unobserved
- **C.** All Azure identities already received valid short-lived tokens
- **D.** A production deployment has already passed independent approval

## L13-Q036

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A central required-template check is attached to the protected resource. Why can this help against a caller removing security stages?

- **A.** Resource access can require consumption of the approved template
- **B.** Any template filename containing secure is automatically trusted
- **C.** A local copied JSON flag is equivalent to provider enforcement
- **D.** The template check automatically fixes every unsafe application function

## L13-Q037

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The policy evaluator allows main, approved reviewer and passing tests but accidentally uses OR across predicates. What failure should a negative test expose?

```text
Actual evaluator: quality OR allowedBranch OR independentReviewer
```

- **A.** Every valid request should fail because OR is always false
- **B.** The source repository token becomes encrypted automatically
- **C.** One passing condition incorrectly permits a request with another required failure
- **D.** Only the policy file creation timestamp changes

## L13-Q038

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The activated workflow supports manual dispatch but requires production environment approval. Does dispatch alone prove deployment authorization?

- **A.** Yes; a dispatch identifier is a deployment success record
- **B.** No; manual dispatch can never run a deployment
- **C.** No; the protected job still needs its required checks
- **D.** Yes; every manual request bypasses environment protection

## L13-Q039

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A repository administrator can bypass an environment policy under its configured rules. What must the security review record?

- **A.** Only the environment friendly name
- **B.** Only the application test count
- **C.** Only a statement that required reviewers exist
- **D.** The available bypass authority and its audit or restriction controls

## L13-Q040

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The local evaluator accepts a valid request but retains no reason for denied ones. What evidence improvement supports safe diagnosis?

- **A.** Delete denied requests before analysis
- **B.** Record the unmet predicate without exposing sensitive input
- **C.** Convert every denial to approval after logging
- **D.** Print every credential to explain authorization failures

## L13-Q041

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Two individually approved schema releases target one database and can overlap. Which combined design addresses authorization and ordering separately?

- **A.** Use identical artifact names for both migrations
- **B.** Independent approval plus exclusive serialization of the shared resource
- **C.** Serialize logs but leave the actual deployments concurrent
- **D.** Add more approvers but permit both migrations simultaneously

## L13-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A reviewed production job references an environment typo that creates an unprotected target. What should pre-execution review verify to avoid this gap?

- **A.** Only that the workflow contains azure/login
- **B.** Exact resource identity and stored protection rather than name intent alone
- **C.** Only that the environment string is nonempty
- **D.** Only that the artifact hash has sixty-four characters

## L13-Q043

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release request has passing quality, approved source and a reviewer who is the author under a different display name. What identity comparison is required?

```json
{"authorId":"42","authorName":"Jamon","reviewerId":"42","reviewerName":"Release approver"}
```

- **A.** Count distinct display names as distinct authorized people
- **B.** Accept when reviewer and author have different login display strings
- **C.** Compare stable identities rather than friendly name strings
- **D.** Infer independence from the reviewer having a higher repository role

## L13-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A protected resource checks main as an allowed branch while YAML is fetched from an unreviewed repository resource. What additional review is needed?

- **A.** Only the display name of the main branch
- **B.** Only whether the primary application artifact has the expected checksum
- **C.** The source and authorization boundary of every executable resource
- **D.** Only whether all YAML files share one extension

## L13-Q045

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

The database migration and app deployment use one approver and one powerful identity despite separate ownership requirements. What redesign preserves the requested boundaries?

- **A.** Separate protected transitions and narrowly scoped execution identities
- **B.** Add a delay between two unchecked scripts
- **C.** Use two friendly names for the same unrestricted credential
- **D.** Store one approved:true flag in both output folders

## L13-Q046

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A negative test expects approval denial, but passes because a mock provider is unavailable and throws. Why is that insufficient evidence?

- **A.** The failure must result from the intended policy predicate
- **B.** A missing provider automatically supplies an independent approver
- **C.** The healthy fixture can be removed once any failure occurs
- **D.** Every exception proves independent approval policy is enforced

## L13-Q047

Advanced · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A protected release waits for approval while its selected artifact expires. After approval, what additional gate must still be satisfied?

- **A.** A matching friendly filename is sufficient replacement evidence
- **B.** The operator may silently substitute another successful run
- **C.** Approval alone permits rebuilding any current source
- **D.** The approved immutable artifact remains available with valid provenance

## L13-Q048

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A sequential lock protects production, but migration runs before acquiring that lock on the same database. What boundary still needs correction?

```text
Migrate shared database
Acquire production lock
Deploy application
```

- **A.** The lock name should be made shorter
- **B.** The shared-state mutation must occur inside the intended serialization boundary
- **C.** Only the final artifact publication needs a lock
- **D.** The migration should skip its test evidence

## L13-Q049

Advanced · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

A deployment template is dormant, source-identified and locally parsed, but no federation or checks exist. What completion report is accurate?

- **A.** A denied live release proved by local file placement
- **B.** Reviewed local contract with protected integration explicitly pending
- **C.** Fully completed secure production release
- **D.** Universal environment protection across both providers

## L13-Q050

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release passed all gates, then the selected artifact changed before deployment. Which invariant should a final promotion check enforce?

- **A.** Only the deployment requester must remain the same person
- **B.** Only the application display version must remain unchanged
- **C.** Any later artifact is acceptable after one successful approval
- **D.** The executed candidate matches the approved source and content identity
