# Lab 10 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L10-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

The lab uses Azure Repos, while a colleague proposes importing a GitHub repository. Which additional boundary must be prepared before that integration works?

- **A.** An authorized GitHub repository connection and pipeline access
- **B.** Only an annotated Git tag in Azure Repos
- **C.** Only a new Azure service connection for application deployment
- **D.** Only a different source YAML path in the same inaccessible provider

## L10-Q002

Foundational · [CP1](README.md#task-1) · [D3.3.1](../../docs/objective-map.md)

A learner lists repositories in the owned project before cloning. Which returned values should establish the exact source boundary?

- **A.** Only the default branch label returned for the repository
- **B.** Repository ID, project identity and approved remote URL
- **C.** Only the most recent commit author name
- **D.** Only the repository friendly name

## L10-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The sample CI should run for main pushes in Azure Pipelines YAML. Which section defines that automatic source-change scheduling?

- **A.** A variable named BuildDisplayBranch with main as its value
- **B.** A trigger branch include rule for main
- **C.** A deployment environment named main
- **D.** A publish artifact step named main

## L10-Q004

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The repository selects an exact SDK through global.json. Which UseDotNet task configuration preserves that source-controlled choice?

- **A.** Remove SDK setup because YAML compilation installs every runtime
- **B.** Use the build number as the SDK version
- **C.** Install whichever SDK the last pipeline used
- **D.** Enable useGlobalJson for SDK installation

## L10-Q005

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A YAML author places a step task directly beside stages rather than within a job. What structural repair is needed?

- **A.** Rename the task so its display name contains job
- **B.** Grant subscription Owner to the build identity
- **C.** Add more hosted parallelism to the organization
- **D.** Nest executable steps inside a stage job

## L10-Q006

Foundational · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A build must retain machine-readable tests even when assertions fail. Which reporting design fits this requirement without hiding the failure?

- **A.** Publish reports only after every test succeeds
- **B.** Publish test results on failure while keeping tests blocking
- **C.** Suppress test exit codes so publication always looks green
- **D.** Replace results with the build queue timestamp

## L10-Q007

Foundational · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A valid pipeline YAML exists only in an uncommitted local file. Why does pushing the current main branch not activate that change?

- **A.** Azure Pipelines requires every build to deploy infrastructure first
- **B.** The repository token needs organization-wide administrator authority
- **C.** The solution must contain at least one database migration
- **D.** The provider reads committed repository content for its selected revision

## L10-Q008

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A setup command registers a YAML definition with skip-first-run true. What has been established at that point?

- **A.** A production deployment passed all environment checks
- **B.** The application artifact has already passed all tests
- **C.** The definition exists but a successful build is unproven
- **D.** The build identity automatically owns the Azure subscription

## L10-Q009

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A newly queued build reports status notStarted and result null. What should the learner conclude about CI completion?

- **A.** It deployed successfully if the YAML filename is correct
- **B.** It remains pending until execution completes successfully
- **C.** It failed permanently because no result is available immediately
- **D.** It passed because the queue command returned an ID

## L10-Q010

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A successful build publishes todo-api. Which source field must match the reviewed candidate before its artifact is accepted?

- **A.** Only the moving source branch display name
- **B.** Only the artifact archive filename
- **C.** The build sourceVersion exact commit identity
- **D.** Only the build requester friendly name

## L10-Q011

Foundational · [CP1](README.md#task-1) · [D3.3.3](../../docs/objective-map.md)

A clone retry finds a working copy whose origin differs from the resolved Azure Repos remote. How should setup proceed?

- **A.** Delete the organization to ensure a clean source boundary
- **B.** Reset and force-push whichever origin already exists
- **C.** Trust the directory because its name contains pipeline
- **D.** Stop and investigate the repository identity mismatch

## L10-Q012

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

Two definitions share the requested pipeline name. Which additional information is necessary before reusing an existing definition safely?

- **A.** Only the total historical build count
- **B.** Only the requester email display value
- **C.** Exact repository ID, project and YAML path
- **D.** Only the definition creation date

## L10-Q013

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The job creates build output but never publishes it. Why can another release pipeline not download todo-api from that run?

- **A.** Generated files need an explicit artifact publication step
- **B.** Package publishing requires broad organization administrator rights
- **C.** Every Release build configuration automatically uploads all files
- **D.** The artifact name must equal the project GUID

## L10-Q014

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A build finishes with result partiallySucceeded because a required test failure was tolerated. What should the course gate report?

- **A.** Incomplete because required successful validation is absent
- **B.** Passed because any finished build counts as success
- **C.** Passed after changing the build display number
- **D.** Passed if the package upload step succeeded

## L10-Q015

Foundational · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A retry finds the intended YAML and samples already committed with no staged diff. What source operation is appropriate?

- **A.** Reuse the verified revision without creating an empty commit
- **B.** Grant all pipelines access to every service connection
- **C.** Reset source to an unrelated earlier branch
- **D.** Infer that hosted testing passed from no local changes

## L10-Q016

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

An Azure Repos YAML pipeline declares pr: main but pull requests still lack validation. What is required for this source provider?

```yaml
trigger:
  branches: {include: [main]}
pr: [main]
# Source provider: Azure Repos
```

- **A.** Rename the CI artifact to pull-request-validation
- **B.** Configure an Azure Repos build-validation branch policy
- **C.** Give every contributor permission to edit production secrets
- **D.** Assume the YAML PR section overrides every repository policy

## L10-Q017

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Main pushes touching only docs should not run application CI, while sample changes should. Which YAML design fits this scope?

- **A.** Combine the main branch filter with intended sample path includes
- **B.** Publish documentation under a different artifact name
- **C.** Add main only to the pipeline display name
- **D.** Set every task to condition succeeded()

## L10-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A variable should select a template structure before jobs exist. Which expression timing matches this requirement in Azure Pipelines?

- **A.** A compile-time parameter or template expression
- **B.** A test result property from a previous step
- **C.** A post-build artifact display label
- **D.** A shell variable created in the last task

## L10-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A value created during a task must be used by a later task in the same job. Which mechanism is appropriate?

- **A.** Set only a process-local shell variable
- **B.** Use the supported task.setvariable logging command
- **C.** Change a YAML comment through the current shell
- **D.** Declare the value as an already compiled parameter afterward

## L10-Q020

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

An earlier pipeline creation request timed out after the server accepted it. What retry prevents duplicate owned definitions?

```text
Create response lost after timeout
Name: ci-run42
Repository ID: owned repository GUID
```

- **A.** Always create another pipeline with a random suffix
- **B.** Assume timeout guarantees no provider mutation occurred
- **C.** Delete every pipeline in the organization before retrying
- **D.** Look up the exact owned name and repository before creating

## L10-Q021

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A build has status completed and result succeeded, but sourceVersion differs from the saved lab SHA. How should validation respond?

```json
{"status":"completed","result":"succeeded","sourceVersion":"different-reviewed-sha"}
```

- **A.** Accept because main still has the same branch name
- **B.** Reject the provenance mismatch despite successful execution
- **C.** Accept if the requester is the same learner
- **D.** Change the saved candidate SHA without reviewing the difference

## L10-Q022

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The previous build's artifact has the same name as today's output. Which selection preserves promotion of the approved current candidate?

- **A.** Use the current branch name as the only selector
- **B.** Download whichever named archive was listed first
- **C.** Select the successful approved build ID and verify its sourceVersion
- **D.** Rebuild at release time and reuse yesterday's artifact label

## L10-Q023

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A task needs a secret variable, but its script expects an environment variable that was never mapped. Which repair is appropriate?

- **A.** Echo the secret into the YAML repository first
- **B.** Map the secret explicitly into that task environment
- **C.** Give every task every secret automatically
- **D.** Rename the task so its display name matches the secret

## L10-Q024

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pipeline needs source read access but no ability to modify other projects. What authorization scope fits this workload?

- **A.** Use collection-wide administration to avoid repository prompts
- **B.** Use a personal administrator PAT in every step
- **C.** Use the project-scoped build identity with needed repository reads
- **D.** Grant subscription Owner to solve source repository access

## L10-Q025

Applied · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

The workflow and source should enter the sandbox together without copied test results or local state. Which input list is appropriate?

- **A.** Copy only the existing application executable
- **B.** Recursively copy every file including bin and state
- **C.** Copy only directory names without file contents
- **D.** Copy the tracked sample source allowlist

## L10-Q026

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A saved definition ID points to the right repository but a different YAML path. What should the retry do?

- **A.** Change the expected path locally without reviewing the source
- **B.** Queue repeatedly until one build happens to succeed
- **C.** Stop rather than silently reuse the different executable definition
- **D.** Accept because YAML paths are cosmetic labels

## L10-Q027

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A queued build waits because the organization has no available hosted parallelism. Which next step addresses the actual prerequisite?

- **A.** Obtain approved capacity or an authorized suitable isolated agent
- **B.** Increase the repository contents permission to write
- **C.** Delete the queued status from the local evidence file
- **D.** Disable code coverage and mark the queued result green

## L10-Q028

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A downstream job needs an output variable produced by a named upstream task. What must its definition include?

- **A.** Only a matching artifact display name
- **B.** Only a later position in the YAML file
- **C.** Only the same variable spelling in an unrelated shell
- **D.** An output variable reference through the dependency context

## L10-Q029

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The test task is allowed to fail for reporting, but package promotion must still be blocked. What should the final gate inspect?

- **A.** Only whether the first restore step succeeded
- **B.** Only whether a test report file exists
- **C.** Actual test counters and the required failure outcome
- **D.** Only whether the build directory was created

## L10-Q030

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A release downloads an artifact then builds the application again. Why does this violate the intended build-once promotion model?

```text
Approved CI artifact: build 101, SHA A
Release command: dotnet publish current main
```

- **A.** A new build always runs with broader project permissions
- **B.** The deployed output can differ from the validated downloaded bytes
- **C.** Downloading artifacts automatically disables all test execution
- **D.** Every rebuild necessarily changes the database schema

## L10-Q031

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A team needs one combined build for rapid main pushes while another build runs. What does trigger batch:true provide?

- **A.** A subsequent CI run containing changes accumulated during active execution
- **B.** Cancellation of every active production deployment automatically
- **C.** Permission to skip all required tests after the first run
- **D.** Automatic merging of every branch into main

## L10-Q032

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A failed test should stop packaging, but diagnostic publication should still run. Which condition belongs on the diagnostic task?

- **A.** Remove all task failure signals from the test command
- **B.** Use succeeded() and expect reports after failed upstream tests
- **C.** Use a failure-tolerant reporting condition such as succeededOrFailed()
- **D.** Set the diagnostic task as the only required test

## L10-Q033

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

The learner registers a pipeline against a project other than the journal-owned sandbox. Which safeguard should reject the operation before reuse?

- **A.** Compare the returned project ID/name with the owned context
- **B.** Compare only its human-readable pipeline display name
- **C.** Use a broad collection administrator token to ignore scope
- **D.** Check that it contains at least one successful old build

## L10-Q034

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The artifact name includes a release number, but its producing run is gone. What is lost for a source-to-artifact audit?

- **A.** Only a checksum retained beside the archive
- **B.** Only a copy of the current pipeline YAML
- **C.** The verifiable execution record connecting validation and source revision
- **D.** Only a package version label without the original run relationship

## L10-Q035

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A variable group contains nonsecret build options but is authorized to all pipelines by default. What narrower design fits this exercise?

- **A.** Assume nonsecret means every pipeline must inherit access
- **B.** Grant every project contributor organization administrator membership
- **C.** Store build options in a migration identity credential
- **D.** Authorize only explicitly approved consuming pipelines

## L10-Q036

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A learner observes a run successful on commit A then pushes commit B. What evidence is required to pass B's CI checkpoint?

- **A.** A successful required execution whose sourceVersion is B
- **B.** The successful A result because both use the same YAML filename
- **C.** The fact that B has a later commit timestamp
- **D.** The fact that A and B have the same author

## L10-Q037

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time expressions refer to a runtime-generated value and resolve unexpectedly empty. Which boundary caused this error?

- **A.** The agent does not support ordinary YAML comments
- **B.** The value does not exist during template expansion
- **C.** The artifact must be compressed using a different format
- **D.** The pipeline needs an additional source repository tag

## L10-Q038

Applied · [CP3](README.md#task-3) · [D3.3.4](../../docs/objective-map.md)

A script adds the reviewed workflow twice and stages no changes on retry. Which check prevents an unnecessary failing commit operation?

- **A.** Reset every branch to the initial empty commit
- **B.** Alter the test threshold solely to manufacture a diff
- **C.** Push to another existing project to force execution
- **D.** Inspect staged differences before running git commit

## L10-Q039

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

TRX reports show three failed tests despite a successful package upload. What is the correct release-quality conclusion from these observations?

- **A.** A successful upload overrides the failed application assertions
- **B.** The tests must have passed because the archive is nonempty
- **C.** The report should be deleted before final validation
- **D.** Artifact availability does not establish a passing test gate

## L10-Q040

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A digest matches but the artifact belongs to a different successful source revision. Which assessment preserves the approved-candidate requirement?

- **A.** Reject the source mismatch while recording passed content integrity
- **B.** Accept because any successful source may replace an approved source
- **C.** Rename the artifact to contain the approved SHA
- **D.** Move the approved tag silently to the downloaded source

## L10-Q041

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Main advances after a build is queued. The selected run succeeds for an earlier sourceVersion. How can the release avoid a branch-race mistake?

```text
Queued candidate: A
Main after queue: B
Completed build sourceVersion: A
```

- **A.** Compare only the run requester and pipeline friendly name
- **B.** Bind promotion to an explicitly reviewed run and exact commit
- **C.** Always choose the latest branch tip regardless of tested revision
- **D.** Assume queue time permanently freezes the remote main reference

## L10-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Azure Repos main requires pull-request validation plus push CI. A YAML pr block is present but no branch build policy exists. What complete design satisfies both requirements?

- **A.** Keep main push triggers and add required branch build validation
- **B.** Give every contributor permission to bypass all branch policies
- **C.** Add a pipeline variable named RequiredPullRequestChecks
- **D.** Remove push CI and rely on the unsupported YAML PR block

## L10-Q043

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

An output is created in stage Build but needed in stage Deploy. Which design must the author inspect when it is empty?

```yaml
stage: Deploy
# Needs Build.Pack output named revision
# stageDependencies must address the actual producer
```

- **A.** Only whether the output variable exists in the producing task local shell
- **B.** Only whether the deployment timeout exceeds build duration
- **C.** Named output exposure, stage dependency and stageDependencies mapping
- **D.** Only whether both stages share the same display name

## L10-Q044

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A release in one project needs artifacts from another restricted project. Which authorization design preserves both provenance and least privilege?

- **A.** Disable every producing project security boundary
- **B.** Grant the intended job identity only required source-build artifact reads
- **C.** Use a collection administrator personal token for every task
- **D.** Copy an arbitrary archive and invent the expected build ID

## L10-Q045

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable template accepts Debug and Release, but a caller supplies Production as its configuration. Which response preserves its typed interface?

- **A.** Put Production in a shell variable after compilation
- **B.** Treat Production as Release without recording the substitution
- **C.** Reject the unsupported value before scheduling its build behavior
- **D.** Give the template broader service-connection authority

## L10-Q046

Advanced · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A timed-out registration is retried; one matching name exists but points to another repository. What should the recovery logic do?

- **A.** Delete every pipeline with a similar name across the organization
- **B.** Refuse adoption and reconcile the exact definition identity
- **C.** Queue it once and trust any successful result
- **D.** Adopt it because exactly one friendly name was returned

## L10-Q047

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Quality CI must prove tests passed and publish an immutable candidate, but optional diagnostics can fail. What policy distinguishes these outcomes correctly?

- **A.** Treat artifact existence as the only required result
- **B.** Treat a diagnostic timeout as proof application tests failed
- **C.** Mark every task continueOnError so the run always finishes
- **D.** Make required tests/package gates blocking and label diagnostics separately

## L10-Q048

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Three rapid main pushes arrive while CI is active. With batching enabled, what source and result should final verification inspect?

- **A.** Only the count of push events received
- **B.** Only the newest package friendly name
- **C.** The actual batched run sourceVersion and final required results
- **D.** Only the first pushed commit and its queued timestamp

## L10-Q049

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An archive is retained but its lockfile inputs differ from the reviewed build record. What release investigation is warranted before promotion?

```text
Approved lock graph: dependency X 1.2
Selected archive metadata: dependency X 1.3
```

- **A.** Reconcile actual dependency inputs and trusted producing artifact identity
- **B.** Change the reviewed lockfile record to whichever archive arrived
- **C.** Assume identical artifact names guarantee the same dependency graph
- **D.** Skip provenance checks because the archive downloads successfully

## L10-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

An untrusted contribution can edit YAML and requests a powerful service connection during tests. Which resource control should remain outside that editable YAML?

- **A.** A branch name chosen by the contributor
- **B.** A comment asking contributors not to use the connection
- **C.** A secret masking rule as the only protection
- **D.** Explicit pipeline resource authorization and protected connection checks
