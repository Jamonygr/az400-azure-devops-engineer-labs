# Lab 11 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L11-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A caller wants to reuse an entire GitHub workflow rather than one action step. Where should the uses reference appear?

- **A. Only in a repository Markdown link** Documentation references do not create executable reusable workflow calls or dependencies.
- **B. At the calling job level** **Correct.** Reusable workflows are invoked as jobs rather than embedded ordinary action steps.
- **C. Inside a composite action run step without a calling job** Reusable workflows use the job-call contract rather than an ordinary composite action step interface.
- **D. Inside an arbitrary shell command string** A shell command does not establish a reusable workflow job invocation.

**Explanation:** Reusable workflows are invoked as jobs rather than embedded ordinary action steps. A shell command does not establish a reusable workflow job invocation. Reusable workflows use the job-call contract rather than an ordinary composite action step interface. Documentation references do not create executable reusable workflow calls or dependencies.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A template accepts configuration values Debug and Release. A caller supplies Production. What should parameter validation do?

```yaml
parameters:
- name: configuration
  type: string
  values: [Debug, Release]
# caller: Production
```

- **A. Ignore every parameter and use machine defaults** Machine defaults discard the explicit consumer configuration and undermine repeatable execution.
- **B. Reject the unsupported configuration value** **Correct.** A typed allowed-values contract should reject values outside its declared choices.
- **C. Treat it as Release without reporting substitution** Silent coercion conceals a caller mismatch against the reviewed interface contract.
- **D. Broaden the service connection permission set** Authorization changes cannot make an unsupported value satisfy the template contract.

**Explanation:** A typed allowed-values contract should reject values outside its declared choices. Silent coercion conceals a caller mismatch against the reviewed interface contract. Machine defaults discard the explicit consumer configuration and undermine repeatable execution. Authorization changes cannot make an unsupported value satisfy the template contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pipeline needs a Boolean parameter to include an optional job before execution. Which input type fits this structural decision?

- **A. An artifact filename chosen after packaging** A post-build label cannot determine initial job graph template expansion.
- **B. A shell variable from the final job** A value produced last cannot shape the already compiled execution structure.
- **C. A text message in the test report** Test output is runtime evidence rather than an initial template input.
- **D. A typed compile-time Boolean parameter** **Correct.** Template parameters can shape the expanded job graph before execution begins.

**Explanation:** Template parameters can shape the expanded job graph before execution begins. A value produced last cannot shape the already compiled execution structure. Test output is runtime evidence rather than an initial template input. A post-build label cannot determine initial job graph template expansion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q004

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

BuildConfiguration is explicitly nonsecret shared build data. Which Azure DevOps resource can expose it to approved consuming pipelines?

- **A. A local-only shell variable on the author workstation** That process state is not shared with independently executing hosted pipelines.
- **B. A narrowly authorized variable group** **Correct.** A variable group shares configuration while its authorization limits which pipelines consume it.
- **C. A production database password field** Unrelated secret storage does not express this nonsecret configuration sharing requirement.
- **D. An organization administrator personal token** A privileged credential is not an appropriate container for ordinary shared build options.

**Explanation:** A variable group shares configuration while its authorization limits which pipelines consume it. A privileged credential is not an appropriate container for ordinary shared build options. Unrelated secret storage does not express this nonsecret configuration sharing requirement. That process state is not shared with independently executing hosted pipelines.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q005

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The package job depends on test, which depends on build. Which valid execution order respects those prerequisite relationships?

- **A. Any order because YAML is declarative** Declarative configuration still enforces explicitly declared execution dependency relationships.
- **B. Test then package then build** Testing cannot satisfy its build dependency when the build has not executed.
- **C. Package then test then build** This order attempts to package before its required build and test dependencies.
- **D. Build then test then package** **Correct.** Each prerequisite must be satisfied before its dependent job executes.

**Explanation:** Each prerequisite must be satisfied before its dependent job executes. This order attempts to package before its required build and test dependencies. Testing cannot satisfy its build dependency when the build has not executed. Declarative configuration still enforces explicitly declared execution dependency relationships.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A reusable workflow declares workflow_call inputs but the consumer passes a misspelled input name. What is the appropriate fix?

- **A. Correct the consumer to the declared interface** **Correct.** The caller must use the input name actually accepted by the reusable contract.
- **B. Add repository write permission for every job** Broader authority does not correct a mismatched reusable workflow input name.
- **C. Disable all test assertions in the callee** Removing tests does not resolve the invalid caller-to-template input binding.
- **D. Rename the artifact to the misspelled input** Artifact naming does not change the accepted reusable workflow parameter interface.

**Explanation:** The caller must use the input name actually accepted by the reusable contract. Broader authority does not correct a mismatched reusable workflow input name. Artifact naming does not change the accepted reusable workflow parameter interface. Removing tests does not resolve the invalid caller-to-template input binding.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q007

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A caller must choose a build configuration before YAML expansion. How does a parameter differ from an ordinary runtime variable?

- **A. Every parameter is automatically encrypted secret material** Type and timing do not make parameters appropriate encrypted secret storage.
- **B. The parameter is produced only after its job completes** That would be runtime output rather than an initial template expansion input.
- **C. A parameter grants permissions to the source repository** Configuration values do not inherently authorize access to repository resources.
- **D. The parameter participates in compile-time template expansion** **Correct.** Its value can determine structure before runtime tasks and variables are evaluated.

**Explanation:** Its value can determine structure before runtime tasks and variables are evaluated. Type and timing do not make parameters appropriate encrypted secret storage. That would be runtime output rather than an initial template expansion input. Configuration values do not inherently authorize access to repository resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q008

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph contains build depending on package and package depending on build. Why must scheduling reject it?

- **A. No job can satisfy the cyclic prerequisites** **Correct.** The cycle leaves no ready starting node for valid topological execution.
- **B. The job names use unsupported lowercase letters** Lowercase names do not explain the mutual unsatisfied dependency relationship.
- **C. The package needs more artifact storage** Additional storage cannot resolve a cycle in required execution ordering.
- **D. A longer task timeout will eventually break the cycle** Time passage does not satisfy a prerequisite that itself depends on the blocked job.

**Explanation:** The cycle leaves no ready starting node for valid topological execution. Lowercase names do not explain the mutual unsatisfied dependency relationship. Additional storage cannot resolve a cycle in required execution ordering. Time passage does not satisfy a prerequisite that itself depends on the blocked job.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q009

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

The lab creates a variable group with authorize false. What provider property should validation inspect afterward?

- **A. It is not authorized for every pipeline** **Correct.** The read-back must confirm the intended limited consumer authorization boundary.
- **B. Its creation command returned any nonempty output** Response existence alone does not prove the desired authorization state persisted.
- **C. Its friendly name contains the word build** A label does not prove the group has the required resource access restrictions.
- **D. Its numeric ID contains the current date** The identifier shape does not establish consumption permissions or configuration values.

**Explanation:** The read-back must confirm the intended limited consumer authorization boundary. A label does not prove the group has the required resource access restrictions. The identifier shape does not establish consumption permissions or configuration values. Response existence alone does not prove the desired authorization state persisted.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q010

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

The shared template changes after a reviewed digest is recorded. What should the independent local drift check report?

- **A. The content hash differs from the reviewed template** **Correct.** A digest comparison detects byte changes to the intended reusable executable input.
- **B. No change because the filename stayed the same** An unchanged friendly path can point to different executable template content.
- **C. Automatic compatibility because every YAML file is equivalent** YAML documents can encode materially different steps, permissions and dependencies.
- **D. A successful hosted template expansion without running the provider** Local hashing cannot establish that a remote provider expanded or executed anything.

**Explanation:** A digest comparison detects byte changes to the intended reusable executable input. An unchanged friendly path can point to different executable template content. YAML documents can encode materially different steps, permissions and dependencies. Local hashing cannot establish that a remote provider expanded or executed anything.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q011

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A consumer calls a reusable workflow but also wants its own independent job after it. Which design expresses that relationship?

- **A. Append ordinary steps to the reusable calling job** A reusable workflow call does not accept arbitrary ordinary caller job steps.
- **B. Put the downstream commands in the workflow filename** A path label is not an executable job or dependency declaration.
- **C. Use only a prose note describing expected order** Documentation cannot enforce the required executable scheduling dependency relationship.
- **D. Add a separate dependent job using needs** **Correct.** The reusable call is a job and downstream work uses normal job dependencies.

**Explanation:** The reusable call is a job and downstream work uses normal job dependencies. A reusable workflow call does not accept arbitrary ordinary caller job steps. A path label is not an executable job or dependency declaration. Documentation cannot enforce the required executable scheduling dependency relationship.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The local exercise accepts Release and executes dotnet tests with that configuration. What does this observation actually prove?

- **A. The selected local parameter behavior and tests ran** **Correct.** Local contract execution establishes that behavior without claiming hosted provider template expansion.
- **B. Every Azure hosted agent expanded the template successfully** One local execution does not demonstrate provider compilation on all remote workers.
- **C. The variable group is available to all organizations** A local configuration selection does not grant cross-organization resource access.
- **D. The production environment approved the same release** A local test cannot establish independent provider environment authorization or promotion.

**Explanation:** Local contract execution establishes that behavior without claiming hosted provider template expansion. One local execution does not demonstrate provider compilation on all remote workers. A local test cannot establish independent provider environment authorization or promotion. A local configuration selection does not grant cross-organization resource access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q013

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A dependency graph references a job named analyse, but no such job exists. What should its validator do?

- **A. Use the artifact archive name instead of the job ID** Output labels do not identify an executable graph node automatically.
- **B. Invent the missing job as automatically successful** Fabricating success hides a malformed executable prerequisite rather than validating it.
- **C. Reject the unknown dependency before execution** **Correct.** Every required edge must refer to an actual node in the authored graph.
- **D. Ignore the edge because other jobs are valid** Ignoring an intended dependency changes the required execution ordering contract.

**Explanation:** Every required edge must refer to an actual node in the authored graph. Fabricating success hides a malformed executable prerequisite rather than validating it. Ignoring an intended dependency changes the required execution ordering contract. Output labels do not identify an executable graph node automatically.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q014

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A nonsecret variable group returns BuildConfiguration Debug, while the agreed lab contract requires Release. What result is appropriate?

- **A. Pass after renaming the group to Release** A friendly name does not change the actual variable value being consumed.
- **B. Pass because the variable group has an ID** An identifier proves existence rather than correctness of its returned configuration.
- **C. Reject the actual configuration mismatch** **Correct.** Provider read-back must match the intended consumed configuration rather than only resource existence.
- **D. Pass because nonsecret values never affect behavior** Build options can materially change compilation despite not being confidential credentials.

**Explanation:** Provider read-back must match the intended consumed configuration rather than only resource existence. Build options can materially change compilation despite not being confidential credentials. An identifier proves existence rather than correctness of its returned configuration. A friendly name does not change the actual variable value being consumed.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q015

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A reusable workflow needs contents read but a caller requests broad inherited secrets unnecessarily. What is the better interface default?

- **A. Grant repository administration whenever reuse is enabled** Code reuse does not establish a need for repository administrative authority.
- **B. Declare only specific required secrets and minimum permissions** **Correct.** A narrow explicit contract avoids exposing unrelated authority to reused executable code.
- **C. Always inherit every caller secret for convenience** Broad inheritance exceeds the requirements and enlarges the reusable code trust boundary.
- **D. Store secrets as plain typed workflow inputs** Ordinary input fields are not a substitute for appropriate secret handling channels.

**Explanation:** A narrow explicit contract avoids exposing unrelated authority to reused executable code. Broad inheritance exceeds the requirements and enlarges the reusable code trust boundary. Ordinary input fields are not a substitute for appropriate secret handling channels. Code reuse does not establish a need for repository administrative authority.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q016

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph includes build→test→package→build with no direct self-edge. Why does a self-reference-only validator miss the fault?

```json
[{"job":"build","needs":["package"]},{"job":"test","needs":["build"]},{"job":"package","needs":["test"]}]
```

- **A. Only direct self-edges affect job execution order** Multi-node dependency cycles can block scheduling even without any self-reference.
- **B. A repeated artifact label creates the cycle** This cycle is encoded by job prerequisites rather than artifact naming metadata.
- **C. An indirect cycle still prevents a complete topological ordering** **Correct.** Cycle detection must consider transitive dependency relationships rather than only identical endpoints.
- **D. The graph is valid whenever every job name is unique** Unique nodes do not guarantee that their prerequisite edges form an acyclic graph.

**Explanation:** Cycle detection must consider transitive dependency relationships rather than only identical endpoints. Multi-node dependency cycles can block scheduling even without any self-reference. Unique nodes do not guarantee that their prerequisite edges form an acyclic graph. This cycle is encoded by job prerequisites rather than artifact naming metadata.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q017

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Build completes, then independent lint and test jobs may run together before packaging. What should package require?

- **A. Only the build job because source already compiled** Compilation does not replace explicitly required lint and behavioral test outcomes.
- **B. Both lint and test job completion** **Correct.** Packaging must wait for every mandatory branch of its validation dependency graph.
- **C. Only whichever validation job finishes first** First completion does not establish that the other required validation succeeded.
- **D. No dependencies because the document lists package last** Textual position does not establish the required independent prerequisite relationships.

**Explanation:** Packaging must wait for every mandatory branch of its validation dependency graph. First completion does not establish that the other required validation succeeded. Compilation does not replace explicitly required lint and behavioral test outcomes. Textual position does not establish the required independent prerequisite relationships.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q018

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A central reusable workflow is referenced by a moving main branch. What change supports review of an exact reusable implementation?

- **A. Pin only the calling application source while leaving the shared workflow on main** A stable caller revision does not freeze an independently resolved moving shared workflow reference.
- **B. Rename the caller job to stable-template** A label cannot prevent the referenced branch from selecting changed executable content.
- **C. Pin the reference to a reviewed commit SHA** **Correct.** An immutable reference makes the selected shared executable implementation independently identifiable.
- **D. Add a timestamp comment beside the moving reference** Documentation time does not bind execution to a particular reviewed commit.

**Explanation:** Documentation time does not bind execution to a particular reviewed commit. An immutable reference makes the selected shared executable implementation independently identifiable. A label cannot prevent the referenced branch from selecting changed executable content. A stable caller revision does not freeze an independently resolved moving shared workflow reference.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A template accepts a stepList so approved consumers can add build steps. What review is important before exposing that extension point?

- **A. Assume typed lists cannot contain executable behavior** The purpose of a stepList is to include executable pipeline step definitions.
- **B. Assess what authority the injected executable steps receive** **Correct.** Consumer-supplied steps execute within the selected job identity and available resource boundary.
- **C. Check only whether the injected steps parse successfully** Syntactically valid caller steps can still misuse credentials and privileges available in the selected job.
- **D. Grant more secrets whenever the list grows longer** List size does not justify broader credential exposure to injected executable content.

**Explanation:** The purpose of a stepList is to include executable pipeline step definitions. List size does not justify broader credential exposure to injected executable content. Consumer-supplied steps execute within the selected job identity and available resource boundary. Syntactically valid caller steps can still misuse credentials and privileges available in the selected job.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q020

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A runtime variable is changed in one task, but a template condition already selected jobs earlier. Why does the graph remain unchanged?

- **A. The changed variable requires a different task output name** Naming a runtime output differently does not make it exist during earlier template expansion.
- **B. The graph always updates dynamically after every shell assignment** Pipeline template structure is not rebuilt automatically from arbitrary runtime shell state.
- **C. The template engine must reread every shell assignment as a parameter** Template parameters are not reconstructed automatically from arbitrary assignments after the graph was expanded.
- **D. Runtime mutation cannot retroactively change compiled template structure** **Correct.** The graph was expanded before the task produced its updated variable value.

**Explanation:** Pipeline template structure is not rebuilt automatically from arbitrary runtime shell state. The graph was expanded before the task produced its updated variable value. Naming a runtime output differently does not make it exist during earlier template expansion. Template parameters are not reconstructed automatically from arbitrary assignments after the graph was expanded.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q021

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A local build passes after a reusable template is parsed. What additional evidence is needed to claim hosted template execution?

- **A. Only the consumer and template passing a YAML syntax parser** Syntax validation does not establish that a hosted service compiled and executed the selected call.
- **B. Only a correct new template content digest** Integrity of source content does not establish that a provider ran that exact consumer and template.
- **C. A provider run using the actual consumer and selected template** **Correct.** Local parsing and commands do not establish provider compilation or remote execution behavior.
- **D. Only a successful run of the template author local script** Another local execution still does not demonstrate provider expansion of the actual consumer contract.

**Explanation:** Another local execution still does not demonstrate provider expansion of the actual consumer contract. Local parsing and commands do not establish provider compilation or remote execution behavior. Syntax validation does not establish that a hosted service compiled and executed the selected call. Integrity of source content does not establish that a provider ran that exact consumer and template.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q022

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A caller supplies the string false where a Boolean template input is required. Why should the interface avoid casual string substitution?

- **A. Typed values and strings can have different evaluation semantics** **Correct.** The interface should preserve its declared type rather than depend on implicit conversions.
- **B. Every nonempty string is an encrypted pipeline secret** String representation does not establish confidentiality or appropriate secret storage handling.
- **C. A Boolean input automatically grants resource permissions** Configuration typing does not authorize the identity executing the resulting jobs.
- **D. The caller can correct typing through an artifact display name** Post-execution output labels do not repair a compile-time input type mismatch.

**Explanation:** The interface should preserve its declared type rather than depend on implicit conversions. String representation does not establish confidentiality or appropriate secret storage handling. Configuration typing does not authorize the identity executing the resulting jobs. Post-execution output labels do not repair a compile-time input type mismatch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q023

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A build variable stores Release but the script hardcodes Debug. Which execution contract should the reviewer flag?

- **A. The template must restrict configuration to a single allowed value** Restricting inputs does not connect the declared value to a script that still hardcodes another configuration.
- **B. The variable group should be deleted because nonsecrets are forbidden** Ordinary shared build configuration is a legitimate variable group use case.
- **C. The script must become a production deployment** Connecting configuration to build behavior does not require introducing cloud deployment authority.
- **D. The configured input is not connected to actual build behavior** **Correct.** A declared value proves little when the executed command ignores its intended setting.

**Explanation:** Connecting configuration to build behavior does not require introducing cloud deployment authority. Restricting inputs does not connect the declared value to a script that still hardcodes another configuration. A declared value proves little when the executed command ignores its intended setting. Ordinary shared build configuration is a legitimate variable group use case.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q024

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The callee adds a new required input without a default. Existing callers do not send it. What compatibility issue follows?

- **A. Every caller automatically receives a correct inferred value** The provider cannot infer arbitrary new required consumer intent without a default.
- **B. Artifact hashing silently supplies any missing required input** Content digests identify bytes rather than provide missing parameter values.
- **C. Existing consumers can fail the changed interface contract** **Correct.** A new mandatory argument changes what every existing caller must provide.
- **D. No change matters unless the template filename changes** Interface behavior can change even when its source path remains identical.

**Explanation:** A new mandatory argument changes what every existing caller must provide. The provider cannot infer arbitrary new required consumer intent without a default. Interface behavior can change even when its source path remains identical. Content digests identify bytes rather than provide missing parameter values.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q025

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A graph validator finishes after processing only two of three declared jobs and reports success. What invariant is missing?

```text
Declared jobs: build, test, package
Visited jobs: build, test
Validator result: passed
```

- **A. Every node must run on the same hosted image** Runner selection does not establish whether all prerequisites can be resolved.
- **B. All declared nodes must be included in the topological result** **Correct.** Unprocessed nodes can reveal a cycle or unresolved prerequisite in the graph.
- **C. Every task must upload the same artifact filename** Output naming does not validate complete traversal of the dependency graph.
- **D. Only the first job must have a readable name** Friendly naming does not prove complete ordering of every declared graph node.

**Explanation:** Unprocessed nodes can reveal a cycle or unresolved prerequisite in the graph. Friendly naming does not prove complete ordering of every declared graph node. Runner selection does not establish whether all prerequisites can be resolved. Output naming does not validate complete traversal of the dependency graph.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q026

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The template accepts Release, but its local wrapper always tests Debug. Which verification would catch this broken consumer contract?

- **A. Check only that the template is syntactically valid YAML** Parsing cannot prove that a wrapper uses the selected parameter at execution.
- **B. Compare selected input with the actual executed command configuration** **Correct.** The exercise must show that the accepted parameter controls concrete build behavior.
- **C. Check only that a TRX file exists somewhere** A report can belong to an unintended configuration or earlier execution.
- **D. Check only that Production is rejected** Negative input rejection does not establish correct behavior for accepted inputs.

**Explanation:** The exercise must show that the accepted parameter controls concrete build behavior. Parsing cannot prove that a wrapper uses the selected parameter at execution. A report can belong to an unintended configuration or earlier execution. Negative input rejection does not establish correct behavior for accepted inputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q027

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A variable group should be shared with one approved pipeline while other project pipelines remain denied. What proves that boundary?

- **A. A group friendly name containing private** Labels do not enforce resource authorization for consuming pipeline identities.
- **B. A project-wide unrestricted connection for convenience** Blanket access conflicts with the explicitly limited intended consumer boundary.
- **C. Specific pipeline authorization plus absence of blanket authorization** **Correct.** The required consumer access must coexist with restrictions on unrelated workloads.
- **D. A successful local echo of the desired configuration** Local output does not show provider resource consumption rights or denial behavior.

**Explanation:** The required consumer access must coexist with restrictions on unrelated workloads. Labels do not enforce resource authorization for consuming pipeline identities. Local output does not show provider resource consumption rights or denial behavior. Blanket access conflicts with the explicitly limited intended consumer boundary.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q028

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A nested reusable workflow needs a secret that only its direct caller received. What must the calling chain provide?

- **A. Explicit secret forwarding at each required reuse boundary** **Correct.** Secrets do not automatically transit every nested call without the appropriate forwarding contract.
- **B. Only the outermost caller repository write permission** Source mutation authority does not forward an absent secret to a nested callee.
- **C. A matching display name across all nested jobs** Labels cannot propagate credential values through separate reusable execution interfaces.
- **D. An artifact whose filename equals the secret name** Artifact naming is not a supported credential propagation channel.

**Explanation:** Secrets do not automatically transit every nested call without the appropriate forwarding contract. Labels cannot propagate credential values through separate reusable execution interfaces. Source mutation authority does not forward an absent secret to a nested callee. Artifact naming is not a supported credential propagation channel.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q029

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

The template digest matches, but tests fail because the sample behavior changed. How should the result be interpreted?

- **A. The test report should be replaced with the earlier success** Using unrelated evidence conceals the current actual failing candidate result.
- **B. The digest proves tests must have passed** A content hash does not encode the outcome of later application behavioral tests.
- **C. The template reference should be renamed to make tests valid** Changing a label cannot correct the measured application assertion failure.
- **D. Template integrity passed while application behavior failed** **Correct.** A stable template identity does not guarantee every changed application will satisfy its assertions.

**Explanation:** A stable template identity does not guarantee every changed application will satisfy its assertions. A content hash does not encode the outcome of later application behavioral tests. Using unrelated evidence conceals the current actual failing candidate result. Changing a label cannot correct the measured application assertion failure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q030

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The consumer supplies configuration Release and the template allows it, but references a nonexistent solution path. What should validation distinguish?

- **A. Valid parameter binding from invalid executable file references** **Correct.** An accepted input does not prove every downstream command references an existing source file.
- **B. A nonexistent path is harmless if the artifact name is correct** Output naming cannot supply source inputs required for actual compilation.
- **C. Every accepted input guarantees all generated paths exist** Template interfaces cannot automatically establish the repository content referenced by arbitrary commands.
- **D. Only a production environment can validate source file existence** Local source path inspection does not require deployment environment authorization.

**Explanation:** An accepted input does not prove every downstream command references an existing source file. Template interfaces cannot automatically establish the repository content referenced by arbitrary commands. Local source path inspection does not require deployment environment authorization. Output naming cannot supply source inputs required for actual compilation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q031

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The local fault adds package as a build prerequisite while package already depends on test→build. What evidence should establish successful detection?

```text
Before: build -> test -> package
Fault adds: package -> build
```

- **A. Any exception from an unavailable provider CLI** An unrelated tooling failure does not prove the graph validator detected the injected cycle.
- **B. A pass recorded before the fault was introduced** Earlier healthy evidence does not demonstrate rejection of the new invalid state.
- **C. Only the JSON file modification timestamp** A changed timestamp does not demonstrate that the invalid graph was rejected.
- **D. The named assertion fails because no complete ordering exists** **Correct.** The failure must correspond to the actual indirect dependency cycle introduced by the trigger.

**Explanation:** The failure must correspond to the actual indirect dependency cycle introduced by the trigger. An unrelated tooling failure does not prove the graph validator detected the injected cycle. A changed timestamp does not demonstrate that the invalid graph was rejected. Earlier healthy evidence does not demonstrate rejection of the new invalid state.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q032

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The caller grants contents read and the callee requests contents write. What limitation must the shared workflow author honor?

- **A. The callee filename determines its token role** Source naming does not establish the authority of the workflow token.
- **B. Every called workflow automatically receives write permission** Reuse does not provide an automatic repository mutation capability grant.
- **C. The callee cannot elevate the caller permission boundary** **Correct.** Reusable calls can preserve or reduce authority rather than unilaterally expand it.
- **D. The author personal GitHub role overrides workflow token restrictions** Personal account authority is not automatically inherited by the job token.

**Explanation:** Reusable calls can preserve or reduce authority rather than unilaterally expand it. Reuse does not provide an automatic repository mutation capability grant. Source naming does not establish the authority of the workflow token. Personal account authority is not automatically inherited by the job token.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q033

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable build accepts configuration but hardcodes the artifact output path required by consumers. What interface change is breaking?

- **A. Retaining the same paths and permitted configuration values** Preserving consumed behavior avoids the specific output contract change described.
- **B. Adding explanatory comments without executable changes** Documentation additions alone do not change the consumed output behavior or location.
- **C. Changing that required output location without consumer migration** **Correct.** Consumers depend on output contracts as well as accepted input parameter names.
- **D. Improving local assertion messages while retaining behavior** Clearer diagnosis does not inherently break the consumer input or output contract.

**Explanation:** Consumers depend on output contracts as well as accepted input parameter names. Documentation additions alone do not change the consumed output behavior or location. Clearer diagnosis does not inherently break the consumer input or output contract. Preserving consumed behavior avoids the specific output contract change described.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q034

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A task writes a variable using task.setvariable. Why should a later separate job not assume ordinary variable access automatically works?

- **A. Cross-job values need explicit output and dependency mapping** **Correct.** Job boundaries require a supported data propagation contract rather than process-local assumptions.
- **B. The project must grant organization-wide administrative authority first** Broad privileges do not create the missing output variable data relationship.
- **C. All pipeline variables are immutable encrypted secrets** Variables differ in purpose and timing rather than all being secret immutable values.
- **D. Changing the variable group friendly name forwards the value** Resource naming does not establish a cross-job runtime output mapping.

**Explanation:** Job boundaries require a supported data propagation contract rather than process-local assumptions. Variables differ in purpose and timing rather than all being secret immutable values. Broad privileges do not create the missing output variable data relationship. Resource naming does not establish a cross-job runtime output mapping.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q035

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A reviewer sees a passing local build and unchanged template SHA but no hosted consumer run. Which statement is supportable?

- **A. The template is automatically safe for all possible callers** One exercised input cannot prove correctness for arbitrary future consumer configurations.
- **B. Local behavior and template integrity passed; hosted expansion remains unverified** **Correct.** The evidence supports the exercised local boundaries without claiming an unexecuted provider operation.
- **C. Every hosted service validated the exact template successfully** A local result cannot demonstrate execution by providers that were never invoked.
- **D. All remote deployment environments have approved the template** Build execution does not establish independent environment authorization or release approval.

**Explanation:** The evidence supports the exercised local boundaries without claiming an unexecuted provider operation. A local result cannot demonstrate execution by providers that were never invoked. One exercised input cannot prove correctness for arbitrary future consumer configurations. Build execution does not establish independent environment authorization or release approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q036

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The team wants central build consistency but permits arbitrary caller shell steps under a publishing credential. What design risk requires review?

- **A. Only whether publishing credentials are masked in logs** Masking does not prevent executable caller-supplied steps from using credentials exposed to their process.
- **B. The extension point can execute untrusted code with privileged authority** **Correct.** Reusable convenience must preserve the identity and credential boundary of injected executable content.
- **C. Only whether injected scripts return successful exit codes** Successful termination does not prove that privileged injected code respected the intended authority boundary.
- **D. Only whether the central template is pinned to a SHA** A stable central implementation does not constrain separately injected caller code using its privileged job identity.

**Explanation:** A stable central implementation does not constrain separately injected caller code using its privileged job identity. Reusable convenience must preserve the identity and credential boundary of injected executable content. Successful termination does not prove that privileged injected code respected the intended authority boundary. Masking does not prevent executable caller-supplied steps from using credentials exposed to their process.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q037

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Two graph nodes share the same job identifier. Why should validation reject them before topological sorting?

- **A. Duplicate identities make dependency targets ambiguous** **Correct.** The graph must distinguish every executable node before its edges can resolve reliably.
- **B. The file size is necessarily above the provider limit** Two repeated identifiers do not establish that any document size limit was exceeded.
- **C. Duplicate names always improve concurrent execution speed** Ambiguous identity does not provide a valid or guaranteed scheduling optimization.
- **D. Unique artifact names would repair duplicate job identities** Artifact identity does not disambiguate the executable nodes referenced by dependency edges.

**Explanation:** The graph must distinguish every executable node before its edges can resolve reliably. Ambiguous identity does not provide a valid or guaranteed scheduling optimization. Two repeated identifiers do not establish that any document size limit was exceeded. Artifact identity does not disambiguate the executable nodes referenced by dependency edges.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q038

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The reusable workflow exists at a reviewed SHA, but a caller repository lacks access to its private source. What prerequisite is missing?

- **A. Authorized access to the private reusable workflow source** **Correct.** An exact reference identifies code but does not grant the caller permission to consume it.
- **B. An additional .NET coverage collector** Test instrumentation cannot grant access to another private repository resource.
- **C. A locally valid input contract with no repository access grant** Interface validity does not authorize the provider to read a private executable workflow source.
- **D. A more descriptive local directory name** Local naming does not establish provider authorization to the private template source.

**Explanation:** Interface validity does not authorize the provider to read a private executable workflow source. Test instrumentation cannot grant access to another private repository resource. Local naming does not establish provider authorization to the private template source. An exact reference identifies code but does not grant the caller permission to consume it.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q039

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A parameter should accept only two configurations and reject arbitrary deployment targets. Which interface provides enforceable accepted choices?

- **A. An artifact name that contains both expected values** Output naming does not restrict the earlier accepted consumer parameter space.
- **B. A typed string parameter with explicit allowed values** **Correct.** The declaration restricts the caller to the reviewed supported configuration set.
- **C. A comment listing preferred spellings beside an unconstrained input** Prose guidance does not enforce the allowed values against executable caller input.
- **D. A runtime log stating all inputs are safe** An assertion of trust does not validate the supplied value against the contract.

**Explanation:** The declaration restricts the caller to the reviewed supported configuration set. Prose guidance does not enforce the allowed values against executable caller input. An assertion of trust does not validate the supplied value against the contract. Output naming does not restrict the earlier accepted consumer parameter space.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q040

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A repaired DAG passes its graph assertion but execution-order.txt still lists the old wrong sequence. What should final validation do?

- **A. Delete the order file and infer the intended order** Removing evidence does not establish the actual retained execution relationship.
- **B. Pass because one of several assertions succeeded** A partial success does not satisfy every required independent checkpoint invariant.
- **C. Rename the package job without updating dependencies** Changing identity without coherent edges can introduce further graph validation problems.
- **D. Reject the inconsistent retained execution evidence** **Correct.** Healthy source structure and retained ordering evidence must agree about the required behavior.

**Explanation:** Healthy source structure and retained ordering evidence must agree about the required behavior. A partial success does not satisfy every required independent checkpoint invariant. Removing evidence does not establish the actual retained execution relationship. Changing identity without coherent edges can introduce further graph validation problems.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q041

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A central workflow update removes a required artifact while preserving input names and test success. How should compatibility review assess it?

- **A. Let every consumer silently rebuild different artifacts instead** Undocumented rebuilds change downstream assumptions and can abandon immutable promotion requirements.
- **B. Increase token permissions to recreate the missing interface** Authority cannot restore an output that the shared implementation no longer produces.
- **C. Assume unchanged inputs guarantee full backwards compatibility** A stable parameter list does not preserve removed files or output behavior.
- **D. Treat the consumed output removal as a breaking contract change** **Correct.** Consumer compatibility includes required outputs rather than only accepted input spellings.

**Explanation:** Consumer compatibility includes required outputs rather than only accepted input spellings. A stable parameter list does not preserve removed files or output behavior. Undocumented rebuilds change downstream assumptions and can abandon immutable promotion requirements. Authority cannot restore an output that the shared implementation no longer produces.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A compile-time parameter selects a service connection name under caller control. The central template runs privileged tasks. What additional boundary must enforce authorization?

- **A. Only a successful local template parse** Syntax validation does not prove access authorization or independent protected resource approval.
- **B. Only the caller chosen display name for the connection** Caller-controlled naming does not establish trusted permission to consume the resource.
- **C. Only a nonempty string check on the parameter** Nonempty arbitrary input does not establish an approved authorized privileged resource choice.
- **D. Provider resource permissions and checks outside caller-editable YAML** **Correct.** Input validation cannot let evaluated code authorize itself to powerful external resources.

**Explanation:** Input validation cannot let evaluated code authorize itself to powerful external resources. Caller-controlled naming does not establish trusted permission to consume the resource. Nonempty arbitrary input does not establish an approved authorized privileged resource choice. Syntax validation does not prove access authorization or independent protected resource approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q043

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Build feeds both lint and tests, while package requires both. Which computation determines the theoretical duration under sufficient agents?

```text
build=40s
lint=20s after build
test=30s after build
package=10s after lint+test
```

- **A. The sum of every duration regardless of parallel edges** That models serial work even where declared independent jobs may execute concurrently.
- **B. Only the duration of the final package task** The final node still waits for its complete required upstream dependency chain.
- **C. The longest dependency path rather than all durations summed** **Correct.** Independent branches can overlap while the critical prerequisite chain bounds completion time.
- **D. The number of YAML lines multiplied by agent count** Document length is not an execution-duration model for the authored dependency graph.

**Explanation:** Independent branches can overlap while the critical prerequisite chain bounds completion time. That models serial work even where declared independent jobs may execute concurrently. The final node still waits for its complete required upstream dependency chain. Document length is not an execution-duration model for the authored dependency graph.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q044

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A template migration changes a runtime variable to a compile-time parameter. Existing callers compute it from test results. What must migration address?

- **A. Only whether the template accepts the existing variable name** A matching name cannot supply a test result before the test executes at runtime.
- **B. Only whether every consumer explicitly declares the new parameter** Declaring an input does not make a later runtime-generated value available for compile-time evaluation.
- **C. The value is unavailable when the new parameter must be expanded** **Correct.** A later runtime result cannot directly supply an earlier compile-time structural decision.
- **D. Only whether both old and new declarations use string values** Matching representation does not solve the fact that the value is produced after template expansion.

**Explanation:** Matching representation does not solve the fact that the value is produced after template expansion. A matching name cannot supply a test result before the test executes at runtime. A later runtime result cannot directly supply an earlier compile-time structural decision. Declaring an input does not make a later runtime-generated value available for compile-time evaluation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q045

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A nested reusable chain retains a moving branch reference deep inside despite the top caller being pinned. What remains mutable?

- **A. The nested executable dependency selected by that moving reference** **Correct.** Pinning the outer caller does not freeze independently resolved moving references inside it.
- **B. The source SHA stored for earlier completed runs changes retroactively** Past exact source identities do not change when a separate branch later advances.
- **C. The caller permission automatically expands to administrator** Reference movement is supply-chain drift rather than an automatic token authority grant.
- **D. Every previously produced immutable artifact automatically changes bytes** A moving source reference does not rewrite already retained immutable artifact content.

**Explanation:** Pinning the outer caller does not freeze independently resolved moving references inside it. A moving source reference does not rewrite already retained immutable artifact content. Past exact source identities do not change when a separate branch later advances. Reference movement is supply-chain drift rather than an automatic token authority grant.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q046

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A centrally managed group holds a secret, while callers can execute arbitrary jobs. Which design reduces unnecessary secret exposure?

- **A. Expose the group to every pipeline because masking is enabled** Masking does not stop arbitrary authorized code from using an available secret.
- **B. Authorize only intended consumers and map secrets to the consuming task** **Correct.** Resource access and process exposure should follow the specific credential requirement.
- **C. Convert the secret into an ordinary compile-time parameter** Template expansion is not an appropriate replacement for scoped confidential value handling.
- **D. Copy the secret into the retained template digest file** A content identity record must not become a container for credential material.

**Explanation:** Resource access and process exposure should follow the specific credential requirement. Masking does not stop arbitrary authorized code from using an available secret. Template expansion is not an appropriate replacement for scoped confidential value handling. A content identity record must not become a container for credential material.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops)

## L11-Q047

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A validator accepts one valid component but ignores a disconnected cyclic component. Which complete invariant would catch this defect?

```text
Component A: build -> test
Component B: x -> y -> x
Visited: build,test
```

- **A. Only the component containing the build label matters** Other declared executable nodes remain part of the required graph validation contract.
- **B. Only edges drawn left-to-right can represent real dependencies** Graph layout direction does not determine executable prerequisite relationships or cycles.
- **C. Only artifact-producing nodes need ordering validation** Non-artifact jobs can still create cycles that prevent required execution from completing.
- **D. Every declared node must be processed without unresolved dependencies** **Correct.** A successful partial traversal cannot prove the entire authored graph is acyclic.

**Explanation:** A successful partial traversal cannot prove the entire authored graph is acyclic. Other declared executable nodes remain part of the required graph validation contract. Graph layout direction does not determine executable prerequisite relationships or cycles. Non-artifact jobs can still create cycles that prevent required execution from completing.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q048

Advanced · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A shared template is pinned and locally tested, but its caller can inject unrestricted privileged steps and production lacks checks. Which release claim is defensible?

- **A. Local test success proves independent production approval occurred** Behavioral tests do not establish owner-controlled authorization on a remote environment.
- **B. The template hash automatically revokes every exposed credential** Integrity checking does not perform credential lifecycle remediation or privilege revocation.
- **C. Reuse is repeatable but its execution and approval boundaries remain unsafe** **Correct.** Stable code identity does not compensate for privileged injection or absent protected approvals.
- **D. Pinning alone proves any injected caller code is trusted** An exact dependency reference does not authorize arbitrary separately supplied executable content.

**Explanation:** Stable code identity does not compensate for privileged injection or absent protected approvals. An exact dependency reference does not authorize arbitrary separately supplied executable content. Behavioral tests do not establish owner-controlled authorization on a remote environment. Integrity checking does not perform credential lifecycle remediation or privilege revocation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q049

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Release and Debug consumers both pass contract tests, but a new optional field changes the default for omitted inputs. What compatibility question matters?

- **A. Whether existing callers relying on omission retain their expected behavior** **Correct.** A changed default can alter consumers even when their explicit arguments remain valid.
- **B. Whether tests cover only callers that explicitly pass Release or Debug** Explicit callers do not exercise the omitted-input default whose semantics changed in this update.
- **C. Whether the new YAML remains syntactically valid** Parsing does not establish preserved behavior for consumers that rely on the changed default value.
- **D. Whether a caller using only explicit arguments still succeeds** That success leaves the affected omitted-input consumer path untested despite the default change.

**Explanation:** Explicit callers do not exercise the omitted-input default whose semantics changed in this update. That success leaves the affected omitted-input consumer path untested despite the default change. A changed default can alter consumers even when their explicit arguments remain valid. Parsing does not establish preserved behavior for consumers that rely on the changed default value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops)

## L11-Q050

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A caller pins one shared workflow SHA and a consumer contract records its outputs. What evidence best supports a controlled shared upgrade?

- **A. Compare only the new template allowed input names** An unchanged input list does not prove the required consumer outputs and executable behavior remain compatible.
- **B. Review the new SHA diff and run representative input/output consumer tests** **Correct.** Controlled upgrades should verify changed implementation and preserved consumed behavior before adoption.
- **C. Delete the earlier consumer contract after changing the reference** Removing expectations prevents rather than establishes meaningful compatibility verification.
- **D. Move every caller to latest without checking consumed output changes** An unreviewed moving upgrade abandons the known executable and compatibility boundary.

**Explanation:** Controlled upgrades should verify changed implementation and preserved consumed behavior before adoption. An unreviewed moving upgrade abandons the known executable and compatibility boundary. An unchanged input list does not prove the required consumer outputs and executable behavior remain compatible. Removing expectations prevents rather than establishes meaningful compatibility verification.

**Sources:** [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)
