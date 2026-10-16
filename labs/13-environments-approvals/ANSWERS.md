# Lab 13 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L13-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A code change has two pull-request approvals but production requires a separate release authorization. What boundary is still needed?

- **A. Only a longer test timeout** Execution duration does not establish an independent release approval boundary.
- **B. Only another compilation of identical source** A repeated build does not establish independent permission to deploy the release.
- **C. Only a different artifact friendly name** Output naming does not authorize a production environment transition.
- **D. A protected deployment environment approval** **Correct.** Source review and authorization to promote into an environment are separate decisions.

**Explanation:** Source review and authorization to promote into an environment are separate decisions. A repeated build does not establish independent permission to deploy the release. Output naming does not authorize a production environment transition. Execution duration does not establish an independent release approval boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The release author must not approve their own GitHub environment transition. Which protection should the provider configuration enforce?

- **A. Prevent self-review for the required environment reviewers** **Correct.** The intended independent authorization excludes the actor requesting their own deployment approval.
- **B. Use the author name in the environment label** A display label does not restrict who can approve the transition.
- **C. Store the policy only in a repository comment** Prose does not enforce provider environment reviewer eligibility or independence.
- **D. Give the author a broader deployment token** Additional authority does not provide the required independent approval decision.

**Explanation:** The intended independent authorization excludes the actor requesting their own deployment approval. A display label does not restrict who can approve the transition. Prose does not enforce provider environment reviewer eligibility or independence. Additional authority does not provide the required independent approval decision.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q003

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A pipeline author can edit YAML but must not remove production approvals. Where should Azure DevOps checks be controlled?

- **A. Only inside a script the author can replace** Editable code cannot independently prevent its own approval boundary from being removed.
- **B. Only in an artifact filename** An output label does not configure protected resource authorization or checks.
- **C. Only in a build number format** Run presentation does not enforce environment transition approval requirements.
- **D. On protected resources by their authorized owners** **Correct.** Resource checks remain separate from author-editable pipeline execution source.

**Explanation:** Resource checks remain separate from author-editable pipeline execution source. Editable code cannot independently prevent its own approval boundary from being removed. An output label does not configure protected resource authorization or checks. Run presentation does not enforce environment transition approval requirements.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q004

Foundational · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The lab copies a deployment workflow to a review directory outside active workflow discovery. What has that action established?

- **A. A successful Azure deployment with production approval** No executable dispatch or provider result demonstrates the claimed live transition.
- **B. Automatic creation of all environment reviewers** Copying a YAML file does not configure provider reviewer resource settings.
- **C. A dormant reviewed contract rather than an executed release** **Correct.** Retaining source for inspection does not activate or prove hosted deployment behavior.
- **D. Automatic assignment of a managed identity role** File placement does not mutate Azure identity authorization or role assignments.

**Explanation:** Retaining source for inspection does not activate or prove hosted deployment behavior. No executable dispatch or provider result demonstrates the claimed live transition. Copying a YAML file does not configure provider reviewer resource settings. File placement does not mutate Azure identity authorization or role assignments.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q005

Foundational · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md)

An environment exists, but its required reviewer policy is empty. Which validation outcome matches a required independent approval gate?

```json
{"environment":"release-run42","required_reviewers":[],"prevent_self_review":true}
```

- **A. Pass because every environment name implies approval** A friendly environment label does not create independent reviewer enforcement automatically.
- **B. Reject the missing protection despite resource existence** **Correct.** An environment identifier does not prove the intended approval requirement is configured.
- **C. Pass if the artifact test count is large** Behavioral quality evidence does not establish environment authorization configuration.
- **D. Pass if the source repository contains a README policy** Documentation intent cannot replace actual provider resource protection settings.

**Explanation:** An environment identifier does not prove the intended approval requirement is configured. A friendly environment label does not create independent reviewer enforcement automatically. Documentation intent cannot replace actual provider resource protection settings. Behavioral quality evidence does not establish environment authorization configuration.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q006

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

A local release request names the author as its only approver while independent approval is required. What should the decision fixture do?

- **A. Approve because the artifact filename is correct** Output naming does not satisfy a missing independent reviewer boundary.
- **B. Approve whenever the author also owns the branch** Source ownership does not establish the required separate deployment approval decision.
- **C. Deny the request under the independence rule** **Correct.** The author cannot supply the independent authorization that the policy explicitly requires.
- **D. Skip the policy because the fixture is local** A local exercise should still demonstrate its stated denial and acceptance logic.

**Explanation:** The author cannot supply the independent authorization that the policy explicitly requires. Output naming does not satisfy a missing independent reviewer boundary. Source ownership does not establish the required separate deployment approval decision. A local exercise should still demonstrate its stated denial and acceptance logic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q007

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

An Azure pipeline YAML contains environment: production. Does that declaration alone establish configured approval checks on that environment?

- **A. No; approvals are impossible in YAML-based pipelines** Protected resource checks can gate YAML workloads when configured by resource owners.
- **B. No; inspect the protected resource checks separately** **Correct.** Referencing a resource does not prove its owner configured the required protection rules.
- **C. Yes; the word production automatically supplies independent reviewers** Environment naming does not define approver identities or enforcement requirements automatically.
- **D. Yes; every deployment job is always manually approved** Deployment job structure does not itself guarantee a particular resource approval configuration.

**Explanation:** Referencing a resource does not prove its owner configured the required protection rules. Environment naming does not define approver identities or enforcement requirements automatically. Deployment job structure does not itself guarantee a particular resource approval configuration. Protected resource checks can gate YAML workloads when configured by resource owners.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q008

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A private repository lacks entitlement for a requested environment protection feature. How should this checkpoint be recorded?

- **A. Passed because a local JSON policy looks correct** A planned payload does not prove the provider accepted or enforces the feature.
- **B. Passed after removing reviewer checks without revising the requirement** Deleting the required protection does not satisfy the original independence contract.
- **C. Gated until the authorized account prerequisite is satisfied** **Correct.** Unavailable licensed enforcement cannot be represented as a successfully configured passing gate.
- **D. Automatically purchase a plan during lab execution** Billing changes require explicit owner authorization rather than an implicit repository exercise.

**Explanation:** Unavailable licensed enforcement cannot be represented as a successfully configured passing gate. A planned payload does not prove the provider accepted or enforces the feature. Deleting the required protection does not satisfy the original independence contract. Billing changes require explicit owner authorization rather than an implicit repository exercise.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q009

Foundational · [CP1](README.md#task-1) · [D3.2.1](../../docs/objective-map.md)

Tests pass, but required deployment approval is pending. What should the release state indicate before promotion?

- **A. Test failure because approval has not arrived yet** A pending authorization decision does not change the measured application test result.
- **B. Cleanup completed because no deployment started** Lack of deployment does not prove that all other run resources were deleted.
- **C. Quality passed while environment authorization remains pending** **Correct.** Behavioral validation and independent promotion permission are distinct required release gates.
- **D. Fully deployed because tests provide every authorization** Successful assertions do not grant permission to cross a protected environment boundary.

**Explanation:** Behavioral validation and independent promotion permission are distinct required release gates. Successful assertions do not grant permission to cross a protected environment boundary. A pending authorization decision does not change the measured application test result. Lack of deployment does not prove that all other run resources were deleted.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q010

Foundational · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The dormant workflow references production, while the lab created release-run42. What must happen before activation uses the intended protected boundary?

- **A. Only increase pipeline log retention** Storage lifetime does not repair a mismatched environment resource reference.
- **B. Deliberately map the workflow environment to the owned protected resource** **Correct.** An unmatched name can target a different environment without the intended protection settings.
- **C. Assume similar names share all reviewers automatically** Friendly name similarity does not establish identical provider resource protection state.
- **D. Only rename the downloaded application archive** Artifact naming does not change the environment referenced by the executable workflow.

**Explanation:** An unmatched name can target a different environment without the intended protection settings. Friendly name similarity does not establish identical provider resource protection state. Artifact naming does not change the environment referenced by the executable workflow. Storage lifetime does not repair a mismatched environment resource reference.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q011

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A production service connection should be available to one approved release pipeline only. What provider boundary should be configured?

- **A. An artifact name matching the connection name** Output labels do not authorize consumption of protected deployment credentials.
- **B. Specific pipeline authorization for that connection** **Correct.** Resource access should match the intended consumer instead of blanket project-wide exposure.
- **C. A comment asking other pipelines not to use it** Documentation does not enforce provider resource authorization against other executable definitions.
- **D. An unrestricted shared administrator credential** Broad personal authority defeats the intended narrow consumer resource boundary.

**Explanation:** Resource access should match the intended consumer instead of blanket project-wide exposure. Documentation does not enforce provider resource authorization against other executable definitions. Output labels do not authorize consumption of protected deployment credentials. Broad personal authority defeats the intended narrow consumer resource boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A local rule evaluator denies an unapproved release request. Which claim is justified before a provider deployment job runs?

- **A. The local decision logic rejected that request** **Correct.** A fixture proves its own evaluation behavior without demonstrating hosted enforcement.
- **B. The release artifact has already been promoted successfully** A denial cannot prove that an authorized environment transition completed.
- **C. Every organization pipeline inherits the tested local policy** A local fixture does not configure universal provider resource checks automatically.
- **D. The production environment actually blocked a live deployment** No provider execution observation establishes that specific live enforcement event.

**Explanation:** A fixture proves its own evaluation behavior without demonstrating hosted enforcement. No provider execution observation establishes that specific live enforcement event. A denial cannot prove that an authorized environment transition completed. A local fixture does not configure universal provider resource checks automatically.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q013

Foundational · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The environment configuration request succeeds. What additional read should verify the intended independent reviewer rule persisted?

- **A. Read only the environment creation timestamp** Creation time does not show whether the stored reviewer and self-review protection match the requested policy.
- **B. Read only the YAML environment name** A source reference identifies intended selection without proving provider reviewer enforcement is actually configured.
- **C. Read only the configured environment secrets list** Secret presence does not establish required reviewer identities or prevention of author self-approval.
- **D. Read the actual protection rules and reviewer identities** **Correct.** Provider read-back checks stored state rather than trusting submitted configuration intent alone.

**Explanation:** Creation time does not show whether the stored reviewer and self-review protection match the requested policy. A source reference identifies intended selection without proving provider reviewer enforcement is actually configured. Secret presence does not establish required reviewer identities or prevention of author self-approval. Provider read-back checks stored state rather than trusting submitted configuration intent alone.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q014

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

A waiting period is configured, but the requirement demands a human release decision. Why is the timer insufficient by itself?

- **A. Elapsed time does not provide independent human authorization** **Correct.** A delay and an approval answer different release control requirements.
- **B. A timer proves application readiness and latency** Time passage does not establish actual deployed health or measured service performance.
- **C. Any timer automatically adds the repository administrator as reviewer** Waiting alone does not configure a specific approving identity or authorization event.
- **D. A timer makes every artifact source revision trusted** Delay cannot establish artifact provenance or approve an arbitrary producing candidate.

**Explanation:** A delay and an approval answer different release control requirements. Waiting alone does not configure a specific approving identity or authorization event. Time passage does not establish actual deployed health or measured service performance. Delay cannot establish artifact provenance or approve an arbitrary producing candidate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A request has an independent approver but its required tests failed. What should a combined release decision require?

```json
{"testsPassed":false,"sourceAllowed":true,"independentApprover":true}
```

- **A. Both passing mandatory quality and valid independent authorization** **Correct.** One required gate cannot compensate for failure of another separate release prerequisite.
- **B. Test failures should erase the approver identity record** Keeping truthful evidence supports diagnosis without changing the independent authorization observation.
- **C. Only the artifact display name should decide** A friendly label does not establish either tested quality or approval eligibility.
- **D. Approval should override all application test failures automatically** Human authorization does not establish the absent required behavioral validation result.

**Explanation:** One required gate cannot compensate for failure of another separate release prerequisite. Human authorization does not establish the absent required behavioral validation result. Keeping truthful evidence supports diagnosis without changing the independent authorization observation. A friendly label does not establish either tested quality or approval eligibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q016

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A pipeline change removes an approval-looking script, but the resource owner configured genuine protected checks. What should still gate access?

- **A. The provider checks attached to the protected resource** **Correct.** Author-editable YAML cannot independently remove an owner-controlled resource access requirement.
- **B. Only the pipeline display name** A label does not enforce a required independent resource approval decision.
- **C. Only a previously uploaded report** Historical evidence does not grant current permission to consume the protected resource.
- **D. Only the removed script because YAML always controls every check** Resource protection exists outside the author-controlled executable source boundary.

**Explanation:** Author-editable YAML cannot independently remove an owner-controlled resource access requirement. Resource protection exists outside the author-controlled executable source boundary. A label does not enforce a required independent resource approval decision. Historical evidence does not grant current permission to consume the protected resource.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q017

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The release job references an environment but exposes a powerful repository secret to earlier untrusted steps. What gap remains despite approval?

- **A. The artifact download should use a different transfer action** Changing transfer tooling does not remove the deployment credential available before the intended protection boundary.
- **B. Every untrusted step becomes safe after a later approval** Later authorization cannot undo earlier arbitrary code access to available credentials.
- **C. The job needs a second approval after its untrusted steps** A later review cannot undo earlier executable access to credentials that were already exposed.
- **D. Credential exposure occurs before the intended protected boundary** **Correct.** An approval gate does not protect credentials already available to earlier executable code.

**Explanation:** An approval gate does not protect credentials already available to earlier executable code. A later review cannot undo earlier executable access to credentials that were already exposed. Changing transfer tooling does not remove the deployment credential available before the intended protection boundary. Later authorization cannot undo earlier arbitrary code access to available credentials.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q018

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Two approved release runs could update the same production app concurrently. Which additional control addresses resource contention?

- **A. A longer friendly artifact filename** Output naming does not establish mutual exclusion on the deployed resource.
- **B. More independent reviewers for each run only** Additional approvals do not inherently prevent both approved executions running simultaneously.
- **C. An exclusive resource lock or explicit release concurrency boundary** **Correct.** Approval does not serialize competing deployments to shared mutable application state.
- **D. A source comment asking jobs to be careful** Documentation alone cannot enforce the required runtime serialization boundary.

**Explanation:** Approval does not serialize competing deployments to shared mutable application state. Additional approvals do not inherently prevent both approved executions running simultaneously. Output naming does not establish mutual exclusion on the deployed resource. Documentation alone cannot enforce the required runtime serialization boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q019

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Only main releases should reach production. Which control should accompany approval to enforce the intended source boundary?

- **A. Only an artifact label that contains main** A friendly output name can be chosen independently of actual producing source.
- **B. Only a build variable set by contributor code** Caller-controlled input cannot independently establish a trusted production source restriction.
- **C. Only a reviewer selected from the contributor author list** Reviewer identity does not itself establish the source branch policy.
- **D. A protected allowed-branch policy for the environment resource** **Correct.** Source restrictions and human approval together constrain which candidates may be promoted.

**Explanation:** Source restrictions and human approval together constrain which candidates may be promoted. A friendly output name can be chosen independently of actual producing source. Reviewer identity does not itself establish the source branch policy. Caller-controlled input cannot independently establish a trusted production source restriction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q020

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The author cannot supply an independent reviewer for this lab account. What result preserves the intended learning requirement?

- **A. Turn off self-review prevention without revising the requirement** Removing the protection abandons the stated independent release authorization contract.
- **B. Leave the reviewer-enforced operation visibly gated** **Correct.** Missing independent authorization is a prerequisite rather than a reason to fabricate passing evidence.
- **C. Add the author twice and count two entries** Repeated identity does not create independence from the requesting release author.
- **D. Treat successful local parsing as provider approval** Syntax validation cannot establish a human decision on a protected deployment environment.

**Explanation:** Missing independent authorization is a prerequisite rather than a reason to fabricate passing evidence. Repeated identity does not create independence from the requesting release author. Removing the protection abandons the stated independent release authorization contract. Syntax validation cannot establish a human decision on a protected deployment environment.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q021

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The decision fixture accepts one independent reviewer despite a failed required quality signal. What validator improvement catches this policy defect?

```text
Required: quality AND source AND independent reviewer
Fixture accepts: independent reviewer only
```

- **A. Assert denial for each unmet mandatory prerequisite** **Correct.** The evaluator must demonstrate combined policy behavior rather than only one positive condition.
- **B. Assert only that the JSON file exists** File existence does not prove correctness of the release authorization decision.
- **C. Assume every readable policy file enforces its prose** Intent documentation does not guarantee the implemented decision logic matches.
- **D. Count the total number of strings in the policy** Text quantity does not establish that mandatory conditions actually control acceptance.

**Explanation:** The evaluator must demonstrate combined policy behavior rather than only one positive condition. File existence does not prove correctness of the release authorization decision. Text quantity does not establish that mandatory conditions actually control acceptance. Intent documentation does not guarantee the implemented decision logic matches.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q022

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

A dormant template contains azure/login but has not been activated or dispatched. What completion claim remains unsupported?

- **A. The activation path still requires explicit review** A dormant definition can retain that separately documented prerequisite legitimately.
- **B. A successful live workload federation exchange** **Correct.** An authentication step in source is intent rather than an observed provider token exchange.
- **C. The source can be inspected without cloud deployment** Reading a file does not require executing its privileged deployment operations.
- **D. The reviewed source contains a login action reference** That statement describes inspectable file content rather than an unexecuted runtime result.

**Explanation:** An authentication step in source is intent rather than an observed provider token exchange. That statement describes inspectable file content rather than an unexecuted runtime result. A dormant definition can retain that separately documented prerequisite legitimately. Reading a file does not require executing its privileged deployment operations.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q023

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

The connection is authorized to a pipeline, but the environment reviewer denies its release. What should deployment do?

- **A. Stop at the denied required environment gate** **Correct.** Permission to consume one resource does not override another required independent approval.
- **B. Deploy because service connection authorization is sufficient alone** Credential access cannot replace a separately required environment release decision.
- **C. Retry with an unrestricted personal credential automatically** Changing credentials to bypass a denial defeats the intended authorization boundary.
- **D. Delete the denial from the downloaded evidence** Editing records does not change the actual protected release decision.

**Explanation:** Permission to consume one resource does not override another required independent approval. Credential access cannot replace a separately required environment release decision. Changing credentials to bypass a denial defeats the intended authorization boundary. Editing records does not change the actual protected release decision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q024

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

An environment reviewer approves candidate A, then the workflow switches to unrelated artifact B. Which boundary should review and provenance checks preserve?

- **A. Approval must apply to the actual selected deployment candidate** **Correct.** Authorization is meaningful only when the promoted source and content match what was reviewed.
- **B. Any approval authorizes all future artifacts permanently** A past decision does not create unlimited release authority over arbitrary candidates.
- **C. A matching artifact filename proves A and B are identical** Friendly naming can be reused for independently produced different output content.
- **D. The operator can silently change the recorded approved SHA** Changing expectations conceals the candidate mismatch instead of preserving reviewed authorization.

**Explanation:** Authorization is meaningful only when the promoted source and content match what was reviewed. A past decision does not create unlimited release authority over arbitrary candidates. Friendly naming can be reused for independently produced different output content. Changing expectations conceals the candidate mismatch instead of preserving reviewed authorization.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q025

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

The database and application promotion require different owners. What environment design supports their distinct approval boundaries?

- **A. Only a longer combined deployment script** Combining commands does not establish distinct independent approvals for database and application work.
- **B. One shared unchecked variable named Approved** An author-editable declaration does not provide separate owner-controlled authorization decisions.
- **C. Only a shared package archive containing both outputs** Packaging related files does not create the required resource approval separation.
- **D. Separate protected database and application environments** **Correct.** Independent resource gates can represent the different authorization responsibilities for each transition.

**Explanation:** Independent resource gates can represent the different authorization responsibilities for each transition. An author-editable declaration does not provide separate owner-controlled authorization decisions. Combining commands does not establish distinct independent approvals for database and application work. Packaging related files does not create the required resource approval separation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q026

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A policy is stored in JSON and marked approved:true, but no evaluator reads that field. What practice is missing?

- **A. A successful healthy test that ignores invalid approval inputs** An unrelated positive result does not prove declared authorization fields affect accepted and denied requests.
- **B. An additional schema check that only validates JSON field types** Parsing a Boolean declaration still does not prove the evaluator uses it to control release decisions.
- **C. A hash of the policy with no decision-path tests** Stable policy bytes do not establish whether the implementation consumes the required approval predicate.
- **D. Observable decisions connected to the declared policy inputs** **Correct.** A declaration alone does not prove it influences acceptance or denial behavior.

**Explanation:** A declaration alone does not prove it influences acceptance or denial behavior. Parsing a Boolean declaration still does not prove the evaluator uses it to control release decisions. Stable policy bytes do not establish whether the implementation consumes the required approval predicate. An unrelated positive result does not prove declared authorization fields affect accepted and denied requests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q027

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A protected job receives environment-scoped secrets only after its approval boundary. What risk does this timing reduce?

- **A. Premature secret exposure before authorized environment execution** **Correct.** The protected boundary limits credential availability to the intended approved consuming job.
- **B. All ability of the approved job to misuse its available secret** Authorized executable code still needs least privilege and trustworthy implementation.
- **C. All future vulnerability risk in application code** Credential timing does not establish that every application dependency and behavior is safe.
- **D. Every risk from public artifact retention** Secret availability timing does not independently govern stored artifact data classification.

**Explanation:** The protected boundary limits credential availability to the intended approved consuming job. Credential timing does not establish that every application dependency and behavior is safe. Authorized executable code still needs least privilege and trustworthy implementation. Secret availability timing does not independently govern stored artifact data classification.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q028

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release request passes quality, source and reviewer checks but exceeds its allowed deployment window. What should a combined mandatory policy do?

- **A. Delete the window field after approval** Removing a required condition changes policy instead of meeting the reviewed requirement.
- **B. Ignore the window because three other fields passed** Counting successes is not equivalent to satisfying every required policy predicate.
- **C. Deny until the window requirement is satisfied** **Correct.** All mandatory constraints must hold rather than letting unrelated passing conditions compensate.
- **D. Change the local clock to make evidence appear valid** Fabricated timing does not establish an authorized transition within the real allowed window.

**Explanation:** All mandatory constraints must hold rather than letting unrelated passing conditions compensate. Counting successes is not equivalent to satisfying every required policy predicate. Fabricated timing does not establish an authorized transition within the real allowed window. Removing a required condition changes policy instead of meeting the reviewed requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q029

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Production checks time out before approval arrives. How should the run be reported before an explicitly authorized retry?

- **A. Passed because tests were successful earlier** Behavioral quality cannot replace the timed-out independent environment permission gate.
- **B. Cleaned up because the stage did not deploy** An unexecuted deployment does not prove deletion of other run-owned resources.
- **C. Passed because no reviewer explicitly rejected it** Absence of rejection is not affirmative authorization when approval is required.
- **D. Incomplete or failed at the gate with retained reason** **Correct.** A timeout does not establish that the required approval was granted and executed.

**Explanation:** A timeout does not establish that the required approval was granted and executed. Absence of rejection is not affirmative authorization when approval is required. Behavioral quality cannot replace the timed-out independent environment permission gate. An unexecuted deployment does not prove deletion of other run-owned resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q030

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

Activating the dormant workflow would target an environment without the intended restrictions. Which review must precede publication?

- **A. Review only code indentation and ignore resource references** Valid syntax does not prove the workflow targets intended protected resources.
- **B. Review only how many files the package includes** Package size cannot establish the deployment authorization and federation relationship.
- **C. Review only the workflow friendly display name** A label does not establish correct environment authorization or identity subject matching.
- **D. Verify environment names, protection settings and exact federation subject** **Correct.** Activation must connect executable source to the actual protected identity and resource boundary.

**Explanation:** Activation must connect executable source to the actual protected identity and resource boundary. A label does not establish correct environment authorization or identity subject matching. Valid syntax does not prove the workflow targets intended protected resources. Package size cannot establish the deployment authorization and federation relationship.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q031

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The workflow uses environment release-run42, but the federated credential trusts production. What identity prerequisite is inconsistent?

```text
Workflow environment: release-run42
Federation subject suffix: environment:production
```

- **A. The issuer must always be the SQL database hostname** The trust issuer identifies the workload token provider rather than the downstream database server endpoint.
- **B. Changing the audience alone repairs the environment mismatch** Audience and subject are distinct trust fields and the stated environment subject still would not match.
- **C. The token environment subject does not match the trusted subject** **Correct.** Exact workload identity claims must agree with the configured federation trust tuple.
- **D. The token must use a password instead of federation** The stated problem is an exact subject mismatch, not a reason to abandon short-lived workload identity.

**Explanation:** The stated problem is an exact subject mismatch, not a reason to abandon short-lived workload identity. The trust issuer identifies the workload token provider rather than the downstream database server endpoint. Audience and subject are distinct trust fields and the stated environment subject still would not match. Exact workload identity claims must agree with the configured federation trust tuple.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q032

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Resource owners require every release run to acquire a lock in order rather than replace older waiting runs. Which explicit lock behavior fits?

- **A. Require another source code comment** Documentation cannot enforce scheduler behavior on a shared protected resource.
- **B. Use sequential behavior for the exclusive lock** **Correct.** Sequential locking preserves ordered eligible runs instead of selecting only the latest contender.
- **C. Remove the shared resource lock entirely** Unrestricted concurrency abandons the required serialization of competing release executions.
- **D. Set cancel-in-progress on every running deployment** Canceling active work does not implement completion of every approved run in order.

**Explanation:** Sequential locking preserves ordered eligible runs instead of selecting only the latest contender. Canceling active work does not implement completion of every approved run in order. Unrestricted concurrency abandons the required serialization of competing release executions. Documentation cannot enforce scheduler behavior on a shared protected resource.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q033

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The local approval fixture passes the healthy case but never exercises author self-approval. What negative test should be added?

- **A. Increase the healthy request artifact size** Output size does not exercise the independent reviewer eligibility predicate.
- **B. Rename the healthy request to forbidden** A label change does not create an actual violating reviewer identity relationship.
- **C. Submit an otherwise valid self-approved request and require denial** **Correct.** A deliberate negative case proves the independence condition influences the actual decision.
- **D. Count only the number of policy files** File inventory does not establish whether the denied path is evaluated correctly.

**Explanation:** A deliberate negative case proves the independence condition influences the actual decision. A label change does not create an actual violating reviewer identity relationship. Output size does not exercise the independent reviewer eligibility predicate. File inventory does not establish whether the denied path is evaluated correctly.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q034

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

An emergency needs urgent promotion, but the existing gate requires independent approval. Which response retains accountable release control?

- **A. Use an explicitly authorized audited emergency path with defined ownership** **Correct.** Urgency should invoke a reviewed exception mechanism rather than silent untracked policy bypass.
- **B. Replace the artifact source SHA with the last approved SHA** False provenance does not make the new candidate part of an earlier authorization.
- **C. Let the requesting author disable all checks without evidence** Unrecorded self-authorization defeats the stated independent protected transition boundary.
- **D. Erase the failed gate record before queueing again** Removing evidence conceals the decision history instead of providing accountable emergency approval.

**Explanation:** Urgency should invoke a reviewed exception mechanism rather than silent untracked policy bypass. Unrecorded self-authorization defeats the stated independent protected transition boundary. False provenance does not make the new candidate part of an earlier authorization. Removing evidence conceals the decision history instead of providing accountable emergency approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q035

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

The provider returns reviewers and prevent_self_review correctly, but no deployment job ran. Which conclusion is supportable?

- **A. Every future release is guaranteed to be safe** Configuration alone cannot guarantee application behavior or arbitrary future release correctness.
- **B. The intended protection is configured; runtime enforcement remains unobserved** **Correct.** Provider state read-back establishes configuration without claiming an executed blocked or approved release.
- **C. All Azure identities already received valid short-lived tokens** Reviewer configuration does not establish a workload federation token exchange.
- **D. A production deployment has already passed independent approval** No hosted deployment execution provides evidence of that actual authorization event.

**Explanation:** Provider state read-back establishes configuration without claiming an executed blocked or approved release. No hosted deployment execution provides evidence of that actual authorization event. Configuration alone cannot guarantee application behavior or arbitrary future release correctness. Reviewer configuration does not establish a workload federation token exchange.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q036

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A central required-template check is attached to the protected resource. Why can this help against a caller removing security stages?

- **A. Resource access can require consumption of the approved template** **Correct.** The resource owner can constrain executable structure independently from caller-editable pipeline source.
- **B. Any template filename containing secure is automatically trusted** A friendly source name does not establish an approved required-template identity.
- **C. A local copied JSON flag is equivalent to provider enforcement** An unconsumed local declaration does not create a protected resource check.
- **D. The template check automatically fixes every unsafe application function** Execution structure control does not repair arbitrary application code vulnerabilities.

**Explanation:** The resource owner can constrain executable structure independently from caller-editable pipeline source. Execution structure control does not repair arbitrary application code vulnerabilities. A friendly source name does not establish an approved required-template identity. An unconsumed local declaration does not create a protected resource check.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q037

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The policy evaluator allows main, approved reviewer and passing tests but accidentally uses OR across predicates. What failure should a negative test expose?

```text
Actual evaluator: quality OR allowedBranch OR independentReviewer
```

- **A. Every valid request should fail because OR is always false** OR can allow a request when only one selected condition is true.
- **B. The source repository token becomes encrypted automatically** Boolean policy logic does not alter token confidentiality or credential storage.
- **C. One passing condition incorrectly permits a request with another required failure** **Correct.** Mandatory release prerequisites must be combined so each required predicate remains necessary.
- **D. Only the policy file creation timestamp changes** Boolean combination affects decision behavior rather than merely file metadata.

**Explanation:** Mandatory release prerequisites must be combined so each required predicate remains necessary. OR can allow a request when only one selected condition is true. Boolean combination affects decision behavior rather than merely file metadata. Boolean policy logic does not alter token confidentiality or credential storage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q038

Applied · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

The activated workflow supports manual dispatch but requires production environment approval. Does dispatch alone prove deployment authorization?

- **A. Yes; a dispatch identifier is a deployment success record** A scheduling ID does not establish completed application promotion or independent approval.
- **B. No; manual dispatch can never run a deployment** Manual scheduling can execute authorized deployment jobs once their required gates pass.
- **C. No; the protected job still needs its required checks** **Correct.** Requesting a run does not supply the independent environment permission required to execute promotion.
- **D. Yes; every manual request bypasses environment protection** Manual workflow scheduling does not inherently remove required protected environment checks.

**Explanation:** Requesting a run does not supply the independent environment permission required to execute promotion. Manual workflow scheduling does not inherently remove required protected environment checks. A scheduling ID does not establish completed application promotion or independent approval. Manual scheduling can execute authorized deployment jobs once their required gates pass.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q039

Applied · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A repository administrator can bypass an environment policy under its configured rules. What must the security review record?

- **A. Only the environment friendly name** Naming does not disclose privileged exception authority or its permitted use.
- **B. Only the application test count** Behavioral validation does not establish which identities can bypass environment restrictions.
- **C. Only a statement that required reviewers exist** Reviewer existence does not explain effective bypass permissions and accountability boundaries.
- **D. The available bypass authority and its audit or restriction controls** **Correct.** Nominal reviewer settings alone do not describe every effective authorization exception path.

**Explanation:** Nominal reviewer settings alone do not describe every effective authorization exception path. Naming does not disclose privileged exception authority or its permitted use. Behavioral validation does not establish which identities can bypass environment restrictions. Reviewer existence does not explain effective bypass permissions and accountability boundaries.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q040

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

The local evaluator accepts a valid request but retains no reason for denied ones. What evidence improvement supports safe diagnosis?

- **A. Delete denied requests before analysis** Removing observations prevents investigation of whether the intended policy behaved correctly.
- **B. Record the unmet predicate without exposing sensitive input** **Correct.** A precise denial reason supports remediation while preserving appropriate evidence handling boundaries.
- **C. Convert every denial to approval after logging** Recording a failure does not satisfy the missing authorization or quality predicate.
- **D. Print every credential to explain authorization failures** Sensitive material is unnecessary for identifying which policy prerequisite was not met.

**Explanation:** A precise denial reason supports remediation while preserving appropriate evidence handling boundaries. Sensitive material is unnecessary for identifying which policy prerequisite was not met. Recording a failure does not satisfy the missing authorization or quality predicate. Removing observations prevents investigation of whether the intended policy behaved correctly.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q041

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Two individually approved schema releases target one database and can overlap. Which combined design addresses authorization and ordering separately?

- **A. Use identical artifact names for both migrations** Friendly naming does not establish either source approval or safe execution ordering.
- **B. Independent approval plus exclusive serialization of the shared resource** **Correct.** Human permission and mutual exclusion solve different requirements for safe database transitions.
- **C. Serialize logs but leave the actual deployments concurrent** Output ordering does not serialize the resource mutations being protected.
- **D. Add more approvers but permit both migrations simultaneously** More reviewers do not prevent concurrent schema operations on shared mutable state.

**Explanation:** Human permission and mutual exclusion solve different requirements for safe database transitions. More reviewers do not prevent concurrent schema operations on shared mutable state. Output ordering does not serialize the resource mutations being protected. Friendly naming does not establish either source approval or safe execution ordering.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A reviewed production job references an environment typo that creates an unprotected target. What should pre-execution review verify to avoid this gap?

- **A. Only that the workflow contains azure/login** An authentication step does not identify or enforce the intended deployment approval boundary.
- **B. Exact resource identity and stored protection rather than name intent alone** **Correct.** A syntactically valid environment reference may not select the independently protected resource expected.
- **C. Only that the environment string is nonempty** Nonempty input does not establish the intended resource identity or configured reviewers.
- **D. Only that the artifact hash has sixty-four characters** Digest shape does not validate an environment resource reference or protection policy.

**Explanation:** A syntactically valid environment reference may not select the independently protected resource expected. Nonempty input does not establish the intended resource identity or configured reviewers. An authentication step does not identify or enforce the intended deployment approval boundary. Digest shape does not validate an environment resource reference or protection policy.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q043

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release request has passing quality, approved source and a reviewer who is the author under a different display name. What identity comparison is required?

```json
{"authorId":"42","authorName":"Jamon","reviewerId":"42","reviewerName":"Release approver"}
```

- **A. Count distinct display names as distinct authorized people** Presentation changes can create multiple labels for one underlying requesting identity.
- **B. Accept when reviewer and author have different login display strings** Multiple display labels can refer to the same underlying principal and do not establish independent approval.
- **C. Compare stable identities rather than friendly name strings** **Correct.** A changed display label does not make the same actor an independent reviewer.
- **D. Infer independence from the reviewer having a higher repository role** A broader role does not make the same requesting principal a different independently approving identity.

**Explanation:** Multiple display labels can refer to the same underlying principal and do not establish independent approval. A broader role does not make the same requesting principal a different independently approving identity. A changed display label does not make the same actor an independent reviewer. Presentation changes can create multiple labels for one underlying requesting identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A protected resource checks main as an allowed branch while YAML is fetched from an unreviewed repository resource. What additional review is needed?

- **A. Only the display name of the main branch** Naming does not identify the other repository source or its granted execution authority.
- **B. Only whether the primary application artifact has the expected checksum** Artifact integrity does not establish trust or authorization of separately supplied executable repository resources.
- **C. The source and authorization boundary of every executable resource** **Correct.** Checking one branch reference cannot automatically trust other independently supplied executable inputs.
- **D. Only whether all YAML files share one extension** File type does not establish source provenance or protected resource authorization.

**Explanation:** Checking one branch reference cannot automatically trust other independently supplied executable inputs. Naming does not identify the other repository source or its granted execution authority. File type does not establish source provenance or protected resource authorization. Artifact integrity does not establish trust or authorization of separately supplied executable repository resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q045

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

The database migration and app deployment use one approver and one powerful identity despite separate ownership requirements. What redesign preserves the requested boundaries?

- **A. Separate protected transitions and narrowly scoped execution identities** **Correct.** Independent ownership should be reflected in both authorization gates and actual resource permissions.
- **B. Add a delay between two unchecked scripts** Time separation does not provide independent authorization or least-privilege execution identities.
- **C. Use two friendly names for the same unrestricted credential** Renaming does not create distinct principals or constrain their effective resource authority.
- **D. Store one approved:true flag in both output folders** Repeated declarations do not establish separate reviewed decisions or enforced privilege boundaries.

**Explanation:** Independent ownership should be reflected in both authorization gates and actual resource permissions. Renaming does not create distinct principals or constrain their effective resource authority. Time separation does not provide independent authorization or least-privilege execution identities. Repeated declarations do not establish separate reviewed decisions or enforced privilege boundaries.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q046

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A negative test expects approval denial, but passes because a mock provider is unavailable and throws. Why is that insufficient evidence?

- **A. The failure must result from the intended policy predicate** **Correct.** An unrelated exception cannot prove the evaluator rejected the deliberately invalid release request.
- **B. A missing provider automatically supplies an independent approver** Unavailable tooling cannot establish any identity or authorization decision.
- **C. The healthy fixture can be removed once any failure occurs** The contract needs both accepted valid behavior and the specific denied invalid path.
- **D. Every exception proves independent approval policy is enforced** Tool unavailability and policy denial represent different behavioral observations and causes.

**Explanation:** An unrelated exception cannot prove the evaluator rejected the deliberately invalid release request. Tool unavailability and policy denial represent different behavioral observations and causes. Unavailable tooling cannot establish any identity or authorization decision. The contract needs both accepted valid behavior and the specific denied invalid path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q047

Advanced · [CP2](README.md#task-2) · [D3.3.9](../../docs/objective-map.md)

A protected release waits for approval while its selected artifact expires. After approval, what additional gate must still be satisfied?

- **A. A matching friendly filename is sufficient replacement evidence** Output names do not prove identical content or producing source provenance.
- **B. The operator may silently substitute another successful run** Another run needs its own verified correspondence to the reviewed approved candidate.
- **C. Approval alone permits rebuilding any current source** A later rebuild can differ from the originally reviewed immutable candidate.
- **D. The approved immutable artifact remains available with valid provenance** **Correct.** Authorization does not recreate missing bytes or prove a replacement archive is the same candidate.

**Explanation:** Authorization does not recreate missing bytes or prove a replacement archive is the same candidate. A later rebuild can differ from the originally reviewed immutable candidate. Output names do not prove identical content or producing source provenance. Another run needs its own verified correspondence to the reviewed approved candidate.

**Sources:** [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q048

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

A sequential lock protects production, but migration runs before acquiring that lock on the same database. What boundary still needs correction?

```text
Migrate shared database
Acquire production lock
Deploy application
```

- **A. The lock name should be made shorter** Friendly resource naming does not change which operations acquire mutual exclusion.
- **B. The shared-state mutation must occur inside the intended serialization boundary** **Correct.** Locking only later application work does not prevent concurrent earlier database changes.
- **C. Only the final artifact publication needs a lock** Artifact output serialization does not protect the earlier shared database mutation.
- **D. The migration should skip its test evidence** Removing validation does not address unprotected concurrent shared-state operations.

**Explanation:** Locking only later application work does not prevent concurrent earlier database changes. Artifact output serialization does not protect the earlier shared database mutation. Friendly resource naming does not change which operations acquire mutual exclusion. Removing validation does not address unprotected concurrent shared-state operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops)

## L13-Q049

Advanced · [CP3](README.md#task-3) · [D3.3.9](../../docs/objective-map.md)

A deployment template is dormant, source-identified and locally parsed, but no federation or checks exist. What completion report is accurate?

- **A. A denied live release proved by local file placement** Dormancy is not evidence that a provider actually evaluated and denied a request.
- **B. Reviewed local contract with protected integration explicitly pending** **Correct.** Source review cannot substitute for missing identity authorization and observed provider release behavior.
- **C. Fully completed secure production release** No live execution or required protected authorization establishes that outcome.
- **D. Universal environment protection across both providers** A local artifact does not configure remote resource checks for every delivery platform.

**Explanation:** Source review cannot substitute for missing identity authorization and observed provider release behavior. No live execution or required protected authorization establishes that outcome. Dormancy is not evidence that a provider actually evaluated and denied a request. A local artifact does not configure remote resource checks for every delivery platform.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q050

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

A release passed all gates, then the selected artifact changed before deployment. Which invariant should a final promotion check enforce?

- **A. Only the deployment requester must remain the same person** Operator identity does not establish integrity of the approved candidate being promoted.
- **B. Only the application display version must remain unchanged** A friendly version can be reused while underlying bytes or source differ.
- **C. Any later artifact is acceptable after one successful approval** A decision about one candidate does not authorize arbitrary replacement output content.
- **D. The executed candidate matches the approved source and content identity** **Correct.** Approval and quality evidence must stay bound to the actual promoted immutable artifact.

**Explanation:** Approval and quality evidence must stay bound to the actual promoted immutable artifact. A decision about one candidate does not authorize arbitrary replacement output content. A friendly version can be reused while underlying bytes or source differ. Operator identity does not establish integrity of the approved candidate being promoted.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)
