# Lab 19 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L19-Q001

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which next change most directly satisfies the stated requirement?

- **A.** Validate representative triggers and preserve a bounded fallback
- **B.** Track duration distributions and failure trends across comparable runs
- **C.** Use a cache keyed by relevant dependency inputs

## L19-Q002

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which explanation best accounts for the behavior or constraint described?

- **A.** The dashboard lacks historical and failed-run context
- **B.** The pipeline repeatedly downloads reusable inputs
- **C.** The migration acceptance sample omits important execution modes

## L19-Q003

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Required trigger and failure scenarios pass on the YAML path
- **B.** A stable cohort shows the timing change and affected stage
- **C.** Cache hits reduce restore time without changing test results

## L19-Q004

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. Which execution safeguard most directly addresses the risk in this case?

- **A.** Treat cache misses as supported normal execution
- **B.** Freeze conflicting writes while comparing deployment paths
- **C.** Compare equivalent branches agents and workload sizes

## L19-Q005

Advanced · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Pipeline regression: Median build duration increased after a tool update, but the dashboard shows only the latest successful run. The team selects this remedy: "Track duration distributions and failure trends across comparable runs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Detailed telemetry adds reporting overhead
- **B.** Caching adds invalidation and storage complexity
- **C.** Temporary dual maintenance increases effort

## L19-Q006

Foundational · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which next change most directly satisfies the stated requirement?

- **A.** Publish the binary as a versioned pipeline artifact
- **B.** Track duration distributions and failure trends across comparable runs
- **C.** Use a cache keyed by relevant dependency inputs

## L19-Q007

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which explanation best accounts for the behavior or constraint described?

- **A.** Caches are optimizations rather than release records
- **B.** The dashboard lacks historical and failed-run context
- **C.** The pipeline repeatedly downloads reusable inputs

## L19-Q008

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The approved run exposes a downloadable identified artifact
- **B.** A stable cohort shows the timing change and affected stage
- **C.** Cache hits reduce restore time without changing test results

## L19-Q009

Applied · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Compare equivalent branches agents and workload sizes
- **B.** Treat cache misses as supported normal execution
- **C.** Keep artifact identity separate from cache keys

## L19-Q010

Advanced · [CP2](README.md#task-2) · [D3.6.2](../../docs/objective-map.md)

Slow restore: Dependency download dominates builds while the dependency lock file rarely changes. The team selects this remedy: "Use a cache keyed by relevant dependency inputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Caching adds invalidation and storage complexity
- **B.** Artifacts consume retained storage
- **C.** Detailed telemetry adds reporting overhead

## L19-Q011

Foundational · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which next change most directly satisfies the stated requirement?

- **A.** Parallelize independent tests after confirming their isolation
- **B.** Use a cache keyed by relevant dependency inputs
- **C.** Publish the binary as a versioned pipeline artifact

## L19-Q012

Foundational · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline repeatedly downloads reusable inputs
- **B.** Caches are optimizations rather than release records
- **C.** The dependency graph unnecessarily serializes the work

## L19-Q013

Applied · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The approved run exposes a downloadable identified artifact
- **B.** Test jobs overlap and produce the same valid results
- **C.** Cache hits reduce restore time without changing test results

## L19-Q014

Applied · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. Which execution safeguard most directly addresses the risk in this case?

- **A.** Treat cache misses as supported normal execution
- **B.** Keep artifact identity separate from cache keys
- **C.** Prevent tests from colliding on shared mutable fixtures

## L19-Q015

Advanced · [CP4](README.md#task-4) · [D3.6.2](../../docs/objective-map.md)

Wrong cache purpose: A release uses a dependency cache as the only storage for the tested application binary. The team selects this remedy: "Publish the binary as a versioned pipeline artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Caching adds invalidation and storage complexity
- **B.** Artifacts consume retained storage
- **C.** Higher parallelism increases peak resource demand

## L19-Q016

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which next change most directly satisfies the stated requirement?

- **A.** Parallelize independent tests after confirming their isolation
- **B.** Measure critical-path benefit before expanding concurrency
- **C.** Publish the binary as a versioned pipeline artifact

## L19-Q017

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline bottleneck is not the parallelized work
- **B.** Caches are optimizations rather than release records
- **C.** The dependency graph unnecessarily serializes the work

## L19-Q018

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The approved run exposes a downloadable identified artifact
- **B.** Test jobs overlap and produce the same valid results
- **C.** A capacity change shows justified duration and cost impact

## L19-Q019

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use comparable workloads when evaluating optimization
- **B.** Keep artifact identity separate from cache keys
- **C.** Prevent tests from colliding on shared mutable fixtures

## L19-Q020

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Parallel bottleneck: Independent tests run in sequence even though paid parallel capacity is idle. The team selects this remedy: "Parallelize independent tests after confirming their isolation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Artifacts consume retained storage
- **B.** Higher parallelism increases peak resource demand
- **C.** Maximum concurrency is not always optimal

## L19-Q021

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which next change most directly satisfies the stated requirement?

- **A.** Measure critical-path benefit before expanding concurrency
- **B.** Retain artifacts according to support and recovery requirements
- **C.** Parallelize independent tests after confirming their isolation

## L19-Q022

Foundational · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline bottleneck is not the parallelized work
- **B.** Generic age-based cleanup ignores active release obligations
- **C.** The dependency graph unnecessarily serializes the work

## L19-Q023

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Supported releases retain their identified deployable artifacts
- **B.** Test jobs overlap and produce the same valid results
- **C.** A capacity change shows justified duration and cost impact

## L19-Q024

Applied · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review retention exceptions and prevent unlimited accumulation
- **B.** Prevent tests from colliding on shared mutable fixtures
- **C.** Use comparable workloads when evaluating optimization

## L19-Q025

Advanced · [CP3](README.md#task-3) · [D3.6.3](../../docs/objective-map.md)

Cost spike: Increasing concurrency cuts queue time slightly but doubles runner costs without improving the critical path. The team selects this remedy: "Measure critical-path benefit before expanding concurrency." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Long recovery windows increase storage needs
- **B.** Higher parallelism increases peak resource demand
- **C.** Maximum concurrency is not always optimal

## L19-Q026

Foundational · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which next change most directly satisfies the stated requirement?

- **A.** Measure critical-path benefit before expanding concurrency
- **B.** Retain artifacts according to support and recovery requirements
- **C.** Inventory behavior and protected resources before validating equivalence

## L19-Q027

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline bottleneck is not the parallelized work
- **B.** Generic age-based cleanup ignores active release obligations
- **C.** The conversion copied steps without the surrounding controls

## L19-Q028

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A capacity change shows justified duration and cost impact
- **B.** Supported releases retain their identified deployable artifacts
- **C.** The YAML path enforces required approvals variables and outcomes

## L19-Q029

Applied · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use comparable workloads when evaluating optimization
- **B.** Review retention exceptions and prevent unlimited accumulation
- **C.** Rehearse on a training target before retiring the old pipeline

## L19-Q030

Advanced · [CP4](README.md#task-4) · [D3.6.4](../../docs/objective-map.md)

Rollback artifact deleted: Automatic retention removes the binary still needed to redeploy the currently supported release. The team selects this remedy: "Retain artifacts according to support and recovery requirements." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Long recovery windows increase storage needs
- **B.** Equivalent YAML may require different platform constructs
- **C.** Maximum concurrency is not always optimal

## L19-Q031

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which next change most directly satisfies the stated requirement?

- **A.** Include initial failures retries and flake classification
- **B.** Retain artifacts according to support and recovery requirements
- **C.** Inventory behavior and protected resources before validating equivalence

## L19-Q032

Foundational · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which explanation best accounts for the behavior or constraint described?

- **A.** Retry success hides the original unreliable behavior
- **B.** Generic age-based cleanup ignores active release obligations
- **C.** The conversion copied steps without the surrounding controls

## L19-Q033

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The YAML path enforces required approvals variables and outcomes
- **B.** Reports expose retry rates and underlying failure patterns
- **C.** Supported releases retain their identified deployable artifacts

## L19-Q034

Applied · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. Which execution safeguard most directly addresses the risk in this case?

- **A.** Rehearse on a training target before retiring the old pipeline
- **B.** Assign owners and expiry to quarantined tests
- **C.** Review retention exceptions and prevent unlimited accumulation

## L19-Q035

Advanced · [CP5](README.md#task-5) · [D3.6.5](../../docs/objective-map.md)

Classic migration gap: A classic release is translated into YAML but approvals and secure variable access are omitted. The team selects this remedy: "Inventory behavior and protected resources before validating equivalence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Equivalent YAML may require different platform constructs
- **B.** Transparent metrics may initially look worse
- **C.** Long recovery windows increase storage needs

## L19-Q036

Foundational · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which next change most directly satisfies the stated requirement?

- **A.** Inventory behavior and protected resources before validating equivalence
- **B.** Include initial failures retries and flake classification
- **C.** Publish targeted diagnostics with appropriate retention

## L19-Q037

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which explanation best accounts for the behavior or constraint described?

- **A.** Retry success hides the original unreliable behavior
- **B.** Diagnostic collection is broader than its useful purpose
- **C.** The conversion copied steps without the surrounding controls

## L19-Q038

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Reports expose retry rates and underlying failure patterns
- **B.** Required failures remain diagnosable with lower retained volume
- **C.** The YAML path enforces required approvals variables and outcomes

## L19-Q039

Applied · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. Which execution safeguard most directly addresses the risk in this case?

- **A.** Assign owners and expiry to quarantined tests
- **B.** Sanitize diagnostics before storage and publication
- **C.** Rehearse on a training target before retiring the old pipeline

## L19-Q040

Advanced · [CP1](README.md#task-1) · [D3.6.1](../../docs/objective-map.md)

Flaky green trend: The pipeline dashboard excludes failed attempts after a retry, making reliability look better than users experience. The team selects this remedy: "Include initial failures retries and flake classification." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Equivalent YAML may require different platform constructs
- **B.** Transparent metrics may initially look worse
- **C.** Reduced logging can limit later forensic detail

## L19-Q041

Foundational · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which next change most directly satisfies the stated requirement?

- **A.** Validate representative triggers and preserve a bounded fallback
- **B.** Include initial failures retries and flake classification
- **C.** Publish targeted diagnostics with appropriate retention

## L19-Q042

Foundational · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which explanation best accounts for the behavior or constraint described?

- **A.** Diagnostic collection is broader than its useful purpose
- **B.** The migration acceptance sample omits important execution modes
- **C.** Retry success hides the original unreliable behavior

## L19-Q043

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Required trigger and failure scenarios pass on the YAML path
- **B.** Reports expose retry rates and underlying failure patterns
- **C.** Required failures remain diagnosable with lower retained volume

## L19-Q044

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. Which execution safeguard most directly addresses the risk in this case?

- **A.** Sanitize diagnostics before storage and publication
- **B.** Freeze conflicting writes while comparing deployment paths
- **C.** Assign owners and expiry to quarantined tests

## L19-Q045

Advanced · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md), [D3.6.2](../../docs/objective-map.md)

Oversized diagnostics: Every successful run uploads gigabytes of verbose logs, consuming storage without aiding routine review. The team selects this remedy: "Publish targeted diagnostics with appropriate retention." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reduced logging can limit later forensic detail
- **B.** Temporary dual maintenance increases effort
- **C.** Transparent metrics may initially look worse

## L19-Q046

Foundational · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which next change most directly satisfies the stated requirement?

- **A.** Publish targeted diagnostics with appropriate retention
- **B.** Validate representative triggers and preserve a bounded fallback
- **C.** Track duration distributions and failure trends across comparable runs

## L19-Q047

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which explanation best accounts for the behavior or constraint described?

- **A.** The dashboard lacks historical and failed-run context
- **B.** Diagnostic collection is broader than its useful purpose
- **C.** The migration acceptance sample omits important execution modes

## L19-Q048

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Required trigger and failure scenarios pass on the YAML path
- **B.** A stable cohort shows the timing change and affected stage
- **C.** Required failures remain diagnosable with lower retained volume

## L19-Q049

Applied · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. Which execution safeguard most directly addresses the risk in this case?

- **A.** Sanitize diagnostics before storage and publication
- **B.** Freeze conflicting writes while comparing deployment paths
- **C.** Compare equivalent branches agents and workload sizes

## L19-Q050

Advanced · [CP5](README.md#task-5) · [D3.6.4](../../docs/objective-map.md), [D3.6.5](../../docs/objective-map.md)

Migration rollback: The team plans to delete its classic pipeline immediately after the first YAML success without comparing scheduled and release paths. The team selects this remedy: "Validate representative triggers and preserve a bounded fallback." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reduced logging can limit later forensic detail
- **B.** Temporary dual maintenance increases effort
- **C.** Detailed telemetry adds reporting overhead
