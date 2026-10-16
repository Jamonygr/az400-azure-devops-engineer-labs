# Lab 10 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L10-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which next change most directly satisfies the stated requirement?

- **A.** Use a unique run identity and record source revision metadata
- **B.** Restore scoped GitHub app authorization for that repository
- **C.** Define an explicit CI trigger for the intended branches

## L10-Q002

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which explanation best accounts for the behavior or constraint described?

- **A.** A repeated friendly label is not a unique build identifier
- **B.** The source integration no longer has repository access
- **C.** The trigger configuration excludes push-based execution

## L10-Q003

Applied · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A matching push starts a run and an excluded push does not
- **B.** The artifact resolves to one run and exact commit
- **C.** A pipeline run checks out the intended private commit

## L10-Q004

Applied · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not treat a display number as the only content identifier
- **B.** Authorize only the participating repository rather than the whole account
- **C.** Review organization settings that affect implied YAML triggers

## L10-Q005

Advanced · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

GitHub connection failure: An Azure Pipeline cannot check out a private GitHub repository after the integration app loses access. The team selects this remedy: "Restore scoped GitHub app authorization for that repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** External integration depends on installation ownership and lifecycle
- **B.** Explicit triggers need maintenance when branch conventions change
- **C.** Readable version labels and immutable identity serve different needs

## L10-Q006

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which next change most directly satisfies the stated requirement?

- **A.** Restore scoped GitHub app authorization for that repository
- **B.** Define an explicit CI trigger for the intended branches
- **C.** Include shared build inputs in the path filter

## L10-Q007

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which explanation best accounts for the behavior or constraint described?

- **A.** The filter tracks service files but omits shared dependencies
- **B.** The source integration no longer has repository access
- **C.** The trigger configuration excludes push-based execution

## L10-Q008

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Changing the shared script schedules the dependent service pipeline
- **B.** A pipeline run checks out the intended private commit
- **C.** A matching push starts a run and an excluded push does not

## L10-Q009

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize only the participating repository rather than the whole account
- **B.** Review organization settings that affect implied YAML triggers
- **C.** Test representative included and excluded paths

## L10-Q010

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

No automatic CI: Manually queued Azure runs succeed, but pushes never start a run because the YAML disables CI triggers. The team selects this remedy: "Define an explicit CI trigger for the intended branches." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More complete filters may schedule additional work
- **B.** External integration depends on installation ownership and lifecycle
- **C.** Explicit triggers need maintenance when branch conventions change

## L10-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which next change most directly satisfies the stated requirement?

- **A.** Include shared build inputs in the path filter
- **B.** Use the actual authorized service connection identifier
- **C.** Define an explicit CI trigger for the intended branches

## L10-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which explanation best accounts for the behavior or constraint described?

- **A.** The filter tracks service files but omits shared dependencies
- **B.** YAML parsing does not validate every external resource relationship
- **C.** The trigger configuration excludes push-based execution

## L10-Q013

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Changing the shared script schedules the dependent service pipeline
- **B.** The task authenticates through the intended project connection
- **C.** A matching push starts a run and an excluded push does not

## L10-Q014

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize the specific pipeline rather than every pipeline by default
- **B.** Review organization settings that affect implied YAML triggers
- **C.** Test representative included and excluded paths

## L10-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Path filter surprise: A shared build script changes outside the service folder, and the service pipeline does not run. The team selects this remedy: "Include shared build inputs in the path filter." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Connection names form an operational dependency
- **B.** Explicit triggers need maintenance when branch conventions change
- **C.** More complete filters may schedule additional work

## L10-Q016

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which next change most directly satisfies the stated requirement?

- **A.** Include shared build inputs in the path filter
- **B.** Use the actual authorized service connection identifier
- **C.** Publish the supported result format from the correct path

## L10-Q017

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which explanation best accounts for the behavior or constraint described?

- **A.** Producing a result file does not automatically publish it
- **B.** The filter tracks service files but omits shared dependencies
- **C.** YAML parsing does not validate every external resource relationship

## L10-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The run summary shows the expected test cases and failures
- **B.** Changing the shared script schedules the dependent service pipeline
- **C.** The task authenticates through the intended project connection

## L10-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. Which execution safeguard most directly addresses the risk in this case?

- **A.** Authorize the specific pipeline rather than every pipeline by default
- **B.** Publish diagnostics even on failure without masking failed status
- **C.** Test representative included and excluded paths

## L10-Q020

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Task input error: A YAML task is syntactically valid but references a service connection name that does not exist in the project. The team selects this remedy: "Use the actual authorized service connection identifier." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More complete filters may schedule additional work
- **B.** Connection names form an operational dependency
- **C.** Report paths and formats are part of the task contract

## L10-Q021

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which next change most directly satisfies the stated requirement?

- **A.** Bind artifact download to the intended producing run
- **B.** Use the actual authorized service connection identifier
- **C.** Publish the supported result format from the correct path

## L10-Q022

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which explanation best accounts for the behavior or constraint described?

- **A.** Producing a result file does not automatically publish it
- **B.** The download selection is not tied to the validated build
- **C.** YAML parsing does not validate every external resource relationship

## L10-Q023

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release records the expected build and artifact identity
- **B.** The task authenticates through the intended project connection
- **C.** The run summary shows the expected test cases and failures

## L10-Q024

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check source branch and run provenance before deployment
- **B.** Authorize the specific pipeline rather than every pipeline by default
- **C.** Publish diagnostics even on failure without masking failed status

## L10-Q025

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Unpublished Azure test results: The test process creates a report, but the run summary displays no tests because no publication task reads it. The team selects this remedy: "Publish the supported result format from the correct path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Report paths and formats are part of the task contract
- **B.** Explicit run selection requires promotion metadata
- **C.** Connection names form an operational dependency

## L10-Q026

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which next change most directly satisfies the stated requirement?

- **A.** Publish the supported result format from the correct path
- **B.** Bind artifact download to the intended producing run
- **C.** Evaluate Azure Pipelines integration with GitHub before changing platforms

## L10-Q027

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which explanation best accounts for the behavior or constraint described?

- **A.** The decision assumes code and pipeline must share a platform
- **B.** Producing a result file does not automatically publish it
- **C.** The download selection is not tied to the validated build

## L10-Q028

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** GitHub changes build through the existing governed Azure pipeline
- **B.** The run summary shows the expected test cases and failures
- **C.** The release records the expected build and artifact identity

## L10-Q029

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. Which execution safeguard most directly addresses the risk in this case?

- **A.** Publish diagnostics even on failure without masking failed status
- **B.** Check source branch and run provenance before deployment
- **C.** Assess integration identity and permissions during the trial

## L10-Q030

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Artifact confusion: Downstream stages download an artifact by a reused friendly name from an unintended run. The team selects this remedy: "Bind artifact download to the intended producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Report paths and formats are part of the task contract
- **B.** Explicit run selection requires promotion metadata
- **C.** Keeping two platforms increases integration administration

## L10-Q031

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which next change most directly satisfies the stated requirement?

- **A.** Evaluate Azure Pipelines integration with GitHub before changing platforms
- **B.** Configure validation for the actual repository provider
- **C.** Bind artifact download to the intended producing run

## L10-Q032

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which explanation best accounts for the behavior or constraint described?

- **A.** Repository providers do not share identical PR validation configuration
- **B.** The download selection is not tied to the validated build
- **C.** The decision assumes code and pipeline must share a platform

## L10-Q033

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The release records the expected build and artifact identity
- **B.** GitHub changes build through the existing governed Azure pipeline
- **C.** A test pull request produces the expected validation status

## L10-Q034

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check source branch and run provenance before deployment
- **B.** Assess integration identity and permissions during the trial
- **C.** Protect the target branch with the appropriate required validation

## L10-Q035

Advanced · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Wrong pipeline platform: A team with established Azure Boards approvals and private-network agents considers moving CI solely because source is on GitHub. The team selects this remedy: "Evaluate Azure Pipelines integration with GitHub before changing platforms." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Explicit run selection requires promotion metadata
- **B.** Keeping two platforms increases integration administration
- **C.** Provider portability may require policy changes as well as YAML

## L10-Q036

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which next change most directly satisfies the stated requirement?

- **A.** Configure validation for the actual repository provider
- **B.** Stop printing sensitive command lines and use supported secret handling
- **C.** Evaluate Azure Pipelines integration with GitHub before changing platforms

## L10-Q037

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which explanation best accounts for the behavior or constraint described?

- **A.** The decision assumes code and pipeline must share a platform
- **B.** Repository providers do not share identical PR validation configuration
- **C.** A secret variable is not safe if the script deliberately emits it

## L10-Q038

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The task works while logs contain no sensitive value
- **B.** GitHub changes build through the existing governed Azure pipeline
- **C.** A test pull request produces the expected validation status

## L10-Q039

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. Which execution safeguard most directly addresses the risk in this case?

- **A.** Pass secrets only to the task that needs them
- **B.** Assess integration identity and permissions during the trial
- **C.** Protect the target branch with the appropriate required validation

## L10-Q040

Advanced · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

Pull-request trigger mismatch: A team copies Azure Repos validation assumptions into a GitHub-backed pipeline and PR runs behave differently. The team selects this remedy: "Configure validation for the actual repository provider." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Provider portability may require policy changes as well as YAML
- **B.** Masking has limits for transformed or partial values
- **C.** Keeping two platforms increases integration administration

## L10-Q041

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which next change most directly satisfies the stated requirement?

- **A.** Use a unique run identity and record source revision metadata
- **B.** Configure validation for the actual repository provider
- **C.** Stop printing sensitive command lines and use supported secret handling

## L10-Q042

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which explanation best accounts for the behavior or constraint described?

- **A.** Repository providers do not share identical PR validation configuration
- **B.** A secret variable is not safe if the script deliberately emits it
- **C.** A repeated friendly label is not a unique build identifier

## L10-Q043

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test pull request produces the expected validation status
- **B.** The task works while logs contain no sensitive value
- **C.** The artifact resolves to one run and exact commit

## L10-Q044

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not treat a display number as the only content identifier
- **B.** Protect the target branch with the appropriate required validation
- **C.** Pass secrets only to the task that needs them

## L10-Q045

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

Secret printed by script: A YAML pipeline maps a secret into a script and then echoes the complete command line for diagnostics. The team selects this remedy: "Stop printing sensitive command lines and use supported secret handling." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Provider portability may require policy changes as well as YAML
- **B.** Masking has limits for transformed or partial values
- **C.** Readable version labels and immutable identity serve different needs

## L10-Q046

Foundational · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which next change most directly satisfies the stated requirement?

- **A.** Restore scoped GitHub app authorization for that repository
- **B.** Stop printing sensitive command lines and use supported secret handling
- **C.** Use a unique run identity and record source revision metadata

## L10-Q047

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which explanation best accounts for the behavior or constraint described?

- **A.** A repeated friendly label is not a unique build identifier
- **B.** The source integration no longer has repository access
- **C.** A secret variable is not safe if the script deliberately emits it

## L10-Q048

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The artifact resolves to one run and exact commit
- **B.** A pipeline run checks out the intended private commit
- **C.** The task works while logs contain no sensitive value

## L10-Q049

Applied · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not treat a display number as the only content identifier
- **B.** Authorize only the participating repository rather than the whole account
- **C.** Pass secrets only to the task that needs them

## L10-Q050

Advanced · [CP3](README.md#task-3) · [D3.1.4](../../docs/objective-map.md), [D3.3.5](../../docs/objective-map.md)

Untraceable run number: Builds use a constant display label, making support unable to identify which source revision produced an artifact. The team selects this remedy: "Use a unique run identity and record source revision metadata." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** External integration depends on installation ownership and lifecycle
- **B.** Masking has limits for transformed or partial values
- **C.** Readable version labels and immutable identity serve different needs
