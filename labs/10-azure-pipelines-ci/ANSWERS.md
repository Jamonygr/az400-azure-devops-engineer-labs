# Lab 10 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L10-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

The lab uses Azure Repos, while a colleague proposes importing a GitHub repository. Which additional boundary must be prepared before that integration works?

- **A. An authorized GitHub repository connection and pipeline access** **Correct.** Another provider requires explicitly authorized repository access beyond the Azure Repos fixture.
- **B. Only an annotated Git tag in Azure Repos** A source tag does not establish access to a GitHub repository.
- **C. Only a new Azure service connection for application deployment** Application deployment credentials do not authorize a separate external GitHub source repository connection.
- **D. Only a different source YAML path in the same inaccessible provider** Changing a configured path cannot establish the missing authorized external source repository access.

**Explanation:** A source tag does not establish access to a GitHub repository. Application deployment credentials do not authorize a separate external GitHub source repository connection. Another provider requires explicitly authorized repository access beyond the Azure Repos fixture. Changing a configured path cannot establish the missing authorized external source repository access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops)

## L10-Q002

Foundational · [CP1](README.md#task-1) · [D3.3.1](../../docs/objective-map.md)

A learner lists repositories in the owned project before cloning. Which returned values should establish the exact source boundary?

- **A. Only the default branch label returned for the repository** A branch label can repeat across many projects and does not identify the authorized repository boundary.
- **B. Repository ID, project identity and approved remote URL** **Correct.** These values connect the working copy to its authorized provider project boundary.
- **C. Only the most recent commit author name** An author can contribute to several unrelated repositories and projects.
- **D. Only the repository friendly name** Friendly names can repeat and do not uniquely establish project ownership.

**Explanation:** An author can contribute to several unrelated repositories and projects. A branch label can repeat across many projects and does not identify the authorized repository boundary. These values connect the working copy to its authorized provider project boundary. Friendly names can repeat and do not uniquely establish project ownership.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops)

## L10-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The sample CI should run for main pushes in Azure Pipelines YAML. Which section defines that automatic source-change scheduling?

- **A. A variable named BuildDisplayBranch with main as its value** An arbitrary variable name does not create a branch event subscription.
- **B. A trigger branch include rule for main** **Correct.** The trigger schema selects source changes eligible to create CI runs.
- **C. A deployment environment named main** Environment authorization is distinct from selecting source changes for CI execution.
- **D. A publish artifact step named main** Artifact publication happens during execution and does not define source-change scheduling.

**Explanation:** The trigger schema selects source changes eligible to create CI runs. Artifact publication happens during execution and does not define source-change scheduling. An arbitrary variable name does not create a branch event subscription. Environment authorization is distinct from selecting source changes for CI execution.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q004

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The repository selects an exact SDK through global.json. Which UseDotNet task configuration preserves that source-controlled choice?

- **A. Remove SDK setup because YAML compilation installs every runtime** Pipeline parsing does not automatically install all required application toolchains.
- **B. Use the build number as the SDK version** A run label is not an actual SDK compatibility or installation contract.
- **C. Install whichever SDK the last pipeline used** Historical machine state need not match the current repository SDK requirement.
- **D. Enable useGlobalJson for SDK installation** **Correct.** The task resolves the SDK requirement from the checked-in global.json contract.

**Explanation:** The task resolves the SDK requirement from the checked-in global.json contract. Historical machine state need not match the current repository SDK requirement. A run label is not an actual SDK compatibility or installation contract. Pipeline parsing does not automatically install all required application toolchains.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q005

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A YAML author places a step task directly beside stages rather than within a job. What structural repair is needed?

- **A. Rename the task so its display name contains job** A friendly label does not change where executable steps belong structurally.
- **B. Grant subscription Owner to the build identity** Azure authority cannot change the schema position required for a task.
- **C. Add more hosted parallelism to the organization** Execution capacity cannot repair an invalid YAML pipeline document structure.
- **D. Nest executable steps inside a stage job** **Correct.** Pipeline structure separates stages and jobs from their executable step sequences.

**Explanation:** Pipeline structure separates stages and jobs from their executable step sequences. Execution capacity cannot repair an invalid YAML pipeline document structure. Azure authority cannot change the schema position required for a task. A friendly label does not change where executable steps belong structurally.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q006

Foundational · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A build must retain machine-readable tests even when assertions fail. Which reporting design fits this requirement without hiding the failure?

- **A. Publish reports only after every test succeeds** That discards the failure evidence needed to diagnose unsuccessful test execution.
- **B. Publish test results on failure while keeping tests blocking** **Correct.** Failure reporting preserves diagnosis without converting unsuccessful behavioral validation into success.
- **C. Suppress test exit codes so publication always looks green** Hiding failures defeats the requirement for an accurate blocking quality gate.
- **D. Replace results with the build queue timestamp** A scheduling timestamp cannot establish which application assertions passed or failed.

**Explanation:** Failure reporting preserves diagnosis without converting unsuccessful behavioral validation into success. Hiding failures defeats the requirement for an accurate blocking quality gate. That discards the failure evidence needed to diagnose unsuccessful test execution. A scheduling timestamp cannot establish which application assertions passed or failed.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q007

Foundational · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A valid pipeline YAML exists only in an uncommitted local file. Why does pushing the current main branch not activate that change?

- **A. Azure Pipelines requires every build to deploy infrastructure first** Application CI does not require a cloud infrastructure deployment before execution.
- **B. The repository token needs organization-wide administrator authority** Broad authority does not make an uncommitted local file part of a push.
- **C. The solution must contain at least one database migration** Migration content does not determine whether a local YAML edit was published.
- **D. The provider reads committed repository content for its selected revision** **Correct.** A local uncommitted file is not included in the remote source revision.

**Explanation:** A local uncommitted file is not included in the remote source revision. Application CI does not require a cloud infrastructure deployment before execution. Migration content does not determine whether a local YAML edit was published. Broad authority does not make an uncommitted local file part of a push.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q008

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A setup command registers a YAML definition with skip-first-run true. What has been established at that point?

- **A. A production deployment passed all environment checks** Registering CI does not execute or authorize a production deployment.
- **B. The application artifact has already passed all tests** No queued execution means no new measured test or artifact result exists.
- **C. The definition exists but a successful build is unproven** **Correct.** Registration identifies executable configuration without showing that its jobs completed successfully.
- **D. The build identity automatically owns the Azure subscription** A pipeline definition does not grant unrelated Azure resource permissions.

**Explanation:** Registration identifies executable configuration without showing that its jobs completed successfully. Registering CI does not execute or authorize a production deployment. No queued execution means no new measured test or artifact result exists. A pipeline definition does not grant unrelated Azure resource permissions.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q009

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A newly queued build reports status notStarted and result null. What should the learner conclude about CI completion?

- **A. It deployed successfully if the YAML filename is correct** Correct configuration identity cannot replace actual completed deployment or test execution.
- **B. It remains pending until execution completes successfully** **Correct.** Queued status and absent result do not demonstrate a finished successful build.
- **C. It failed permanently because no result is available immediately** A queued job can legitimately await an approved available worker.
- **D. It passed because the queue command returned an ID** An ID identifies scheduled work rather than successful measured execution.

**Explanation:** Queued status and absent result do not demonstrate a finished successful build. An ID identifies scheduled work rather than successful measured execution. A queued job can legitimately await an approved available worker. Correct configuration identity cannot replace actual completed deployment or test execution.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q010

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A successful build publishes todo-api. Which source field must match the reviewed candidate before its artifact is accepted?

- **A. Only the moving source branch display name** A branch can advance after an earlier artifact was produced.
- **B. Only the artifact archive filename** A reused filename does not identify its producing source revision.
- **C. The build sourceVersion exact commit identity** **Correct.** This binds the producing execution to the source revision approved for validation.
- **D. Only the build requester friendly name** One requester can queue runs for many different source candidates.

**Explanation:** This binds the producing execution to the source revision approved for validation. A branch can advance after an earlier artifact was produced. One requester can queue runs for many different source candidates. A reused filename does not identify its producing source revision.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q011

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

A clone retry finds a working copy whose origin differs from the resolved Azure Repos remote. How should setup proceed?

- **A. Delete the organization to ensure a clean source boundary** A clone mismatch does not authorize organization-wide destructive changes or deletion.
- **B. Reset and force-push whichever origin already exists** That can overwrite unrelated source outside the authorized disposable project boundary.
- **C. Trust the directory because its name contains pipeline** Local directory naming does not prove a matching remote repository identity.
- **D. Stop and investigate the repository identity mismatch** **Correct.** A safe retry must not publish the lab change to an unrelated repository.

**Explanation:** A safe retry must not publish the lab change to an unrelated repository. That can overwrite unrelated source outside the authorized disposable project boundary. Local directory naming does not prove a matching remote repository identity. A clone mismatch does not authorize organization-wide destructive changes or deletion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops)

## L10-Q012

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Two definitions share the requested pipeline name. Which additional information is necessary before reusing an existing definition safely?

- **A. Only the total historical build count** Execution count does not identify the repository or registered YAML source path.
- **B. Only the requester email display value** Requester identity does not establish the registered executable source boundary.
- **C. Exact repository ID, project and YAML path** **Correct.** Friendly naming alone cannot establish the intended executable source and ownership boundary.
- **D. Only the definition creation date** Age does not prove the definition points to the required repository content.

**Explanation:** Friendly naming alone cannot establish the intended executable source and ownership boundary. Age does not prove the definition points to the required repository content. Requester identity does not establish the registered executable source boundary. Execution count does not identify the repository or registered YAML source path.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q013

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The job creates build output but never publishes it. Why can another release pipeline not download todo-api from that run?

- **A. Generated files need an explicit artifact publication step** **Correct.** Runner-local output is not automatically retained as a downloadable pipeline artifact.
- **B. Package publishing requires broad organization administrator rights** Retaining a build artifact does not justify that unrelated administrative authority.
- **C. Every Release build configuration automatically uploads all files** Build configuration names do not create provider artifact publication behavior.
- **D. The artifact name must equal the project GUID** A specific friendly name does not compensate for missing artifact publication.

**Explanation:** Runner-local output is not automatically retained as a downloadable pipeline artifact. Build configuration names do not create provider artifact publication behavior. A specific friendly name does not compensate for missing artifact publication. Retaining a build artifact does not justify that unrelated administrative authority.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q014

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A build finishes with result partiallySucceeded because a required test failure was tolerated. What should the course gate report?

- **A. Incomplete because required successful validation is absent** **Correct.** Partial success does not establish that every explicitly required test gate passed.
- **B. Passed because any finished build counts as success** Completion and success are separate properties of a provider build result.
- **C. Passed after changing the build display number** A label cannot alter the actual measured execution result or policy requirement.
- **D. Passed if the package upload step succeeded** Artifact storage success does not compensate for failed required application behavioral assertions.

**Explanation:** Partial success does not establish that every explicitly required test gate passed. Completion and success are separate properties of a provider build result. A label cannot alter the actual measured execution result or policy requirement. Artifact storage success does not compensate for failed required application behavioral assertions.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q015

Foundational · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A retry finds the intended YAML and samples already committed with no staged diff. What source operation is appropriate?

- **A. Reuse the verified revision without creating an empty commit** **Correct.** A safe retry can preserve already committed intended content after boundary checks.
- **B. Grant all pipelines access to every service connection** Authorization broadening is unrelated to already committed source content.
- **C. Reset source to an unrelated earlier branch** That discards intended work without fixing any actual publication requirement.
- **D. Infer that hosted testing passed from no local changes** An empty diff cannot establish a corresponding successful provider execution.

**Explanation:** A safe retry can preserve already committed intended content after boundary checks. That discards intended work without fixing any actual publication requirement. An empty diff cannot establish a corresponding successful provider execution. Authorization broadening is unrelated to already committed source content.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q016

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

An Azure Repos YAML pipeline declares pr: main but pull requests still lack validation. What is required for this source provider?

```yaml
trigger:
  branches: {include: [main]}
pr: [main]
# Source provider: Azure Repos
```

- **A. Rename the CI artifact to pull-request-validation** Artifact names do not establish provider pull-request build validation policy.
- **B. Configure an Azure Repos build-validation branch policy** **Correct.** Azure Repos pull-request validation is configured through branch policies rather than YAML PR triggers.
- **C. Give every contributor permission to edit production secrets** Contribution secret access does not configure a required branch build policy.
- **D. Assume the YAML PR section overrides every repository policy** Azure Repos does not use YAML PR triggers as that enforcement mechanism.

**Explanation:** Azure Repos pull-request validation is configured through branch policies rather than YAML PR triggers. Artifact names do not establish provider pull-request build validation policy. Azure Repos does not use YAML PR triggers as that enforcement mechanism. Contribution secret access does not configure a required branch build policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops)

## L10-Q017

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Main pushes touching only docs should not run application CI, while sample changes should. Which YAML design fits this scope?

- **A. Combine the main branch filter with intended sample path includes** **Correct.** Both branch and changed-file criteria define the eligible CI source event.
- **B. Publish documentation under a different artifact name** Output labeling does not determine whether a source push schedules CI.
- **C. Add main only to the pipeline display name** Display labels have no effect on changed-file or branch event matching.
- **D. Set every task to condition succeeded()** Step conditions apply after scheduling rather than define eligible source changes.

**Explanation:** Both branch and changed-file criteria define the eligible CI source event. Display labels have no effect on changed-file or branch event matching. Output labeling does not determine whether a source push schedules CI. Step conditions apply after scheduling rather than define eligible source changes.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A variable should select a template structure before jobs exist. Which expression timing matches this requirement in Azure Pipelines?

- **A. A compile-time parameter or template expression** **Correct.** Template expansion shapes the pipeline before runtime step execution begins.
- **B. A test result property from a previous step** Runtime test outcomes do not exist when initial template structure is expanded.
- **C. A post-build artifact display label** An output label does not participate in pre-execution template expansion.
- **D. A shell variable created in the last task** A value produced after execution cannot shape the already expanded job graph.

**Explanation:** Template expansion shapes the pipeline before runtime step execution begins. A value produced after execution cannot shape the already expanded job graph. An output label does not participate in pre-execution template expansion. Runtime test outcomes do not exist when initial template structure is expanded.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A value created during a task must be used by a later task in the same job. Which mechanism is appropriate?

- **A. Set only a process-local shell variable** A local process variable is not automatically propagated into later task processes.
- **B. Use the supported task.setvariable logging command** **Correct.** The agent processes that command to expose a variable to subsequent tasks.
- **C. Change a YAML comment through the current shell** Comments do not provide agent-supported runtime variable propagation between tasks.
- **D. Declare the value as an already compiled parameter afterward** Runtime data cannot retroactively change the initial template parameter expansion.

**Explanation:** The agent processes that command to expose a variable to subsequent tasks. A local process variable is not automatically propagated into later task processes. Comments do not provide agent-supported runtime variable propagation between tasks. Runtime data cannot retroactively change the initial template parameter expansion.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q020

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

An earlier pipeline creation request timed out after the server accepted it. What retry prevents duplicate owned definitions?

```text
Create response lost after timeout
Name: ci-run42
Repository ID: owned repository GUID
```

- **A. Always create another pipeline with a random suffix** That can duplicate server state instead of recovering the accepted creation outcome.
- **B. Assume timeout guarantees no provider mutation occurred** A transport timeout does not establish that the remote operation was rejected.
- **C. Delete every pipeline in the organization before retrying** The request only authorizes the exact disposable project resource boundary.
- **D. Look up the exact owned name and repository before creating** **Correct.** The response may be lost even though the server already created the resource.

**Explanation:** The response may be lost even though the server already created the resource. That can duplicate server state instead of recovering the accepted creation outcome. The request only authorizes the exact disposable project resource boundary. A transport timeout does not establish that the remote operation was rejected.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q021

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A build has status completed and result succeeded, but sourceVersion differs from the saved lab SHA. How should validation respond?

```json
{"status":"completed","result":"succeeded","sourceVersion":"different-reviewed-sha"}
```

- **A. Accept because main still has the same branch name** A moving branch can point to a different candidate after source changes.
- **B. Reject the provenance mismatch despite successful execution** **Correct.** Successful tests for another source revision do not validate the reviewed candidate.
- **C. Accept if the requester is the same learner** Requester identity does not replace the required exact source revision relationship.
- **D. Change the saved candidate SHA without reviewing the difference** Moving the expected target conceals rather than resolves the source validation mismatch.

**Explanation:** Successful tests for another source revision do not validate the reviewed candidate. A moving branch can point to a different candidate after source changes. Requester identity does not replace the required exact source revision relationship. Moving the expected target conceals rather than resolves the source validation mismatch.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q022

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The previous build's artifact has the same name as today's output. Which selection preserves promotion of the approved current candidate?

- **A. Use the current branch name as the only selector** Branch movement prevents it uniquely identifying the intended producing execution.
- **B. Download whichever named archive was listed first** Listing position does not prove the archive corresponds to the approved candidate.
- **C. Select the successful approved build ID and verify its sourceVersion** **Correct.** Run identity and source correlation distinguish independently produced artifacts with repeated names.
- **D. Rebuild at release time and reuse yesterday's artifact label** A new build changes bytes instead of selecting the approved immutable output.

**Explanation:** Run identity and source correlation distinguish independently produced artifacts with repeated names. Listing position does not prove the archive corresponds to the approved candidate. Branch movement prevents it uniquely identifying the intended producing execution. A new build changes bytes instead of selecting the approved immutable output.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q023

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A task needs a secret variable, but its script expects an environment variable that was never mapped. Which repair is appropriate?

- **A. Echo the secret into the YAML repository first** Committing sensitive material exposes it beyond the intended limited execution boundary.
- **B. Map the secret explicitly into that task environment** **Correct.** Secret values need deliberate scoped exposure to the consuming process environment.
- **C. Give every task every secret automatically** Broad exposure exceeds the requirements of the single consuming task.
- **D. Rename the task so its display name matches the secret** A friendly name does not create environment variable mapping for a script.

**Explanation:** Secret values need deliberate scoped exposure to the consuming process environment. Committing sensitive material exposes it beyond the intended limited execution boundary. Broad exposure exceeds the requirements of the single consuming task. A friendly name does not create environment variable mapping for a script.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q024

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pipeline needs source read access but no ability to modify other projects. What authorization scope fits this workload?

- **A. Use collection-wide administration to avoid repository prompts** Broad cross-project authority exceeds the stated workload and creates unnecessary exposure.
- **B. Use a personal administrator PAT in every step** A personal broad token introduces avoidable authority and credential lifecycle dependence.
- **C. Use the project-scoped build identity with needed repository reads** **Correct.** The job identity should receive only the resource access its source operations require.
- **D. Grant subscription Owner to solve source repository access** Azure resource roles do not authorize Azure Repos source operations.

**Explanation:** The job identity should receive only the resource access its source operations require. Broad cross-project authority exceeds the stated workload and creates unnecessary exposure. A personal broad token introduces avoidable authority and credential lifecycle dependence. Azure resource roles do not authorize Azure Repos source operations.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/access-tokens?view=azure-devops)

## L10-Q025

Applied · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

The workflow and source should enter the sandbox together without copied test results or local state. Which input list is appropriate?

- **A. Copy only the existing application executable** The workflow needs reviewed source and project inputs for reproducible validation.
- **B. Recursively copy every file including bin and state** Generated output and sensitive local evidence need not belong in the sandbox source.
- **C. Copy only directory names without file contents** A filesystem outline does not supply the source needed for an actual build.
- **D. Copy the tracked sample source allowlist** **Correct.** Tracked sources distinguish authored inputs from ignored build output and learner evidence.

**Explanation:** Tracked sources distinguish authored inputs from ignored build output and learner evidence. Generated output and sensitive local evidence need not belong in the sandbox source. The workflow needs reviewed source and project inputs for reproducible validation. A filesystem outline does not supply the source needed for an actual build.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q026

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A saved definition ID points to the right repository but a different YAML path. What should the retry do?

- **A. Change the expected path locally without reviewing the source** That changes the assertion instead of validating the originally intended definition.
- **B. Queue repeatedly until one build happens to succeed** A successful unrelated definition still does not validate the required YAML source.
- **C. Stop rather than silently reuse the different executable definition** **Correct.** Repository identity alone does not establish that the intended pipeline source will execute.
- **D. Accept because YAML paths are cosmetic labels** The path selects actual executable source and materially changes the pipeline contract.

**Explanation:** Repository identity alone does not establish that the intended pipeline source will execute. The path selects actual executable source and materially changes the pipeline contract. That changes the assertion instead of validating the originally intended definition. A successful unrelated definition still does not validate the required YAML source.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q027

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A queued build waits because the organization has no available hosted parallelism. Which next step addresses the actual prerequisite?

- **A. Obtain approved capacity or an authorized suitable isolated agent** **Correct.** Scheduling needs a permitted worker and available execution capacity before tasks run.
- **B. Increase the repository contents permission to write** Source mutation authority does not supply a worker or hosted parallel entitlement.
- **C. Delete the queued status from the local evidence file** Editing local evidence does not make the provider execute the waiting build.
- **D. Disable code coverage and mark the queued result green** Changing quality evidence cannot create execution capacity or establish success.

**Explanation:** Scheduling needs a permitted worker and available execution capacity before tasks run. Changing quality evidence cannot create execution capacity or establish success. Source mutation authority does not supply a worker or hosted parallel entitlement. Editing local evidence does not make the provider execute the waiting build.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q028

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A downstream job needs an output variable produced by a named upstream task. What must its definition include?

- **A. Only a matching artifact display name** Artifact naming does not declare a runtime output variable relationship.
- **B. Only a later position in the YAML file** Textual ordering alone does not expose values between distinct job contexts.
- **C. Only the same variable spelling in an unrelated shell** Coincidental local names do not propagate values across separate job execution boundaries.
- **D. An output variable reference through the dependency context** **Correct.** Cross-job use needs an explicitly exposed output and the appropriate dependency mapping.

**Explanation:** Cross-job use needs an explicitly exposed output and the appropriate dependency mapping. Coincidental local names do not propagate values across separate job execution boundaries. Textual ordering alone does not expose values between distinct job contexts. Artifact naming does not declare a runtime output variable relationship.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q029

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The test task is allowed to fail for reporting, but package promotion must still be blocked. What should the final gate inspect?

- **A. Only whether the first restore step succeeded** Dependency restoration does not prove later application tests passed their assertions.
- **B. Only whether a test report file exists** A report can contain failures and still exist as a valid file.
- **C. Actual test counters and the required failure outcome** **Correct.** Reporting tolerance must not erase evidence used for the mandatory promotion decision.
- **D. Only whether the build directory was created** Directory creation does not establish successful required test assertion execution.

**Explanation:** Reporting tolerance must not erase evidence used for the mandatory promotion decision. A report can contain failures and still exist as a valid file. Directory creation does not establish successful required test assertion execution. Dependency restoration does not prove later application tests passed their assertions.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q030

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A release downloads an artifact then builds the application again. Why does this violate the intended build-once promotion model?

```text
Approved CI artifact: build 101, SHA A
Release command: dotnet publish current main
```

- **A. A new build always runs with broader project permissions** Authority depends on configuration rather than the mere act of rebuilding source.
- **B. The deployed output can differ from the validated downloaded bytes** **Correct.** Rebuilding introduces a new output instead of promoting the selected immutable candidate.
- **C. Downloading artifacts automatically disables all test execution** Artifact download does not change whether a build command can execute tests.
- **D. Every rebuild necessarily changes the database schema** Application rebuilding does not inherently apply any database migration or schema operation.

**Explanation:** Rebuilding introduces a new output instead of promoting the selected immutable candidate. Artifact download does not change whether a build command can execute tests. Authority depends on configuration rather than the mere act of rebuilding source. Application rebuilding does not inherently apply any database migration or schema operation.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q031

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A team needs one combined build for rapid main pushes while another build runs. What does trigger batch:true provide?

- **A. A subsequent CI run containing changes accumulated during active execution** **Correct.** Batching reduces redundant queued source-change runs while preserving the combined pending changes.
- **B. Cancellation of every active production deployment automatically** CI trigger batching is not a universal deployment cancellation mechanism.
- **C. Permission to skip all required tests after the first run** Batching changes scheduling rather than the required quality validation contract.
- **D. Automatic merging of every branch into main** Scheduling builds does not grant source merge authorization or perform repository integration.

**Explanation:** Batching reduces redundant queued source-change runs while preserving the combined pending changes. CI trigger batching is not a universal deployment cancellation mechanism. Batching changes scheduling rather than the required quality validation contract. Scheduling builds does not grant source merge authorization or perform repository integration.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q032

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A failed test should stop packaging, but diagnostic publication should still run. Which condition belongs on the diagnostic task?

- **A. Remove all task failure signals from the test command** Suppressing failure can incorrectly authorize packaging of a candidate with failed tests.
- **B. Use succeeded() and expect reports after failed upstream tests** That condition excludes the failed execution whose evidence is needed for diagnosis.
- **C. Use a failure-tolerant reporting condition such as succeededOrFailed()** **Correct.** Reporting can run after failure while the required packaging dependency remains blocked.
- **D. Set the diagnostic task as the only required test** Diagnostic publication does not execute the application behavioral assertions being gated.

**Explanation:** Reporting can run after failure while the required packaging dependency remains blocked. That condition excludes the failed execution whose evidence is needed for diagnosis. Suppressing failure can incorrectly authorize packaging of a candidate with failed tests. Diagnostic publication does not execute the application behavioral assertions being gated.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q033

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

The learner registers a pipeline against a project other than the journal-owned sandbox. Which safeguard should reject the operation before reuse?

- **A. Compare the returned project ID/name with the owned context** **Correct.** Exact scope validation prevents accidentally adopting executable resources in another project.
- **B. Compare only its human-readable pipeline display name** A repeated friendly name cannot establish the owning project boundary.
- **C. Use a broad collection administrator token to ignore scope** More authority increases possible damage without establishing the authorized sandbox boundary.
- **D. Check that it contains at least one successful old build** Past execution does not authorize mutation of an unrelated project resource.

**Explanation:** Exact scope validation prevents accidentally adopting executable resources in another project. A repeated friendly name cannot establish the owning project boundary. Past execution does not authorize mutation of an unrelated project resource. More authority increases possible damage without establishing the authorized sandbox boundary.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q034

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The artifact name includes a release number, but its producing run is gone. What is lost for a source-to-artifact audit?

- **A. Only a checksum retained beside the archive** A digest can identify bytes while leaving their producing execution and validation relationship unavailable.
- **B. Only a copy of the current pipeline YAML** Current configuration does not establish which historical definition and source actually produced the retained artifact.
- **C. The verifiable execution record connecting validation and source revision** **Correct.** A friendly version label alone cannot reconstruct the original producing execution evidence.
- **D. Only a package version label without the original run relationship** A friendly package version does not reconstruct which source and quality results produced the bytes.

**Explanation:** A digest can identify bytes while leaving their producing execution and validation relationship unavailable. Current configuration does not establish which historical definition and source actually produced the retained artifact. A friendly version label alone cannot reconstruct the original producing execution evidence. A friendly package version does not reconstruct which source and quality results produced the bytes.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q035

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A variable group contains nonsecret build options but is authorized to all pipelines by default. What narrower design fits this exercise?

- **A. Assume nonsecret means every pipeline must inherit access** Nonsecret classification does not establish a requirement for blanket pipeline authorization.
- **B. Grant every project contributor organization administrator membership** Broad membership does not reduce variable group exposure to unrelated pipelines.
- **C. Store build options in a migration identity credential** Unrelated credential storage does not provide appropriate variable group consumption boundaries.
- **D. Authorize only explicitly approved consuming pipelines** **Correct.** The group should be exposed only to workloads that need its configuration.

**Explanation:** The group should be exposed only to workloads that need its configuration. Broad membership does not reduce variable group exposure to unrelated pipelines. Unrelated credential storage does not provide appropriate variable group consumption boundaries. Nonsecret classification does not establish a requirement for blanket pipeline authorization.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/access-tokens?view=azure-devops)

## L10-Q036

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A learner observes a run successful on commit A then pushes commit B. What evidence is required to pass B's CI checkpoint?

- **A. A successful required execution whose sourceVersion is B** **Correct.** The changed candidate needs validation evidence tied to its own exact source revision.
- **B. The successful A result because both use the same YAML filename** Unchanged workflow naming does not prove changed application source passed validation.
- **C. The fact that B has a later commit timestamp** Source recency does not establish successful test execution for the new candidate.
- **D. The fact that A and B have the same author** Authorship does not show that the changed source behavior was validated.

**Explanation:** The changed candidate needs validation evidence tied to its own exact source revision. Unchanged workflow naming does not prove changed application source passed validation. Source recency does not establish successful test execution for the new candidate. Authorship does not show that the changed source behavior was validated.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q037

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time expressions refer to a runtime-generated value and resolve unexpectedly empty. Which boundary caused this error?

- **A. The agent does not support ordinary YAML comments** Comments do not govern availability of runtime variables during template processing.
- **B. The value does not exist during template expansion** **Correct.** A later task output cannot supply data to an earlier compile-time evaluation.
- **C. The artifact must be compressed using a different format** Compression choices do not change expression evaluation timing in the pipeline.
- **D. The pipeline needs an additional source repository tag** A Git tag cannot make runtime-generated data exist before tasks execute.

**Explanation:** A later task output cannot supply data to an earlier compile-time evaluation. A Git tag cannot make runtime-generated data exist before tasks execute. Comments do not govern availability of runtime variables during template processing. Compression choices do not change expression evaluation timing in the pipeline.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q038

Applied · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A script adds the reviewed workflow twice and stages no changes on retry. Which check prevents an unnecessary failing commit operation?

- **A. Reset every branch to the initial empty commit** That discards existing intended source without creating any necessary difference.
- **B. Alter the test threshold solely to manufacture a diff** Changing policy for retry convenience violates the reviewed quality gate contract.
- **C. Push to another existing project to force execution** A different project is outside the authorized disposable source boundary.
- **D. Inspect staged differences before running git commit** **Correct.** A no-change retry should reuse the verified source revision rather than require another commit.

**Explanation:** A no-change retry should reuse the verified source revision rather than require another commit. That discards existing intended source without creating any necessary difference. Changing policy for retry convenience violates the reviewed quality gate contract. A different project is outside the authorized disposable source boundary.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q039

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

TRX reports show three failed tests despite a successful package upload. What is the correct release-quality conclusion from these observations?

- **A. A successful upload overrides the failed application assertions** Storage success and test correctness are separate required release properties.
- **B. The tests must have passed because the archive is nonempty** A nonempty package can contain code whose required tests actually failed.
- **C. The report should be deleted before final validation** Removing evidence does not correct the measured application test outcome.
- **D. Artifact availability does not establish a passing test gate** **Correct.** Publication can succeed while its application behavioral validation still contains required failures.

**Explanation:** Publication can succeed while its application behavioral validation still contains required failures. Storage success and test correctness are separate required release properties. A nonempty package can contain code whose required tests actually failed. Removing evidence does not correct the measured application test outcome.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q040

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A digest matches but the artifact belongs to a different successful source revision. Which assessment preserves the approved-candidate requirement?

- **A. Reject the source mismatch while recording passed content integrity** **Correct.** A digest verifies bytes without authorizing an otherwise unapproved source candidate.
- **B. Accept because any successful source may replace an approved source** A successful build does not automatically expand the release source approval boundary.
- **C. Rename the artifact to contain the approved SHA** Changing a name cannot alter the producing source or content provenance.
- **D. Move the approved tag silently to the downloaded source** Changing approval evidence conceals the discrepancy instead of validating the intended candidate.

**Explanation:** A digest verifies bytes without authorizing an otherwise unapproved source candidate. A successful build does not automatically expand the release source approval boundary. Changing a name cannot alter the producing source or content provenance. Changing approval evidence conceals the discrepancy instead of validating the intended candidate.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q041

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Main advances after a build is queued. The selected run succeeds for an earlier sourceVersion. How can the release avoid a branch-race mistake?

```text
Queued candidate: A
Main after queue: B
Completed build sourceVersion: A
```

- **A. Compare only the run requester and pipeline friendly name** Those labels do not identify the actual source candidate built by the run.
- **B. Bind promotion to an explicitly reviewed run and exact commit** **Correct.** Moving branch names require a stable candidate identity and matching execution evidence.
- **C. Always choose the latest branch tip regardless of tested revision** That can promote source which was not used by the successful selected execution.
- **D. Assume queue time permanently freezes the remote main reference** Other changes can legitimately update the branch after this build is queued.

**Explanation:** Moving branch names require a stable candidate identity and matching execution evidence. That can promote source which was not used by the successful selected execution. Other changes can legitimately update the branch after this build is queued. Those labels do not identify the actual source candidate built by the run.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Azure Repos main requires pull-request validation plus push CI. A YAML pr block is present but no branch build policy exists. What complete design satisfies both requirements?

- **A. Keep main push triggers and add required branch build validation** **Correct.** Push CI and Azure Repos pull-request policies are separate configuration mechanisms.
- **B. Give every contributor permission to bypass all branch policies** Bypass authority defeats rather than implements the required reviewed validation boundary.
- **C. Add a pipeline variable named RequiredPullRequestChecks** An arbitrary variable does not establish a repository branch build validation policy.
- **D. Remove push CI and rely on the unsupported YAML PR block** That removes actual push validation without configuring the required provider pull-request gate.

**Explanation:** Push CI and Azure Repos pull-request policies are separate configuration mechanisms. That removes actual push validation without configuring the required provider pull-request gate. An arbitrary variable does not establish a repository branch build validation policy. Bypass authority defeats rather than implements the required reviewed validation boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q043

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

An output is created in stage Build but needed in stage Deploy. Which design must the author inspect when it is empty?

```yaml
stage: Deploy
# Needs Build.Pack output named revision
# stageDependencies must address the actual producer
```

- **A. Only whether the output variable exists in the producing task local shell** A local value does not establish the required cross-stage output exposure and dependency mapping.
- **B. Only whether the deployment timeout exceeds build duration** Execution duration does not establish the required output value propagation contract.
- **C. Named output exposure, stage dependency and stageDependencies mapping** **Correct.** Cross-stage values need the correct producer identity and declared data dependency path.
- **D. Only whether both stages share the same display name** Display labels do not expose output variables across separate stage contexts.

**Explanation:** A local value does not establish the required cross-stage output exposure and dependency mapping. Cross-stage values need the correct producer identity and declared data dependency path. Display labels do not expose output variables across separate stage contexts. Execution duration does not establish the required output value propagation contract.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q044

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A release in one project needs artifacts from another restricted project. Which authorization design preserves both provenance and least privilege?

- **A. Disable every producing project security boundary** Removing all resource restrictions is unnecessary for a narrowly authorized artifact reader.
- **B. Grant the intended job identity only required source-build artifact reads** **Correct.** Cross-project consumption requires deliberate narrow authorization rather than bypassing run provenance checks.
- **C. Use a collection administrator personal token for every task** Broad personal authority exceeds the necessary artifact-read operation and complicates credential ownership.
- **D. Copy an arbitrary archive and invent the expected build ID** Unverified transfer and false identity cannot establish the approved source-to-artifact chain.

**Explanation:** Cross-project consumption requires deliberate narrow authorization rather than bypassing run provenance checks. Broad personal authority exceeds the necessary artifact-read operation and complicates credential ownership. Unverified transfer and false identity cannot establish the approved source-to-artifact chain. Removing all resource restrictions is unnecessary for a narrowly authorized artifact reader.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops); [S5](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/access-tokens?view=azure-devops)

## L10-Q045

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable template accepts Debug and Release, but a caller supplies Production as its configuration. Which response preserves its typed interface?

- **A. Put Production in a shell variable after compilation** A later runtime value does not satisfy the earlier template parameter contract.
- **B. Treat Production as Release without recording the substitution** Undocumented coercion conceals an interface mismatch and can mislead release review.
- **C. Reject the unsupported value before scheduling its build behavior** **Correct.** The caller must satisfy the declared parameter contract rather than silently change semantics.
- **D. Give the template broader service-connection authority** Additional privileges cannot make an unsupported configuration value part of its interface.

**Explanation:** The caller must satisfy the declared parameter contract rather than silently change semantics. Undocumented coercion conceals an interface mismatch and can mislead release review. A later runtime value does not satisfy the earlier template parameter contract. Additional privileges cannot make an unsupported configuration value part of its interface.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L10-Q046

Advanced · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A timed-out registration is retried; one matching name exists but points to another repository. What should the recovery logic do?

- **A. Delete every pipeline with a similar name across the organization** Recovery is limited to the exact disposable boundary rather than broad destructive matching.
- **B. Refuse adoption and reconcile the exact definition identity** **Correct.** Lost-response recovery must verify repository and YAML ownership before reusing existing state.
- **C. Queue it once and trust any successful result** Successful execution cannot authorize adopting another source repository definition.
- **D. Adopt it because exactly one friendly name was returned** Uniqueness of a name does not prove the executable source is the authorized one.

**Explanation:** Lost-response recovery must verify repository and YAML ownership before reusing existing state. Uniqueness of a name does not prove the executable source is the authorized one. Recovery is limited to the exact disposable boundary rather than broad destructive matching. Successful execution cannot authorize adopting another source repository definition.

**Sources:** [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q047

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Quality CI must prove tests passed and publish an immutable candidate, but optional diagnostics can fail. What policy distinguishes these outcomes correctly?

- **A. Treat artifact existence as the only required result** An output can exist despite missing required tests or invalid source provenance.
- **B. Treat a diagnostic timeout as proof application tests failed** An optional reporting failure does not itself establish an application assertion failure.
- **C. Mark every task continueOnError so the run always finishes** Suppressing all failures removes the mandatory quality distinction the release requires.
- **D. Make required tests/package gates blocking and label diagnostics separately** **Correct.** The release decision must distinguish mandatory candidate validation from optional reporting work.

**Explanation:** The release decision must distinguish mandatory candidate validation from optional reporting work. Suppressing all failures removes the mandatory quality distinction the release requires. An optional reporting failure does not itself establish an application assertion failure. An output can exist despite missing required tests or invalid source provenance.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops); [S6](https://learn.microsoft.com/en-us/cli/azure/pipelines?view=azure-cli-latest)

## L10-Q048

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Three rapid main pushes arrive while CI is active. With batching enabled, what source and result should final verification inspect?

- **A. Only the count of push events received** Event counts do not identify which combined candidate was actually tested.
- **B. Only the newest package friendly name** A reused artifact label does not prove the batched producing source or results.
- **C. The actual batched run sourceVersion and final required results** **Correct.** Batch scheduling still needs exact source identity and observed completed quality evidence.
- **D. Only the first pushed commit and its queued timestamp** The subsequent batched run can contain later accumulated source changes.

**Explanation:** Batch scheduling still needs exact source identity and observed completed quality evidence. The subsequent batched run can contain later accumulated source changes. Event counts do not identify which combined candidate was actually tested. A reused artifact label does not prove the batched producing source or results.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)

## L10-Q049

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An archive is retained but its lockfile inputs differ from the reviewed build record. What release investigation is warranted before promotion?

```text
Approved lock graph: dependency X 1.2
Selected archive metadata: dependency X 1.3
```

- **A. Reconcile actual dependency inputs and trusted producing artifact identity** **Correct.** Source labels alone cannot explain a changed dependency graph in approved output provenance.
- **B. Change the reviewed lockfile record to whichever archive arrived** That moves the expected evidence rather than validates the selected candidate.
- **C. Assume identical artifact names guarantee the same dependency graph** Friendly names do not bind exact direct and transitive dependency resolution content.
- **D. Skip provenance checks because the archive downloads successfully** Transport success does not establish the approved dependencies or producing execution identity.

**Explanation:** Source labels alone cannot explain a changed dependency graph in approved output provenance. Friendly names do not bind exact direct and transitive dependency resolution content. That moves the expected evidence rather than validates the selected candidate. Transport success does not establish the approved dependencies or producing execution identity.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L10-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

An untrusted contribution can edit YAML and requests a powerful service connection during tests. Which resource control should remain outside that editable YAML?

- **A. A branch name chosen by the contributor** Caller-controlled naming is not a trusted resource authorization or approval decision.
- **B. A comment asking contributors not to use the connection** Documentation does not enforce the authority boundary against editable malicious workflow content.
- **C. A secret masking rule as the only protection** Masking logs does not prevent authorized code from using an exposed credential.
- **D. Explicit pipeline resource authorization and protected connection checks** **Correct.** The code being evaluated must not authorize its own access to privileged resources.

**Explanation:** The code being evaluated must not authorize its own access to privileged resources. Documentation does not enforce the authority boundary against editable malicious workflow content. Masking logs does not prevent authorized code from using an exposed credential. Caller-controlled naming is not a trusted resource authorization or approval decision.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/access-tokens?view=azure-devops)
