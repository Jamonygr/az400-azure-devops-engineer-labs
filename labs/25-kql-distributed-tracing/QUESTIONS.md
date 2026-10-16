# Lab 25 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L25-Q001

Foundational · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which next change most directly satisfies the stated requirement?

- **A.** Summarize counts by a five-minute time bin
- **B.** Project only the fields required for diagnosis
- **C.** Filter time and relevant scope early in the KQL query

## L25-Q002

Foundational · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which explanation best accounts for the behavior or constraint described?

- **A.** The export includes more sensitive context than the task needs
- **B.** The query scans data outside the investigation window
- **C.** A single aggregate collapses the incident timeline

## L25-Q003

Applied · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The result has ordered five-minute buckets and counts
- **B.** The report contains relevant timing without unnecessary payload data
- **C.** The narrowed query returns the same relevant incident records

## L25-Q004

Applied · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify timezone and timestamp meaning before narrowing
- **B.** Choose bins appropriate to the sample density
- **C.** Apply appropriate access and retention to investigation results

## L25-Q005

Advanced · [CP5](README.md#task-5) · [D5.2.4](../../docs/objective-map.md)

Slow log query: A responder searches all retained request rows before applying the incident time window. The team selects this remedy: "Filter time and relevant scope early in the KQL query." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Minimal projections may require follow-up queries
- **B.** Very narrow windows can miss preceding causal events
- **C.** Coarser bins smooth short spikes

## L25-Q006

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which next change most directly satisfies the stated requirement?

- **A.** Summarize counts by a five-minute time bin
- **B.** Inspect latency percentiles and the slow-request cohort
- **C.** Filter time and relevant scope early in the KQL query

## L25-Q007

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which explanation best accounts for the behavior or constraint described?

- **A.** Most fast requests dilute the slow minority
- **B.** The query scans data outside the investigation window
- **C.** A single aggregate collapses the incident timeline

## L25-Q008

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The result has ordered five-minute buckets and counts
- **B.** The latency distribution exposes the affected slow tail
- **C.** The narrowed query returns the same relevant incident records

## L25-Q009

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify timezone and timestamp meaning before narrowing
- **B.** Choose bins appropriate to the sample density
- **C.** Compare equivalent operations and relevant user populations

## L25-Q010

Advanced · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

Trend requirement: Operations needs five-minute request counts rather than one total for the entire incident. The team selects this remedy: "Summarize counts by a five-minute time bin." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Coarser bins smooth short spikes
- **B.** Percentiles need sufficient representative observations
- **C.** Very narrow windows can miss preceding causal events

## L25-Q011

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which next change most directly satisfies the stated requirement?

- **A.** Inspect latency percentiles and the slow-request cohort
- **B.** Correlate request and dependency telemetry by trace context
- **C.** Summarize counts by a five-minute time bin

## L25-Q012

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which explanation best accounts for the behavior or constraint described?

- **A.** A single aggregate collapses the incident timeline
- **B.** Most fast requests dilute the slow minority
- **C.** Timestamp proximity alone does not identify one transaction

## L25-Q013

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The result has ordered five-minute buckets and counts
- **B.** The latency distribution exposes the affected slow tail
- **C.** The failing request links to its backend dependency chain

## L25-Q014

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. Which execution safeguard most directly addresses the risk in this case?

- **A.** Propagate supported trace context across every relevant hop
- **B.** Choose bins appropriate to the sample density
- **C.** Compare equivalent operations and relevant user populations

## L25-Q015

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

Average hides pain: Mean latency is normal while a small set of users experience very slow requests. The team selects this remedy: "Inspect latency percentiles and the slow-request cohort." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Incomplete instrumentation limits trace completeness
- **B.** Coarser bins smooth short spikes
- **C.** Percentiles need sufficient representative observations

## L25-Q016

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which next change most directly satisfies the stated requirement?

- **A.** Correlate request and dependency telemetry by trace context
- **B.** Restore trace-context propagation between the services
- **C.** Inspect latency percentiles and the slow-request cohort

## L25-Q017

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which explanation best accounts for the behavior or constraint described?

- **A.** Most fast requests dilute the slow minority
- **B.** Timestamp proximity alone does not identify one transaction
- **C.** The receiving service starts a disconnected trace

## L25-Q018

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The failing request links to its backend dependency chain
- **B.** A test request appears as one linked distributed trace
- **C.** The latency distribution exposes the affected slow tail

## L25-Q019

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. Which execution safeguard most directly addresses the risk in this case?

- **A.** Compare equivalent operations and relevant user populations
- **B.** Propagate supported trace context across every relevant hop
- **C.** Use supported context handling rather than ad hoc identifiers

## L25-Q020

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Cross-service failure: A browser request fails after several backend calls, and logs need to be tied to the same transaction. The team selects this remedy: "Correlate request and dependency telemetry by trace context." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Third-party services may not preserve context
- **B.** Percentiles need sufficient representative observations
- **C.** Incomplete instrumentation limits trace completeness

## L25-Q021

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which next change most directly satisfies the stated requirement?

- **A.** Correlate CPU pressure with request and process behavior
- **B.** Correlate request and dependency telemetry by trace context
- **C.** Restore trace-context propagation between the services

## L25-Q022

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which explanation best accounts for the behavior or constraint described?

- **A.** The infrastructure signal indicates constrained compute headroom
- **B.** Timestamp proximity alone does not identify one transaction
- **C.** The receiving service starts a disconnected trace

## L25-Q023

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The incident view aligns CPU pressure with affected operations
- **B.** The failing request links to its backend dependency chain
- **C.** A test request appears as one linked distributed trace

## L25-Q024

Applied · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid scaling before confirming the bottleneck and workload
- **B.** Propagate supported trace context across every relevant hop
- **C.** Use supported context handling rather than ad hoc identifiers

## L25-Q025

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Broken trace: Two services emit telemetry but every call appears as an unrelated operation because trace context is dropped. The team selects this remedy: "Restore trace-context propagation between the services." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Incomplete instrumentation limits trace completeness
- **B.** Third-party services may not preserve context
- **C.** Correlation does not prove causation

## L25-Q026

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which next change most directly satisfies the stated requirement?

- **A.** Correlate CPU pressure with request and process behavior
- **B.** Investigate storage performance rather than assuming CPU shortage
- **C.** Restore trace-context propagation between the services

## L25-Q027

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which explanation best accounts for the behavior or constraint described?

- **A.** Compute utilization alone does not explain the observed bottleneck
- **B.** The receiving service starts a disconnected trace
- **C.** The infrastructure signal indicates constrained compute headroom

## L25-Q028

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test request appears as one linked distributed trace
- **B.** The incident view aligns CPU pressure with affected operations
- **C.** Disk pressure and affected work correlate in the incident window

## L25-Q029

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use supported context handling rather than ad hoc identifiers
- **B.** Avoid scaling before confirming the bottleneck and workload
- **C.** Check storage limits and application access patterns before resizing

## L25-Q030

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU saturation: Application latency rises while the host's CPU remains near capacity throughout the same period. The team selects this remedy: "Correlate CPU pressure with request and process behavior." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Correlation does not prove causation
- **B.** More storage performance can increase cost
- **C.** Third-party services may not preserve context

## L25-Q031

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which next change most directly satisfies the stated requirement?

- **A.** Join on appropriate correlation keys and expected cardinality
- **B.** Correlate CPU pressure with request and process behavior
- **C.** Investigate storage performance rather than assuming CPU shortage

## L25-Q032

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which explanation best accounts for the behavior or constraint described?

- **A.** A nonunique key creates many-to-many combinations
- **B.** The infrastructure signal indicates constrained compute headroom
- **C.** Compute utilization alone does not explain the observed bottleneck

## L25-Q033

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The incident view aligns CPU pressure with affected operations
- **B.** Disk pressure and affected work correlate in the incident window
- **C.** Joined counts match the expected transaction relationships

## L25-Q034

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inspect uniqueness and select only needed fields
- **B.** Avoid scaling before confirming the bottleneck and workload
- **C.** Check storage limits and application access patterns before resizing

## L25-Q035

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk-bound workload: CPU is moderate, but disk latency and queueing rise sharply during slow background processing. The team selects this remedy: "Investigate storage performance rather than assuming CPU shortage." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Deduplication can hide legitimate repeated events
- **B.** Correlation does not prove causation
- **C.** More storage performance can increase cost

## L25-Q036

Foundational · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which next change most directly satisfies the stated requirement?

- **A.** Join on appropriate correlation keys and expected cardinality
- **B.** Account for the configured sampling and aggregation semantics
- **C.** Investigate storage performance rather than assuming CPU shortage

## L25-Q037

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which explanation best accounts for the behavior or constraint described?

- **A.** The compared measurements have different population semantics
- **B.** Compute utilization alone does not explain the observed bottleneck
- **C.** A nonunique key creates many-to-many combinations

## L25-Q038

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The adjusted interpretation agrees with the known collection model
- **B.** Disk pressure and affected work correlate in the incident window
- **C.** Joined counts match the expected transaction relationships

## L25-Q039

Applied · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check storage limits and application access patterns before resizing
- **B.** Inspect uniqueness and select only needed fields
- **C.** Document which metrics and logs are sampled

## L25-Q040

Advanced · [CP4](README.md#task-4) · [D5.2.4](../../docs/objective-map.md)

Join explosion: A KQL join multiplies records because both sides contain many rows for the same nonunique operation label. The team selects this remedy: "Join on appropriate correlation keys and expected cardinality." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More storage performance can increase cost
- **B.** Deduplication can hide legitimate repeated events
- **C.** Sampling reduces volume but can omit individual traces

## L25-Q041

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which next change most directly satisfies the stated requirement?

- **A.** Account for the configured sampling and aggregation semantics
- **B.** Project only the fields required for diagnosis
- **C.** Join on appropriate correlation keys and expected cardinality

## L25-Q042

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which explanation best accounts for the behavior or constraint described?

- **A.** The compared measurements have different population semantics
- **B.** The export includes more sensitive context than the task needs
- **C.** A nonunique key creates many-to-many combinations

## L25-Q043

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The adjusted interpretation agrees with the known collection model
- **B.** The report contains relevant timing without unnecessary payload data
- **C.** Joined counts match the expected transaction relationships

## L25-Q044

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. Which execution safeguard most directly addresses the risk in this case?

- **A.** Apply appropriate access and retention to investigation results
- **B.** Inspect uniqueness and select only needed fields
- **C.** Document which metrics and logs are sampled

## L25-Q045

Advanced · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md), [D5.2.2](../../docs/objective-map.md)

Sampling mismatch: A responder compares raw retained telemetry rows with a full service request count and concludes traffic vanished. The team selects this remedy: "Account for the configured sampling and aggregation semantics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Deduplication can hide legitimate repeated events
- **B.** Sampling reduces volume but can omit individual traces
- **C.** Minimal projections may require follow-up queries

## L25-Q046

Foundational · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which next change most directly satisfies the stated requirement?

- **A.** Project only the fields required for diagnosis
- **B.** Filter time and relevant scope early in the KQL query
- **C.** Account for the configured sampling and aggregation semantics

## L25-Q047

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which explanation best accounts for the behavior or constraint described?

- **A.** The export includes more sensitive context than the task needs
- **B.** The query scans data outside the investigation window
- **C.** The compared measurements have different population semantics

## L25-Q048

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The adjusted interpretation agrees with the known collection model
- **B.** The report contains relevant timing without unnecessary payload data
- **C.** The narrowed query returns the same relevant incident records

## L25-Q049

Applied · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document which metrics and logs are sampled
- **B.** Apply appropriate access and retention to investigation results
- **C.** Verify timezone and timestamp meaning before narrowing

## L25-Q050

Advanced · [CP1](README.md#task-1) · [D5.2.4](../../docs/objective-map.md)

Sensitive projection: A useful incident query exports complete request payloads when only operation names and timing are needed. The team selects this remedy: "Project only the fields required for diagnosis." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Very narrow windows can miss preceding causal events
- **B.** Sampling reduces volume but can omit individual traces
- **C.** Minimal projections may require follow-up queries
