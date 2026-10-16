# Lab 19 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L19-Q001

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which next change most directly satisfies the stated requirement?

- **A. Validate representative triggers and preserve a bounded fallback** One happy-path run does not establish complete equivalence. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **B. Track duration distributions and failure trends across comparable runs** **Correct.** One run cannot characterize pipeline health. This directly addresses the constraint stated in this case.
- **C. Use a cache keyed by relevant dependency inputs** Repeated identical dependencies are suitable cache candidates. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.

**Explanation:** One run cannot characterize pipeline health. The selected answer is track duration distributions and failure trends across comparable runs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q002

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which explanation best accounts for the behavior or constraint described?

- **A. The dashboard lacks historical and failed-run context** **Correct.** Latest success can hide sustained degradation. This directly addresses the constraint stated in this case.
- **B. The pipeline repeatedly downloads reusable inputs** The work is not unique to each source change. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **C. The migration acceptance sample omits important execution modes** Scheduled and release behavior can differ from manual runs. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.

**Explanation:** Latest success can hide sustained degradation. The selected answer is the dashboard lacks historical and failed-run context.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q003

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Required trigger and failure scenarios pass on the YAML path** The evidence should cover the operational contract. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **B. A stable cohort shows the timing change and affected stage** **Correct.** The evidence should identify where time increased. This directly addresses the constraint stated in this case.
- **C. Cache hits reduce restore time without changing test results** Acceleration must preserve correctness. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should identify where time increased. The selected answer is a stable cohort shows the timing change and affected stage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q004

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which execution safeguard most directly addresses the risk in this case?

- **A. Treat cache misses as supported normal execution** A cache should not be required to produce correct output. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **B. Freeze conflicting writes while comparing deployment paths** Two active release systems can change the same target. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **C. Compare equivalent branches agents and workload sizes** **Correct.** Mixed populations can create false trends. This directly addresses the constraint stated in this case.

**Explanation:** Mixed populations can create false trends. The selected answer is compare equivalent branches agents and workload sizes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q005

Advanced · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. The team selects this remedy: "Track duration distributions and failure trends across comparable runs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Detailed telemetry adds reporting overhead** **Correct.** Collect signals that support operational decisions. This directly addresses the constraint stated in this case.
- **B. Caching adds invalidation and storage complexity** Incorrect keys can preserve stale dependencies. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **C. Temporary dual maintenance increases effort** A clear retirement milestone avoids indefinite duplication. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.

**Explanation:** Collect signals that support operational decisions. The selected answer is detailed telemetry adds reporting overhead.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q006

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which next change most directly satisfies the stated requirement?

- **A. Publish the binary as a versioned pipeline artifact** Release deliverables need explicit retained provenance. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **B. Track duration distributions and failure trends across comparable runs** One run cannot characterize pipeline health. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **C. Use a cache keyed by relevant dependency inputs** **Correct.** Repeated identical dependencies are suitable cache candidates. This directly addresses the constraint stated in this case.

**Explanation:** Repeated identical dependencies are suitable cache candidates. The selected answer is use a cache keyed by relevant dependency inputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q007

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which explanation best accounts for the behavior or constraint described?

- **A. Caches are optimizations rather than release records** Their lifecycle does not guarantee artifact availability. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **B. The dashboard lacks historical and failed-run context** Latest success can hide sustained degradation. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **C. The pipeline repeatedly downloads reusable inputs** **Correct.** The work is not unique to each source change. This directly addresses the constraint stated in this case.

**Explanation:** The work is not unique to each source change. The selected answer is the pipeline repeatedly downloads reusable inputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q008

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The approved run exposes a downloadable identified artifact** The output should survive as a deliberate deliverable. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **B. A stable cohort shows the timing change and affected stage** The evidence should identify where time increased. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **C. Cache hits reduce restore time without changing test results** **Correct.** Acceleration must preserve correctness. This directly addresses the constraint stated in this case.

**Explanation:** Acceleration must preserve correctness. The selected answer is cache hits reduce restore time without changing test results.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q009

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Compare equivalent branches agents and workload sizes** Mixed populations can create false trends. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **B. Treat cache misses as supported normal execution** **Correct.** A cache should not be required to produce correct output. This directly addresses the constraint stated in this case.
- **C. Keep artifact identity separate from cache keys** A cache hit cannot establish release provenance. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.

**Explanation:** A cache should not be required to produce correct output. The selected answer is treat cache misses as supported normal execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q010

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. The team selects this remedy: "Use a cache keyed by relevant dependency inputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Caching adds invalidation and storage complexity** **Correct.** Incorrect keys can preserve stale dependencies. This directly addresses the constraint stated in this case.
- **B. Artifacts consume retained storage** Retention must match release and recovery needs. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **C. Detailed telemetry adds reporting overhead** Collect signals that support operational decisions. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.

**Explanation:** Incorrect keys can preserve stale dependencies. The selected answer is caching adds invalidation and storage complexity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q011

Foundational · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which next change most directly satisfies the stated requirement?

- **A. Parallelize independent tests after confirming their isolation** Unused capacity can reduce elapsed validation time. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.
- **B. Use a cache keyed by relevant dependency inputs** Repeated identical dependencies are suitable cache candidates. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **C. Publish the binary as a versioned pipeline artifact** **Correct.** Release deliverables need explicit retained provenance. This directly addresses the constraint stated in this case.

**Explanation:** Release deliverables need explicit retained provenance. The selected answer is publish the binary as a versioned pipeline artifact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q012

Foundational · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline repeatedly downloads reusable inputs** The work is not unique to each source change. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **B. Caches are optimizations rather than release records** **Correct.** Their lifecycle does not guarantee artifact availability. This directly addresses the constraint stated in this case.
- **C. The dependency graph unnecessarily serializes the work** More agents cannot overcome artificial ordering. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** Their lifecycle does not guarantee artifact availability. The selected answer is caches are optimizations rather than release records.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q013

Applied · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The approved run exposes a downloadable identified artifact** **Correct.** The output should survive as a deliberate deliverable. This directly addresses the constraint stated in this case.
- **B. Test jobs overlap and produce the same valid results** The improvement must preserve outcome integrity. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.
- **C. Cache hits reduce restore time without changing test results** Acceleration must preserve correctness. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.

**Explanation:** The output should survive as a deliberate deliverable. The selected answer is the approved run exposes a downloadable identified artifact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q014

Applied · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which execution safeguard most directly addresses the risk in this case?

- **A. Treat cache misses as supported normal execution** A cache should not be required to produce correct output. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **B. Keep artifact identity separate from cache keys** **Correct.** A cache hit cannot establish release provenance. This directly addresses the constraint stated in this case.
- **C. Prevent tests from colliding on shared mutable fixtures** Parallel execution can introduce nondeterministic failures. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** A cache hit cannot establish release provenance. The selected answer is keep artifact identity separate from cache keys.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q015

Advanced · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. The team selects this remedy: "Publish the binary as a versioned pipeline artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Caching adds invalidation and storage complexity** Incorrect keys can preserve stale dependencies. That addresses a different requirement: Slow restore. It does not directly resolve this case's stated constraint.
- **B. Artifacts consume retained storage** **Correct.** Retention must match release and recovery needs. This directly addresses the constraint stated in this case.
- **C. Higher parallelism increases peak resource demand** Faster runs may cost more than sequential execution. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** Retention must match release and recovery needs. The selected answer is artifacts consume retained storage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q016

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which next change most directly satisfies the stated requirement?

- **A. Parallelize independent tests after confirming their isolation** **Correct.** Unused capacity can reduce elapsed validation time. This directly addresses the constraint stated in this case.
- **B. Measure critical-path benefit before expanding concurrency** Capacity should address the actual limiting stage. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **C. Publish the binary as a versioned pipeline artifact** Release deliverables need explicit retained provenance. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.

**Explanation:** Unused capacity can reduce elapsed validation time. The selected answer is parallelize independent tests after confirming their isolation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q017

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline bottleneck is not the parallelized work** More slots deliver little useful elapsed-time improvement. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Caches are optimizations rather than release records** Their lifecycle does not guarantee artifact availability. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **C. The dependency graph unnecessarily serializes the work** **Correct.** More agents cannot overcome artificial ordering. This directly addresses the constraint stated in this case.

**Explanation:** More agents cannot overcome artificial ordering. The selected answer is the dependency graph unnecessarily serializes the work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q018

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The approved run exposes a downloadable identified artifact** The output should survive as a deliberate deliverable. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **B. Test jobs overlap and produce the same valid results** **Correct.** The improvement must preserve outcome integrity. This directly addresses the constraint stated in this case.
- **C. A capacity change shows justified duration and cost impact** The comparison should include both performance and spend. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.

**Explanation:** The improvement must preserve outcome integrity. The selected answer is test jobs overlap and produce the same valid results.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q019

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which execution safeguard most directly addresses the risk in this case?

- **A. Use comparable workloads when evaluating optimization** Different changes can confound the apparent improvement. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Keep artifact identity separate from cache keys** A cache hit cannot establish release provenance. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **C. Prevent tests from colliding on shared mutable fixtures** **Correct.** Parallel execution can introduce nondeterministic failures. This directly addresses the constraint stated in this case.

**Explanation:** Parallel execution can introduce nondeterministic failures. The selected answer is prevent tests from colliding on shared mutable fixtures.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q020

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. The team selects this remedy: "Parallelize independent tests after confirming their isolation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Artifacts consume retained storage** Retention must match release and recovery needs. That addresses a different requirement: Wrong cache purpose. It does not directly resolve this case's stated constraint.
- **B. Higher parallelism increases peak resource demand** **Correct.** Faster runs may cost more than sequential execution. This directly addresses the constraint stated in this case.
- **C. Maximum concurrency is not always optimal** Cost-efficient throughput can require a deliberate limit. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.

**Explanation:** Faster runs may cost more than sequential execution. The selected answer is higher parallelism increases peak resource demand.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q021

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which next change most directly satisfies the stated requirement?

- **A. Measure critical-path benefit before expanding concurrency** **Correct.** Capacity should address the actual limiting stage. This directly addresses the constraint stated in this case.
- **B. Retain artifacts according to support and recovery requirements** Retention must preserve required operational inputs. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **C. Parallelize independent tests after confirming their isolation** Unused capacity can reduce elapsed validation time. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** Capacity should address the actual limiting stage. The selected answer is measure critical-path benefit before expanding concurrency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q022

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline bottleneck is not the parallelized work** **Correct.** More slots deliver little useful elapsed-time improvement. This directly addresses the constraint stated in this case.
- **B. Generic age-based cleanup ignores active release obligations** An old artifact can still be operationally necessary. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **C. The dependency graph unnecessarily serializes the work** More agents cannot overcome artificial ordering. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** More slots deliver little useful elapsed-time improvement. The selected answer is the pipeline bottleneck is not the parallelized work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q023

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Supported releases retain their identified deployable artifacts** The test should exercise an actual redeployment lookup. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **B. Test jobs overlap and produce the same valid results** The improvement must preserve outcome integrity. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.
- **C. A capacity change shows justified duration and cost impact** **Correct.** The comparison should include both performance and spend. This directly addresses the constraint stated in this case.

**Explanation:** The comparison should include both performance and spend. The selected answer is a capacity change shows justified duration and cost impact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q024

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which execution safeguard most directly addresses the risk in this case?

- **A. Review retention exceptions and prevent unlimited accumulation** Indefinite preservation can create unnecessary storage and exposure. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **B. Prevent tests from colliding on shared mutable fixtures** Parallel execution can introduce nondeterministic failures. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.
- **C. Use comparable workloads when evaluating optimization** **Correct.** Different changes can confound the apparent improvement. This directly addresses the constraint stated in this case.

**Explanation:** Different changes can confound the apparent improvement. The selected answer is use comparable workloads when evaluating optimization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q025

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. The team selects this remedy: "Measure critical-path benefit before expanding concurrency." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Long recovery windows increase storage needs** The retention policy should explain that cost. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **B. Higher parallelism increases peak resource demand** Faster runs may cost more than sequential execution. That addresses a different requirement: Parallel bottleneck. It does not directly resolve this case's stated constraint.
- **C. Maximum concurrency is not always optimal** **Correct.** Cost-efficient throughput can require a deliberate limit. This directly addresses the constraint stated in this case.

**Explanation:** Cost-efficient throughput can require a deliberate limit. The selected answer is maximum concurrency is not always optimal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q026

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which next change most directly satisfies the stated requirement?

- **A. Measure critical-path benefit before expanding concurrency** Capacity should address the actual limiting stage. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Retain artifacts according to support and recovery requirements** **Correct.** Retention must preserve required operational inputs. This directly addresses the constraint stated in this case.
- **C. Inventory behavior and protected resources before validating equivalence** Migration must preserve governance as well as task order. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** Retention must preserve required operational inputs. The selected answer is retain artifacts according to support and recovery requirements.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q027

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline bottleneck is not the parallelized work** More slots deliver little useful elapsed-time improvement. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Generic age-based cleanup ignores active release obligations** **Correct.** An old artifact can still be operationally necessary. This directly addresses the constraint stated in this case.
- **C. The conversion copied steps without the surrounding controls** Pipeline semantics extend beyond visible task definitions. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** An old artifact can still be operationally necessary. The selected answer is generic age-based cleanup ignores active release obligations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q028

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A capacity change shows justified duration and cost impact** The comparison should include both performance and spend. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Supported releases retain their identified deployable artifacts** **Correct.** The test should exercise an actual redeployment lookup. This directly addresses the constraint stated in this case.
- **C. The YAML path enforces required approvals variables and outcomes** Acceptance should compare important behavior end to end. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** The test should exercise an actual redeployment lookup. The selected answer is supported releases retain their identified deployable artifacts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q029

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which execution safeguard most directly addresses the risk in this case?

- **A. Use comparable workloads when evaluating optimization** Different changes can confound the apparent improvement. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.
- **B. Review retention exceptions and prevent unlimited accumulation** **Correct.** Indefinite preservation can create unnecessary storage and exposure. This directly addresses the constraint stated in this case.
- **C. Rehearse on a training target before retiring the old pipeline** Parallel validation reduces migration surprises. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** Indefinite preservation can create unnecessary storage and exposure. The selected answer is review retention exceptions and prevent unlimited accumulation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q030

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. The team selects this remedy: "Retain artifacts according to support and recovery requirements." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Long recovery windows increase storage needs** **Correct.** The retention policy should explain that cost. This directly addresses the constraint stated in this case.
- **B. Equivalent YAML may require different platform constructs** Migration is not always a mechanical export. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.
- **C. Maximum concurrency is not always optimal** Cost-efficient throughput can require a deliberate limit. That addresses a different requirement: Cost spike. It does not directly resolve this case's stated constraint.

**Explanation:** The retention policy should explain that cost. The selected answer is long recovery windows increase storage needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q031

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which next change most directly satisfies the stated requirement?

- **A. Include initial failures retries and flake classification** Reliability reporting should preserve failed execution evidence. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **B. Retain artifacts according to support and recovery requirements** Retention must preserve required operational inputs. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **C. Inventory behavior and protected resources before validating equivalence** **Correct.** Migration must preserve governance as well as task order. This directly addresses the constraint stated in this case.

**Explanation:** Migration must preserve governance as well as task order. The selected answer is inventory behavior and protected resources before validating equivalence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q032

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which explanation best accounts for the behavior or constraint described?

- **A. Retry success hides the original unreliable behavior** A final green state does not erase wasted attempts. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **B. Generic age-based cleanup ignores active release obligations** An old artifact can still be operationally necessary. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.
- **C. The conversion copied steps without the surrounding controls** **Correct.** Pipeline semantics extend beyond visible task definitions. This directly addresses the constraint stated in this case.

**Explanation:** Pipeline semantics extend beyond visible task definitions. The selected answer is the conversion copied steps without the surrounding controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q033

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The YAML path enforces required approvals variables and outcomes** **Correct.** Acceptance should compare important behavior end to end. This directly addresses the constraint stated in this case.
- **B. Reports expose retry rates and underlying failure patterns** The signal should show the user's actual execution experience. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **C. Supported releases retain their identified deployable artifacts** The test should exercise an actual redeployment lookup. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.

**Explanation:** Acceptance should compare important behavior end to end. The selected answer is the YAML path enforces required approvals variables and outcomes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q034

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which execution safeguard most directly addresses the risk in this case?

- **A. Rehearse on a training target before retiring the old pipeline** **Correct.** Parallel validation reduces migration surprises. This directly addresses the constraint stated in this case.
- **B. Assign owners and expiry to quarantined tests** Suppression should not become permanent unowned debt. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **C. Review retention exceptions and prevent unlimited accumulation** Indefinite preservation can create unnecessary storage and exposure. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.

**Explanation:** Parallel validation reduces migration surprises. The selected answer is rehearse on a training target before retiring the old pipeline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q035

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. The team selects this remedy: "Inventory behavior and protected resources before validating equivalence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Equivalent YAML may require different platform constructs** **Correct.** Migration is not always a mechanical export. This directly addresses the constraint stated in this case.
- **B. Transparent metrics may initially look worse** Better visibility can reveal existing problems rather than new ones. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **C. Long recovery windows increase storage needs** The retention policy should explain that cost. That addresses a different requirement: Rollback artifact deleted. It does not directly resolve this case's stated constraint.

**Explanation:** Migration is not always a mechanical export. The selected answer is equivalent YAML may require different platform constructs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q036

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which next change most directly satisfies the stated requirement?

- **A. Inventory behavior and protected resources before validating equivalence** Migration must preserve governance as well as task order. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.
- **B. Include initial failures retries and flake classification** **Correct.** Reliability reporting should preserve failed execution evidence. This directly addresses the constraint stated in this case.
- **C. Publish targeted diagnostics with appropriate retention** Evidence should match operational and audit needs. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.

**Explanation:** Reliability reporting should preserve failed execution evidence. The selected answer is include initial failures retries and flake classification.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q037

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which explanation best accounts for the behavior or constraint described?

- **A. Retry success hides the original unreliable behavior** **Correct.** A final green state does not erase wasted attempts. This directly addresses the constraint stated in this case.
- **B. Diagnostic collection is broader than its useful purpose** More data is not automatically more actionable. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **C. The conversion copied steps without the surrounding controls** Pipeline semantics extend beyond visible task definitions. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** A final green state does not erase wasted attempts. The selected answer is retry success hides the original unreliable behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q038

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Reports expose retry rates and underlying failure patterns** **Correct.** The signal should show the user's actual execution experience. This directly addresses the constraint stated in this case.
- **B. Required failures remain diagnosable with lower retained volume** Optimization must preserve meaningful support evidence. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **C. The YAML path enforces required approvals variables and outcomes** Acceptance should compare important behavior end to end. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** The signal should show the user's actual execution experience. The selected answer is reports expose retry rates and underlying failure patterns.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q039

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which execution safeguard most directly addresses the risk in this case?

- **A. Assign owners and expiry to quarantined tests** **Correct.** Suppression should not become permanent unowned debt. This directly addresses the constraint stated in this case.
- **B. Sanitize diagnostics before storage and publication** Large logs can contain sensitive environment details. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **C. Rehearse on a training target before retiring the old pipeline** Parallel validation reduces migration surprises. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.

**Explanation:** Suppression should not become permanent unowned debt. The selected answer is assign owners and expiry to quarantined tests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q040

Advanced · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. The team selects this remedy: "Include initial failures retries and flake classification." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Equivalent YAML may require different platform constructs** Migration is not always a mechanical export. That addresses a different requirement: Classic migration gap. It does not directly resolve this case's stated constraint.
- **B. Transparent metrics may initially look worse** **Correct.** Better visibility can reveal existing problems rather than new ones. This directly addresses the constraint stated in this case.
- **C. Reduced logging can limit later forensic detail** Choose the retained signal deliberately. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.

**Explanation:** Better visibility can reveal existing problems rather than new ones. The selected answer is transparent metrics may initially look worse.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q041

Foundational · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which next change most directly satisfies the stated requirement?

- **A. Validate representative triggers and preserve a bounded fallback** One happy-path run does not establish complete equivalence. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **B. Include initial failures retries and flake classification** Reliability reporting should preserve failed execution evidence. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **C. Publish targeted diagnostics with appropriate retention** **Correct.** Evidence should match operational and audit needs. This directly addresses the constraint stated in this case.

**Explanation:** Evidence should match operational and audit needs. The selected answer is publish targeted diagnostics with appropriate retention.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q042

Foundational · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which explanation best accounts for the behavior or constraint described?

- **A. Diagnostic collection is broader than its useful purpose** **Correct.** More data is not automatically more actionable. This directly addresses the constraint stated in this case.
- **B. The migration acceptance sample omits important execution modes** Scheduled and release behavior can differ from manual runs. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **C. Retry success hides the original unreliable behavior** A final green state does not erase wasted attempts. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.

**Explanation:** More data is not automatically more actionable. The selected answer is diagnostic collection is broader than its useful purpose.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q043

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Required trigger and failure scenarios pass on the YAML path** The evidence should cover the operational contract. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **B. Reports expose retry rates and underlying failure patterns** The signal should show the user's actual execution experience. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.
- **C. Required failures remain diagnosable with lower retained volume** **Correct.** Optimization must preserve meaningful support evidence. This directly addresses the constraint stated in this case.

**Explanation:** Optimization must preserve meaningful support evidence. The selected answer is required failures remain diagnosable with lower retained volume.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q044

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which execution safeguard most directly addresses the risk in this case?

- **A. Sanitize diagnostics before storage and publication** **Correct.** Large logs can contain sensitive environment details. This directly addresses the constraint stated in this case.
- **B. Freeze conflicting writes while comparing deployment paths** Two active release systems can change the same target. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **C. Assign owners and expiry to quarantined tests** Suppression should not become permanent unowned debt. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.

**Explanation:** Large logs can contain sensitive environment details. The selected answer is sanitize diagnostics before storage and publication.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q045

Advanced · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. The team selects this remedy: "Publish targeted diagnostics with appropriate retention." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reduced logging can limit later forensic detail** **Correct.** Choose the retained signal deliberately. This directly addresses the constraint stated in this case.
- **B. Temporary dual maintenance increases effort** A clear retirement milestone avoids indefinite duplication. That addresses a different requirement: Migration rollback. It does not directly resolve this case's stated constraint.
- **C. Transparent metrics may initially look worse** Better visibility can reveal existing problems rather than new ones. That addresses a different requirement: Flaky green trend. It does not directly resolve this case's stated constraint.

**Explanation:** Choose the retained signal deliberately. The selected answer is reduced logging can limit later forensic detail.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q046

Foundational · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which next change most directly satisfies the stated requirement?

- **A. Publish targeted diagnostics with appropriate retention** Evidence should match operational and audit needs. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **B. Validate representative triggers and preserve a bounded fallback** **Correct.** One happy-path run does not establish complete equivalence. This directly addresses the constraint stated in this case.
- **C. Track duration distributions and failure trends across comparable runs** One run cannot characterize pipeline health. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.

**Explanation:** One happy-path run does not establish complete equivalence. The selected answer is validate representative triggers and preserve a bounded fallback.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q047

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which explanation best accounts for the behavior or constraint described?

- **A. The dashboard lacks historical and failed-run context** Latest success can hide sustained degradation. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **B. Diagnostic collection is broader than its useful purpose** More data is not automatically more actionable. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **C. The migration acceptance sample omits important execution modes** **Correct.** Scheduled and release behavior can differ from manual runs. This directly addresses the constraint stated in this case.

**Explanation:** Scheduled and release behavior can differ from manual runs. The selected answer is the migration acceptance sample omits important execution modes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q048

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Required trigger and failure scenarios pass on the YAML path** **Correct.** The evidence should cover the operational contract. This directly addresses the constraint stated in this case.
- **B. A stable cohort shows the timing change and affected stage** The evidence should identify where time increased. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.
- **C. Required failures remain diagnosable with lower retained volume** Optimization must preserve meaningful support evidence. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should cover the operational contract. The selected answer is required trigger and failure scenarios pass on the YAML path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q049

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which execution safeguard most directly addresses the risk in this case?

- **A. Sanitize diagnostics before storage and publication** Large logs can contain sensitive environment details. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **B. Freeze conflicting writes while comparing deployment paths** **Correct.** Two active release systems can change the same target. This directly addresses the constraint stated in this case.
- **C. Compare equivalent branches agents and workload sizes** Mixed populations can create false trends. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.

**Explanation:** Two active release systems can change the same target. The selected answer is freeze conflicting writes while comparing deployment paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)

## L19-Q050

Advanced · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. The team selects this remedy: "Validate representative triggers and preserve a bounded fallback." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reduced logging can limit later forensic detail** Choose the retained signal deliberately. That addresses a different requirement: Oversized diagnostics. It does not directly resolve this case's stated constraint.
- **B. Temporary dual maintenance increases effort** **Correct.** A clear retirement milestone avoids indefinite duplication. This directly addresses the constraint stated in this case.
- **C. Detailed telemetry adds reporting overhead** Collect signals that support operational decisions. That addresses a different requirement: Pipeline regression. It does not directly resolve this case's stated constraint.

**Explanation:** A clear retirement milestone avoids indefinite duplication. The selected answer is temporary dual maintenance increases effort.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-classic-pipelines?view=azure-devops)
