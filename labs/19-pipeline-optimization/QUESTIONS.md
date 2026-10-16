# Lab 19 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L19-Q001

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The team proposes caching dependencies but has never measured restore, build or test durations. What should happen first?

- **A.** Buy more parallel capacity immediately
- **B.** Record a reproducible timing baseline
- **C.** Cache every workspace directory
- **D.** Remove tests to improve duration

## L19-Q002

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A build takes 90 seconds restoring packages and 8 seconds compiling unchanged source. Which optimization is the most directly targeted starting point?

- **A.** Reformat the YAML files
- **B.** Evaluate dependency caching
- **C.** Parallelize deployment approvals
- **D.** Increase release artifact retention

## L19-Q003

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The cold run includes package downloads while the warm run reuses local packages. Which comparison would avoid overstating a code optimization's effect?

- **A.** Measure only the shortest compiler message
- **B.** Exclude dependency state from all recorded evidence
- **C.** Compare equivalent cache and dependency conditions
- **D.** Compare any fastest warm run to slowest cold run

## L19-Q004

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

An optimization experiment reports total duration but not whether tests still passed. Which additional result is essential before accepting the change?

- **A.** Only whether the new build restores from cache
- **B.** Only the pipeline's creation date
- **C.** Equivalent validation success and outputs
- **D.** Only the compiler exit status without test outcomes

## L19-Q005

Advanced · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

Restore originally took 20 seconds. Cache restore and save now take 45 seconds while package installation takes 5 seconds. What should the team conclude about this candidate?

```json
{"before":{"restoreSeconds":20},"after":{"cacheTransferSeconds":45,"installSeconds":5}}
```

- **A.** Increase cache compression immediately and accept the optimization
- **B.** Keep caching because package installation alone fell to five seconds
- **C.** The measured cache overhead exceeds the saved work
- **D.** Any cache hit guarantees better performance

## L19-Q006

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The team compares two build strategies on different SDK versions and different agent sizes. What must change to attribute timing differences confidently?

- **A.** Suppress the slower timing result
- **B.** Assume SDK choice never affects performance
- **C.** Control relevant tooling and execution conditions
- **D.** Record only the faster strategy's name

## L19-Q007

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A cold build failed but a warm cached build passed, and dependency restoration is nondeterministic. Which correctness fix should precede speed claims?

- **A.** Report the warm duration as full proof
- **B.** Disable cache misses from running
- **C.** Lock dependencies and validate a clean rebuild
- **D.** Preserve the passing cache forever

## L19-Q008

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A learner times build commands but swallows nonzero native exit codes. What is wrong with the resulting performance evidence?

- **A.** Every native failure proves network latency
- **B.** The cache key determines all command outcomes
- **C.** Failed commands may appear as successful fast builds
- **D.** Elapsed time is automatically trustworthy regardless of failure

## L19-Q009

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The optimization report claims a 50 percent improvement from one unusually slow baseline run. Which stronger evaluation should the team request?

- **A.** Repeated comparable runs with reported variability
- **B.** Only a screenshot of the best result
- **C.** Compare several runs without controlling cache or agent state
- **D.** A single additional run on a larger agent

## L19-Q010

Advanced · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The new build is faster because it skips restore, but the agent previously held untracked packages and lockfiles changed. Which acceptance test addresses both speed and correctness?

```text
Baseline: clean agent; locked restore; SDK 10.0.402
Candidate: reused workspace; --no-restore; lockfile changed; untracked packages present
```

- **A.** Clean locked restore plus equivalent incremental measurements
- **B.** Accept only the warm build duration
- **C.** Publish from the old workspace without checking changes
- **D.** Remove lockfiles so restore can choose freely

## L19-Q011

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A dependency cache should improve speed while a missed cache must still permit a correct build. Which pipeline behavior implements that contract?

- **A.** Skip restore regardless of cache contents
- **B.** Publish any binaries found in the cache
- **C.** Restore dependencies normally after cache resolution
- **D.** Fail immediately whenever the cache misses

## L19-Q012

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Package versions changed in the lockfile but the cache key contains only the operating system. Which key improvement best reduces stale dependency reuse?

- **A.** Include only the package feed URL
- **B.** Include only the source checkout directory
- **C.** Include the dependency lockfile hash
- **D.** Include only a fixed dependency-cache label

## L19-Q013

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Linux and Windows jobs share a cache containing platform-specific native dependencies. Which boundary should the cache key preserve?

- **A.** Choose the oldest available cache
- **B.** Key only by lockfile and omit platform
- **C.** Separate operating-system compatibility keys
- **D.** Use one universal key always

## L19-Q014

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A deployment job requires the exact binary produced by CI. Should that binary be transported using pipeline caching or a build artifact?

- **A.** Use only a local agent directory
- **B.** Rebuild after approval from latest main
- **C.** Use an immutable build artifact
- **D.** Use an arbitrary dependency cache

## L19-Q015

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

An exact lockfile cache misses, but a configured prefix fallback restores older packages. Which follow-up preserves correctness without discarding the acceleration?

```text
Exact cache: nuget/linux/new-lock-hash MISS
Fallback cache: nuget/linux/old-lock-hash HIT
Requested locked versions differ from restored cache contents
```

- **A.** Skip restoration after any fallback hit
- **B.** Rewrite the lockfile to match cache contents
- **C.** Promote cached binaries as the new release artifact
- **D.** Run locked dependency restore against the requested versions

## L19-Q016

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

The pipeline attempts to modify an existing Azure Pipelines cache entry after a dependency update. What design change matches the cache contract?

- **A.** Overwrite the existing entry in place
- **B.** Delete the project's release artifacts instead
- **C.** Store the change in a secret variable
- **D.** Use a new key for changed inputs

## L19-Q017

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A cache contains a complete agent home directory including credential files. Which narrower scope is appropriate?

- **A.** Cache only reviewed dependency package directories
- **B.** Keep the home directory and hide its filename
- **C.** Share the cache with every fork
- **D.** Store credentials beside the lockfile

## L19-Q018

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

The cache-hit variable indicates success, but the install command still verifies the lockfile and restores missing packages. Why is this reasonable?

- **A.** A cache hit proves all package integrity checks unnecessary
- **B.** The cache-hit flag always means deployment approval
- **C.** Install always runs only to update documentation
- **D.** Cache success does not replace dependency validation

## L19-Q019

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A cache key segment looks like a filepath but should be a literal version label. What change prevents unintended file hashing?

- **A.** Change the artifact retention period
- **B.** Quote the literal key segment
- **C.** Delete the actual lockfile
- **D.** Add the segment to release tags only

## L19-Q020

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A shared cache restores quickly but increases failed native-library loads after an SDK and OS change. Which redesign balances acceleration and compatibility?

```json
{"cacheKey":"shared-nuget","oldPlatform":"windows-x64","newPlatform":"linux-x64","sdkChanged":true,"nativeLoadFailures":7}
```

- **A.** Keep one key and retry failures indefinitely
- **B.** Disable all dependency verification on cache hits
- **C.** Key only by default branch while retaining native package contents
- **D.** Key by lockfile plus relevant SDK and platform boundaries

## L19-Q021

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Three independent jobs take 4, 6 and 9 minutes with unlimited available capacity and no startup overhead. What is their ideal parallel critical-path duration?

- **A.** 4 minutes
- **B.** 9 minutes
- **C.** 19 minutes
- **D.** 6 minutes

## L19-Q022

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

An integration job consumes outputs from the build job but currently starts independently. Which YAML relationship expresses the required ordering?

- **A.** Run integration only after cleanup
- **B.** Make integration depend on build
- **C.** Place integration earlier in the file
- **D.** Place the file in a shared-looking local path

## L19-Q023

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A matrix has twelve legs, but the shared private service supports at most three concurrent test clients. Which control should limit pressure?

- **A.** Increase every job's timeout only
- **B.** Remove all test assertions
- **C.** Use the same output filename in every leg
- **D.** Set bounded matrix parallelism

## L19-Q024

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Two test jobs write to the same database and interfere when run concurrently. Which design change enables reliable bounded parallel execution?

- **A.** Publish whichever job finishes first
- **B.** Isolate each job's test data
- **C.** Retry every failed test without isolation
- **D.** Mark all failures as warnings

## L19-Q025

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Four CPU-heavy jobs run on two cores and share one mutable fixture. Unlimited parallelism becomes slower and flaky. Which redesign addresses both observed constraints?

```json
{"cores":2,"cpuHeavyJobs":4,"parallelism":"unbounded","fixture":"one shared database","result":"slower and nondeterministic"}
```

- **A.** Raise concurrency so tests start before the shared fixture changes
- **B.** Serialize fixture setup but let all tests mutate the same database
- **C.** Increase CPU capacity while retaining the shared mutable fixture
- **D.** Bound concurrency and isolate mutable fixtures

## L19-Q026

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A downstream release job must wait for unit tests, security scans and packaging. Which dependency model represents that requirement?

- **A.** Use no dependencies and sleep briefly
- **B.** Depend on every required producer
- **C.** Depend only on the fastest job
- **D.** Depend only on documentation formatting

## L19-Q027

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel jobs run on separate hosted agents and a file exists only in the producing workspace. How should the consuming job obtain it?

- **A.** Pass an output variable containing the local filename
- **B.** Publish and download an explicit artifact
- **C.** Assume the same absolute path is shared
- **D.** Pass the file's local path as a secret

## L19-Q028

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A performance plan shortens two noncritical jobs while a required database job remains the longest branch. What limits the total improvement?

- **A.** The unchanged critical path
- **B.** The time saved only in the shortest noncritical branch
- **C.** The sum of durations of already parallel shorter branches
- **D.** The count of matrix legs regardless of dependencies

## L19-Q029

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A private agent pool queues parallel jobs despite independent YAML definitions. Which prerequisite should the team inspect before buying faster machines?

- **A.** Only the repository license
- **B.** Available parallel-job entitlement and agent capacity
- **C.** Only the number of independent YAML job declarations
- **D.** Only the artifact retention count

## L19-Q030

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

The release job uses always(), so it can promote after a required test branch fails. Which correction preserves evidence collection without unsafe promotion?

```yaml
jobs:
- job: Tests
- job: Security
- job: Release
  dependsOn: [Tests, Security]
  condition: always()
```

- **A.** Keep always() on promotion but publish a warning for failed tests
- **B.** Mark failed branches as continueOnError
- **C.** Make promotion depend only on successful packaging
- **D.** Gate promotion on required success and collect evidence separately

## L19-Q031

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A deployable binary is needed for rollback beyond the project's normal short-lived test-log retention. Which retention choice fits?

- **A.** Retain the release artifact explicitly longer
- **B.** Keep only the commit message longer
- **C.** Keep only dependency caches indefinitely
- **D.** Retain deployment logs but expire the application binary

## L19-Q032

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A retention policy should treat temporary test logs and approved release artifacts differently. What should determine their retention classes?

- **A.** Only whichever file is largest
- **B.** Apply one two-day period to every output
- **C.** Operational recovery and evidence requirements
- **D.** Apply one unlimited period to every output

## L19-Q033

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A production release references a CI run scheduled for automatic deletion tomorrow. Which action preserves the intended rollback baseline?

- **A.** Rename the artifact to baseline
- **B.** Trust the package cache to recreate it
- **C.** Apply an explicit retention protection to that run
- **D.** Create an unlinked tag only

## L19-Q034

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

The team deletes a pipeline run and later cannot download its associated artifact. What relationship should the retention design account for?

- **A.** Cache keys guarantee artifact retention
- **B.** Run deletion can remove its retained artifacts
- **C.** Artifacts always outlive run deletion indefinitely
- **D.** A Git commit permanently stores every CI artifact

## L19-Q035

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A release needs a ninety day rollback window but artifacts expire after seven days. Which plan meets both cost control and recovery requirements?

```json
{"requiredRollbackDays":90,"artifactExpiryDays":7,"selectedReleaseRun":42,"transientBuildRuns":500}
```

- **A.** Keep seven-day retention and promise rebuilds
- **B.** Delete artifacts immediately after production deployment
- **C.** Retain selected release baselines for the required window
- **D.** Extend every cache forever instead

## L19-Q036

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A retained artifact includes learner identifiers and raw authentication logs. Which change improves evidence handling without removing necessary release provenance?

- **A.** Change only the archive's display name
- **B.** Move credentials into the release manifest
- **C.** Redact sensitive data before artifact publication
- **D.** Keep the logs forever for convenience

## L19-Q037

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

An artifact class has no consumers after two days, while approved release baselines are needed for months. Which policy is most economical?

- **A.** Expire transient outputs sooner than release baselines
- **B.** Retain all outputs indefinitely
- **C.** Delete every artifact after one day
- **D.** Use the dependency cache as the only archive

## L19-Q038

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A rollback rehearsal cannot find its referenced baseline artifact although the source SHA still exists. Which acceptance result is accurate?

- **A.** The system automatically reconstructs every deleted artifact
- **B.** Rollback readiness is incomplete
- **C.** Rollback is fully verified by the SHA
- **D.** Health verification can replace the missing artifact

## L19-Q039

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A policy preserves the last five runs, but a production baseline becomes older than those runs during heavy CI activity. What additional control is needed?

- **A.** Longer retention for dependency cache entries only
- **B.** Continue relying only on the last-five-runs rule during heavy activity
- **C.** Retain the release tag and source manifest without protecting the run
- **D.** Explicit protection for the release-related run

## L19-Q040

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A migrated pipeline reproduces deployment behavior but deletes baseline artifacts after a week, violating the old three-month recovery agreement. Which acceptance decision fits?

```text
Classic agreement: release baselines retained90 days
YAML deployment: passes
YAML retention: release artifacts expire after7 days
```

- **A.** Accept because the deployment task succeeded
- **B.** Disable rollback requirements in the report silently
- **C.** Keep the classic pipeline's name only
- **D.** Block cutover until equivalent release retention is implemented

## L19-Q041

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A classic pipeline migration begins with copying its task list. Which additional configuration must be inventoried before claiming YAML equivalence?

- **A.** Triggers, permissions, approvals, variables and artifact contracts
- **B.** Only the task names and their enabled flags
- **C.** Only the final published artifact filename
- **D.** Only the number of task groups

## L19-Q042

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A YAML conversion includes deployment steps but omits the classic environment approval. What must happen before enabling production execution?

- **A.** Remove the previous approval evidence
- **B.** Rename the stage to Approved
- **C.** Recreate and verify equivalent protected-resource checks
- **D.** Assume YAML includes approvals implicitly

## L19-Q043

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The team needs to compare a classic pipeline with its YAML replacement before cutover. Which validation approach provides useful parity evidence?

- **A.** Compare only YAML line counts
- **B.** Delete the classic definition before testing
- **C.** Compare only whether both final jobs returned success
- **D.** Run representative inputs and compare required gates and outputs

## L19-Q044

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A task group becomes a reusable YAML template consumed by several pipelines. What must be part of the new interface?

- **A.** Untracked agent-local variables only
- **B.** Hardcoded production credentials
- **C.** A branch name that always floats to latest
- **D.** Explicit typed parameters and documented required context

## L19-Q045

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic and YAML runs use the same source but publish different directory layouts, breaking deployment selection. Which migration correction addresses the actual contract?

```text
Classic consumer path: todo-api/app/DevOps.Api.dll
New publisher path: todo-api/bin/DevOps.Api.dll
Deployment failure: expected app directory absent
```

- **A.** Ignore the deploy failure if CI passed
- **B.** Adapt one agent workspace manually without updating the output contract
- **C.** Preserve or deliberately version the artifact layout
- **D.** Keep only the same artifact name despite changed layout

## L19-Q046

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A migration replaces a long-lived connection secret with WIF while reusing a broadly authorized service connection. Which review remains necessary?

- **A.** Authorize every pipeline to reduce support tickets
- **B.** Store the old secret in YAML as fallback
- **C.** Verify federation claims, scoped rights and pipeline authorization
- **D.** Assume WIF makes all permissions safe

## L19-Q047

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The YAML replacement has only been parsed locally while service connections and hosted-agent permissions remain unavailable. Which result should the team record?

- **A.** Hosted-agent availability proven by valid pool syntax
- **B.** Local definition verified; provider execution unverified
- **C.** Migration fully executed through local parsing
- **D.** All approvals passed because stage names match

## L19-Q048

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

After YAML cutover, a scheduled classic trigger remains active and both pipelines deploy the same environment. What should the cutover checklist address?

- **A.** Delete all deployment evidence from both pipelines
- **B.** Disable superseded triggers after verified replacement readiness
- **C.** Keep both schedules permanently without coordination
- **D.** Remove its UI shortcut while leaving the trigger enabled

## L19-Q049

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The old pipeline used a private network agent, but YAML selects a hosted image without database routing. Which migration dimension was missed?

- **A.** Only task version numbers without agent placement
- **B.** Only artifact retention duration
- **C.** Execution environment and network prerequisites
- **D.** Only task display-name formatting

## L19-Q050

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The YAML replacement is faster using parallel tests and caching, yet two branches share a database and rollback artifacts expire too early. Which acceptance decision preserves migration quality?

```json
{"durationImproved":true,"testDatabaseSharedAcrossParallelJobs":true,"requiredRecoveryDays":90,"baselineExpiryDays":7}
```

- **A.** Accept solely because average duration decreased
- **B.** Disable the failing branches and keep retention unchanged
- **C.** Keep the cache but remove all artifact publication
- **D.** Require isolated tests and equivalent recovery retention before cutover
