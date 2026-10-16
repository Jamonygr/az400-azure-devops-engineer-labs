# Lab 11 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L11-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A caller wants to reuse an entire GitHub workflow rather than one action step. Where should the uses reference appear?

- **A.** Only in a repository Markdown link
- **B.** At the calling job level
- **C.** Inside a composite action run step without a calling job
- **D.** Inside an arbitrary shell command string

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

- **A.** Ignore every parameter and use machine defaults
- **B.** Reject the unsupported configuration value
- **C.** Treat it as Release without reporting substitution
- **D.** Broaden the service connection permission set

## L11-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pipeline needs a Boolean parameter to include an optional job before execution. Which input type fits this structural decision?

- **A.** An artifact filename chosen after packaging
- **B.** A shell variable from the final job
- **C.** A text message in the test report
- **D.** A typed compile-time Boolean parameter

## L11-Q004

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

BuildConfiguration is explicitly nonsecret shared build data. Which Azure DevOps resource can expose it to approved consuming pipelines?

- **A.** A local-only shell variable on the author workstation
- **B.** A narrowly authorized variable group
- **C.** A production database password field
- **D.** An organization administrator personal token

## L11-Q005

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The package job depends on test, which depends on build. Which valid execution order respects those prerequisite relationships?

- **A.** Any order because YAML is declarative
- **B.** Test then package then build
- **C.** Package then test then build
- **D.** Build then test then package

## L11-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A reusable workflow declares workflow_call inputs but the consumer passes a misspelled input name. What is the appropriate fix?

- **A.** Correct the consumer to the declared interface
- **B.** Add repository write permission for every job
- **C.** Disable all test assertions in the callee
- **D.** Rename the artifact to the misspelled input

## L11-Q007

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A caller must choose a build configuration before YAML expansion. How does a parameter differ from an ordinary runtime variable?

- **A.** Every parameter is automatically encrypted secret material
- **B.** The parameter is produced only after its job completes
- **C.** A parameter grants permissions to the source repository
- **D.** The parameter participates in compile-time template expansion

## L11-Q008

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph contains build depending on package and package depending on build. Why must scheduling reject it?

- **A.** No job can satisfy the cyclic prerequisites
- **B.** The job names use unsupported lowercase letters
- **C.** The package needs more artifact storage
- **D.** A longer task timeout will eventually break the cycle

## L11-Q009

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

The lab creates a variable group with authorize false. What provider property should validation inspect afterward?

- **A.** It is not authorized for every pipeline
- **B.** Its creation command returned any nonempty output
- **C.** Its friendly name contains the word build
- **D.** Its numeric ID contains the current date

## L11-Q010

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

The shared template changes after a reviewed digest is recorded. What should the independent local drift check report?

- **A.** The content hash differs from the reviewed template
- **B.** No change because the filename stayed the same
- **C.** Automatic compatibility because every YAML file is equivalent
- **D.** A successful hosted template expansion without running the provider

## L11-Q011

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A consumer calls a reusable workflow but also wants its own independent job after it. Which design expresses that relationship?

- **A.** Append ordinary steps to the reusable calling job
- **B.** Put the downstream commands in the workflow filename
- **C.** Use only a prose note describing expected order
- **D.** Add a separate dependent job using needs

## L11-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The local exercise accepts Release and executes dotnet tests with that configuration. What does this observation actually prove?

- **A.** The selected local parameter behavior and tests ran
- **B.** Every Azure hosted agent expanded the template successfully
- **C.** The variable group is available to all organizations
- **D.** The production environment approved the same release

## L11-Q013

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A dependency graph references a job named analyse, but no such job exists. What should its validator do?

- **A.** Use the artifact archive name instead of the job ID
- **B.** Invent the missing job as automatically successful
- **C.** Reject the unknown dependency before execution
- **D.** Ignore the edge because other jobs are valid

## L11-Q014

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A nonsecret variable group returns BuildConfiguration Debug, while the agreed lab contract requires Release. What result is appropriate?

- **A.** Pass after renaming the group to Release
- **B.** Pass because the variable group has an ID
- **C.** Reject the actual configuration mismatch
- **D.** Pass because nonsecret values never affect behavior

## L11-Q015

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A reusable workflow needs contents read but a caller requests broad inherited secrets unnecessarily. What is the better interface default?

- **A.** Grant repository administration whenever reuse is enabled
- **B.** Declare only specific required secrets and minimum permissions
- **C.** Always inherit every caller secret for convenience
- **D.** Store secrets as plain typed workflow inputs

## L11-Q016

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph includes build→test→package→build with no direct self-edge. Why does a self-reference-only validator miss the fault?

```json
[{"job":"build","needs":["package"]},{"job":"test","needs":["build"]},{"job":"package","needs":["test"]}]
```

- **A.** Only direct self-edges affect job execution order
- **B.** A repeated artifact label creates the cycle
- **C.** An indirect cycle still prevents a complete topological ordering
- **D.** The graph is valid whenever every job name is unique

## L11-Q017

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Build completes, then independent lint and test jobs may run together before packaging. What should package require?

- **A.** Only the build job because source already compiled
- **B.** Both lint and test job completion
- **C.** Only whichever validation job finishes first
- **D.** No dependencies because the document lists package last

## L11-Q018

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A central reusable workflow is referenced by a moving main branch. What change supports review of an exact reusable implementation?

- **A.** Pin only the calling application source while leaving the shared workflow on main
- **B.** Rename the caller job to stable-template
- **C.** Pin the reference to a reviewed commit SHA
- **D.** Add a timestamp comment beside the moving reference

## L11-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A template accepts a stepList so approved consumers can add build steps. What review is important before exposing that extension point?

- **A.** Assume typed lists cannot contain executable behavior
- **B.** Assess what authority the injected executable steps receive
- **C.** Check only whether the injected steps parse successfully
- **D.** Grant more secrets whenever the list grows longer

## L11-Q020

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A runtime variable is changed in one task, but a template condition already selected jobs earlier. Why does the graph remain unchanged?

- **A.** The changed variable requires a different task output name
- **B.** The graph always updates dynamically after every shell assignment
- **C.** The template engine must reread every shell assignment as a parameter
- **D.** Runtime mutation cannot retroactively change compiled template structure

## L11-Q021

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A local build passes after a reusable template is parsed. What additional evidence is needed to claim hosted template execution?

- **A.** Only the consumer and template passing a YAML syntax parser
- **B.** Only a correct new template content digest
- **C.** A provider run using the actual consumer and selected template
- **D.** Only a successful run of the template author local script

## L11-Q022

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A caller supplies the string false where a Boolean template input is required. Why should the interface avoid casual string substitution?

- **A.** Typed values and strings can have different evaluation semantics
- **B.** Every nonempty string is an encrypted pipeline secret
- **C.** A Boolean input automatically grants resource permissions
- **D.** The caller can correct typing through an artifact display name

## L11-Q023

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A build variable stores Release but the script hardcodes Debug. Which execution contract should the reviewer flag?

- **A.** The template must restrict configuration to a single allowed value
- **B.** The variable group should be deleted because nonsecrets are forbidden
- **C.** The script must become a production deployment
- **D.** The configured input is not connected to actual build behavior

## L11-Q024

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The callee adds a new required input without a default. Existing callers do not send it. What compatibility issue follows?

- **A.** Every caller automatically receives a correct inferred value
- **B.** Artifact hashing silently supplies any missing required input
- **C.** Existing consumers can fail the changed interface contract
- **D.** No change matters unless the template filename changes

## L11-Q025

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A graph validator finishes after processing only two of three declared jobs and reports success. What invariant is missing?

```text
Declared jobs: build, test, package
Visited jobs: build, test
Validator result: passed
```

- **A.** Every node must run on the same hosted image
- **B.** All declared nodes must be included in the topological result
- **C.** Every task must upload the same artifact filename
- **D.** Only the first job must have a readable name

## L11-Q026

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The template accepts Release, but its local wrapper always tests Debug. Which verification would catch this broken consumer contract?

- **A.** Check only that the template is syntactically valid YAML
- **B.** Compare selected input with the actual executed command configuration
- **C.** Check only that a TRX file exists somewhere
- **D.** Check only that Production is rejected

## L11-Q027

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A variable group should be shared with one approved pipeline while other project pipelines remain denied. What proves that boundary?

- **A.** A group friendly name containing private
- **B.** A project-wide unrestricted connection for convenience
- **C.** Specific pipeline authorization plus absence of blanket authorization
- **D.** A successful local echo of the desired configuration

## L11-Q028

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A nested reusable workflow needs a secret that only its direct caller received. What must the calling chain provide?

- **A.** Explicit secret forwarding at each required reuse boundary
- **B.** Only the outermost caller repository write permission
- **C.** A matching display name across all nested jobs
- **D.** An artifact whose filename equals the secret name

## L11-Q029

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

The template digest matches, but tests fail because the sample behavior changed. How should the result be interpreted?

- **A.** The test report should be replaced with the earlier success
- **B.** The digest proves tests must have passed
- **C.** The template reference should be renamed to make tests valid
- **D.** Template integrity passed while application behavior failed

## L11-Q030

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The consumer supplies configuration Release and the template allows it, but references a nonexistent solution path. What should validation distinguish?

- **A.** Valid parameter binding from invalid executable file references
- **B.** A nonexistent path is harmless if the artifact name is correct
- **C.** Every accepted input guarantees all generated paths exist
- **D.** Only a production environment can validate source file existence

## L11-Q031

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The local fault adds package as a build prerequisite while package already depends on test→build. What evidence should establish successful detection?

```text
Before: build -> test -> package
Fault adds: package -> build
```

- **A.** Any exception from an unavailable provider CLI
- **B.** A pass recorded before the fault was introduced
- **C.** Only the JSON file modification timestamp
- **D.** The named assertion fails because no complete ordering exists

## L11-Q032

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The caller grants contents read and the callee requests contents write. What limitation must the shared workflow author honor?

- **A.** The callee filename determines its token role
- **B.** Every called workflow automatically receives write permission
- **C.** The callee cannot elevate the caller permission boundary
- **D.** The author personal GitHub role overrides workflow token restrictions

## L11-Q033

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable build accepts configuration but hardcodes the artifact output path required by consumers. What interface change is breaking?

- **A.** Retaining the same paths and permitted configuration values
- **B.** Adding explanatory comments without executable changes
- **C.** Changing that required output location without consumer migration
- **D.** Improving local assertion messages while retaining behavior

## L11-Q034

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A task writes a variable using task.setvariable. Why should a later separate job not assume ordinary variable access automatically works?

- **A.** Cross-job values need explicit output and dependency mapping
- **B.** The project must grant organization-wide administrative authority first
- **C.** All pipeline variables are immutable encrypted secrets
- **D.** Changing the variable group friendly name forwards the value

## L11-Q035

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A reviewer sees a passing local build and unchanged template SHA but no hosted consumer run. Which statement is supportable?

- **A.** The template is automatically safe for all possible callers
- **B.** Local behavior and template integrity passed; hosted expansion remains unverified
- **C.** Every hosted service validated the exact template successfully
- **D.** All remote deployment environments have approved the template

## L11-Q036

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The team wants central build consistency but permits arbitrary caller shell steps under a publishing credential. What design risk requires review?

- **A.** Only whether publishing credentials are masked in logs
- **B.** The extension point can execute untrusted code with privileged authority
- **C.** Only whether injected scripts return successful exit codes
- **D.** Only whether the central template is pinned to a SHA

## L11-Q037

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Two graph nodes share the same job identifier. Why should validation reject them before topological sorting?

- **A.** Duplicate identities make dependency targets ambiguous
- **B.** The file size is necessarily above the provider limit
- **C.** Duplicate names always improve concurrent execution speed
- **D.** Unique artifact names would repair duplicate job identities

## L11-Q038

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

The reusable workflow exists at a reviewed SHA, but a caller repository lacks access to its private source. What prerequisite is missing?

- **A.** Authorized access to the private reusable workflow source
- **B.** An additional .NET coverage collector
- **C.** A locally valid input contract with no repository access grant
- **D.** A more descriptive local directory name

## L11-Q039

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A parameter should accept only two configurations and reject arbitrary deployment targets. Which interface provides enforceable accepted choices?

- **A.** An artifact name that contains both expected values
- **B.** A typed string parameter with explicit allowed values
- **C.** A comment listing preferred spellings beside an unconstrained input
- **D.** A runtime log stating all inputs are safe

## L11-Q040

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A repaired DAG passes its graph assertion but execution-order.txt still lists the old wrong sequence. What should final validation do?

- **A.** Delete the order file and infer the intended order
- **B.** Pass because one of several assertions succeeded
- **C.** Rename the package job without updating dependencies
- **D.** Reject the inconsistent retained execution evidence

## L11-Q041

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A central workflow update removes a required artifact while preserving input names and test success. How should compatibility review assess it?

- **A.** Let every consumer silently rebuild different artifacts instead
- **B.** Increase token permissions to recreate the missing interface
- **C.** Assume unchanged inputs guarantee full backwards compatibility
- **D.** Treat the consumed output removal as a breaking contract change

## L11-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A compile-time parameter selects a service connection name under caller control. The central template runs privileged tasks. What additional boundary must enforce authorization?

- **A.** Only a successful local template parse
- **B.** Only the caller chosen display name for the connection
- **C.** Only a nonempty string check on the parameter
- **D.** Provider resource permissions and checks outside caller-editable YAML

## L11-Q043

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Build feeds both lint and tests, while package requires both. Which computation determines the theoretical duration under sufficient agents?

```text
build=40s
lint=20s after build
test=30s after build
package=10s after lint+test
```

- **A.** The sum of every duration regardless of parallel edges
- **B.** Only the duration of the final package task
- **C.** The longest dependency path rather than all durations summed
- **D.** The number of YAML lines multiplied by agent count

## L11-Q044

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A template migration changes a runtime variable to a compile-time parameter. Existing callers compute it from test results. What must migration address?

- **A.** Only whether the template accepts the existing variable name
- **B.** Only whether every consumer explicitly declares the new parameter
- **C.** The value is unavailable when the new parameter must be expanded
- **D.** Only whether both old and new declarations use string values

## L11-Q045

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A nested reusable chain retains a moving branch reference deep inside despite the top caller being pinned. What remains mutable?

- **A.** The nested executable dependency selected by that moving reference
- **B.** The source SHA stored for earlier completed runs changes retroactively
- **C.** The caller permission automatically expands to administrator
- **D.** Every previously produced immutable artifact automatically changes bytes

## L11-Q046

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md)

A centrally managed group holds a secret, while callers can execute arbitrary jobs. Which design reduces unnecessary secret exposure?

- **A.** Expose the group to every pipeline because masking is enabled
- **B.** Authorize only intended consumers and map secrets to the consuming task
- **C.** Convert the secret into an ordinary compile-time parameter
- **D.** Copy the secret into the retained template digest file

## L11-Q047

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

A validator accepts one valid component but ignores a disconnected cyclic component. Which complete invariant would catch this defect?

```text
Component A: build -> test
Component B: x -> y -> x
Visited: build,test
```

- **A.** Only the component containing the build label matters
- **B.** Only edges drawn left-to-right can represent real dependencies
- **C.** Only artifact-producing nodes need ordering validation
- **D.** Every declared node must be processed without unresolved dependencies

## L11-Q048

Advanced · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

A shared template is pinned and locally tested, but its caller can inject unrestricted privileged steps and production lacks checks. Which release claim is defensible?

- **A.** Local test success proves independent production approval occurred
- **B.** The template hash automatically revokes every exposed credential
- **C.** Reuse is repeatable but its execution and approval boundaries remain unsafe
- **D.** Pinning alone proves any injected caller code is trusted

## L11-Q049

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Release and Debug consumers both pass contract tests, but a new optional field changes the default for omitted inputs. What compatibility question matters?

- **A.** Whether existing callers relying on omission retain their expected behavior
- **B.** Whether tests cover only callers that explicitly pass Release or Debug
- **C.** Whether the new YAML remains syntactically valid
- **D.** Whether a caller using only explicit arguments still succeeds

## L11-Q050

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

A caller pins one shared workflow SHA and a consumer contract records its outputs. What evidence best supports a controlled shared upgrade?

- **A.** Compare only the new template allowed input names
- **B.** Review the new SHA diff and run representative input/output consumer tests
- **C.** Delete the earlier consumer contract after changing the reference
- **D.** Move every caller to latest without checking consumed output changes
