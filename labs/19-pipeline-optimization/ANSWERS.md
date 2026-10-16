# Lab 19 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L19-Q001

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The team proposes caching dependencies but has never measured restore, build or test durations. What should happen first?

- **A. Buy more parallel capacity immediately** Extra capacity may not address the actual bottleneck without baseline timing evidence.
- **B. Record a reproducible timing baseline** **Correct.** Measurements identify expensive stages and support comparison after a targeted optimization.
- **C. Cache every workspace directory** Unmeasured broad caching can add overhead and preserve unnecessary mutable state.
- **D. Remove tests to improve duration** Removing required validation changes quality rather than proving a safe performance improvement.

**Explanation:** Extra capacity may not address the actual bottleneck without baseline timing evidence. Measurements identify expensive stages and support comparison after a targeted optimization. Unmeasured broad caching can add overhead and preserve unnecessary mutable state. Removing required validation changes quality rather than proving a safe performance improvement.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q002

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A build takes 90 seconds restoring packages and 8 seconds compiling unchanged source. Which optimization is the most directly targeted starting point?

- **A. Reformat the YAML files** Formatting alone does not address the observed dependency restore duration.
- **B. Evaluate dependency caching** **Correct.** Restore dominates the measured cost, making reusable dependency downloads a reasonable candidate.
- **C. Parallelize deployment approvals** Approval scheduling does not reduce the measured package restore bottleneck.
- **D. Increase release artifact retention** Retention affects stored release evidence rather than dependency download execution time.

**Explanation:** Formatting alone does not address the observed dependency restore duration. Restore dominates the measured cost, making reusable dependency downloads a reasonable candidate. Approval scheduling does not reduce the measured package restore bottleneck. Retention affects stored release evidence rather than dependency download execution time.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q003

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The cold run includes package downloads while the warm run reuses local packages. Which comparison would avoid overstating a code optimization's effect?

- **A. Measure only the shortest compiler message** A single message does not represent complete build or restore execution time.
- **B. Exclude dependency state from all recorded evidence** Missing cache context prevents reviewers interpreting the observed performance difference accurately.
- **C. Compare equivalent cache and dependency conditions** **Correct.** Different dependency states can explain timing changes unrelated to the optimized build logic.
- **D. Compare any fastest warm run to slowest cold run** Selecting unequal extremes overstates improvement and obscures the changed experimental conditions.

**Explanation:** A single message does not represent complete build or restore execution time. Missing cache context prevents reviewers interpreting the observed performance difference accurately. Different dependency states can explain timing changes unrelated to the optimized build logic. Selecting unequal extremes overstates improvement and obscures the changed experimental conditions.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q004

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

An optimization experiment reports total duration but not whether tests still passed. Which additional result is essential before accepting the change?

- **A. Only whether the new build restores from cache** Cache success does not demonstrate equivalent tests or correctness of the generated release outputs.
- **B. Only the pipeline's creation date** Creation time cannot establish whether optimization preserved required correctness checks.
- **C. Equivalent validation success and outputs** **Correct.** Faster execution is useful only if required quality checks and outputs remain correct.
- **D. Only the compiler exit status without test outcomes** Compilation success alone does not establish the behavior verified by the required test suite.

**Explanation:** Cache success does not demonstrate equivalent tests or correctness of the generated release outputs. Creation time cannot establish whether optimization preserved required correctness checks. Faster execution is useful only if required quality checks and outputs remain correct. Compilation success alone does not establish the behavior verified by the required test suite.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q005

Advanced · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

Restore originally took 20 seconds. Cache restore and save now take 45 seconds while package installation takes 5 seconds. What should the team conclude about this candidate?

```json
{"before":{"restoreSeconds":20},"after":{"cacheTransferSeconds":45,"installSeconds":5}}
```

- **A. Increase cache compression immediately and accept the optimization** Compression may change costs, but a new measurement is needed before asserting improved total duration.
- **B. Keep caching because package installation alone fell to five seconds** Evaluating only installation omits the forty-five seconds added by cache transfer and storage work.
- **C. The measured cache overhead exceeds the saved work** **Correct.** The cache adds more elapsed work than the original dependency restoration cost.
- **D. Any cache hit guarantees better performance** A successful hit can still cost more than regenerating the cached dependencies.

**Explanation:** The cache adds more elapsed work than the original dependency restoration cost. Compression may change costs, but a new measurement is needed before asserting improved total duration. Evaluating only installation omits the forty-five seconds added by cache transfer and storage work. A successful hit can still cost more than regenerating the cached dependencies.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q006

Foundational · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The team compares two build strategies on different SDK versions and different agent sizes. What must change to attribute timing differences confidently?

- **A. Suppress the slower timing result** Discarding inconvenient evidence prevents an honest comparison of the two strategies.
- **B. Assume SDK choice never affects performance** SDK and execution environment differences can materially alter restore and build behavior.
- **C. Control relevant tooling and execution conditions** **Correct.** Comparable SDK, inputs and capacity reduce confounding factors in the timing experiment.
- **D. Record only the faster strategy's name** A label cannot explain the effects of changed tooling and hardware conditions.

**Explanation:** Discarding inconvenient evidence prevents an honest comparison of the two strategies. SDK and execution environment differences can materially alter restore and build behavior. Comparable SDK, inputs and capacity reduce confounding factors in the timing experiment. A label cannot explain the effects of changed tooling and hardware conditions.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q007

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A cold build failed but a warm cached build passed, and dependency restoration is nondeterministic. Which correctness fix should precede speed claims?

- **A. Report the warm duration as full proof** A fast successful run does not explain the clean build's correctness failure.
- **B. Disable cache misses from running** A cache should accelerate execution without becoming an undocumented correctness prerequisite.
- **C. Lock dependencies and validate a clean rebuild** **Correct.** Reproducible inputs and clean execution distinguish genuine correctness from accidental cached success.
- **D. Preserve the passing cache forever** A mutable environment dependency cannot replace reproducible dependency resolution and clean validation.

**Explanation:** A fast successful run does not explain the clean build's correctness failure. A cache should accelerate execution without becoming an undocumented correctness prerequisite. Reproducible inputs and clean execution distinguish genuine correctness from accidental cached success. A mutable environment dependency cannot replace reproducible dependency resolution and clean validation.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q008

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

A learner times build commands but swallows nonzero native exit codes. What is wrong with the resulting performance evidence?

- **A. Every native failure proves network latency** Exit codes can reflect many failures unrelated to the network performance hypothesis.
- **B. The cache key determines all command outcomes** Cache identity cannot guarantee that compilation or tests complete successfully.
- **C. Failed commands may appear as successful fast builds** **Correct.** Timing needs execution outcome checks or errors can masquerade as improvements.
- **D. Elapsed time is automatically trustworthy regardless of failure** A shorter failing execution does not measure completion of the required build work.

**Explanation:** Exit codes can reflect many failures unrelated to the network performance hypothesis. Cache identity cannot guarantee that compilation or tests complete successfully. Timing needs execution outcome checks or errors can masquerade as improvements. A shorter failing execution does not measure completion of the required build work.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q009

Applied · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The optimization report claims a 50 percent improvement from one unusually slow baseline run. Which stronger evaluation should the team request?

- **A. Repeated comparable runs with reported variability** **Correct.** Multiple controlled measurements expose noise and make the performance claim more reliable.
- **B. Only a screenshot of the best result** A best-case screenshot hides variability and cannot establish representative execution behavior.
- **C. Compare several runs without controlling cache or agent state** More samples do not isolate the optimization when dependency state and execution capacity vary between the compared runs.
- **D. A single additional run on a larger agent** Changing agent capacity leaves experimental conditions unequal and still provides weak variability evidence.

**Explanation:** Multiple controlled measurements expose noise and make the performance claim more reliable. A best-case screenshot hides variability and cannot establish representative execution behavior. More samples do not isolate the optimization when dependency state and execution capacity vary between the compared runs. Changing agent capacity leaves experimental conditions unequal and still provides weak variability evidence.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q010

Advanced · [CP1](README.md#task-1) · [D1.2.6](../../docs/objective-map.md), [D3.6.1](../../docs/objective-map.md)

The new build is faster because it skips restore, but the agent previously held untracked packages and lockfiles changed. Which acceptance test addresses both speed and correctness?

```text
Baseline: clean agent; locked restore; SDK 10.0.402
Candidate: reused workspace; --no-restore; lockfile changed; untracked packages present
```

- **A. Clean locked restore plus equivalent incremental measurements** **Correct.** Clean reproducibility must be demonstrated before attributing warm incremental timing improvements.
- **B. Accept only the warm build duration** Warm success can conceal missing dependencies or stale packages on that agent.
- **C. Publish from the old workspace without checking changes** Stale workspace contents may not correspond to the reviewed dependency revision.
- **D. Remove lockfiles so restore can choose freely** Unbounded dependency changes reduce reproducibility rather than validating the optimized pipeline.

**Explanation:** Clean reproducibility must be demonstrated before attributing warm incremental timing improvements. Warm success can conceal missing dependencies or stale packages on that agent. Stale workspace contents may not correspond to the reviewed dependency revision. Unbounded dependency changes reduce reproducibility rather than validating the optimized pipeline.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q011

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A dependency cache should improve speed while a missed cache must still permit a correct build. Which pipeline behavior implements that contract?

- **A. Skip restore regardless of cache contents** An empty or incomplete cache cannot supply all required project dependencies.
- **B. Publish any binaries found in the cache** Cached dependencies are not a substitute for building the reviewed source revision.
- **C. Restore dependencies normally after cache resolution** **Correct.** A cache is an optional accelerator rather than a required source of correctness.
- **D. Fail immediately whenever the cache misses** A missing accelerator should not prevent normal dependency restoration from completing.

**Explanation:** An empty or incomplete cache cannot supply all required project dependencies. Cached dependencies are not a substitute for building the reviewed source revision. A cache is an optional accelerator rather than a required source of correctness. A missing accelerator should not prevent normal dependency restoration from completing.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q012

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Package versions changed in the lockfile but the cache key contains only the operating system. Which key improvement best reduces stale dependency reuse?

- **A. Include only the package feed URL** A feed URL stays unchanged when the requested package versions in the lockfile change.
- **B. Include only the source checkout directory** A directory path does not describe the lockfile contents or selected package versions.
- **C. Include the dependency lockfile hash** **Correct.** The lockfile contents distinguish dependency sets that need different cached package resolution.
- **D. Include only a fixed dependency-cache label** A fixed label cannot distinguish changes in the resolved dependency set.

**Explanation:** A feed URL stays unchanged when the requested package versions in the lockfile change. A directory path does not describe the lockfile contents or selected package versions. The lockfile contents distinguish dependency sets that need different cached package resolution. A fixed label cannot distinguish changes in the resolved dependency set.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q013

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Linux and Windows jobs share a cache containing platform-specific native dependencies. Which boundary should the cache key preserve?

- **A. Choose the oldest available cache** Age alone does not establish platform or dependency compatibility.
- **B. Key only by lockfile and omit platform** The same lockfile can still resolve native assets that are incompatible across execution platforms.
- **C. Separate operating-system compatibility keys** **Correct.** Native dependency contents can differ across operating systems even for similar project sources.
- **D. Use one universal key always** A universal key can restore incompatible platform-specific native files into another environment.

**Explanation:** Age alone does not establish platform or dependency compatibility. The same lockfile can still resolve native assets that are incompatible across execution platforms. Native dependency contents can differ across operating systems even for similar project sources. A universal key can restore incompatible platform-specific native files into another environment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q014

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A deployment job requires the exact binary produced by CI. Should that binary be transported using pipeline caching or a build artifact?

- **A. Use only a local agent directory** Jobs may run on different agents and cannot assume the prior workspace exists.
- **B. Rebuild after approval from latest main** Rebuilding can change bytes and disconnect deployment from the reviewed CI artifact.
- **C. Use an immutable build artifact** **Correct.** Artifacts carry required run outputs while caches are optional performance accelerators.
- **D. Use an arbitrary dependency cache** Cache contents do not establish the exact successful CI output selected for deployment.

**Explanation:** Jobs may run on different agents and cannot assume the prior workspace exists. Rebuilding can change bytes and disconnect deployment from the reviewed CI artifact. Artifacts carry required run outputs while caches are optional performance accelerators. Cache contents do not establish the exact successful CI output selected for deployment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q015

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

An exact lockfile cache misses, but a configured prefix fallback restores older packages. Which follow-up preserves correctness without discarding the acceleration?

```text
Exact cache: nuget/linux/new-lock-hash MISS
Fallback cache: nuget/linux/old-lock-hash HIT
Requested locked versions differ from restored cache contents
```

- **A. Skip restoration after any fallback hit** A partial hit does not establish that all requested dependency versions are present.
- **B. Rewrite the lockfile to match cache contents** Changing reviewed dependency inputs to fit an old cache reverses the intended contract.
- **C. Promote cached binaries as the new release artifact** An optional package cache does not provide the reviewed application build output.
- **D. Run locked dependency restore against the requested versions** **Correct.** Fallback contents can accelerate downloads while the lockfile still governs required dependencies.

**Explanation:** A partial hit does not establish that all requested dependency versions are present. Changing reviewed dependency inputs to fit an old cache reverses the intended contract. An optional package cache does not provide the reviewed application build output. Fallback contents can accelerate downloads while the lockfile still governs required dependencies.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q016

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

The pipeline attempts to modify an existing Azure Pipelines cache entry after a dependency update. What design change matches the cache contract?

- **A. Overwrite the existing entry in place** An existing immutable cache cannot be updated using the same cache identity.
- **B. Delete the project's release artifacts instead** Artifact deletion does not change cache entry immutability or dependency identity.
- **C. Store the change in a secret variable** Secret variables are not a versioned replacement for dependency cache contents.
- **D. Use a new key for changed inputs** **Correct.** Azure Pipelines caches are immutable after creation and changed inputs need distinct keys.

**Explanation:** An existing immutable cache cannot be updated using the same cache identity. Artifact deletion does not change cache entry immutability or dependency identity. Secret variables are not a versioned replacement for dependency cache contents. Azure Pipelines caches are immutable after creation and changed inputs need distinct keys.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q017

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A cache contains a complete agent home directory including credential files. Which narrower scope is appropriate?

- **A. Cache only reviewed dependency package directories** **Correct.** Narrow dependency caches avoid persisting unrelated credentials and mutable agent runtime state.
- **B. Keep the home directory and hide its filename** An obscure archive name does not protect credentials stored in its contents.
- **C. Share the cache with every fork** Wider access increases exposure of sensitive runtime files in the cached home directory.
- **D. Store credentials beside the lockfile** A dependency lockfile is shared source and not an appropriate secret storage location.

**Explanation:** Narrow dependency caches avoid persisting unrelated credentials and mutable agent runtime state. An obscure archive name does not protect credentials stored in its contents. Wider access increases exposure of sensitive runtime files in the cached home directory. A dependency lockfile is shared source and not an appropriate secret storage location.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q018

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

The cache-hit variable indicates success, but the install command still verifies the lockfile and restores missing packages. Why is this reasonable?

- **A. A cache hit proves all package integrity checks unnecessary** Finding an archive cannot establish that every dependency satisfies the current project contract.
- **B. The cache-hit flag always means deployment approval** Cache state is unrelated to production approval and release authorization decisions.
- **C. Install always runs only to update documentation** Dependency installation performs correctness work beyond recording human-readable cache information.
- **D. Cache success does not replace dependency validation** **Correct.** A hit can supply useful files while requested locked dependencies still require verification.

**Explanation:** Finding an archive cannot establish that every dependency satisfies the current project contract. Cache state is unrelated to production approval and release authorization decisions. Dependency installation performs correctness work beyond recording human-readable cache information. A hit can supply useful files while requested locked dependencies still require verification.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q019

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A cache key segment looks like a filepath but should be a literal version label. What change prevents unintended file hashing?

- **A. Change the artifact retention period** Retention duration does not determine whether a key segment is treated as a filepath.
- **B. Quote the literal key segment** **Correct.** The cache task can interpret path-like segments as files unless explicitly quoted.
- **C. Delete the actual lockfile** Removing dependency evidence does not clarify the intended literal key segment.
- **D. Add the segment to release tags only** Release metadata does not alter the cache task's key parsing behavior.

**Explanation:** Retention duration does not determine whether a key segment is treated as a filepath. The cache task can interpret path-like segments as files unless explicitly quoted. Removing dependency evidence does not clarify the intended literal key segment. Release metadata does not alter the cache task's key parsing behavior.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q020

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

A shared cache restores quickly but increases failed native-library loads after an SDK and OS change. Which redesign balances acceleration and compatibility?

```json
{"cacheKey":"shared-nuget","oldPlatform":"windows-x64","newPlatform":"linux-x64","sdkChanged":true,"nativeLoadFailures":7}
```

- **A. Keep one key and retry failures indefinitely** Retries do not repair a consistently incompatible restored dependency set.
- **B. Disable all dependency verification on cache hits** Skipping verification can conceal incompatible contents rather than resolving their underlying boundary.
- **C. Key only by default branch while retaining native package contents** Branch identity does not represent the SDK and operating-system compatibility of the cached native dependencies.
- **D. Key by lockfile plus relevant SDK and platform boundaries** **Correct.** Changed runtime compatibility needs cache separation while dependencies still benefit from reuse.

**Explanation:** Changed runtime compatibility needs cache separation while dependencies still benefit from reuse. Retries do not repair a consistently incompatible restored dependency set. Skipping verification can conceal incompatible contents rather than resolving their underlying boundary. Branch identity does not represent the SDK and operating-system compatibility of the cached native dependencies.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

## L19-Q021

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Three independent jobs take 4, 6 and 9 minutes with unlimited available capacity and no startup overhead. What is their ideal parallel critical-path duration?

- **A. 4 minutes** The shortest branch cannot define completion while longer required work remains unfinished.
- **B. 9 minutes** **Correct.** Independent parallel jobs finish when the longest required branch completes.
- **C. 19 minutes** That sum describes serial execution rather than the ideal independent parallel critical path.
- **D. 6 minutes** The nine-minute required branch still determines completion despite the shorter middle job.

**Explanation:** The shortest branch cannot define completion while longer required work remains unfinished. Independent parallel jobs finish when the longest required branch completes. That sum describes serial execution rather than the ideal independent parallel critical path. The nine-minute required branch still determines completion despite the shorter middle job.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q022

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

An integration job consumes outputs from the build job but currently starts independently. Which YAML relationship expresses the required ordering?

- **A. Run integration only after cleanup** Cleanup is unrelated to producing the build outputs needed by integration.
- **B. Make integration depend on build** **Correct.** An explicit dependency ensures required producing work finishes before the consuming job runs.
- **C. Place integration earlier in the file** Textual position alone does not establish the required cross-job dependency contract.
- **D. Place the file in a shared-looking local path** An apparent common path does not establish scheduling dependencies or cross-agent output transport.

**Explanation:** Cleanup is unrelated to producing the build outputs needed by integration. An explicit dependency ensures required producing work finishes before the consuming job runs. Textual position alone does not establish the required cross-job dependency contract. An apparent common path does not establish scheduling dependencies or cross-agent output transport.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q023

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A matrix has twelve legs, but the shared private service supports at most three concurrent test clients. Which control should limit pressure?

- **A. Increase every job's timeout only** Longer timeouts do not bound simultaneous clients hitting the constrained dependency.
- **B. Remove all test assertions** Assertion removal does not control the number of concurrently active test clients.
- **C. Use the same output filename in every leg** Shared output names introduce races rather than controlling supported execution concurrency.
- **D. Set bounded matrix parallelism** **Correct.** A concurrency limit can respect the shared dependency's capacity while retaining parallel work.

**Explanation:** Longer timeouts do not bound simultaneous clients hitting the constrained dependency. Assertion removal does not control the number of concurrently active test clients. Shared output names introduce races rather than controlling supported execution concurrency. A concurrency limit can respect the shared dependency's capacity while retaining parallel work.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q024

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Two test jobs write to the same database and interfere when run concurrently. Which design change enables reliable bounded parallel execution?

- **A. Publish whichever job finishes first** First completion does not prove all required test branches passed correctly.
- **B. Isolate each job's test data** **Correct.** Independent state prevents concurrent tests from corrupting each other's expected database conditions.
- **C. Retry every failed test without isolation** Retries can hide races but do not eliminate the shared mutable-state conflict.
- **D. Mark all failures as warnings** Downgrading failures removes quality evidence rather than making parallel execution reliable.

**Explanation:** First completion does not prove all required test branches passed correctly. Independent state prevents concurrent tests from corrupting each other's expected database conditions. Retries can hide races but do not eliminate the shared mutable-state conflict. Downgrading failures removes quality evidence rather than making parallel execution reliable.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q025

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Four CPU-heavy jobs run on two cores and share one mutable fixture. Unlimited parallelism becomes slower and flaky. Which redesign addresses both observed constraints?

```json
{"cores":2,"cpuHeavyJobs":4,"parallelism":"unbounded","fixture":"one shared database","result":"slower and nondeterministic"}
```

- **A. Raise concurrency so tests start before the shared fixture changes** Earlier starts do not eliminate shared mutable state and can increase CPU contention.
- **B. Serialize fixture setup but let all tests mutate the same database** Serial setup does not isolate subsequent parallel mutations or avoid excessive CPU competition.
- **C. Increase CPU capacity while retaining the shared mutable fixture** More capacity can reduce contention but leaves the independently observed cross-job data race unresolved.
- **D. Bound concurrency and isolate mutable fixtures** **Correct.** Capacity limits reduce contention while independent state removes cross-job interference.

**Explanation:** Capacity limits reduce contention while independent state removes cross-job interference. Earlier starts do not eliminate shared mutable state and can increase CPU contention. Serial setup does not isolate subsequent parallel mutations or avoid excessive CPU competition. More capacity can reduce contention but leaves the independently observed cross-job data race unresolved.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q026

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A downstream release job must wait for unit tests, security scans and packaging. Which dependency model represents that requirement?

- **A. Use no dependencies and sleep briefly** A fixed delay cannot guarantee completion or success of variable-duration producer jobs.
- **B. Depend on every required producer** **Correct.** Release requires all mandatory branches rather than whichever single branch completes first.
- **C. Depend only on the fastest job** A fast job's completion does not establish success of the remaining required checks.
- **D. Depend only on documentation formatting** Formatting alone cannot prove packaging, unit tests and security scanning succeeded.

**Explanation:** A fixed delay cannot guarantee completion or success of variable-duration producer jobs. Release requires all mandatory branches rather than whichever single branch completes first. A fast job's completion does not establish success of the remaining required checks. Formatting alone cannot prove packaging, unit tests and security scanning succeeded.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q027

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel jobs run on separate hosted agents and a file exists only in the producing workspace. How should the consuming job obtain it?

- **A. Pass an output variable containing the local filename** An output variable transfers text rather than the file bytes needed on the other agent.
- **B. Publish and download an explicit artifact** **Correct.** Separate agent workspaces require deliberate transport of outputs needed by later jobs.
- **C. Assume the same absolute path is shared** A path in one hosted agent is not automatically available on another agent.
- **D. Pass the file's local path as a secret** Hiding a path does not transfer the actual file between execution environments.

**Explanation:** An output variable transfers text rather than the file bytes needed on the other agent. Separate agent workspaces require deliberate transport of outputs needed by later jobs. A path in one hosted agent is not automatically available on another agent. Hiding a path does not transfer the actual file between execution environments.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q028

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A performance plan shortens two noncritical jobs while a required database job remains the longest branch. What limits the total improvement?

- **A. The unchanged critical path** **Correct.** Overall completion still waits for the longest remaining required dependency chain.
- **B. The time saved only in the shortest noncritical branch** Shortening a noncritical branch does not remove the unchanged longest required dependency chain.
- **C. The sum of durations of already parallel shorter branches** Parallel branch times do not all add to elapsed completion when they finish before the critical branch.
- **D. The count of matrix legs regardless of dependencies** A leg count alone does not identify which required dependency chain determines completion.

**Explanation:** Overall completion still waits for the longest remaining required dependency chain. Shortening a noncritical branch does not remove the unchanged longest required dependency chain. Parallel branch times do not all add to elapsed completion when they finish before the critical branch. A leg count alone does not identify which required dependency chain determines completion.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q029

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

A private agent pool queues parallel jobs despite independent YAML definitions. Which prerequisite should the team inspect before buying faster machines?

- **A. Only the repository license** A source license does not allocate the organization's parallel-job scheduling capacity.
- **B. Available parallel-job entitlement and agent capacity** **Correct.** Concurrency depends on both service parallelism limits and available matching execution agents.
- **C. Only the number of independent YAML job declarations** Declaring independent jobs does not supply parallel-job entitlement or available matching agents.
- **D. Only the artifact retention count** Retained build evidence does not determine available concurrent agent execution slots.

**Explanation:** A source license does not allocate the organization's parallel-job scheduling capacity. Concurrency depends on both service parallelism limits and available matching execution agents. Declaring independent jobs does not supply parallel-job entitlement or available matching agents. Retained build evidence does not determine available concurrent agent execution slots.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

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

- **A. Keep always() on promotion but publish a warning for failed tests** A warning records the violation while still allowing the release that mandatory tests should block.
- **B. Mark failed branches as continueOnError** Downgrading mandatory failures weakens the gate instead of enforcing successful validation.
- **C. Make promotion depend only on successful packaging** Packaging success cannot substitute for the required failed test branch in the release dependency graph.
- **D. Gate promotion on required success and collect evidence separately** **Correct.** Evidence uploads can run after failure while deployment still requires successful validation.

**Explanation:** Evidence uploads can run after failure while deployment still requires successful validation. A warning records the violation while still allowing the release that mandatory tests should block. Downgrading mandatory failures weakens the gate instead of enforcing successful validation. Packaging success cannot substitute for the required failed test branch in the release dependency graph.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)

## L19-Q031

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A deployable binary is needed for rollback beyond the project's normal short-lived test-log retention. Which retention choice fits?

- **A. Retain the release artifact explicitly longer** **Correct.** Rollback requires the exact binary to remain available for the needed recovery window.
- **B. Keep only the commit message longer** A message cannot replace the actual application bytes selected for rollback.
- **C. Keep only dependency caches indefinitely** Package caches do not identify or preserve the exact approved application release artifact.
- **D. Retain deployment logs but expire the application binary** Logs support investigation but cannot supply the exact application bytes required for rollback.

**Explanation:** Rollback requires the exact binary to remain available for the needed recovery window. A message cannot replace the actual application bytes selected for rollback. Package caches do not identify or preserve the exact approved application release artifact. Logs support investigation but cannot supply the exact application bytes required for rollback.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q032

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A retention policy should treat temporary test logs and approved release artifacts differently. What should determine their retention classes?

- **A. Only whichever file is largest** Size affects storage cost but does not establish the artifact's recovery importance.
- **B. Apply one two-day period to every output** A universal short period ignores the longer operational recovery requirement for approved releases.
- **C. Operational recovery and evidence requirements** **Correct.** Different outputs need retention based on their use in investigation, audit and rollback.
- **D. Apply one unlimited period to every output** Indefinite universal retention ignores differing operational value and increases unnecessary storage.

**Explanation:** Size affects storage cost but does not establish the artifact's recovery importance. A universal short period ignores the longer operational recovery requirement for approved releases. Different outputs need retention based on their use in investigation, audit and rollback. Indefinite universal retention ignores differing operational value and increases unnecessary storage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q033

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A production release references a CI run scheduled for automatic deletion tomorrow. Which action preserves the intended rollback baseline?

- **A. Rename the artifact to baseline** Renaming does not override the service's run or artifact retention behavior.
- **B. Trust the package cache to recreate it** A cache cannot guarantee the exact previously tested and approved application bytes.
- **C. Apply an explicit retention protection to that run** **Correct.** The selected run and artifacts must survive the required recovery and evidence window.
- **D. Create an unlinked tag only** A source tag does not prevent deletion of the CI run's stored artifacts.

**Explanation:** Renaming does not override the service's run or artifact retention behavior. A cache cannot guarantee the exact previously tested and approved application bytes. The selected run and artifacts must survive the required recovery and evidence window. A source tag does not prevent deletion of the CI run's stored artifacts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q034

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

The team deletes a pipeline run and later cannot download its associated artifact. What relationship should the retention design account for?

- **A. Cache keys guarantee artifact retention** Cache identity and pipeline artifact retention are distinct service mechanisms.
- **B. Run deletion can remove its retained artifacts** **Correct.** Recovery planning must preserve the run and output lifetime required by consumers.
- **C. Artifacts always outlive run deletion indefinitely** Associated outputs can be removed when the owning run is deleted.
- **D. A Git commit permanently stores every CI artifact** Git source history does not automatically contain binaries uploaded by pipeline execution.

**Explanation:** Cache identity and pipeline artifact retention are distinct service mechanisms. Recovery planning must preserve the run and output lifetime required by consumers. Associated outputs can be removed when the owning run is deleted. Git source history does not automatically contain binaries uploaded by pipeline execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q035

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A release needs a ninety day rollback window but artifacts expire after seven days. Which plan meets both cost control and recovery requirements?

```json
{"requiredRollbackDays":90,"artifactExpiryDays":7,"selectedReleaseRun":42,"transientBuildRuns":500}
```

- **A. Keep seven-day retention and promise rebuilds** Rebuilds may not reproduce the exact bytes or dependencies from the original release.
- **B. Delete artifacts immediately after production deployment** Immediate deletion makes the specified retained-artifact rollback window impossible to satisfy.
- **C. Retain selected release baselines for the required window** **Correct.** Targeted protection preserves recovery bytes without retaining every transient build indefinitely.
- **D. Extend every cache forever instead** Cache longevity cannot substitute for exact selected deployable release artifacts.

**Explanation:** Rebuilds may not reproduce the exact bytes or dependencies from the original release. Immediate deletion makes the specified retained-artifact rollback window impossible to satisfy. Targeted protection preserves recovery bytes without retaining every transient build indefinitely. Cache longevity cannot substitute for exact selected deployable release artifacts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q036

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A retained artifact includes learner identifiers and raw authentication logs. Which change improves evidence handling without removing necessary release provenance?

- **A. Change only the archive's display name** Renaming does not remove sensitive values from the stored artifact contents.
- **B. Move credentials into the release manifest** A provenance manifest should not become a storage location for authentication secrets.
- **C. Redact sensitive data before artifact publication** **Correct.** Retention must preserve useful evidence without unnecessarily storing private authentication and learner data.
- **D. Keep the logs forever for convenience** Long retention increases exposure without justifying the inclusion of unnecessary sensitive information.

**Explanation:** Renaming does not remove sensitive values from the stored artifact contents. A provenance manifest should not become a storage location for authentication secrets. Retention must preserve useful evidence without unnecessarily storing private authentication and learner data. Long retention increases exposure without justifying the inclusion of unnecessary sensitive information.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q037

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

An artifact class has no consumers after two days, while approved release baselines are needed for months. Which policy is most economical?

- **A. Expire transient outputs sooner than release baselines** **Correct.** Use-based retention reduces unnecessary storage while preserving required recovery and audit evidence.
- **B. Retain all outputs indefinitely** Indefinite retention stores unused data without distinguishing temporary and critical recovery outputs.
- **C. Delete every artifact after one day** A universal short period would violate the longer release recovery requirements.
- **D. Use the dependency cache as the only archive** An optional cache is not a controlled release artifact retention strategy.

**Explanation:** Use-based retention reduces unnecessary storage while preserving required recovery and audit evidence. Indefinite retention stores unused data without distinguishing temporary and critical recovery outputs. A universal short period would violate the longer release recovery requirements. An optional cache is not a controlled release artifact retention strategy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q038

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A rollback rehearsal cannot find its referenced baseline artifact although the source SHA still exists. Which acceptance result is accurate?

- **A. The system automatically reconstructs every deleted artifact** Artifact deletion does not guarantee a service can recreate previously uploaded release contents.
- **B. Rollback readiness is incomplete** **Correct.** Source availability alone cannot prove that the exact retained deployable baseline remains accessible.
- **C. Rollback is fully verified by the SHA** A source identifier does not provide the deployable bytes required by artifact promotion.
- **D. Health verification can replace the missing artifact** Current application health does not restore a missing historical release artifact.

**Explanation:** Artifact deletion does not guarantee a service can recreate previously uploaded release contents. Source availability alone cannot prove that the exact retained deployable baseline remains accessible. A source identifier does not provide the deployable bytes required by artifact promotion. Current application health does not restore a missing historical release artifact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q039

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A policy preserves the last five runs, but a production baseline becomes older than those runs during heavy CI activity. What additional control is needed?

- **A. Longer retention for dependency cache entries only** Dependency cache lifetime does not protect the selected pipeline run and its exact deployable release artifact.
- **B. Continue relying only on the last-five-runs rule during heavy activity** A rolling count can still evict the required older production baseline as newer runs accumulate.
- **C. Retain the release tag and source manifest without protecting the run** Source metadata identifies inputs but does not prevent deletion of the run and the stored release bytes.
- **D. Explicit protection for the release-related run** **Correct.** Count-based rolling retention can evict a still-required baseline unless separately protected.

**Explanation:** Dependency cache lifetime does not protect the selected pipeline run and its exact deployable release artifact. A rolling count can still evict the required older production baseline as newer runs accumulate. Source metadata identifies inputs but does not prevent deletion of the run and the stored release bytes. Count-based rolling retention can evict a still-required baseline unless separately protected.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops)

## L19-Q040

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

A migrated pipeline reproduces deployment behavior but deletes baseline artifacts after a week, violating the old three-month recovery agreement. Which acceptance decision fits?

```text
Classic agreement: release baselines retained90 days
YAML deployment: passes
YAML retention: release artifacts expire after7 days
```

- **A. Accept because the deployment task succeeded** One successful deployment does not establish equivalent rollback capability or retention controls.
- **B. Disable rollback requirements in the report silently** Changing requirements without review conceals a material migration acceptance gap.
- **C. Keep the classic pipeline's name only** An unchanged name does not preserve retention behavior or historical artifact availability.
- **D. Block cutover until equivalent release retention is implemented** **Correct.** Functional deployment parity must include the required artifact recovery and evidence lifetime.

**Explanation:** One successful deployment does not establish equivalent rollback capability or retention controls. Changing requirements without review conceals a material migration acceptance gap. An unchanged name does not preserve retention behavior or historical artifact availability. Functional deployment parity must include the required artifact recovery and evidence lifetime.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q041

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A classic pipeline migration begins with copying its task list. Which additional configuration must be inventoried before claiming YAML equivalence?

- **A. Triggers, permissions, approvals, variables and artifact contracts** **Correct.** Task steps alone omit important execution, governance and data-flow behavior in the pipeline.
- **B. Only the task names and their enabled flags** Those details describe copied steps but omit triggers, effective permissions, approvals and downstream output contracts.
- **C. Only the final published artifact filename** A filename alone does not inventory internal layout, authorization, triggers or release approval behavior.
- **D. Only the number of task groups** A count does not establish what those groups do or how they are governed.

**Explanation:** Task steps alone omit important execution, governance and data-flow behavior in the pipeline. Those details describe copied steps but omit triggers, effective permissions, approvals and downstream output contracts. A filename alone does not inventory internal layout, authorization, triggers or release approval behavior. A count does not establish what those groups do or how they are governed.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q042

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A YAML conversion includes deployment steps but omits the classic environment approval. What must happen before enabling production execution?

- **A. Remove the previous approval evidence** Deleting evidence does not establish equivalent release governance in the new pipeline.
- **B. Rename the stage to Approved** Stage names do not implement or enforce the required production approval check.
- **C. Recreate and verify equivalent protected-resource checks** **Correct.** Deployment commands do not automatically preserve the old environment's approval and authorization controls.
- **D. Assume YAML includes approvals implicitly** A task conversion does not guarantee that external protected-resource settings were recreated.

**Explanation:** Deleting evidence does not establish equivalent release governance in the new pipeline. Stage names do not implement or enforce the required production approval check. Deployment commands do not automatically preserve the old environment's approval and authorization controls. A task conversion does not guarantee that external protected-resource settings were recreated.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q043

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The team needs to compare a classic pipeline with its YAML replacement before cutover. Which validation approach provides useful parity evidence?

- **A. Compare only YAML line counts** Text length does not establish equivalent validation, artifact contents or deployment controls.
- **B. Delete the classic definition before testing** Immediate deletion removes a useful reference before replacement behavior has been demonstrated.
- **C. Compare only whether both final jobs returned success** Final success can conceal missing intermediate gates or incompatible required output contracts.
- **D. Run representative inputs and compare required gates and outputs** **Correct.** Parallel evaluation can expose missing behavior beyond successful syntax conversion alone.

**Explanation:** Text length does not establish equivalent validation, artifact contents or deployment controls. Immediate deletion removes a useful reference before replacement behavior has been demonstrated. Final success can conceal missing intermediate gates or incompatible required output contracts. Parallel evaluation can expose missing behavior beyond successful syntax conversion alone.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q044

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A task group becomes a reusable YAML template consumed by several pipelines. What must be part of the new interface?

- **A. Untracked agent-local variables only** Private agent state cannot provide a reproducible shared template input contract.
- **B. Hardcoded production credentials** Embedded credentials expose secrets and make reusable logic dependent on one environment.
- **C. A branch name that always floats to latest** A moving reference can change consumers after their reviewed source revision was approved.
- **D. Explicit typed parameters and documented required context** **Correct.** A clear contract prevents hidden assumptions when multiple pipelines consume shared build logic.

**Explanation:** Private agent state cannot provide a reproducible shared template input contract. Embedded credentials expose secrets and make reusable logic dependent on one environment. A moving reference can change consumers after their reviewed source revision was approved. A clear contract prevents hidden assumptions when multiple pipelines consume shared build logic.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q045

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic and YAML runs use the same source but publish different directory layouts, breaking deployment selection. Which migration correction addresses the actual contract?

```text
Classic consumer path: todo-api/app/DevOps.Api.dll
New publisher path: todo-api/bin/DevOps.Api.dll
Deployment failure: expected app directory absent
```

- **A. Ignore the deploy failure if CI passed** A passing producer does not make its incompatible output usable by downstream release consumers.
- **B. Adapt one agent workspace manually without updating the output contract** An untracked local layout adjustment does not provide a reproducible publisher-consumer agreement across fresh release agents.
- **C. Preserve or deliberately version the artifact layout** **Correct.** Consumers depend on named output paths and contents rather than task success alone.
- **D. Keep only the same artifact name despite changed layout** A matching artifact label does not restore the internal paths expected by its deployment consumer.

**Explanation:** A passing producer does not make its incompatible output usable by downstream release consumers. An untracked local layout adjustment does not provide a reproducible publisher-consumer agreement across fresh release agents. Consumers depend on named output paths and contents rather than task success alone. A matching artifact label does not restore the internal paths expected by its deployment consumer.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q046

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

A migration replaces a long-lived connection secret with WIF while reusing a broadly authorized service connection. Which review remains necessary?

- **A. Authorize every pipeline to reduce support tickets** Broad authorization expands who can use the deployment capability beyond the intended consumer.
- **B. Store the old secret in YAML as fallback** Committed long-lived credentials undermine the intended federation migration and secret protection.
- **C. Verify federation claims, scoped rights and pipeline authorization** **Correct.** Secret removal does not itself ensure least privilege or restrict connection use to approved pipelines.
- **D. Assume WIF makes all permissions safe** Short-lived authentication does not automatically narrow the identity's effective resource permissions.

**Explanation:** Broad authorization expands who can use the deployment capability beyond the intended consumer. Committed long-lived credentials undermine the intended federation migration and secret protection. Secret removal does not itself ensure least privilege or restrict connection use to approved pipelines. Short-lived authentication does not automatically narrow the identity's effective resource permissions.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q047

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The YAML replacement has only been parsed locally while service connections and hosted-agent permissions remain unavailable. Which result should the team record?

- **A. Hosted-agent availability proven by valid pool syntax** A valid pool reference does not establish capacity, entitlement or effective authorization.
- **B. Local definition verified; provider execution unverified** **Correct.** Syntax checks cannot establish actual service authorization, scheduling or remote deployment behavior.
- **C. Migration fully executed through local parsing** Parsing source does not run the remote pipeline or reproduce its protected-resource controls.
- **D. All approvals passed because stage names match** Stage labels cannot demonstrate required reviewers or environment checks were configured and exercised.

**Explanation:** A valid pool reference does not establish capacity, entitlement or effective authorization. Syntax checks cannot establish actual service authorization, scheduling or remote deployment behavior. Parsing source does not run the remote pipeline or reproduce its protected-resource controls. Stage labels cannot demonstrate required reviewers or environment checks were configured and exercised.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q048

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

After YAML cutover, a scheduled classic trigger remains active and both pipelines deploy the same environment. What should the cutover checklist address?

- **A. Delete all deployment evidence from both pipelines** Removing evidence does not prevent duplicate execution and obstructs incident investigation.
- **B. Disable superseded triggers after verified replacement readiness** **Correct.** Overlapping schedules can cause duplicate releases and conflicting environment operations after migration.
- **C. Keep both schedules permanently without coordination** Uncoordinated duplicate deployments increase race risk and operational ambiguity for the same target.
- **D. Remove its UI shortcut while leaving the trigger enabled** Hiding a definition from normal navigation does not stop its scheduled deployments.

**Explanation:** Removing evidence does not prevent duplicate execution and obstructs incident investigation. Overlapping schedules can cause duplicate releases and conflicting environment operations after migration. Uncoordinated duplicate deployments increase race risk and operational ambiguity for the same target. Hiding a definition from normal navigation does not stop its scheduled deployments.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q049

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The old pipeline used a private network agent, but YAML selects a hosted image without database routing. Which migration dimension was missed?

- **A. Only task version numbers without agent placement** Matching task versions cannot provide a hosted worker with the missing private routing path.
- **B. Only artifact retention duration** Retention settings cannot provide the network path needed for database release tasks.
- **C. Execution environment and network prerequisites** **Correct.** Task equivalence cannot compensate for a different agent's missing private connectivity.
- **D. Only task display-name formatting** Display labels do not provide DNS or routing to private database endpoints.

**Explanation:** Matching task versions cannot provide a hosted worker with the missing private routing path. Retention settings cannot provide the network path needed for database release tasks. Task equivalence cannot compensate for a different agent's missing private connectivity. Display labels do not provide DNS or routing to private database endpoints.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q050

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

The YAML replacement is faster using parallel tests and caching, yet two branches share a database and rollback artifacts expire too early. Which acceptance decision preserves migration quality?

```json
{"durationImproved":true,"testDatabaseSharedAcrossParallelJobs":true,"requiredRecoveryDays":90,"baselineExpiryDays":7}
```

- **A. Accept solely because average duration decreased** A faster run can still violate correctness and retained baseline recovery requirements.
- **B. Disable the failing branches and keep retention unchanged** Removing tests and ignoring recovery gaps weakens the migration's acceptance standard.
- **C. Keep the cache but remove all artifact publication** A dependency cache cannot replace required deployable outputs and retained rollback artifacts.
- **D. Require isolated tests and equivalent recovery retention before cutover** **Correct.** Performance gains do not compensate for flaky validation or a broken recovery contract.

**Explanation:** A faster run can still violate correctness and retained baseline recovery requirements. Removing tests and ignoring recovery gaps weakens the migration's acceptance standard. A dependency cache cannot replace required deployable outputs and retained rollback artifacts. Performance gains do not compensate for flaky validation or a broken recovery contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops); [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops)
