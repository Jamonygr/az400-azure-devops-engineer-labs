# Lab 25 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L25-Q001

Foundational · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which next change most directly satisfies the stated requirement?

- **A. Summarize counts by a five-minute time bin** Time bins preserve the requested trend structure. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **B. Project only the fields required for diagnosis** Narrow output limits unnecessary data disclosure. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **C. Filter time and relevant scope early in the KQL query** **Correct.** Early selective filtering reduces unnecessary processing. This directly addresses the constraint stated in this case.

**Explanation:** Early selective filtering reduces unnecessary processing. The selected answer is filter time and relevant scope early in the KQL query.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q002

Foundational · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which explanation best accounts for the behavior or constraint described?

- **A. The export includes more sensitive context than the task needs** Query access does not justify broad redistribution. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **B. The query scans data outside the investigation window** **Correct.** Broad scans increase work without adding relevant evidence. This directly addresses the constraint stated in this case.
- **C. A single aggregate collapses the incident timeline** It cannot show when the volume changed. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.

**Explanation:** Broad scans increase work without adding relevant evidence. The selected answer is the query scans data outside the investigation window.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q003

Applied · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The result has ordered five-minute buckets and counts** The evidence should match the requested temporal granularity. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **B. The report contains relevant timing without unnecessary payload data** The evidence should inspect the exported artifact. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **C. The narrowed query returns the same relevant incident records** **Correct.** Optimization should preserve the investigation's intended population. This directly addresses the constraint stated in this case.

**Explanation:** Optimization should preserve the investigation's intended population. The selected answer is the narrowed query returns the same relevant incident records.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q004

Applied · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify timezone and timestamp meaning before narrowing** **Correct.** A wrong time window can hide important events. This directly addresses the constraint stated in this case.
- **B. Choose bins appropriate to the sample density** Sparse data can make fine-grained charts misleading. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **C. Apply appropriate access and retention to investigation results** Derived reports can outlive the original controlled query. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.

**Explanation:** A wrong time window can hide important events. The selected answer is verify timezone and timestamp meaning before narrowing.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q005

Advanced · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. The team selects this remedy: "Filter time and relevant scope early in the KQL query." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Minimal projections may require follow-up queries** Reduced exposure can add a small diagnostic step. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **B. Very narrow windows can miss preceding causal events** **Correct.** Expand deliberately when the investigation requires context. This directly addresses the constraint stated in this case.
- **C. Coarser bins smooth short spikes** Granularity changes the behavior visible to responders. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.

**Explanation:** Expand deliberately when the investigation requires context. The selected answer is very narrow windows can miss preceding causal events.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q006

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which next change most directly satisfies the stated requirement?

- **A. Summarize counts by a five-minute time bin** **Correct.** Time bins preserve the requested trend structure. This directly addresses the constraint stated in this case.
- **B. Inspect latency percentiles and the slow-request cohort** Tail behavior can be hidden by an average. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **C. Filter time and relevant scope early in the KQL query** Early selective filtering reduces unnecessary processing. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.

**Explanation:** Time bins preserve the requested trend structure. The selected answer is summarize counts by a five-minute time bin.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q007

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which explanation best accounts for the behavior or constraint described?

- **A. Most fast requests dilute the slow minority** A central measure does not describe every user. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **B. The query scans data outside the investigation window** Broad scans increase work without adding relevant evidence. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.
- **C. A single aggregate collapses the incident timeline** **Correct.** It cannot show when the volume changed. This directly addresses the constraint stated in this case.

**Explanation:** It cannot show when the volume changed. The selected answer is a single aggregate collapses the incident timeline.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q008

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The result has ordered five-minute buckets and counts** **Correct.** The evidence should match the requested temporal granularity. This directly addresses the constraint stated in this case.
- **B. The latency distribution exposes the affected slow tail** The evidence must reveal the exceptional experience. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **C. The narrowed query returns the same relevant incident records** Optimization should preserve the investigation's intended population. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should match the requested temporal granularity. The selected answer is the result has ordered five-minute buckets and counts.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q009

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify timezone and timestamp meaning before narrowing** A wrong time window can hide important events. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.
- **B. Choose bins appropriate to the sample density** **Correct.** Sparse data can make fine-grained charts misleading. This directly addresses the constraint stated in this case.
- **C. Compare equivalent operations and relevant user populations** Mixed endpoints can distort latency interpretation. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.

**Explanation:** Sparse data can make fine-grained charts misleading. The selected answer is choose bins appropriate to the sample density.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q010

Advanced · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. The team selects this remedy: "Summarize counts by a five-minute time bin." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Coarser bins smooth short spikes** **Correct.** Granularity changes the behavior visible to responders. This directly addresses the constraint stated in this case.
- **B. Percentiles need sufficient representative observations** Small or sampled populations require caution. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **C. Very narrow windows can miss preceding causal events** Expand deliberately when the investigation requires context. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.

**Explanation:** Granularity changes the behavior visible to responders. The selected answer is coarser bins smooth short spikes.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q011

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which next change most directly satisfies the stated requirement?

- **A. Inspect latency percentiles and the slow-request cohort** **Correct.** Tail behavior can be hidden by an average. This directly addresses the constraint stated in this case.
- **B. Correlate request and dependency telemetry by trace context** Distributed tracing links records across service boundaries. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **C. Summarize counts by a five-minute time bin** Time bins preserve the requested trend structure. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.

**Explanation:** Tail behavior can be hidden by an average. The selected answer is inspect latency percentiles and the slow-request cohort.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q012

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which explanation best accounts for the behavior or constraint described?

- **A. A single aggregate collapses the incident timeline** It cannot show when the volume changed. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **B. Most fast requests dilute the slow minority** **Correct.** A central measure does not describe every user. This directly addresses the constraint stated in this case.
- **C. Timestamp proximity alone does not identify one transaction** Concurrent requests overlap in time. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.

**Explanation:** A central measure does not describe every user. The selected answer is most fast requests dilute the slow minority.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q013

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The result has ordered five-minute buckets and counts** The evidence should match the requested temporal granularity. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **B. The latency distribution exposes the affected slow tail** **Correct.** The evidence must reveal the exceptional experience. This directly addresses the constraint stated in this case.
- **C. The failing request links to its backend dependency chain** The trace should preserve causal relationships. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must reveal the exceptional experience. The selected answer is the latency distribution exposes the affected slow tail.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q014

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which execution safeguard most directly addresses the risk in this case?

- **A. Propagate supported trace context across every relevant hop** A missing boundary can fragment the transaction. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **B. Choose bins appropriate to the sample density** Sparse data can make fine-grained charts misleading. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **C. Compare equivalent operations and relevant user populations** **Correct.** Mixed endpoints can distort latency interpretation. This directly addresses the constraint stated in this case.

**Explanation:** Mixed endpoints can distort latency interpretation. The selected answer is compare equivalent operations and relevant user populations.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q015

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. The team selects this remedy: "Inspect latency percentiles and the slow-request cohort." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Incomplete instrumentation limits trace completeness** Correlation cannot reconstruct every missing event. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **B. Coarser bins smooth short spikes** Granularity changes the behavior visible to responders. That addresses a different requirement: Trend requirement. It does not directly resolve this case's stated constraint.
- **C. Percentiles need sufficient representative observations** **Correct.** Small or sampled populations require caution. This directly addresses the constraint stated in this case.

**Explanation:** Small or sampled populations require caution. The selected answer is percentiles need sufficient representative observations.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q016

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which next change most directly satisfies the stated requirement?

- **A. Correlate request and dependency telemetry by trace context** **Correct.** Distributed tracing links records across service boundaries. This directly addresses the constraint stated in this case.
- **B. Restore trace-context propagation between the services** Telemetry collection and correlation are separate requirements. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **C. Inspect latency percentiles and the slow-request cohort** Tail behavior can be hidden by an average. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.

**Explanation:** Distributed tracing links records across service boundaries. The selected answer is correlate request and dependency telemetry by trace context.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q017

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which explanation best accounts for the behavior or constraint described?

- **A. Most fast requests dilute the slow minority** A central measure does not describe every user. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **B. Timestamp proximity alone does not identify one transaction** **Correct.** Concurrent requests overlap in time. This directly addresses the constraint stated in this case.
- **C. The receiving service starts a disconnected trace** It cannot associate the call with its upstream parent. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.

**Explanation:** Concurrent requests overlap in time. The selected answer is timestamp proximity alone does not identify one transaction.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q018

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The failing request links to its backend dependency chain** **Correct.** The trace should preserve causal relationships. This directly addresses the constraint stated in this case.
- **B. A test request appears as one linked distributed trace** The proof should span the repaired service boundary. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **C. The latency distribution exposes the affected slow tail** The evidence must reveal the exceptional experience. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.

**Explanation:** The trace should preserve causal relationships. The selected answer is the failing request links to its backend dependency chain.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q019

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which execution safeguard most directly addresses the risk in this case?

- **A. Compare equivalent operations and relevant user populations** Mixed endpoints can distort latency interpretation. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **B. Propagate supported trace context across every relevant hop** **Correct.** A missing boundary can fragment the transaction. This directly addresses the constraint stated in this case.
- **C. Use supported context handling rather than ad hoc identifiers** Custom copying can create incorrect or spoofable relationships. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.

**Explanation:** A missing boundary can fragment the transaction. The selected answer is propagate supported trace context across every relevant hop.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q020

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. The team selects this remedy: "Correlate request and dependency telemetry by trace context." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Third-party services may not preserve context** Some trace boundaries require documented limitations. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **B. Percentiles need sufficient representative observations** Small or sampled populations require caution. That addresses a different requirement: Average hides pain. It does not directly resolve this case's stated constraint.
- **C. Incomplete instrumentation limits trace completeness** **Correct.** Correlation cannot reconstruct every missing event. This directly addresses the constraint stated in this case.

**Explanation:** Correlation cannot reconstruct every missing event. The selected answer is incomplete instrumentation limits trace completeness.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q021

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which next change most directly satisfies the stated requirement?

- **A. Correlate CPU pressure with request and process behavior** Sustained host pressure is a plausible performance contributor. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **B. Correlate request and dependency telemetry by trace context** Distributed tracing links records across service boundaries. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **C. Restore trace-context propagation between the services** **Correct.** Telemetry collection and correlation are separate requirements. This directly addresses the constraint stated in this case.

**Explanation:** Telemetry collection and correlation are separate requirements. The selected answer is restore trace-context propagation between the services.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q022

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which explanation best accounts for the behavior or constraint described?

- **A. The infrastructure signal indicates constrained compute headroom** Correlation needs application context before concluding causation. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **B. Timestamp proximity alone does not identify one transaction** Concurrent requests overlap in time. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **C. The receiving service starts a disconnected trace** **Correct.** It cannot associate the call with its upstream parent. This directly addresses the constraint stated in this case.

**Explanation:** It cannot associate the call with its upstream parent. The selected answer is the receiving service starts a disconnected trace.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q023

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The incident view aligns CPU pressure with affected operations** The evidence should compare time and workload scope. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **B. The failing request links to its backend dependency chain** The trace should preserve causal relationships. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **C. A test request appears as one linked distributed trace** **Correct.** The proof should span the repaired service boundary. This directly addresses the constraint stated in this case.

**Explanation:** The proof should span the repaired service boundary. The selected answer is a test request appears as one linked distributed trace.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q024

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid scaling before confirming the bottleneck and workload** An expensive change can mask a different root cause. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **B. Propagate supported trace context across every relevant hop** A missing boundary can fragment the transaction. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **C. Use supported context handling rather than ad hoc identifiers** **Correct.** Custom copying can create incorrect or spoofable relationships. This directly addresses the constraint stated in this case.

**Explanation:** Custom copying can create incorrect or spoofable relationships. The selected answer is use supported context handling rather than ad hoc identifiers.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q025

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. The team selects this remedy: "Restore trace-context propagation between the services." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Incomplete instrumentation limits trace completeness** Correlation cannot reconstruct every missing event. That addresses a different requirement: Cross-service failure. It does not directly resolve this case's stated constraint.
- **B. Third-party services may not preserve context** **Correct.** Some trace boundaries require documented limitations. This directly addresses the constraint stated in this case.
- **C. Correlation does not prove causation** A controlled comparison or deeper profiling may be needed. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.

**Explanation:** Some trace boundaries require documented limitations. The selected answer is third-party services may not preserve context.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q026

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which next change most directly satisfies the stated requirement?

- **A. Correlate CPU pressure with request and process behavior** **Correct.** Sustained host pressure is a plausible performance contributor. This directly addresses the constraint stated in this case.
- **B. Investigate storage performance rather than assuming CPU shortage** The strongest pressure signal is the storage layer. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **C. Restore trace-context propagation between the services** Telemetry collection and correlation are separate requirements. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.

**Explanation:** Sustained host pressure is a plausible performance contributor. The selected answer is correlate CPU pressure with request and process behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q027

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which explanation best accounts for the behavior or constraint described?

- **A. Compute utilization alone does not explain the observed bottleneck** A different resource can limit throughput. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **B. The receiving service starts a disconnected trace** It cannot associate the call with its upstream parent. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **C. The infrastructure signal indicates constrained compute headroom** **Correct.** Correlation needs application context before concluding causation. This directly addresses the constraint stated in this case.

**Explanation:** Correlation needs application context before concluding causation. The selected answer is the infrastructure signal indicates constrained compute headroom.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q028

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A test request appears as one linked distributed trace** The proof should span the repaired service boundary. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **B. The incident view aligns CPU pressure with affected operations** **Correct.** The evidence should compare time and workload scope. This directly addresses the constraint stated in this case.
- **C. Disk pressure and affected work correlate in the incident window** The evidence should target the constrained resource. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should compare time and workload scope. The selected answer is the incident view aligns CPU pressure with affected operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q029

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which execution safeguard most directly addresses the risk in this case?

- **A. Use supported context handling rather than ad hoc identifiers** Custom copying can create incorrect or spoofable relationships. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.
- **B. Avoid scaling before confirming the bottleneck and workload** **Correct.** An expensive change can mask a different root cause. This directly addresses the constraint stated in this case.
- **C. Check storage limits and application access patterns before resizing** Provisioned capacity is only one possible cause. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.

**Explanation:** An expensive change can mask a different root cause. The selected answer is avoid scaling before confirming the bottleneck and workload.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q030

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. The team selects this remedy: "Correlate CPU pressure with request and process behavior." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Correlation does not prove causation** **Correct.** A controlled comparison or deeper profiling may be needed. This directly addresses the constraint stated in this case.
- **B. More storage performance can increase cost** Application optimization may be a better remedy. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **C. Third-party services may not preserve context** Some trace boundaries require documented limitations. That addresses a different requirement: Broken trace. It does not directly resolve this case's stated constraint.

**Explanation:** A controlled comparison or deeper profiling may be needed. The selected answer is correlation does not prove causation.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q031

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which next change most directly satisfies the stated requirement?

- **A. Join on appropriate correlation keys and expected cardinality** The relationship must match the intended data model. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **B. Correlate CPU pressure with request and process behavior** Sustained host pressure is a plausible performance contributor. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **C. Investigate storage performance rather than assuming CPU shortage** **Correct.** The strongest pressure signal is the storage layer. This directly addresses the constraint stated in this case.

**Explanation:** The strongest pressure signal is the storage layer. The selected answer is investigate storage performance rather than assuming CPU shortage.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q032

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which explanation best accounts for the behavior or constraint described?

- **A. A nonunique key creates many-to-many combinations** The result overstates the number of relevant events. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **B. The infrastructure signal indicates constrained compute headroom** Correlation needs application context before concluding causation. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **C. Compute utilization alone does not explain the observed bottleneck** **Correct.** A different resource can limit throughput. This directly addresses the constraint stated in this case.

**Explanation:** A different resource can limit throughput. The selected answer is compute utilization alone does not explain the observed bottleneck.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q033

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The incident view aligns CPU pressure with affected operations** The evidence should compare time and workload scope. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **B. Disk pressure and affected work correlate in the incident window** **Correct.** The evidence should target the constrained resource. This directly addresses the constraint stated in this case.
- **C. Joined counts match the expected transaction relationships** Verification should compare input and output cardinality. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should target the constrained resource. The selected answer is disk pressure and affected work correlate in the incident window.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q034

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which execution safeguard most directly addresses the risk in this case?

- **A. Inspect uniqueness and select only needed fields** Large accidental joins waste resources and confuse diagnosis. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **B. Avoid scaling before confirming the bottleneck and workload** An expensive change can mask a different root cause. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **C. Check storage limits and application access patterns before resizing** **Correct.** Provisioned capacity is only one possible cause. This directly addresses the constraint stated in this case.

**Explanation:** Provisioned capacity is only one possible cause. The selected answer is check storage limits and application access patterns before resizing.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q035

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. The team selects this remedy: "Investigate storage performance rather than assuming CPU shortage." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Deduplication can hide legitimate repeated events** Choose keys based on meaning rather than convenient reduction. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **B. Correlation does not prove causation** A controlled comparison or deeper profiling may be needed. That addresses a different requirement: CPU saturation. It does not directly resolve this case's stated constraint.
- **C. More storage performance can increase cost** **Correct.** Application optimization may be a better remedy. This directly addresses the constraint stated in this case.

**Explanation:** Application optimization may be a better remedy. The selected answer is more storage performance can increase cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q036

Foundational · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which next change most directly satisfies the stated requirement?

- **A. Join on appropriate correlation keys and expected cardinality** **Correct.** The relationship must match the intended data model. This directly addresses the constraint stated in this case.
- **B. Account for the configured sampling and aggregation semantics** Retained events may represent more requests than raw rows. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **C. Investigate storage performance rather than assuming CPU shortage** The strongest pressure signal is the storage layer. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.

**Explanation:** The relationship must match the intended data model. The selected answer is join on appropriate correlation keys and expected cardinality.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q037

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which explanation best accounts for the behavior or constraint described?

- **A. The compared measurements have different population semantics** Sampling changes what is physically stored. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **B. Compute utilization alone does not explain the observed bottleneck** A different resource can limit throughput. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **C. A nonunique key creates many-to-many combinations** **Correct.** The result overstates the number of relevant events. This directly addresses the constraint stated in this case.

**Explanation:** The result overstates the number of relevant events. The selected answer is a nonunique key creates many-to-many combinations.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q038

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The adjusted interpretation agrees with the known collection model** The result should explain rather than ignore sampling. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **B. Disk pressure and affected work correlate in the incident window** The evidence should target the constrained resource. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **C. Joined counts match the expected transaction relationships** **Correct.** Verification should compare input and output cardinality. This directly addresses the constraint stated in this case.

**Explanation:** Verification should compare input and output cardinality. The selected answer is joined counts match the expected transaction relationships.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q039

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which execution safeguard most directly addresses the risk in this case?

- **A. Check storage limits and application access patterns before resizing** Provisioned capacity is only one possible cause. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **B. Inspect uniqueness and select only needed fields** **Correct.** Large accidental joins waste resources and confuse diagnosis. This directly addresses the constraint stated in this case.
- **C. Document which metrics and logs are sampled** Consumers need to know the data's limitations. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Large accidental joins waste resources and confuse diagnosis. The selected answer is inspect uniqueness and select only needed fields.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q040

Advanced · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. The team selects this remedy: "Join on appropriate correlation keys and expected cardinality." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More storage performance can increase cost** Application optimization may be a better remedy. That addresses a different requirement: Disk-bound workload. It does not directly resolve this case's stated constraint.
- **B. Deduplication can hide legitimate repeated events** **Correct.** Choose keys based on meaning rather than convenient reduction. This directly addresses the constraint stated in this case.
- **C. Sampling reduces volume but can omit individual traces** Cost savings trade against event-level completeness. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Choose keys based on meaning rather than convenient reduction. The selected answer is deduplication can hide legitimate repeated events.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q041

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which next change most directly satisfies the stated requirement?

- **A. Account for the configured sampling and aggregation semantics** **Correct.** Retained events may represent more requests than raw rows. This directly addresses the constraint stated in this case.
- **B. Project only the fields required for diagnosis** Narrow output limits unnecessary data disclosure. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **C. Join on appropriate correlation keys and expected cardinality** The relationship must match the intended data model. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.

**Explanation:** Retained events may represent more requests than raw rows. The selected answer is account for the configured sampling and aggregation semantics.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q042

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which explanation best accounts for the behavior or constraint described?

- **A. The compared measurements have different population semantics** **Correct.** Sampling changes what is physically stored. This directly addresses the constraint stated in this case.
- **B. The export includes more sensitive context than the task needs** Query access does not justify broad redistribution. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **C. A nonunique key creates many-to-many combinations** The result overstates the number of relevant events. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.

**Explanation:** Sampling changes what is physically stored. The selected answer is the compared measurements have different population semantics.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q043

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The adjusted interpretation agrees with the known collection model** **Correct.** The result should explain rather than ignore sampling. This directly addresses the constraint stated in this case.
- **B. The report contains relevant timing without unnecessary payload data** The evidence should inspect the exported artifact. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **C. Joined counts match the expected transaction relationships** Verification should compare input and output cardinality. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.

**Explanation:** The result should explain rather than ignore sampling. The selected answer is the adjusted interpretation agrees with the known collection model.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q044

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which execution safeguard most directly addresses the risk in this case?

- **A. Apply appropriate access and retention to investigation results** Derived reports can outlive the original controlled query. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.
- **B. Inspect uniqueness and select only needed fields** Large accidental joins waste resources and confuse diagnosis. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **C. Document which metrics and logs are sampled** **Correct.** Consumers need to know the data's limitations. This directly addresses the constraint stated in this case.

**Explanation:** Consumers need to know the data's limitations. The selected answer is document which metrics and logs are sampled.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q045

Advanced · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. The team selects this remedy: "Account for the configured sampling and aggregation semantics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Deduplication can hide legitimate repeated events** Choose keys based on meaning rather than convenient reduction. That addresses a different requirement: Join explosion. It does not directly resolve this case's stated constraint.
- **B. Sampling reduces volume but can omit individual traces** **Correct.** Cost savings trade against event-level completeness. This directly addresses the constraint stated in this case.
- **C. Minimal projections may require follow-up queries** Reduced exposure can add a small diagnostic step. That addresses a different requirement: Sensitive projection. It does not directly resolve this case's stated constraint.

**Explanation:** Cost savings trade against event-level completeness. The selected answer is sampling reduces volume but can omit individual traces.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q046

Foundational · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which next change most directly satisfies the stated requirement?

- **A. Project only the fields required for diagnosis** **Correct.** Narrow output limits unnecessary data disclosure. This directly addresses the constraint stated in this case.
- **B. Filter time and relevant scope early in the KQL query** Early selective filtering reduces unnecessary processing. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.
- **C. Account for the configured sampling and aggregation semantics** Retained events may represent more requests than raw rows. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Narrow output limits unnecessary data disclosure. The selected answer is project only the fields required for diagnosis.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q047

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which explanation best accounts for the behavior or constraint described?

- **A. The export includes more sensitive context than the task needs** **Correct.** Query access does not justify broad redistribution. This directly addresses the constraint stated in this case.
- **B. The query scans data outside the investigation window** Broad scans increase work without adding relevant evidence. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.
- **C. The compared measurements have different population semantics** Sampling changes what is physically stored. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Query access does not justify broad redistribution. The selected answer is the export includes more sensitive context than the task needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q048

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The adjusted interpretation agrees with the known collection model** The result should explain rather than ignore sampling. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **B. The report contains relevant timing without unnecessary payload data** **Correct.** The evidence should inspect the exported artifact. This directly addresses the constraint stated in this case.
- **C. The narrowed query returns the same relevant incident records** Optimization should preserve the investigation's intended population. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should inspect the exported artifact. The selected answer is the report contains relevant timing without unnecessary payload data.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q049

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which execution safeguard most directly addresses the risk in this case?

- **A. Document which metrics and logs are sampled** Consumers need to know the data's limitations. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **B. Apply appropriate access and retention to investigation results** **Correct.** Derived reports can outlive the original controlled query. This directly addresses the constraint stated in this case.
- **C. Verify timezone and timestamp meaning before narrowing** A wrong time window can hide important events. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.

**Explanation:** Derived reports can outlive the original controlled query. The selected answer is apply appropriate access and retention to investigation results.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q050

Advanced · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. The team selects this remedy: "Project only the fields required for diagnosis." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Very narrow windows can miss preceding causal events** Expand deliberately when the investigation requires context. That addresses a different requirement: Slow log query. It does not directly resolve this case's stated constraint.
- **B. Sampling reduces volume but can omit individual traces** Cost savings trade against event-level completeness. That addresses a different requirement: Sampling mismatch. It does not directly resolve this case's stated constraint.
- **C. Minimal projections may require follow-up queries** **Correct.** Reduced exposure can add a small diagnostic step. This directly addresses the constraint stated in this case.

**Explanation:** Reduced exposure can add a small diagnostic step. The selected answer is minimal projections may require follow-up queries.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data); [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)
