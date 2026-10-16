# Lab 10 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L10-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which next change most directly satisfies the stated requirement?

- **A. Use a unique run identity and record source revision metadata** Operational labels should support unambiguous build traceability. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **B. Restore scoped GitHub app authorization for that repository** **Correct.** The pipeline needs an authorized repository connection. This directly addresses the constraint stated in this case.
- **C. Define an explicit CI trigger for the intended branches** Manual success does not establish automatic scheduling. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** The pipeline needs an authorized repository connection. The selected answer is restore scoped GitHub app authorization for that repository.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q002

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which explanation best accounts for the behavior or constraint described?

- **A. A repeated friendly label is not a unique build identifier** Different outputs can appear to be the same build. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **B. The source integration no longer has repository access** **Correct.** YAML correctness cannot overcome denied source authorization. This directly addresses the constraint stated in this case.
- **C. The trigger configuration excludes push-based execution** Queueing and build behavior are independent concerns. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** YAML correctness cannot overcome denied source authorization. The selected answer is the source integration no longer has repository access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q003

Applied · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A matching push starts a run and an excluded push does not** Trigger behavior needs positive and negative evidence. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.
- **B. The artifact resolves to one run and exact commit** The lookup must establish a single provenance chain. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **C. A pipeline run checks out the intended private commit** **Correct.** The test must verify the authenticated source path. This directly addresses the constraint stated in this case.

**Explanation:** The test must verify the authenticated source path. The selected answer is a pipeline run checks out the intended private commit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q004

Applied · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not treat a display number as the only content identifier** Human labels can be configured independently of artifact bytes. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **B. Authorize only the participating repository rather than the whole account** **Correct.** Repository selection limits the connector's trust scope. This directly addresses the constraint stated in this case.
- **C. Review organization settings that affect implied YAML triggers** Service configuration can influence default trigger behavior. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** Repository selection limits the connector's trust scope. The selected answer is authorize only the participating repository rather than the whole account.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q005

Advanced · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. The team selects this remedy: "Restore scoped GitHub app authorization for that repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. External integration depends on installation ownership and lifecycle** **Correct.** Account and repository changes may require reauthorization. This directly addresses the constraint stated in this case.
- **B. Explicit triggers need maintenance when branch conventions change** A renamed branch may fall outside the intended scope. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.
- **C. Readable version labels and immutable identity serve different needs** Keep both when users need chronology and exact provenance. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.

**Explanation:** Account and repository changes may require reauthorization. The selected answer is external integration depends on installation ownership and lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q006

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which next change most directly satisfies the stated requirement?

- **A. Restore scoped GitHub app authorization for that repository** The pipeline needs an authorized repository connection. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **B. Define an explicit CI trigger for the intended branches** **Correct.** Manual success does not establish automatic scheduling. This directly addresses the constraint stated in this case.
- **C. Include shared build inputs in the path filter** Validation scope must cover indirect build dependencies. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Manual success does not establish automatic scheduling. The selected answer is define an explicit CI trigger for the intended branches.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q007

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which explanation best accounts for the behavior or constraint described?

- **A. The filter tracks service files but omits shared dependencies** A path rule cannot infer semantic relationships. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **B. The source integration no longer has repository access** YAML correctness cannot overcome denied source authorization. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. The trigger configuration excludes push-based execution** **Correct.** Queueing and build behavior are independent concerns. This directly addresses the constraint stated in this case.

**Explanation:** Queueing and build behavior are independent concerns. The selected answer is the trigger configuration excludes push-based execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q008

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Changing the shared script schedules the dependent service pipeline** The formerly missed input must now trigger validation. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **B. A pipeline run checks out the intended private commit** The test must verify the authenticated source path. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. A matching push starts a run and an excluded push does not** **Correct.** Trigger behavior needs positive and negative evidence. This directly addresses the constraint stated in this case.

**Explanation:** Trigger behavior needs positive and negative evidence. The selected answer is a matching push starts a run and an excluded push does not.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q009

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize only the participating repository rather than the whole account** Repository selection limits the connector's trust scope. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **B. Review organization settings that affect implied YAML triggers** **Correct.** Service configuration can influence default trigger behavior. This directly addresses the constraint stated in this case.
- **C. Test representative included and excluded paths** Broad corrections can unintentionally rebuild every service. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Service configuration can influence default trigger behavior. The selected answer is review organization settings that affect implied YAML triggers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q010

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. The team selects this remedy: "Define an explicit CI trigger for the intended branches." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More complete filters may schedule additional work** The cost buys coverage of genuine dependencies. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **B. External integration depends on installation ownership and lifecycle** Account and repository changes may require reauthorization. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. Explicit triggers need maintenance when branch conventions change** **Correct.** A renamed branch may fall outside the intended scope. This directly addresses the constraint stated in this case.

**Explanation:** A renamed branch may fall outside the intended scope. The selected answer is explicit triggers need maintenance when branch conventions change.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which next change most directly satisfies the stated requirement?

- **A. Include shared build inputs in the path filter** **Correct.** Validation scope must cover indirect build dependencies. This directly addresses the constraint stated in this case.
- **B. Use the actual authorized service connection identifier** Task configuration must reference an available project resource. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. Define an explicit CI trigger for the intended branches** Manual success does not establish automatic scheduling. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** Validation scope must cover indirect build dependencies. The selected answer is include shared build inputs in the path filter.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which explanation best accounts for the behavior or constraint described?

- **A. The filter tracks service files but omits shared dependencies** **Correct.** A path rule cannot infer semantic relationships. This directly addresses the constraint stated in this case.
- **B. YAML parsing does not validate every external resource relationship** The task can parse while its dependency is unresolved. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. The trigger configuration excludes push-based execution** Queueing and build behavior are independent concerns. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** A path rule cannot infer semantic relationships. The selected answer is the filter tracks service files but omits shared dependencies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q013

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Changing the shared script schedules the dependent service pipeline** **Correct.** The formerly missed input must now trigger validation. This directly addresses the constraint stated in this case.
- **B. The task authenticates through the intended project connection** Execution verifies the resource reference and authorization. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. A matching push starts a run and an excluded push does not** Trigger behavior needs positive and negative evidence. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.

**Explanation:** The formerly missed input must now trigger validation. The selected answer is changing the shared script schedules the dependent service pipeline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q014

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize the specific pipeline rather than every pipeline by default** Shared resource access should remain controlled. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **B. Review organization settings that affect implied YAML triggers** Service configuration can influence default trigger behavior. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.
- **C. Test representative included and excluded paths** **Correct.** Broad corrections can unintentionally rebuild every service. This directly addresses the constraint stated in this case.

**Explanation:** Broad corrections can unintentionally rebuild every service. The selected answer is test representative included and excluded paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. The team selects this remedy: "Include shared build inputs in the path filter." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Connection names form an operational dependency** Renaming them can require coordinated pipeline changes. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **B. Explicit triggers need maintenance when branch conventions change** A renamed branch may fall outside the intended scope. That addresses a different requirement: No automatic CI. It does not directly resolve this case's stated constraint.
- **C. More complete filters may schedule additional work** **Correct.** The cost buys coverage of genuine dependencies. This directly addresses the constraint stated in this case.

**Explanation:** The cost buys coverage of genuine dependencies. The selected answer is more complete filters may schedule additional work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q016

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which next change most directly satisfies the stated requirement?

- **A. Include shared build inputs in the path filter** Validation scope must cover indirect build dependencies. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **B. Use the actual authorized service connection identifier** **Correct.** Task configuration must reference an available project resource. This directly addresses the constraint stated in this case.
- **C. Publish the supported result format from the correct path** The pipeline needs a reporting step for generated evidence. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.

**Explanation:** Task configuration must reference an available project resource. The selected answer is use the actual authorized service connection identifier.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q017

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which explanation best accounts for the behavior or constraint described?

- **A. Producing a result file does not automatically publish it** Execution and result ingestion are separate operations. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **B. The filter tracks service files but omits shared dependencies** A path rule cannot infer semantic relationships. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **C. YAML parsing does not validate every external resource relationship** **Correct.** The task can parse while its dependency is unresolved. This directly addresses the constraint stated in this case.

**Explanation:** The task can parse while its dependency is unresolved. The selected answer is yAML parsing does not validate every external resource relationship.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The run summary shows the expected test cases and failures** The correct report must reach the test reporting surface. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **B. Changing the shared script schedules the dependent service pipeline** The formerly missed input must now trigger validation. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **C. The task authenticates through the intended project connection** **Correct.** Execution verifies the resource reference and authorization. This directly addresses the constraint stated in this case.

**Explanation:** Execution verifies the resource reference and authorization. The selected answer is the task authenticates through the intended project connection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which execution safeguard most directly addresses the risk in this case?

- **A. Authorize the specific pipeline rather than every pipeline by default** **Correct.** Shared resource access should remain controlled. This directly addresses the constraint stated in this case.
- **B. Publish diagnostics even on failure without masking failed status** Reporting should aid diagnosis while preserving the gate. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **C. Test representative included and excluded paths** Broad corrections can unintentionally rebuild every service. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Shared resource access should remain controlled. The selected answer is authorize the specific pipeline rather than every pipeline by default.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q020

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. The team selects this remedy: "Use the actual authorized service connection identifier." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More complete filters may schedule additional work** The cost buys coverage of genuine dependencies. That addresses a different requirement: Path filter surprise. It does not directly resolve this case's stated constraint.
- **B. Connection names form an operational dependency** **Correct.** Renaming them can require coordinated pipeline changes. This directly addresses the constraint stated in this case.
- **C. Report paths and formats are part of the task contract** Changing the test runner may require publication updates. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.

**Explanation:** Renaming them can require coordinated pipeline changes. The selected answer is connection names form an operational dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q021

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which next change most directly satisfies the stated requirement?

- **A. Bind artifact download to the intended producing run** Names alone do not uniquely identify build provenance. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. Use the actual authorized service connection identifier** Task configuration must reference an available project resource. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. Publish the supported result format from the correct path** **Correct.** The pipeline needs a reporting step for generated evidence. This directly addresses the constraint stated in this case.

**Explanation:** The pipeline needs a reporting step for generated evidence. The selected answer is publish the supported result format from the correct path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q022

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which explanation best accounts for the behavior or constraint described?

- **A. Producing a result file does not automatically publish it** **Correct.** Execution and result ingestion are separate operations. This directly addresses the constraint stated in this case.
- **B. The download selection is not tied to the validated build** A newer or unrelated run can satisfy a loose selector. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **C. YAML parsing does not validate every external resource relationship** The task can parse while its dependency is unresolved. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.

**Explanation:** Execution and result ingestion are separate operations. The selected answer is producing a result file does not automatically publish it.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q023

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release records the expected build and artifact identity** The evidence should match the approved source revision. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. The task authenticates through the intended project connection** Execution verifies the resource reference and authorization. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. The run summary shows the expected test cases and failures** **Correct.** The correct report must reach the test reporting surface. This directly addresses the constraint stated in this case.

**Explanation:** The correct report must reach the test reporting surface. The selected answer is the run summary shows the expected test cases and failures.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q024

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which execution safeguard most directly addresses the risk in this case?

- **A. Check source branch and run provenance before deployment** A matching artifact name does not establish trust. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. Authorize the specific pipeline rather than every pipeline by default** Shared resource access should remain controlled. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.
- **C. Publish diagnostics even on failure without masking failed status** **Correct.** Reporting should aid diagnosis while preserving the gate. This directly addresses the constraint stated in this case.

**Explanation:** Reporting should aid diagnosis while preserving the gate. The selected answer is publish diagnostics even on failure without masking failed status.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q025

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. The team selects this remedy: "Publish the supported result format from the correct path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Report paths and formats are part of the task contract** **Correct.** Changing the test runner may require publication updates. This directly addresses the constraint stated in this case.
- **B. Explicit run selection requires promotion metadata** That metadata supports reproducibility and rollback. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **C. Connection names form an operational dependency** Renaming them can require coordinated pipeline changes. That addresses a different requirement: Task input error. It does not directly resolve this case's stated constraint.

**Explanation:** Changing the test runner may require publication updates. The selected answer is report paths and formats are part of the task contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q026

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which next change most directly satisfies the stated requirement?

- **A. Publish the supported result format from the correct path** The pipeline needs a reporting step for generated evidence. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **B. Bind artifact download to the intended producing run** **Correct.** Names alone do not uniquely identify build provenance. This directly addresses the constraint stated in this case.
- **C. Evaluate Azure Pipelines integration with GitHub before changing platforms** Source hosting does not force a particular CI engine. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.

**Explanation:** Names alone do not uniquely identify build provenance. The selected answer is bind artifact download to the intended producing run.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q027

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which explanation best accounts for the behavior or constraint described?

- **A. The decision assumes code and pipeline must share a platform** Supported integration allows cross-platform composition. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.
- **B. Producing a result file does not automatically publish it** Execution and result ingestion are separate operations. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **C. The download selection is not tied to the validated build** **Correct.** A newer or unrelated run can satisfy a loose selector. This directly addresses the constraint stated in this case.

**Explanation:** A newer or unrelated run can satisfy a loose selector. The selected answer is the download selection is not tied to the validated build.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q028

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which observation provides the strongest evidence that the requested result was achieved?

- **A. GitHub changes build through the existing governed Azure pipeline** The proof should include existing network and governance requirements. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.
- **B. The run summary shows the expected test cases and failures** The correct report must reach the test reporting surface. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **C. The release records the expected build and artifact identity** **Correct.** The evidence should match the approved source revision. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should match the approved source revision. The selected answer is the release records the expected build and artifact identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q029

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which execution safeguard most directly addresses the risk in this case?

- **A. Publish diagnostics even on failure without masking failed status** Reporting should aid diagnosis while preserving the gate. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **B. Check source branch and run provenance before deployment** **Correct.** A matching artifact name does not establish trust. This directly addresses the constraint stated in this case.
- **C. Assess integration identity and permissions during the trial** Cross-platform access adds a trust relationship. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.

**Explanation:** A matching artifact name does not establish trust. The selected answer is check source branch and run provenance before deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q030

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. The team selects this remedy: "Bind artifact download to the intended producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Report paths and formats are part of the task contract** Changing the test runner may require publication updates. That addresses a different requirement: Unpublished Azure test results. It does not directly resolve this case's stated constraint.
- **B. Explicit run selection requires promotion metadata** **Correct.** That metadata supports reproducibility and rollback. This directly addresses the constraint stated in this case.
- **C. Keeping two platforms increases integration administration** Migration may reduce tools but can lose established capabilities. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.

**Explanation:** That metadata supports reproducibility and rollback. The selected answer is explicit run selection requires promotion metadata.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q031

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which next change most directly satisfies the stated requirement?

- **A. Evaluate Azure Pipelines integration with GitHub before changing platforms** **Correct.** Source hosting does not force a particular CI engine. This directly addresses the constraint stated in this case.
- **B. Configure validation for the actual repository provider** Trigger capabilities depend on the repository integration. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **C. Bind artifact download to the intended producing run** Names alone do not uniquely identify build provenance. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.

**Explanation:** Source hosting does not force a particular CI engine. The selected answer is evaluate Azure Pipelines integration with GitHub before changing platforms.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q032

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which explanation best accounts for the behavior or constraint described?

- **A. Repository providers do not share identical PR validation configuration** A copied rule may not apply in the new source context. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **B. The download selection is not tied to the validated build** A newer or unrelated run can satisfy a loose selector. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **C. The decision assumes code and pipeline must share a platform** **Correct.** Supported integration allows cross-platform composition. This directly addresses the constraint stated in this case.

**Explanation:** Supported integration allows cross-platform composition. The selected answer is the decision assumes code and pipeline must share a platform.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q033

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The release records the expected build and artifact identity** The evidence should match the approved source revision. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. GitHub changes build through the existing governed Azure pipeline** **Correct.** The proof should include existing network and governance requirements. This directly addresses the constraint stated in this case.
- **C. A test pull request produces the expected validation status** The behavior must be checked against the actual provider. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The proof should include existing network and governance requirements. The selected answer is gitHub changes build through the existing governed Azure pipeline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q034

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which execution safeguard most directly addresses the risk in this case?

- **A. Check source branch and run provenance before deployment** A matching artifact name does not establish trust. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. Assess integration identity and permissions during the trial** **Correct.** Cross-platform access adds a trust relationship. This directly addresses the constraint stated in this case.
- **C. Protect the target branch with the appropriate required validation** A triggered run must also participate in merge governance. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Cross-platform access adds a trust relationship. The selected answer is assess integration identity and permissions during the trial.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q035

Advanced · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. The team selects this remedy: "Evaluate Azure Pipelines integration with GitHub before changing platforms." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Explicit run selection requires promotion metadata** That metadata supports reproducibility and rollback. That addresses a different requirement: Artifact confusion. It does not directly resolve this case's stated constraint.
- **B. Keeping two platforms increases integration administration** **Correct.** Migration may reduce tools but can lose established capabilities. This directly addresses the constraint stated in this case.
- **C. Provider portability may require policy changes as well as YAML** Identical build steps do not guarantee identical governance. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Migration may reduce tools but can lose established capabilities. The selected answer is keeping two platforms increases integration administration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q036

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which next change most directly satisfies the stated requirement?

- **A. Configure validation for the actual repository provider** **Correct.** Trigger capabilities depend on the repository integration. This directly addresses the constraint stated in this case.
- **B. Stop printing sensitive command lines and use supported secret handling** Diagnostics must not expose the secret-bearing execution input. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **C. Evaluate Azure Pipelines integration with GitHub before changing platforms** Source hosting does not force a particular CI engine. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.

**Explanation:** Trigger capabilities depend on the repository integration. The selected answer is configure validation for the actual repository provider.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q037

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which explanation best accounts for the behavior or constraint described?

- **A. The decision assumes code and pipeline must share a platform** Supported integration allows cross-platform composition. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.
- **B. Repository providers do not share identical PR validation configuration** **Correct.** A copied rule may not apply in the new source context. This directly addresses the constraint stated in this case.
- **C. A secret variable is not safe if the script deliberately emits it** Masking is not a substitute for controlled output. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.

**Explanation:** A copied rule may not apply in the new source context. The selected answer is repository providers do not share identical PR validation configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q038

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The task works while logs contain no sensitive value** Both functionality and output hygiene require verification. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **B. GitHub changes build through the existing governed Azure pipeline** The proof should include existing network and governance requirements. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.
- **C. A test pull request produces the expected validation status** **Correct.** The behavior must be checked against the actual provider. This directly addresses the constraint stated in this case.

**Explanation:** The behavior must be checked against the actual provider. The selected answer is a test pull request produces the expected validation status.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q039

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which execution safeguard most directly addresses the risk in this case?

- **A. Pass secrets only to the task that needs them** Broad environment exposure increases accidental disclosure risk. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **B. Assess integration identity and permissions during the trial** Cross-platform access adds a trust relationship. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.
- **C. Protect the target branch with the appropriate required validation** **Correct.** A triggered run must also participate in merge governance. This directly addresses the constraint stated in this case.

**Explanation:** A triggered run must also participate in merge governance. The selected answer is protect the target branch with the appropriate required validation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q040

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. The team selects this remedy: "Configure validation for the actual repository provider." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Provider portability may require policy changes as well as YAML** **Correct.** Identical build steps do not guarantee identical governance. This directly addresses the constraint stated in this case.
- **B. Masking has limits for transformed or partial values** Design logs so secret-dependent content is not emitted. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **C. Keeping two platforms increases integration administration** Migration may reduce tools but can lose established capabilities. That addresses a different requirement: Wrong pipeline platform. It does not directly resolve this case's stated constraint.

**Explanation:** Identical build steps do not guarantee identical governance. The selected answer is provider portability may require policy changes as well as YAML.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q041

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which next change most directly satisfies the stated requirement?

- **A. Use a unique run identity and record source revision metadata** Operational labels should support unambiguous build traceability. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **B. Configure validation for the actual repository provider** Trigger capabilities depend on the repository integration. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **C. Stop printing sensitive command lines and use supported secret handling** **Correct.** Diagnostics must not expose the secret-bearing execution input. This directly addresses the constraint stated in this case.

**Explanation:** Diagnostics must not expose the secret-bearing execution input. The selected answer is stop printing sensitive command lines and use supported secret handling.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q042

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which explanation best accounts for the behavior or constraint described?

- **A. Repository providers do not share identical PR validation configuration** A copied rule may not apply in the new source context. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **B. A secret variable is not safe if the script deliberately emits it** **Correct.** Masking is not a substitute for controlled output. This directly addresses the constraint stated in this case.
- **C. A repeated friendly label is not a unique build identifier** Different outputs can appear to be the same build. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.

**Explanation:** Masking is not a substitute for controlled output. The selected answer is a secret variable is not safe if the script deliberately emits it.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q043

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test pull request produces the expected validation status** The behavior must be checked against the actual provider. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **B. The task works while logs contain no sensitive value** **Correct.** Both functionality and output hygiene require verification. This directly addresses the constraint stated in this case.
- **C. The artifact resolves to one run and exact commit** The lookup must establish a single provenance chain. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.

**Explanation:** Both functionality and output hygiene require verification. The selected answer is the task works while logs contain no sensitive value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q044

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not treat a display number as the only content identifier** Human labels can be configured independently of artifact bytes. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.
- **B. Protect the target branch with the appropriate required validation** A triggered run must also participate in merge governance. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **C. Pass secrets only to the task that needs them** **Correct.** Broad environment exposure increases accidental disclosure risk. This directly addresses the constraint stated in this case.

**Explanation:** Broad environment exposure increases accidental disclosure risk. The selected answer is pass secrets only to the task that needs them.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q045

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. The team selects this remedy: "Stop printing sensitive command lines and use supported secret handling." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Provider portability may require policy changes as well as YAML** Identical build steps do not guarantee identical governance. That addresses a different requirement: Pull-request trigger mismatch. It does not directly resolve this case's stated constraint.
- **B. Masking has limits for transformed or partial values** **Correct.** Design logs so secret-dependent content is not emitted. This directly addresses the constraint stated in this case.
- **C. Readable version labels and immutable identity serve different needs** Keep both when users need chronology and exact provenance. That addresses a different requirement: Untraceable run number. It does not directly resolve this case's stated constraint.

**Explanation:** Design logs so secret-dependent content is not emitted. The selected answer is masking has limits for transformed or partial values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q046

Foundational · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which next change most directly satisfies the stated requirement?

- **A. Restore scoped GitHub app authorization for that repository** The pipeline needs an authorized repository connection. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **B. Stop printing sensitive command lines and use supported secret handling** Diagnostics must not expose the secret-bearing execution input. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **C. Use a unique run identity and record source revision metadata** **Correct.** Operational labels should support unambiguous build traceability. This directly addresses the constraint stated in this case.

**Explanation:** Operational labels should support unambiguous build traceability. The selected answer is use a unique run identity and record source revision metadata.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q047

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which explanation best accounts for the behavior or constraint described?

- **A. A repeated friendly label is not a unique build identifier** **Correct.** Different outputs can appear to be the same build. This directly addresses the constraint stated in this case.
- **B. The source integration no longer has repository access** YAML correctness cannot overcome denied source authorization. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. A secret variable is not safe if the script deliberately emits it** Masking is not a substitute for controlled output. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.

**Explanation:** Different outputs can appear to be the same build. The selected answer is a repeated friendly label is not a unique build identifier.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q048

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The artifact resolves to one run and exact commit** **Correct.** The lookup must establish a single provenance chain. This directly addresses the constraint stated in this case.
- **B. A pipeline run checks out the intended private commit** The test must verify the authenticated source path. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. The task works while logs contain no sensitive value** Both functionality and output hygiene require verification. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.

**Explanation:** The lookup must establish a single provenance chain. The selected answer is the artifact resolves to one run and exact commit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q049

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not treat a display number as the only content identifier** **Correct.** Human labels can be configured independently of artifact bytes. This directly addresses the constraint stated in this case.
- **B. Authorize only the participating repository rather than the whole account** Repository selection limits the connector's trust scope. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **C. Pass secrets only to the task that needs them** Broad environment exposure increases accidental disclosure risk. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.

**Explanation:** Human labels can be configured independently of artifact bytes. The selected answer is do not treat a display number as the only content identifier.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)

## L10-Q050

Advanced · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. The team selects this remedy: "Use a unique run identity and record source revision metadata." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. External integration depends on installation ownership and lifecycle** Account and repository changes may require reauthorization. That addresses a different requirement: GitHub connection failure. It does not directly resolve this case's stated constraint.
- **B. Masking has limits for transformed or partial values** Design logs so secret-dependent content is not emitted. That addresses a different requirement: Secret printed by script. It does not directly resolve this case's stated constraint.
- **C. Readable version labels and immutable identity serve different needs** **Correct.** Keep both when users need chronology and exact provenance. This directly addresses the constraint stated in this case.

**Explanation:** Keep both when users need chronology and exact provenance. The selected answer is readable version labels and immutable identity serve different needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops)
