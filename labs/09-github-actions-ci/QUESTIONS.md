# Lab 09 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L09-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.1](../../docs/objective-map.md)

A fresh hosted job starts a .NET build before retrieving source, and the solution cannot be found. What is missing?

- **A.** Checkout the intended repository revision before building
- **B.** Rename the package to match the solution
- **C.** Create an environment approval before building
- **D.** Increase the build matrix size

## L09-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A workflow should validate pushes to main while leaving unrelated branches alone. Which event configuration expresses that requirement?

- **A.** Upload artifacts only when main is selected
- **B.** Set repository token contents permission to read
- **C.** Use push with a main branch filter
- **D.** Put main in the job display name

## L09-Q003

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A developer places a shell command beneath jobs.build without a steps sequence. Why does the workflow fail validation?

- **A.** Every job requires a production environment
- **B.** A workflow must contain two independent jobs
- **C.** Dotnet commands require a different source provider
- **D.** Executable steps require the job steps sequence

## L09-Q004

Foundational · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Contribution CI builds and tests code but makes no repository changes. Which default repository token permission is appropriate?

- **A.** Use contents read and add specific permissions as needed
- **B.** Use packages write so checkout can succeed
- **C.** Use id-token write for every dotnet test
- **D.** Use write-all to avoid future authorization failures

## L09-Q005

Foundational · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Local tests fail immediately before the learner publishes the sandbox workflow. What should happen to this preparation checkpoint?

- **A.** Expand the repository token permission set
- **B.** Repair the failure before publishing the reviewed change
- **C.** Remove the failing assertion from collected reports
- **D.** Publish and label the run successful

## L09-Q006

Foundational · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

A workflow is committed under docs/workflows instead of .github/workflows, and no push run appears. What explains this?

- **A.** The workflow needs packages write before discovery
- **B.** The file is outside the workflow discovery directory
- **C.** The selected event requires a different job timeout
- **D.** The solution targets the supported SDK version

## L09-Q007

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

The CLI reports status in_progress and an empty conclusion for the intended source revision. How should completion be reported?

- **A.** Passed because its workflow name matches
- **B.** Failed permanently because listing was too early
- **C.** Pending until that exact run succeeds
- **D.** Passed because no final failure exists yet

## L09-Q008

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A learner downloads todo-api from a successful run. What connects that artifact to the reviewed source candidate?

- **A.** The current branch name without its SHA
- **B.** The archive digest matches a value supplied inside that archive
- **C.** The producing headSha matching the approved commit
- **D.** A package version label equal to the release label

## L09-Q009

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The sample selects .NET 10 through global.json. How should setup-dotnet choose the SDK for this repository build?

- **A.** Read the checked-in global.json through its input
- **B.** Infer the SDK from the artifact name
- **C.** Select the latest preview for every run
- **D.** Use whichever SDK is already installed

## L09-Q010

Foundational · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

A test command exits successfully after discovering zero tests. Why should the course validator reject that result?

- **A.** Test discovery requires package publishing permission
- **B.** No executed assertions prove the required behavior
- **C.** Zero tests prove every path was covered
- **D.** Every test requires a preceding Azure deployment

## L09-Q011

Foundational · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A validated CI artifact expires before its planned release. Which prerequisite for immutable promotion is now missing?

- **A.** A more privileged token for the author
- **B.** A screenshot of the successful run header
- **C.** A different display name for the reference
- **D.** Available approved artifact bytes from the retained run

## L09-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Documentation-only changes should avoid expensive CI unless sample or workflow files also change. What configuration implements this scheduling rule?

- **A.** Add relevant sample and workflow event path filters
- **B.** Require environment approval before every compilation
- **C.** Give the job a documentation-specific display name
- **D.** Remove the test command logger argument

## L09-Q013

Foundational · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

After pushing a new workflow revision, the learner only sees an older successful run for another commit. What should happen next?

- **A.** Reuse the older success because both share main
- **B.** Copy the older commit message onto the change
- **C.** Pass the checkpoint because Git push succeeded
- **D.** Query the exact new SHA before judging success

## L09-Q014

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A matrix lists Windows and Ubuntu for the same test job. What execution behavior does this configuration request?

- **A.** One runner switching its operating system between assertions
- **B.** Separate jobs for the selected operating-system values
- **C.** Automatic production deployments after each test
- **D.** Automatic independent approval of both platforms

## L09-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

A canceled test run belongs to the intended commit but produced partial logs. What checkpoint result is appropriate?

- **A.** Incomplete until a successful required run finishes
- **B.** Passed when any log line contains success
- **C.** Passed because cancellation means no test failures
- **D.** Passed after renaming the artifact to complete

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

- **A.** Push requires an existing open pull request
- **B.** Both event filter conditions must match
- **C.** Reading Markdown needs repository write permission
- **D.** Branch matching overrides every path restriction

## L09-Q017

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A required check stays pending when its whole workflow is excluded by path filters. How can branch policy retain protection without blocking unrelated changes?

- **A.** Use a repository administrator token in CI
- **B.** Assume every skipped workflow reports required success
- **C.** Remove all review requirements on documentation changes
- **D.** Ensure a check-reporting path exists for every protected change

## L09-Q018

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

The second job needs files generated by the first but sees an empty workspace despite needs. What is missing?

- **A.** Explicit artifact transfer or required source checkout
- **B.** Repository write permission for every job
- **C.** A longer timeout on the second job
- **D.** A shared display name for both jobs

## L09-Q019

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Packaging must wait for test and lint success. Which job dependency configuration actually enforces this execution order?

```yaml
package:
  needs: [test, lint]
  runs-on: ubuntu-24.04
```

- **A.** Set needs to test and lint job IDs
- **B.** Place package later in the YAML text
- **C.** Include both names in the artifact filename
- **D.** Increase packaging timeout to sixty minutes

## L09-Q020

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

The measured coverage is 61%, and the reviewed minimum is 65%. Which CI decision respects this numerical gate?

```xml
<coverage line-rate="0.61" />
<!-- minimum: 0.65 -->
```

- **A.** Remove uncovered files from the completed report
- **B.** Pass whenever the coverage XML exists
- **C.** Block promotion and retain the measured report
- **D.** Round the result to the next ten

## L09-Q021

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A step produces a nonsecret identifier that a dependent job needs. How should the workflow expose this cross-job value?

- **A.** Write the desired identifier in a YAML comment
- **B.** Pass a runner-local path without transferring its file
- **C.** Set a shell variable in the producing step
- **D.** Declare a job output from the named step output

## L09-Q022

Applied · [CP4](README.md#task-4) · [D3.3.4](../../docs/objective-map.md)

A retry finds an existing github-ci working copy pointing to another remote repository. What preserves the authorized sandbox boundary?

- **A.** Trust the directory because its name matches
- **B.** Reset and force-push the existing origin immediately
- **C.** Stop and inspect the exact remote mismatch
- **D.** Delete the parent course repository and retry

## L09-Q023

Applied · [CP4](README.md#task-4) · [D3.3.1](../../docs/objective-map.md)

A repeat setup finds no staged differences because the reviewed workflow is already committed. What retry behavior is appropriate?

- **A.** Reset main to an earlier arbitrary commit
- **B.** Infer hosted success from the empty local diff
- **C.** Reuse the verified revision without an empty commit
- **D.** Expand token permissions to force a new hash

## L09-Q024

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An operator selects the newest artifact named todo-api without checking its producer. What release verification is still required?

- **A.** Check only that the archive digest matches its own uploaded manifest
- **B.** Confirm only the embedded application version matches the release label
- **C.** Confirm only that the build event was a main-branch push
- **D.** Match approved source revision and successful producing run

## L09-Q025

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Tests must remain blocking, but their reports should upload even when assertions fail. Which reporting design fits both requirements?

- **A.** Use always() on report upload while preserving test failure
- **B.** Suppress every test exit code with continue-on-error
- **C.** Remove needs between tests and packaging
- **D.** Upload reports only after tests succeed

## L09-Q026

Applied · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

CI succeeds on a feature branch while the reviewed main commit has a failing run. Which result governs this checkpoint?

- **A.** The newest successful run on any branch
- **B.** The successful run with the same workflow name but another headSha
- **C.** The run for the exact reviewed main SHA
- **D.** The run with the shortest execution duration

## L09-Q027

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A shell variable set in one step is missing in a later step of the same job. What should carry this nonsecret value?

- **A.** Use the supported GITHUB_ENV environment file
- **B.** Assume sibling shell processes share local variables automatically
- **C.** Put the value in a repository issue title
- **D.** Grant id-token write to the first step

## L09-Q028

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

All matrix combinations should continue when one operating system fails tests. Which setting changes this cancellation behavior?

- **A.** Remove the operating-system dimension entirely
- **B.** Disable matrix strategy fail-fast for the job
- **C.** Give every output the same immutable artifact name
- **D.** Force every test process to return zero

## L09-Q029

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

The team wants manual CI troubleshooting runs without enabling any cloud deployment. Which event addition satisfies that narrow requirement?

- **A.** Add azure/login to all contribution tests
- **B.** Remove locked restore for every manual run
- **C.** Switch to pull_request_target and run contributor code
- **D.** Add workflow_dispatch to the existing CI workflow

## L09-Q030

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Locked restore rejects a changed package declaration absent from the reviewed lockfile. Which repair preserves repeatability and deliberate upgrades?

```text
Declared: 1.3.0
Locked: 1.2.0
Restore: --locked-mode
```

- **A.** Edit the test report to claim restoration succeeded
- **B.** Remove locked mode from every release build
- **C.** Review and regenerate the lockfile with the dependency change
- **D.** Extend runner timeout to twenty-four hours

## L09-Q031

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A newer main push should supersede obsolete active contribution CI. Which configuration reduces wasted execution while preserving branch scope?

- **A.** Use a branch-scoped concurrency group with cancel-in-progress
- **B.** Add production approval to each compilation step
- **C.** Use one global group for all releases and branches
- **D.** Delete successful artifacts on every new push

## L09-Q032

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Deployment rebuilds main rather than downloading the approved CI output. Which important release guarantee does this approach lose?

- **A.** Deployment always finishes faster than the previous build
- **B.** Deployment uses the same bytes that passed validation
- **C.** Organization administration becomes necessary for every job
- **D.** Every reviewer is automatically removed from the environment

## L09-Q033

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A third-party action uses a mutable tag, but executable dependencies require exact review. Which reference provides the strongest implementation identity?

- **A.** A tag whose name resembles a semantic version
- **B.** Additional repository write permissions for the action
- **C.** Trust a verified publisher while retaining its mutable version tag
- **D.** A reviewed full action commit SHA

## L09-Q034

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A pull-request title is interpolated directly into shell source. What change reduces command-injection risk while still using that title?

- **A.** Require at least one space in the title
- **B.** Add a production environment to the test job
- **C.** Mask the title while retaining direct source interpolation
- **D.** Pass it as environment data and quote its use

## L09-Q035

Applied · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

A fork contribution needs tests but must never receive release credentials. Which execution design respects that trust boundary?

- **A.** Store release secrets in ordinary repository variables
- **B.** Trust any fork branch named main
- **C.** Separate unprivileged contribution CI from protected trusted releases
- **D.** Run the fork head through pull_request_target with secrets

## L09-Q036

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An artifact download fails its digest comparison with the expected platform record. What is the defensible release decision?

- **A.** Rename the archive until verification is no longer run
- **B.** Replace the trusted digest with the newly calculated one
- **C.** Ignore the mismatch because tests previously passed
- **D.** Stop promotion and investigate the selected content identity

## L09-Q037

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Windows and Linux matrix jobs both upload test-results. How should output naming preserve independently identifiable result sets?

- **A.** Keep outputs only in the source checkout
- **B.** Include the matrix operating system in each artifact name
- **C.** Remove Windows validation solely to avoid naming decisions
- **D.** Assume upload order safely merges every result

## L09-Q038

Applied · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

A test command piped through a logger fails, while the wrapper reports success. What must the wrapper preserve for accurate gating?

- **A.** Only output directory creation time
- **B.** Only the first informational build message
- **C.** The test process exit code and actual counters
- **D.** Only the logger successful exit status

## L09-Q039

Applied · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

An approved artifact is copied to another store under a different display name. Which record must accompany the copy?

- **A.** Original run, source SHA and trusted content digest
- **B.** Only local download time and machine hostname
- **C.** Only the current default branch tip
- **D.** Only destination name and operator display name

## L09-Q040

Applied · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

Internal changes trigger both push and pull_request CI, producing redundant runs. What should the team adjust while keeping intended validation?

- **A.** Only the number of required code reviewers
- **B.** Only the NuGet package manager version
- **C.** Review event overlap and branch rules for contribution coverage
- **D.** Only artifact compression settings for the jobs

## L09-Q041

Advanced · [CP5](README.md#task-5) · [D3.2.3](../../docs/objective-map.md)

Required tests fail under continue-on-error, package upload succeeds, and the workflow appears green. Diagnostics must remain available while release is blocked for failed assertions. Which acceptance design restores all three intended boundaries?

- **A.** Increase artifact retention without changing result handling
- **B.** Preserve blocking test failure and publish diagnostics through a failure-aware step
- **C.** Add continue-on-error to packaging as well
- **D.** Keep the test tolerated and rely on needs pointing to that job

## L09-Q042

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A merge queue is enabled, but required CI handles only pull_request events and never reports for queue groups. What adjustment preserves combined-candidate validation?

```yaml
on:
  pull_request:
# Merge queue has now been enabled
```

- **A.** Reuse a prior pull-request success despite candidate changes
- **B.** Handle merge_group and test its generated candidate revision
- **C.** Grant production secrets to queued contributor code
- **D.** Disable required branch checks for queued entries

## L09-Q043

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

A privileged workflow_run consumer receives an artifact from untrusted contribution code. Which verification is required before consuming its contents?

- **A.** Trust every artifact because GitHub stored its archive
- **B.** Establish producer trust and avoid executing untrusted artifact content
- **C.** Execute its installer before checking the producing event
- **D.** Use the display name as an authorization token

## L09-Q044

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Three independent forty-minute operating-system jobs are mandatory, but the allowed matrix capacity is two concurrent jobs. Ignoring startup overhead, which configuration and minimum duration preserve all coverage and the capacity boundary?

```text
Required matrix: Windows, Linux, macOS
Each job: 40 minutes
Maximum simultaneous jobs: 2
Startup overhead: ignored
```

- **A.** Keep all three values, max-parallel one, forty minutes
- **B.** Keep all three values, max-parallel two, at least eighty minutes
- **C.** Remove one platform, max-parallel two, forty minutes
- **D.** Keep all three values, max-parallel three, forty minutes

## L09-Q045

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

The downloaded archive matches its expected checksum, but its source differs from the approved commit. What does this combination establish?

```text
Digest: matches trusted archive record
Approved source: commit A
Artifact source: commit B
```

- **A.** An unchanged filename proves the approved source was used
- **B.** The approval target should silently follow the artifact
- **C.** A matching checksum overrides all source approval requirements
- **D.** Content integrity can pass while source approval fails

## L09-Q046

Advanced · [CP2](README.md#task-2) · [D3.3.4](../../docs/objective-map.md)

A push changes documentation and application code while paths-ignore contains docs/**. Which scheduling behavior should the reviewer expect?

- **A.** The application file can still make the workflow eligible
- **B.** Any documentation change suppresses all application validation
- **C.** Path matching automatically grants the token write authority
- **D.** Paths-ignore permanently disables every main push event

## L09-Q047

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

A reusable workflow receives contents read and attempts to expand itself to contents write. Which authorization principle applies to this call chain?

- **A.** An action version tag determines all token permissions
- **B.** The callee cannot elevate the caller granted permission
- **C.** Every reusable workflow automatically receives repository administration
- **D.** A larger callee declaration always overrides caller restrictions

## L09-Q048

Advanced · [CP3](README.md#task-3) · [D3.2.3](../../docs/objective-map.md)

Two builds of one source commit resolve different floating dependencies. How can the pipeline retain reproducibility and still adopt security fixes?

- **A.** Replace published bytes under the previous version label
- **B.** Always restore latest packages just before production deployment
- **C.** Commit reviewed lock inputs and test deliberate dependency updates
- **D.** Disable restoration on every clean hosted runner

## L09-Q049

Advanced · [CP5](README.md#task-5) · [D3.1.4](../../docs/objective-map.md)

Both Windows and Linux must pass for the approved source candidate. Which evidence set is adequate before artifact promotion?

- **A.** One Linux TRX and a Windows runner inventory
- **B.** A previous release sharing the current branch name
- **C.** An artifact display name mentioning both platforms
- **D.** Matching commit run success plus separate required matrix reports

## L09-Q050

Advanced · [CP2](README.md#task-2) · [D3.3.1](../../docs/objective-map.md)

Fork builds use caching while protected release consumes trusted inputs. Which boundary should this optimization preserve under untrusted contribution execution?

- **A.** Treat contribution cache content as untrusted release input
- **B.** Cache deployment credentials with intermediate build files
- **C.** Let the first cache writer replace approved release artifacts
- **D.** Treat a matching cache key as passed release validation
