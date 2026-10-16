# Lab 09 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L09-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.1](../../docs/objective-map.md)

A fresh hosted job starts a .NET build before retrieving source, and the solution cannot be found. What is missing?

- **A. Checkout the intended repository revision before building** **Correct.** A fresh job needs source files before solution paths can resolve.
- **B. Rename the package to match the solution** Package naming happens after compilation and cannot retrieve source files.
- **C. Create an environment approval before building** Deployment approval does not place source files into the workspace.
- **D. Increase the build matrix size** More runners repeat the missing-source failure without retrieving the repository.

**Explanation:** A fresh job needs source files before solution paths can resolve. Deployment approval does not place source files into the workspace. More runners repeat the missing-source failure without retrieving the repository. Package naming happens after compilation and cannot retrieve source files.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A workflow should validate pushes to main while leaving unrelated branches alone. Which event configuration expresses that requirement?

- **A. Upload artifacts only when main is selected** Conditional publication happens after scheduling rather than restricting the trigger.
- **B. Set repository token contents permission to read** Access authority does not select which pushed branches trigger execution.
- **C. Use push with a main branch filter** **Correct.** Event filters select eligible pushed branches before jobs are created.
- **D. Put main in the job display name** Display names do not restrict which repository events schedule execution.

**Explanation:** Event filters select eligible pushed branches before jobs are created. Display names do not restrict which repository events schedule execution. Access authority does not select which pushed branches trigger execution. Conditional publication happens after scheduling rather than restricting the trigger.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A developer places a shell command beneath jobs.build without a steps sequence. Why does the workflow fail validation?

- **A. Every job requires a production environment** Production environment selection cannot repair an invalid workflow document structure.
- **B. A workflow must contain two independent jobs** A valid workflow can contain one correctly structured executable job.
- **C. Dotnet commands require a different source provider** Source provider choice does not change the required workflow structure.
- **D. Executable steps require the job steps sequence** **Correct.** The workflow schema separates job properties from ordered executable step entries.

**Explanation:** The workflow schema separates job properties from ordered executable step entries. Production environment selection cannot repair an invalid workflow document structure. A valid workflow can contain one correctly structured executable job. Source provider choice does not change the required workflow structure.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q004

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Contribution CI builds and tests code but makes no repository changes. Which default repository token permission is appropriate?

- **A. Use contents read and add specific permissions as needed** **Correct.** Source checkout requires read authority without unnecessary repository mutation privileges.
- **B. Use packages write so checkout can succeed** Package publication rights do not authorize reading repository source files.
- **C. Use id-token write for every dotnet test** Local application tests do not require an Azure federation token.
- **D. Use write-all to avoid future authorization failures** Broad authority exceeds the stated read-only contribution build and test requirement.

**Explanation:** Source checkout requires read authority without unnecessary repository mutation privileges. Broad authority exceeds the stated read-only contribution build and test requirement. Local application tests do not require an Azure federation token. Package publication rights do not authorize reading repository source files.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q005

Foundational · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Local tests fail immediately before the learner publishes the sandbox workflow. What should happen to this preparation checkpoint?

- **A. Expand the repository token permission set** Broader credentials do not make a failing application assertion correct.
- **B. Repair the failure before publishing the reviewed change** **Correct.** The local quality gate should reject an already known broken candidate.
- **C. Remove the failing assertion from collected reports** Editing evidence conceals failure instead of correcting the tested behavior.
- **D. Publish and label the run successful** A human label cannot replace measured successful application test execution.

**Explanation:** The local quality gate should reject an already known broken candidate. A human label cannot replace measured successful application test execution. Editing evidence conceals failure instead of correcting the tested behavior. Broader credentials do not make a failing application assertion correct.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q006

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

A workflow is committed under docs/workflows instead of .github/workflows, and no push run appears. What explains this?

- **A. The workflow needs packages write before discovery** Package publication authority does not make a file outside the workflow directory discoverable.
- **B. The file is outside the workflow discovery directory** **Correct.** GitHub discovers executable workflow definitions within its designated repository workflow directory.
- **C. The selected event requires a different job timeout** Job duration limits do not make a YAML file outside the discovery directory executable.
- **D. The solution targets the supported SDK version** A supported target cannot make an undiscovered workflow execute automatically.

**Explanation:** A supported target cannot make an undiscovered workflow execute automatically. Package publication authority does not make a file outside the workflow directory discoverable. GitHub discovers executable workflow definitions within its designated repository workflow directory. Job duration limits do not make a YAML file outside the discovery directory executable.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q007

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

The CLI reports status in_progress and an empty conclusion for the intended source revision. How should completion be reported?

- **A. Passed because its workflow name matches** A matching name identifies intended automation rather than successful finished execution.
- **B. Failed permanently because listing was too early** Listing an active run is normal and permits later status inspection.
- **C. Pending until that exact run succeeds** **Correct.** An unfinished run has not established the required final test outcome.
- **D. Passed because no final failure exists yet** An absent failure during execution is not evidence of completed success.

**Explanation:** An unfinished run has not established the required final test outcome. A matching name identifies intended automation rather than successful finished execution. An absent failure during execution is not evidence of completed success. Listing an active run is normal and permits later status inspection.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q008

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A learner downloads todo-api from a successful run. What connects that artifact to the reviewed source candidate?

- **A. The current branch name without its SHA** A branch can advance after the artifact was originally produced.
- **B. The archive digest matches a value supplied inside that archive** A self-supplied content digest does not connect the output to the reviewed source revision.
- **C. The producing headSha matching the approved commit** **Correct.** Exact source identity binds the retained output to the reviewed candidate.
- **D. A package version label equal to the release label** A shared version label does not establish that the producing run used the approved source.

**Explanation:** Exact source identity binds the retained output to the reviewed candidate. A self-supplied content digest does not connect the output to the reviewed source revision. A shared version label does not establish that the producing run used the approved source. A branch can advance after the artifact was originally produced.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q009

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The sample selects .NET 10 through global.json. How should setup-dotnet choose the SDK for this repository build?

- **A. Read the checked-in global.json through its input** **Correct.** The source-controlled SDK contract avoids a separate inconsistent version selection source.
- **B. Infer the SDK from the artifact name** A friendly artifact label is not the supported SDK selection contract.
- **C. Select the latest preview for every run** An unreviewed preview can change behavior without an intentional source update.
- **D. Use whichever SDK is already installed** An incidental installed version may not satisfy the repository SDK contract.

**Explanation:** The source-controlled SDK contract avoids a separate inconsistent version selection source. An incidental installed version may not satisfy the repository SDK contract. An unreviewed preview can change behavior without an intentional source update. A friendly artifact label is not the supported SDK selection contract.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q010

Foundational · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

A test command exits successfully after discovering zero tests. Why should the course validator reject that result?

- **A. Test discovery requires package publishing permission** Publishing authority does not address missing discovery of application test cases.
- **B. No executed assertions prove the required behavior** **Correct.** Successful process termination alone does not establish that tests were actually exercised.
- **C. Zero tests prove every path was covered** Coverage and test discovery need positive observations rather than an empty run.
- **D. Every test requires a preceding Azure deployment** Local application tests can execute without any deployed cloud infrastructure.

**Explanation:** Successful process termination alone does not establish that tests were actually exercised. Coverage and test discovery need positive observations rather than an empty run. Local application tests can execute without any deployed cloud infrastructure. Publishing authority does not address missing discovery of application test cases.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A validated CI artifact expires before its planned release. Which prerequisite for immutable promotion is now missing?

- **A. A more privileged token for the author** Broader credentials cannot recreate deleted bytes with established original provenance.
- **B. A screenshot of the successful run header** A screenshot records an observation but cannot supply the required package.
- **C. A different display name for the reference** Renaming a reference cannot restore previously validated content that was deleted.
- **D. Available approved artifact bytes from the retained run** **Correct.** Promotion needs the validated content rather than only its remembered identity.

**Explanation:** Promotion needs the validated content rather than only its remembered identity. Renaming a reference cannot restore previously validated content that was deleted. Broader credentials cannot recreate deleted bytes with established original provenance. A screenshot records an observation but cannot supply the required package.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Documentation-only changes should avoid expensive CI unless sample or workflow files also change. What configuration implements this scheduling rule?

- **A. Add relevant sample and workflow event path filters** **Correct.** Path filters select eligible events using the files affected by the change.
- **B. Require environment approval before every compilation** Approval gates authorize transitions rather than select events by changed paths.
- **C. Give the job a documentation-specific display name** Job naming does not alter changed-file matching for workflow scheduling.
- **D. Remove the test command logger argument** Log formatting does not determine which source changes schedule the workflow.

**Explanation:** Path filters select eligible events using the files affected by the change. Job naming does not alter changed-file matching for workflow scheduling. Log formatting does not determine which source changes schedule the workflow. Approval gates authorize transitions rather than select events by changed paths.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q013

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

After pushing a new workflow revision, the learner only sees an older successful run for another commit. What should happen next?

- **A. Reuse the older success because both share main** A moving branch can contain different source code and workflow definitions.
- **B. Copy the older commit message onto the change** Message similarity does not establish an actual source-to-run execution relationship.
- **C. Pass the checkpoint because Git push succeeded** Publication transport success does not prove hosted build and test success.
- **D. Query the exact new SHA before judging success** **Correct.** Execution evidence must correspond to the source candidate actually being assessed.

**Explanation:** Execution evidence must correspond to the source candidate actually being assessed. A moving branch can contain different source code and workflow definitions. Message similarity does not establish an actual source-to-run execution relationship. Publication transport success does not prove hosted build and test success.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q014

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A matrix lists Windows and Ubuntu for the same test job. What execution behavior does this configuration request?

- **A. One runner switching its operating system between assertions** A hosted runner does not change operating systems during matrix execution.
- **B. Separate jobs for the selected operating-system values** **Correct.** Matrix expansion schedules each selected operating-system combination as its own job.
- **C. Automatic production deployments after each test** Matrix expansion does not imply that deployment jobs or authorization exist.
- **D. Automatic independent approval of both platforms** Operating-system test coverage does not provide branch review or environment approval.

**Explanation:** Matrix expansion schedules each selected operating-system combination as its own job. A hosted runner does not change operating systems during matrix execution. Matrix expansion does not imply that deployment jobs or authorization exist. Operating-system test coverage does not provide branch review or environment approval.

**Sources:** [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)

## L09-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A canceled test run belongs to the intended commit but produced partial logs. What checkpoint result is appropriate?

- **A. Incomplete until a successful required run finishes** **Correct.** Correct source identity cannot replace completed execution of the required validation.
- **B. Passed when any log line contains success** An isolated word cannot replace the provider final successful run conclusion.
- **C. Passed because cancellation means no test failures** Cancellation can prevent required assertions from completing or producing final evidence.
- **D. Passed after renaming the artifact to complete** A storage label cannot change execution that was canceled before completion.

**Explanation:** Correct source identity cannot replace completed execution of the required validation. Cancellation can prevent required assertions from completing or producing final evidence. An isolated word cannot replace the provider final successful run conclusion. A storage label cannot change execution that was canceled before completion.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q016

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

The exhibit includes both branch and path conditions. A main push changes only README.md. Why is no run created?

```yaml
on:
  push:
    branches: [main]
    paths: ['samples/**', '.github/workflows/**']
# changed file: README.md
```

- **A. Push requires an existing open pull request** Push workflows can execute independently when their configured event filters match.
- **B. Both event filter conditions must match** **Correct.** Main matches but the changed file is outside the configured included paths.
- **C. Reading Markdown needs repository write permission** Token authority and event scheduling conditions are separate workflow behavior boundaries.
- **D. Branch matching overrides every path restriction** Configured event filters combine conditions rather than ignore the changed-file constraint.

**Explanation:** Main matches but the changed file is outside the configured included paths. Configured event filters combine conditions rather than ignore the changed-file constraint. Push workflows can execute independently when their configured event filters match. Token authority and event scheduling conditions are separate workflow behavior boundaries.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q017

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A required check stays pending when its whole workflow is excluded by path filters. How can branch policy retain protection without blocking unrelated changes?

- **A. Use a repository administrator token in CI** More authority does not schedule a workflow excluded by its event filters.
- **B. Assume every skipped workflow reports required success** Workflow-level filter skips can leave the expected required check status pending.
- **C. Remove all review requirements on documentation changes** That removes a different protection without fixing the missing status report.
- **D. Ensure a check-reporting path exists for every protected change** **Correct.** The required policy needs a result even when expensive application work is unnecessary.

**Explanation:** The required policy needs a result even when expensive application work is unnecessary. Workflow-level filter skips can leave the expected required check status pending. That removes a different protection without fixing the missing status report. More authority does not schedule a workflow excluded by its event filters.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The second job needs files generated by the first but sees an empty workspace despite needs. What is missing?

- **A. Explicit artifact transfer or required source checkout** **Correct.** Job dependencies order execution but do not automatically share hosted worker filesystems.
- **B. Repository write permission for every job** Access permission does not transport generated output between separate job workspaces.
- **C. A longer timeout on the second job** Waiting longer does not automatically transfer files from another runner workspace.
- **D. A shared display name for both jobs** Workflow naming does not establish persistent storage between independent hosted jobs.

**Explanation:** Job dependencies order execution but do not automatically share hosted worker filesystems. Workflow naming does not establish persistent storage between independent hosted jobs. Waiting longer does not automatically transfer files from another runner workspace. Access permission does not transport generated output between separate job workspaces.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Packaging must wait for test and lint success. Which job dependency configuration actually enforces this execution order?

```yaml
package:
  needs: [test, lint]
  runs-on: ubuntu-24.04
```

- **A. Set needs to test and lint job IDs** **Correct.** Explicit prerequisites establish which upstream jobs must finish before packaging runs.
- **B. Place package later in the YAML text** Textual order does not create dependencies among otherwise independently schedulable jobs.
- **C. Include both names in the artifact filename** Output naming does not enforce successful execution of any prerequisite jobs.
- **D. Increase packaging timeout to sixty minutes** A longer execution limit does not introduce the required dependency ordering.

**Explanation:** Explicit prerequisites establish which upstream jobs must finish before packaging runs. Textual order does not create dependencies among otherwise independently schedulable jobs. Output naming does not enforce successful execution of any prerequisite jobs. A longer execution limit does not introduce the required dependency ordering.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q020

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

The measured coverage is 61%, and the reviewed minimum is 65%. Which CI decision respects this numerical gate?

```xml
<coverage line-rate="0.61" />
<!-- minimum: 0.65 -->
```

- **A. Remove uncovered files from the completed report** Editing evidence hides the result instead of improving actual application testing.
- **B. Pass whenever the coverage XML exists** Report existence does not show that the measured value meets policy.
- **C. Block promotion and retain the measured report** **Correct.** The observed value is below the explicitly reviewed required quality threshold.
- **D. Round the result to the next ten** Convenient rounding changes the decision instead of satisfying the reviewed gate.

**Explanation:** The observed value is below the explicitly reviewed required quality threshold. Convenient rounding changes the decision instead of satisfying the reviewed gate. Report existence does not show that the measured value meets policy. Editing evidence hides the result instead of improving actual application testing.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q021

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A step produces a nonsecret identifier that a dependent job needs. How should the workflow expose this cross-job value?

- **A. Write the desired identifier in a YAML comment** Comments document intent without creating executable output values for downstream jobs.
- **B. Pass a runner-local path without transferring its file** Another worker cannot assume the previous job filesystem is still available.
- **C. Set a shell variable in the producing step** Process-local shell state is not automatically available inside a different job.
- **D. Declare a job output from the named step output** **Correct.** Cross-job consumption uses an explicit output through the supported dependency context.

**Explanation:** Cross-job consumption uses an explicit output through the supported dependency context. Process-local shell state is not automatically available inside a different job. Comments document intent without creating executable output values for downstream jobs. Another worker cannot assume the previous job filesystem is still available.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q022

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

A retry finds an existing github-ci working copy pointing to another remote repository. What preserves the authorized sandbox boundary?

- **A. Trust the directory because its name matches** A directory label does not prove the configured remote repository identity.
- **B. Reset and force-push the existing origin immediately** That can discard unrelated work and mutate an unauthorized repository boundary.
- **C. Stop and inspect the exact remote mismatch** **Correct.** Repository identity verification prevents publishing lab changes into an unrelated remote.
- **D. Delete the parent course repository and retry** One working-copy mismatch does not authorize deletion of the broader workspace.

**Explanation:** Repository identity verification prevents publishing lab changes into an unrelated remote. That can discard unrelated work and mutate an unauthorized repository boundary. A directory label does not prove the configured remote repository identity. One working-copy mismatch does not authorize deletion of the broader workspace.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q023

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A repeat setup finds no staged differences because the reviewed workflow is already committed. What retry behavior is appropriate?

- **A. Reset main to an earlier arbitrary commit** Unnecessary reset can discard reviewed work without fixing any intended source change.
- **B. Infer hosted success from the empty local diff** No staged difference does not establish a corresponding successful remote execution.
- **C. Reuse the verified revision without an empty commit** **Correct.** After identity checks a safe retry can retain the already committed intended change.
- **D. Expand token permissions to force a new hash** Authority changes are unrelated to already committed identical source and workflow content.

**Explanation:** After identity checks a safe retry can retain the already committed intended change. Unnecessary reset can discard reviewed work without fixing any intended source change. No staged difference does not establish a corresponding successful remote execution. Authority changes are unrelated to already committed identical source and workflow content.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q024

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An operator selects the newest artifact named todo-api without checking its producer. What release verification is still required?

- **A. Check only that the archive digest matches its own uploaded manifest** Integrity against an uploader-supplied record does not establish approved producing source or successful validation.
- **B. Confirm only the embedded application version matches the release label** A version label can be reused and does not identify the approved producing run.
- **C. Confirm only that the build event was a main-branch push** A trusted event type still does not identify which exact main revision produced the selected output.
- **D. Match approved source revision and successful producing run** **Correct.** A reused friendly name does not establish which candidate produced its content.

**Explanation:** A reused friendly name does not establish which candidate produced its content. Integrity against an uploader-supplied record does not establish approved producing source or successful validation. A version label can be reused and does not identify the approved producing run. A trusted event type still does not identify which exact main revision produced the selected output.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q025

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Tests must remain blocking, but their reports should upload even when assertions fail. Which reporting design fits both requirements?

- **A. Use always() on report upload while preserving test failure** **Correct.** Failure evidence remains available without converting the failed test execution into success.
- **B. Suppress every test exit code with continue-on-error** That can allow promotion without the required successful behavioral validation result.
- **C. Remove needs between tests and packaging** Removing execution dependencies does not ensure failed test reports remain available.
- **D. Upload reports only after tests succeed** That excludes precisely the failure evidence needed for useful diagnosis.

**Explanation:** Failure evidence remains available without converting the failed test execution into success. That can allow promotion without the required successful behavioral validation result. Removing execution dependencies does not ensure failed test reports remain available. That excludes precisely the failure evidence needed for useful diagnosis.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q026

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

CI succeeds on a feature branch while the reviewed main commit has a failing run. Which result governs this checkpoint?

- **A. The newest successful run on any branch** Recency and success do not establish identity with the required source candidate.
- **B. The successful run with the same workflow name but another headSha** Workflow naming does not bind a successful execution to the required reviewed source revision.
- **C. The run for the exact reviewed main SHA** **Correct.** A successful unrelated source candidate cannot validate the reviewed main revision.
- **D. The run with the shortest execution duration** Speed cannot replace successful completion for the required source revision.

**Explanation:** Speed cannot replace successful completion for the required source revision. A successful unrelated source candidate cannot validate the reviewed main revision. Recency and success do not establish identity with the required source candidate. Workflow naming does not bind a successful execution to the required reviewed source revision.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q027

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A shell variable set in one step is missing in a later step of the same job. What should carry this nonsecret value?

- **A. Use the supported GITHUB_ENV environment file** **Correct.** The runner reads this file for values exposed to subsequent job steps.
- **B. Assume sibling shell processes share local variables automatically** Separate step processes do not automatically inherit arbitrary previous shell process state.
- **C. Put the value in a repository issue title** Work tracking is not the intended step environment propagation mechanism.
- **D. Grant id-token write to the first step** Federation permission does not preserve local shell variables between subsequent processes.

**Explanation:** The runner reads this file for values exposed to subsequent job steps. Separate step processes do not automatically inherit arbitrary previous shell process state. Work tracking is not the intended step environment propagation mechanism. Federation permission does not preserve local shell variables between subsequent processes.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q028

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

All matrix combinations should continue when one operating system fails tests. Which setting changes this cancellation behavior?

- **A. Remove the operating-system dimension entirely** That abandons required platform coverage rather than adjusting failure cancellation behavior.
- **B. Disable matrix strategy fail-fast for the job** **Correct.** Fail-fast controls cancellation of other matrix combinations after a qualifying failure.
- **C. Give every output the same immutable artifact name** Artifact naming does not control cancellation of other matrix job combinations.
- **D. Force every test process to return zero** Hiding failure does not preserve truthful independent results for the required platforms.

**Explanation:** Fail-fast controls cancellation of other matrix combinations after a qualifying failure. Hiding failure does not preserve truthful independent results for the required platforms. That abandons required platform coverage rather than adjusting failure cancellation behavior. Artifact naming does not control cancellation of other matrix job combinations.

**Sources:** [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)

## L09-Q029

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

The team wants manual CI troubleshooting runs without enabling any cloud deployment. Which event addition satisfies that narrow requirement?

- **A. Add azure/login to all contribution tests** Azure authentication grants authority rather than creating a manual CI trigger.
- **B. Remove locked restore for every manual run** Dependency drift does not enable explicitly requested manual workflow scheduling.
- **C. Switch to pull_request_target and run contributor code** That changes trust context and is unnecessary for deliberate CI troubleshooting.
- **D. Add workflow_dispatch to the existing CI workflow** **Correct.** A manual trigger runs existing CI jobs without introducing deployment behavior.

**Explanation:** A manual trigger runs existing CI jobs without introducing deployment behavior. Azure authentication grants authority rather than creating a manual CI trigger. That changes trust context and is unnecessary for deliberate CI troubleshooting. Dependency drift does not enable explicitly requested manual workflow scheduling.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q030

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Locked restore rejects a changed package declaration absent from the reviewed lockfile. Which repair preserves repeatability and deliberate upgrades?

```text
Declared: 1.3.0
Locked: 1.2.0
Restore: --locked-mode
```

- **A. Edit the test report to claim restoration succeeded** Evidence changes cannot resolve an actual inconsistent dependency resolution graph.
- **B. Remove locked mode from every release build** That evades the inconsistency by abandoning the deterministic restore requirement.
- **C. Review and regenerate the lockfile with the dependency change** **Correct.** The committed graph must match intended declarations before locked restoration can succeed.
- **D. Extend runner timeout to twenty-four hours** More time does not make conflicting dependency input records consistent.

**Explanation:** The committed graph must match intended declarations before locked restoration can succeed. That evades the inconsistency by abandoning the deterministic restore requirement. Evidence changes cannot resolve an actual inconsistent dependency resolution graph. More time does not make conflicting dependency input records consistent.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q031

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A newer main push should supersede obsolete active contribution CI. Which configuration reduces wasted execution while preserving branch scope?

- **A. Use a branch-scoped concurrency group with cancel-in-progress** **Correct.** The group identifies competing runs and lets newer CI replace obsolete execution.
- **B. Add production approval to each compilation step** Approval does not implement replacement of superseded active contribution runs.
- **C. Use one global group for all releases and branches** An overly broad group unnecessarily connects unrelated execution and deployment lifetimes.
- **D. Delete successful artifacts on every new push** Artifact deletion removes evidence rather than canceling the obsolete running work.

**Explanation:** The group identifies competing runs and lets newer CI replace obsolete execution. An overly broad group unnecessarily connects unrelated execution and deployment lifetimes. Approval does not implement replacement of superseded active contribution runs. Artifact deletion removes evidence rather than canceling the obsolete running work.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q032

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Deployment rebuilds main rather than downloading the approved CI output. Which important release guarantee does this approach lose?

- **A. Deployment always finishes faster than the previous build** Rebuilding provides no guaranteed relationship to previous observed execution duration.
- **B. Deployment uses the same bytes that passed validation** **Correct.** A fresh build can resolve changed inputs after the original candidate was approved.
- **C. Organization administration becomes necessary for every job** Rebuilding does not justify any broader organization-wide administrative authority.
- **D. Every reviewer is automatically removed from the environment** Build location does not itself change provider environment approval configuration.

**Explanation:** A fresh build can resolve changed inputs after the original candidate was approved. Rebuilding provides no guaranteed relationship to previous observed execution duration. Build location does not itself change provider environment approval configuration. Rebuilding does not justify any broader organization-wide administrative authority.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q033

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A third-party action uses a mutable tag, but executable dependencies require exact review. Which reference provides the strongest implementation identity?

- **A. A tag whose name resembles a semantic version** A descriptive tag can move and does not guarantee a permanent target.
- **B. Additional repository write permissions for the action** Broader authority does not stop a mutable reference selecting changed executable code.
- **C. Trust a verified publisher while retaining its mutable version tag** Publisher verification does not prevent an authorized publisher from moving the referenced executable implementation.
- **D. A reviewed full action commit SHA** **Correct.** An exact commit identifies reviewed executable content more precisely than a moving tag.

**Explanation:** Broader authority does not stop a mutable reference selecting changed executable code. An exact commit identifies reviewed executable content more precisely than a moving tag. A descriptive tag can move and does not guarantee a permanent target. Publisher verification does not prevent an authorized publisher from moving the referenced executable implementation.

**Sources:** [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q034

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pull-request title is interpolated directly into shell source. What change reduces command-injection risk while still using that title?

- **A. Require at least one space in the title** Simple whitespace checks do not establish an effective shell injection boundary.
- **B. Add a production environment to the test job** An environment name does not change who controls the pull-request title.
- **C. Mask the title while retaining direct source interpolation** Log masking does not prevent execution of attacker-controlled injected shell syntax.
- **D. Pass it as environment data and quote its use** **Correct.** Separating untrusted values from generated shell syntax avoids interpreting them as commands.

**Explanation:** Separating untrusted values from generated shell syntax avoids interpreting them as commands. Log masking does not prevent execution of attacker-controlled injected shell syntax. An environment name does not change who controls the pull-request title. Simple whitespace checks do not establish an effective shell injection boundary.

**Sources:** [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q035

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

A fork contribution needs tests but must never receive release credentials. Which execution design respects that trust boundary?

- **A. Store release secrets in ordinary repository variables** Changing storage classification does not justify exposing privileged values to untrusted code.
- **B. Trust any fork branch named main** A contributor-controlled branch label cannot establish legitimate release authorization.
- **C. Separate unprivileged contribution CI from protected trusted releases** **Correct.** Contributor code runs without access to deployment authority reserved for approved releases.
- **D. Run the fork head through pull_request_target with secrets** That executes untrusted code within a more privileged workflow context.

**Explanation:** Contributor code runs without access to deployment authority reserved for approved releases. That executes untrusted code within a more privileged workflow context. Changing storage classification does not justify exposing privileged values to untrusted code. A contributor-controlled branch label cannot establish legitimate release authorization.

**Sources:** [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q036

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An artifact download fails its digest comparison with the expected platform record. What is the defensible release decision?

- **A. Rename the archive until verification is no longer run** Changing labels does not resolve the underlying content integrity discrepancy.
- **B. Replace the trusted digest with the newly calculated one** Accepting an arbitrary replacement validates whichever unexpected content happened to arrive.
- **C. Ignore the mismatch because tests previously passed** Earlier testing does not prove the identity of a later downloaded artifact.
- **D. Stop promotion and investigate the selected content identity** **Correct.** The mismatched integrity record cannot establish that the downloaded bytes are expected.

**Explanation:** The mismatched integrity record cannot establish that the downloaded bytes are expected. Accepting an arbitrary replacement validates whichever unexpected content happened to arrive. Changing labels does not resolve the underlying content integrity discrepancy. Earlier testing does not prove the identity of a later downloaded artifact.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q037

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Windows and Linux matrix jobs both upload test-results. How should output naming preserve independently identifiable result sets?

- **A. Keep outputs only in the source checkout** Runner-local generated files are not retained portable cross-job execution evidence.
- **B. Include the matrix operating system in each artifact name** **Correct.** Distinct names connect each separately produced result with its actual platform execution.
- **C. Remove Windows validation solely to avoid naming decisions** That sacrifices required coverage instead of identifying independently produced outputs.
- **D. Assume upload order safely merges every result** An implicit merge assumption can conflict with separate immutable artifact uploads.

**Explanation:** Distinct names connect each separately produced result with its actual platform execution. An implicit merge assumption can conflict with separate immutable artifact uploads. That sacrifices required coverage instead of identifying independently produced outputs. Runner-local generated files are not retained portable cross-job execution evidence.

**Sources:** [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)

## L09-Q038

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

A test command piped through a logger fails, while the wrapper reports success. What must the wrapper preserve for accurate gating?

- **A. Only output directory creation time** Directory creation does not communicate the test process final measured result.
- **B. Only the first informational build message** One informational line cannot establish that the complete test suite passed.
- **C. The test process exit code and actual counters** **Correct.** Logging must not erase the behavioral failure signal required by the gate.
- **D. Only the logger successful exit status** The logger can finish even when the underlying assertions fail.

**Explanation:** Logging must not erase the behavioral failure signal required by the gate. The logger can finish even when the underlying assertions fail. One informational line cannot establish that the complete test suite passed. Directory creation does not communicate the test process final measured result.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q039

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An approved artifact is copied to another store under a different display name. Which record must accompany the copy?

- **A. Original run, source SHA and trusted content digest** **Correct.** Promotion must preserve the relationship between copied bytes and the validated producer.
- **B. Only local download time and machine hostname** Those values identify transfer circumstances rather than the validated package identity.
- **C. Only the current default branch tip** The branch can advance after the original validated artifact was built.
- **D. Only destination name and operator display name** Friendly naming and operator identity do not identify the original tested content.

**Explanation:** Promotion must preserve the relationship between copied bytes and the validated producer. Friendly naming and operator identity do not identify the original tested content. The branch can advance after the original validated artifact was built. Those values identify transfer circumstances rather than the validated package identity.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q040

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Internal changes trigger both push and pull_request CI, producing redundant runs. What should the team adjust while keeping intended validation?

- **A. Only the number of required code reviewers** Review policy does not eliminate overlapping push and pull-request event scheduling.
- **B. Only the NuGet package manager version** Dependency tooling does not determine overlapping repository event eligibility rules.
- **C. Review event overlap and branch rules for contribution coverage** **Correct.** Overlapping subscriptions can schedule redundant validation for the same proposed source change.
- **D. Only artifact compression settings for the jobs** Output compression does not change how many repository events schedule workflows.

**Explanation:** Overlapping subscriptions can schedule redundant validation for the same proposed source change. Dependency tooling does not determine overlapping repository event eligibility rules. Output compression does not change how many repository events schedule workflows. Review policy does not eliminate overlapping push and pull-request event scheduling.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q041

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Required tests fail under continue-on-error, package upload succeeds, and the workflow appears green. Diagnostics must remain available while release is blocked for failed assertions. Which acceptance design restores all three intended boundaries?

- **A. Increase artifact retention without changing result handling** Longer evidence storage does not make a tolerated failure block promotion.
- **B. Preserve blocking test failure and publish diagnostics through a failure-aware step** **Correct.** The actual failed test result must block promotion while its diagnostic publication remains independently permitted.
- **C. Add continue-on-error to packaging as well** Tolerating additional failures further weakens the intended required quality decision.
- **D. Keep the test tolerated and rely on needs pointing to that job** A dependency on an allowed-to-fail result can still miss the mandatory behavioral rejection requirement.

**Explanation:** A dependency on an allowed-to-fail result can still miss the mandatory behavioral rejection requirement. The actual failed test result must block promotion while its diagnostic publication remains independently permitted. Tolerating additional failures further weakens the intended required quality decision. Longer evidence storage does not make a tolerated failure block promotion.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A merge queue is enabled, but required CI handles only pull_request events and never reports for queue groups. What adjustment preserves combined-candidate validation?

```yaml
on:
  pull_request:
# Merge queue has now been enabled
```

- **A. Reuse a prior pull-request success despite candidate changes** The combined candidate can differ from the independently tested pull-request head.
- **B. Handle merge_group and test its generated candidate revision** **Correct.** The queue needs checks for the combined source revision it proposes to merge.
- **C. Grant production secrets to queued contributor code** Privileged credentials do not fix a missing merge-queue event subscription.
- **D. Disable required branch checks for queued entries** That removes protection rather than validates the proposed combined source revision.

**Explanation:** The queue needs checks for the combined source revision it proposes to merge. The combined candidate can differ from the independently tested pull-request head. That removes protection rather than validates the proposed combined source revision. Privileged credentials do not fix a missing merge-queue event subscription.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q043

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A privileged workflow_run consumer receives an artifact from untrusted contribution code. Which verification is required before consuming its contents?

- **A. Trust every artifact because GitHub stored its archive** Storage integrity does not establish that the producing code was authorized or benign.
- **B. Establish producer trust and avoid executing untrusted artifact content** **Correct.** Cross-workflow transfers can carry attacker-controlled files into a more privileged execution context.
- **C. Execute its installer before checking the producing event** Execution would cross the privilege boundary before required producer validation occurs.
- **D. Use the display name as an authorization token** A producer-controlled name does not confer trusted deployment or execution authority.

**Explanation:** Cross-workflow transfers can carry attacker-controlled files into a more privileged execution context. Storage integrity does not establish that the producing code was authorized or benign. Execution would cross the privilege boundary before required producer validation occurs. A producer-controlled name does not confer trusted deployment or execution authority.

**Sources:** [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions); [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q044

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Three independent forty-minute operating-system jobs are mandatory, but the allowed matrix capacity is two concurrent jobs. Ignoring startup overhead, which configuration and minimum duration preserve all coverage and the capacity boundary?

```text
Required matrix: Windows, Linux, macOS
Each job: 40 minutes
Maximum simultaneous jobs: 2
Startup overhead: ignored
```

- **A. Keep all three values, max-parallel one, forty minutes** A single slot serializes three forty-minute jobs and cannot finish their combined execution in forty minutes.
- **B. Keep all three values, max-parallel two, at least eighty minutes** **Correct.** Two execution waves preserve every required platform within the two-slot concurrency boundary.
- **C. Remove one platform, max-parallel two, forty minutes** One wave meets capacity by dropping required operating-system coverage rather than satisfying all constraints.
- **D. Keep all three values, max-parallel three, forty minutes** Three simultaneous jobs exceed the stated capacity even though they could finish in one theoretical wave.

**Explanation:** Two execution waves preserve every required platform within the two-slot concurrency boundary. Three simultaneous jobs exceed the stated capacity even though they could finish in one theoretical wave. One wave meets capacity by dropping required operating-system coverage rather than satisfying all constraints. A single slot serializes three forty-minute jobs and cannot finish their combined execution in forty minutes.

**Sources:** [S2](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)

## L09-Q045

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The downloaded archive matches its expected checksum, but its source differs from the approved commit. What does this combination establish?

```text
Digest: matches trusted archive record
Approved source: commit A
Artifact source: commit B
```

- **A. An unchanged filename proves the approved source was used** Friendly naming cannot resolve conflicting producing source and approval identity records.
- **B. The approval target should silently follow the artifact** Moving the approval target hides the discrepancy instead of validating the candidate.
- **C. A matching checksum overrides all source approval requirements** Content integrity and source authorization answer different release validation questions.
- **D. Content integrity can pass while source approval fails** **Correct.** A matching checksum identifies bytes without authorizing an unrelated producing source revision.

**Explanation:** A matching checksum identifies bytes without authorizing an unrelated producing source revision. Content integrity and source authorization answer different release validation questions. Friendly naming cannot resolve conflicting producing source and approval identity records. Moving the approval target hides the discrepancy instead of validating the candidate.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q046

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A push changes documentation and application code while paths-ignore contains docs/**. Which scheduling behavior should the reviewer expect?

- **A. The application file can still make the workflow eligible** **Correct.** Ignoring documentation does not exclude other changed files from event evaluation.
- **B. Any documentation change suppresses all application validation** That incorrectly treats an ignored path as a blanket veto condition.
- **C. Path matching automatically grants the token write authority** Scheduling filters do not change repository token authentication or authorization.
- **D. Paths-ignore permanently disables every main push event** Filtering is evaluated per change rather than permanently changing branch behavior.

**Explanation:** Ignoring documentation does not exclude other changed files from event evaluation. That incorrectly treats an ignored path as a blanket veto condition. Filtering is evaluated per change rather than permanently changing branch behavior. Scheduling filters do not change repository token authentication or authorization.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q047

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable workflow receives contents read and attempts to expand itself to contents write. Which authorization principle applies to this call chain?

- **A. An action version tag determines all token permissions** Executable dependency identity does not replace the workflow token permission model.
- **B. The callee cannot elevate the caller granted permission** **Correct.** Reusable composition must preserve or reduce the permitted caller authority boundary.
- **C. Every reusable workflow automatically receives repository administration** Reuse does not grant an automatic repository-wide administrative permission set.
- **D. A larger callee declaration always overrides caller restrictions** The callee cannot unilaterally expand permissions beyond the permitted calling chain.

**Explanation:** Reusable composition must preserve or reduce the permitted caller authority boundary. Reuse does not grant an automatic repository-wide administrative permission set. The callee cannot unilaterally expand permissions beyond the permitted calling chain. Executable dependency identity does not replace the workflow token permission model.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax); [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L09-Q048

Advanced · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Two builds of one source commit resolve different floating dependencies. How can the pipeline retain reproducibility and still adopt security fixes?

- **A. Replace published bytes under the previous version label** Changing existing output destroys stable identity of the approved release artifact.
- **B. Always restore latest packages just before production deployment** That changes inputs after the original CI candidate has already passed validation.
- **C. Commit reviewed lock inputs and test deliberate dependency updates** **Correct.** Stable release inputs can coexist with intentional independently validated package upgrades.
- **D. Disable restoration on every clean hosted runner** Fresh workers still need declared dependency content for actual compilation.

**Explanation:** Stable release inputs can coexist with intentional independently validated package upgrades. Changing existing output destroys stable identity of the approved release artifact. That changes inputs after the original CI candidate has already passed validation. Fresh workers still need declared dependency content for actual compilation.

**Sources:** [S1](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)

## L09-Q049

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Both Windows and Linux must pass for the approved source candidate. Which evidence set is adequate before artifact promotion?

- **A. One Linux TRX and a Windows runner inventory** Runner availability does not prove Windows assertions executed for this source candidate.
- **B. A previous release sharing the current branch name** A branch label does not connect old results to the approved current revision.
- **C. An artifact display name mentioning both platforms** A name cannot establish actual successful execution of either required matrix combination.
- **D. Matching commit run success plus separate required matrix reports** **Correct.** The evidence connects approved source with completed validation on both required platforms.

**Explanation:** The evidence connects approved source with completed validation on both required platforms. Runner availability does not prove Windows assertions executed for this source candidate. A name cannot establish actual successful execution of either required matrix combination. A branch label does not connect old results to the approved current revision.

**Sources:** [S4](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)

## L09-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Fork builds use caching while protected release consumes trusted inputs. Which boundary should this optimization preserve under untrusted contribution execution?

- **A. Treat contribution cache content as untrusted release input** **Correct.** A performance mechanism cannot let untrusted output bypass trusted release validation.
- **B. Cache deployment credentials with intermediate build files** Sensitive credentials would escape their intended limited execution lifetime and trust boundary.
- **C. Let the first cache writer replace approved release artifacts** Cache production does not authorize changing previously validated immutable deployment outputs.
- **D. Treat a matching cache key as passed release validation** Cache lookup identity does not prove source approval or successful application testing.

**Explanation:** A performance mechanism cannot let untrusted output bypass trusted release validation. Cache production does not authorize changing previously validated immutable deployment outputs. Sensitive credentials would escape their intended limited execution lifetime and trust boundary. Cache lookup identity does not prove source approval or successful application testing.

**Sources:** [S3](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)
