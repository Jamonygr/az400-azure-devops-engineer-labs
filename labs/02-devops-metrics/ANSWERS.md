# Lab 02 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L02-Q001

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which next change most directly satisfies the stated requirement?

- **A. Investigate intake queues and work-in-progress limits** Stable execution points toward waiting as the bottleneck. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **B. Normalize definitions before comparing team outcomes** Equivalent queries require equivalent measurement semantics. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **C. Measure lead time from creation through completion** **Correct.** Lead time includes waiting before active work starts. This directly addresses the constraint stated in this case.

**Explanation:** Lead time includes waiting before active work starts. The selected answer is measure lead time from creation through completion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q002

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which explanation best accounts for the behavior or constraint described?

- **A. The delay occurs before work starts** Unchanged cycle time weakens the slow-development hypothesis. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **B. The populations and state transitions are not comparable** A shared chart does not guarantee shared definitions. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **C. Cycle time omits the initial queue interval** **Correct.** Starting work and requesting work are different events. This directly addresses the constraint stated in this case.

**Explanation:** Starting work and requesting work are different events. The selected answer is cycle time omits the initial queue interval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q003

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The reported interval includes Monday through Friday** **Correct.** The customer wait metric starts when demand enters. This directly addresses the constraint stated in this case.
- **B. Queue age falls while cycle time remains stable** This isolates improvement to the identified waiting stage. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **C. Both teams reproduce the same metric from documented rules** Reproducibility makes comparisons auditable and meaningful. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.

**Explanation:** The customer wait metric starts when demand enters. The selected answer is the reported interval includes Monday through Friday.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q004

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which execution safeguard most directly addresses the risk in this case?

- **A. Standardize state mappings and timestamp definitions** **Correct.** Different workflows otherwise produce incomparable time measures. This directly addresses the constraint stated in this case.
- **B. Compare similar work-item types and reporting windows** Mixed cohorts can conceal the true bottleneck. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **C. Publish query definitions and data freshness with the chart** Consumers need to know how the numbers were derived. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.

**Explanation:** Different workflows otherwise produce incomparable time measures. The selected answer is standardize state mappings and timestamp definitions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q005

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. The team selects this remedy: "Measure lead time from creation through completion." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Uniform metrics can miss legitimate workflow differences** Use shared definitions while explaining contextual limitations. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **B. Lead time can rise without slower active development** **Correct.** Queue delays can dominate the customer experience. This directly addresses the constraint stated in this case.
- **C. Lower queue age may require accepting less concurrent work** Throughput and responsiveness need explicit capacity choices. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.

**Explanation:** Queue delays can dominate the customer experience. The selected answer is lead time can rise without slower active development.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q006

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which next change most directly satisfies the stated requirement?

- **A. Separate planning metrics by comparable work-item class** Comparable units make trend interpretation meaningful. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **B. Measure lead time from creation through completion** Lead time includes waiting before active work starts. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.
- **C. Investigate intake queues and work-in-progress limits** **Correct.** Stable execution points toward waiting as the bottleneck. This directly addresses the constraint stated in this case.

**Explanation:** Stable execution points toward waiting as the bottleneck. The selected answer is investigate intake queues and work-in-progress limits.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q007

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which explanation best accounts for the behavior or constraint described?

- **A. Heterogeneous work units distort count-based comparisons** An epic is not equivalent to a small task. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **B. Cycle time omits the initial queue interval** Starting work and requesting work are different events. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.
- **C. The delay occurs before work starts** **Correct.** Unchanged cycle time weakens the slow-development hypothesis. This directly addresses the constraint stated in this case.

**Explanation:** Unchanged cycle time weakens the slow-development hypothesis. The selected answer is the delay occurs before work starts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q008

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Queue age falls while cycle time remains stable** **Correct.** This isolates improvement to the identified waiting stage. This directly addresses the constraint stated in this case.
- **B. Forecasts show consistent definitions and comparable historical cohorts** Predictability requires a stable measurement population. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **C. The reported interval includes Monday through Friday** The customer wait metric starts when demand enters. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** This isolates improvement to the identified waiting stage. The selected answer is queue age falls while cycle time remains stable.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q009

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which execution safeguard most directly addresses the risk in this case?

- **A. Compare similar work-item types and reporting windows** **Correct.** Mixed cohorts can conceal the true bottleneck. This directly addresses the constraint stated in this case.
- **B. Document filters and excluded work-item types** Undocumented selection can make planning dashboards misleading. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **C. Standardize state mappings and timestamp definitions** Different workflows otherwise produce incomparable time measures. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Mixed cohorts can conceal the true bottleneck. The selected answer is compare similar work-item types and reporting windows.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q010

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. The team selects this remedy: "Investigate intake queues and work-in-progress limits." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Lower queue age may require accepting less concurrent work** **Correct.** Throughput and responsiveness need explicit capacity choices. This directly addresses the constraint stated in this case.
- **B. Item counts do not measure delivered customer value** Forecasting metrics need qualitative business context. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **C. Lead time can rise without slower active development** Queue delays can dominate the customer experience. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Throughput and responsiveness need explicit capacity choices. The selected answer is lower queue age may require accepting less concurrent work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q011

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which next change most directly satisfies the stated requirement?

- **A. Separate planning metrics by comparable work-item class** **Correct.** Comparable units make trend interpretation meaningful. This directly addresses the constraint stated in this case.
- **B. Measure review waiting time and rebalance reviewer capacity** The longest waiting stage controls delivery responsiveness. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. Investigate intake queues and work-in-progress limits** Stable execution points toward waiting as the bottleneck. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.

**Explanation:** Comparable units make trend interpretation meaningful. The selected answer is separate planning metrics by comparable work-item class.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q012

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which explanation best accounts for the behavior or constraint described?

- **A. The development bottleneck is reviewer availability** Faster compilation cannot remove an unanswered review queue. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **B. The delay occurs before work starts** Unchanged cycle time weakens the slow-development hypothesis. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **C. Heterogeneous work units distort count-based comparisons** **Correct.** An epic is not equivalent to a small task. This directly addresses the constraint stated in this case.

**Explanation:** An epic is not equivalent to a small task. The selected answer is heterogeneous work units distort count-based comparisons.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q013

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Forecasts show consistent definitions and comparable historical cohorts** **Correct.** Predictability requires a stable measurement population. This directly addresses the constraint stated in this case.
- **B. Time awaiting first meaningful review decreases** That evidence targets the observed development delay. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. Queue age falls while cycle time remains stable** This isolates improvement to the identified waiting stage. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.

**Explanation:** Predictability requires a stable measurement population. The selected answer is forecasts show consistent definitions and comparable historical cohorts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q014

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid evaluating individual developers by raw commit counts** Activity counts can incentivize fragmented or low-value work. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **B. Compare similar work-item types and reporting windows** Mixed cohorts can conceal the true bottleneck. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **C. Document filters and excluded work-item types** **Correct.** Undocumented selection can make planning dashboards misleading. This directly addresses the constraint stated in this case.

**Explanation:** Undocumented selection can make planning dashboards misleading. The selected answer is document filters and excluded work-item types.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q015

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. The team selects this remedy: "Separate planning metrics by comparable work-item class." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Lower queue age may require accepting less concurrent work** Throughput and responsiveness need explicit capacity choices. That addresses a different requirement: Long queue. It does not directly resolve this case's stated constraint.
- **B. Item counts do not measure delivered customer value** **Correct.** Forecasting metrics need qualitative business context. This directly addresses the constraint stated in this case.
- **C. Review speed must preserve review quality** Removing scrutiny can exchange delay for defects. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.

**Explanation:** Forecasting metrics need qualitative business context. The selected answer is item counts do not measure delivered customer value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q016

Foundational · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which next change most directly satisfies the stated requirement?

- **A. Measure review waiting time and rebalance reviewer capacity** **Correct.** The longest waiting stage controls delivery responsiveness. This directly addresses the constraint stated in this case.
- **B. Track critical-path coverage and escaped defects together** Pass rate alone says nothing about missing scenarios. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **C. Separate planning metrics by comparable work-item class** Comparable units make trend interpretation meaningful. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.

**Explanation:** The longest waiting stage controls delivery responsiveness. The selected answer is measure review waiting time and rebalance reviewer capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q017

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which explanation best accounts for the behavior or constraint described?

- **A. Heterogeneous work units distort count-based comparisons** An epic is not equivalent to a small task. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **B. The development bottleneck is reviewer availability** **Correct.** Faster compilation cannot remove an unanswered review queue. This directly addresses the constraint stated in this case.
- **C. The dashboard measures executed tests rather than absent tests** A suite can pass while omitting important behavior. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.

**Explanation:** Faster compilation cannot remove an unanswered review queue. The selected answer is the development bottleneck is reviewer availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q018

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Forecasts show consistent definitions and comparable historical cohorts** Predictability requires a stable measurement population. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **B. Time awaiting first meaningful review decreases** **Correct.** That evidence targets the observed development delay. This directly addresses the constraint stated in this case.
- **C. Checkout integration failures are detected before release** The new signal must correspond to customer-critical behavior. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.

**Explanation:** That evidence targets the observed development delay. The selected answer is time awaiting first meaningful review decreases.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q019

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which execution safeguard most directly addresses the risk in this case?

- **A. Document filters and excluded work-item types** Undocumented selection can make planning dashboards misleading. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **B. Avoid evaluating individual developers by raw commit counts** **Correct.** Activity counts can incentivize fragmented or low-value work. This directly addresses the constraint stated in this case.
- **C. Keep test failure classification separate from infrastructure faults** Environment outages should not masquerade as product regressions. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.

**Explanation:** Activity counts can incentivize fragmented or low-value work. The selected answer is avoid evaluating individual developers by raw commit counts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q020

Advanced · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. The team selects this remedy: "Measure review waiting time and rebalance reviewer capacity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More tests can increase runtime and maintenance** Prioritize risk rather than maximizing test count. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **B. Item counts do not measure delivered customer value** Forecasting metrics need qualitative business context. That addresses a different requirement: Unreliable forecasts. It does not directly resolve this case's stated constraint.
- **C. Review speed must preserve review quality** **Correct.** Removing scrutiny can exchange delay for defects. This directly addresses the constraint stated in this case.

**Explanation:** Removing scrutiny can exchange delay for defects. The selected answer is review speed must preserve review quality.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q021

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which next change most directly satisfies the stated requirement?

- **A. Measure remediation age and justified risk dispositions** Suppression volume is not evidence of risk reduction. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **B. Measure review waiting time and rebalance reviewer capacity** The longest waiting stage controls delivery responsiveness. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. Track critical-path coverage and escaped defects together** **Correct.** Pass rate alone says nothing about missing scenarios. This directly addresses the constraint stated in this case.

**Explanation:** Pass rate alone says nothing about missing scenarios. The selected answer is track critical-path coverage and escaped defects together.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q022

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which explanation best accounts for the behavior or constraint described?

- **A. The metric rewards changing alert state rather than fixing exposure** Unreviewed dismissals can hide unresolved vulnerabilities. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **B. The development bottleneck is reviewer availability** Faster compilation cannot remove an unanswered review queue. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. The dashboard measures executed tests rather than absent tests** **Correct.** A suite can pass while omitting important behavior. This directly addresses the constraint stated in this case.

**Explanation:** A suite can pass while omitting important behavior. The selected answer is the dashboard measures executed tests rather than absent tests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q023

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Critical findings have verified fixes or documented accepted risk** The evidence must show accountable risk treatment. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **B. Time awaiting first meaningful review decreases** That evidence targets the observed development delay. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. Checkout integration failures are detected before release** **Correct.** The new signal must correspond to customer-critical behavior. This directly addresses the constraint stated in this case.

**Explanation:** The new signal must correspond to customer-critical behavior. The selected answer is checkout integration failures are detected before release.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q024

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which execution safeguard most directly addresses the risk in this case?

- **A. Require review of dismissal reasons and exceptions** Uncontrolled suppression undermines the security signal. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **B. Avoid evaluating individual developers by raw commit counts** Activity counts can incentivize fragmented or low-value work. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. Keep test failure classification separate from infrastructure faults** **Correct.** Environment outages should not masquerade as product regressions. This directly addresses the constraint stated in this case.

**Explanation:** Environment outages should not masquerade as product regressions. The selected answer is keep test failure classification separate from infrastructure faults.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q025

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. The team selects this remedy: "Track critical-path coverage and escaped defects together." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Risk acceptance can leave exposure intentionally unresolved** Exceptions need owners and review dates. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **B. Review speed must preserve review quality** Removing scrutiny can exchange delay for defects. That addresses a different requirement: Review bottleneck. It does not directly resolve this case's stated constraint.
- **C. More tests can increase runtime and maintenance** **Correct.** Prioritize risk rather than maximizing test count. This directly addresses the constraint stated in this case.

**Explanation:** Prioritize risk rather than maximizing test count. The selected answer is more tests can increase runtime and maintenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q026

Foundational · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which next change most directly satisfies the stated requirement?

- **A. Measure remediation age and justified risk dispositions** **Correct.** Suppression volume is not evidence of risk reduction. This directly addresses the constraint stated in this case.
- **B. Pair delivery frequency with change failure and recovery metrics** Balanced metrics expose reliability costs of speed. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **C. Track critical-path coverage and escaped defects together** Pass rate alone says nothing about missing scenarios. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.

**Explanation:** Suppression volume is not evidence of risk reduction. The selected answer is measure remediation age and justified risk dispositions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q027

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which explanation best accounts for the behavior or constraint described?

- **A. A single throughput metric hides failed-change consequences** More releases do not imply better delivery outcomes. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **B. The dashboard measures executed tests rather than absent tests** A suite can pass while omitting important behavior. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **C. The metric rewards changing alert state rather than fixing exposure** **Correct.** Unreviewed dismissals can hide unresolved vulnerabilities. This directly addresses the constraint stated in this case.

**Explanation:** Unreviewed dismissals can hide unresolved vulnerabilities. The selected answer is the metric rewards changing alert state rather than fixing exposure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q028

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Checkout integration failures are detected before release** The new signal must correspond to customer-critical behavior. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **B. Critical findings have verified fixes or documented accepted risk** **Correct.** The evidence must show accountable risk treatment. This directly addresses the constraint stated in this case.
- **C. Frequency improves without higher failure rate or recovery duration** The combined trend demonstrates sustainable delivery improvement. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must show accountable risk treatment. The selected answer is critical findings have verified fixes or documented accepted risk.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q029

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep test failure classification separate from infrastructure faults** Environment outages should not masquerade as product regressions. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **B. Require review of dismissal reasons and exceptions** **Correct.** Uncontrolled suppression undermines the security signal. This directly addresses the constraint stated in this case.
- **C. Use consistent definitions for failed changes and recovery** Changing incident boundaries can artificially improve results. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.

**Explanation:** Uncontrolled suppression undermines the security signal. The selected answer is require review of dismissal reasons and exceptions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q030

Advanced · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. The team selects this remedy: "Measure remediation age and justified risk dispositions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More frequent releases can increase operational overhead** Automation and small batches help control that cost. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **B. More tests can increase runtime and maintenance** Prioritize risk rather than maximizing test count. That addresses a different requirement: Green but weak tests. It does not directly resolve this case's stated constraint.
- **C. Risk acceptance can leave exposure intentionally unresolved** **Correct.** Exceptions need owners and review dates. This directly addresses the constraint stated in this case.

**Explanation:** Exceptions need owners and review dates. The selected answer is risk acceptance can leave exposure intentionally unresolved.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q031

Foundational · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which next change most directly satisfies the stated requirement?

- **A. Add user-facing availability latency and error indicators** Runtime experience is distinct from pipeline completion. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **B. Measure remediation age and justified risk dispositions** Suppression volume is not evidence of risk reduction. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **C. Pair delivery frequency with change failure and recovery metrics** **Correct.** Balanced metrics expose reliability costs of speed. This directly addresses the constraint stated in this case.

**Explanation:** Balanced metrics expose reliability costs of speed. The selected answer is pair delivery frequency with change failure and recovery metrics.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q032

Foundational · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which explanation best accounts for the behavior or constraint described?

- **A. A single throughput metric hides failed-change consequences** **Correct.** More releases do not imply better delivery outcomes. This directly addresses the constraint stated in this case.
- **B. Build health was being mistaken for service health** Successful automation can deploy an unhealthy application. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **C. The metric rewards changing alert state rather than fixing exposure** Unreviewed dismissals can hide unresolved vulnerabilities. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.

**Explanation:** More releases do not imply better delivery outcomes. The selected answer is a single throughput metric hides failed-change consequences.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q033

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Frequency improves without higher failure rate or recovery duration** **Correct.** The combined trend demonstrates sustainable delivery improvement. This directly addresses the constraint stated in this case.
- **B. A production regression appears in the operations dashboard** The metric must reflect actual user-visible behavior. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **C. Critical findings have verified fixes or documented accepted risk** The evidence must show accountable risk treatment. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.

**Explanation:** The combined trend demonstrates sustainable delivery improvement. The selected answer is frequency improves without higher failure rate or recovery duration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q034

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which execution safeguard most directly addresses the risk in this case?

- **A. Define ownership and response actions for breached indicators** A dashboard alone does not restore service. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **B. Require review of dismissal reasons and exceptions** Uncontrolled suppression undermines the security signal. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **C. Use consistent definitions for failed changes and recovery** **Correct.** Changing incident boundaries can artificially improve results. This directly addresses the constraint stated in this case.

**Explanation:** Changing incident boundaries can artificially improve results. The selected answer is use consistent definitions for failed changes and recovery.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q035

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. The team selects this remedy: "Pair delivery frequency with change failure and recovery metrics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. High-cardinality operational labels increase cost and complexity** Choose dimensions that support useful diagnosis. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **B. Risk acceptance can leave exposure intentionally unresolved** Exceptions need owners and review dates. That addresses a different requirement: Misleading security chart. It does not directly resolve this case's stated constraint.
- **C. More frequent releases can increase operational overhead** **Correct.** Automation and small batches help control that cost. This directly addresses the constraint stated in this case.

**Explanation:** Automation and small batches help control that cost. The selected answer is more frequent releases can increase operational overhead.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q036

Foundational · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which next change most directly satisfies the stated requirement?

- **A. Pair delivery frequency with change failure and recovery metrics** Balanced metrics expose reliability costs of speed. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **B. Add user-facing availability latency and error indicators** **Correct.** Runtime experience is distinct from pipeline completion. This directly addresses the constraint stated in this case.
- **C. Show distributions and severe outliers alongside the mean** Averages hide the shape of recovery experience. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.

**Explanation:** Runtime experience is distinct from pipeline completion. The selected answer is add user-facing availability latency and error indicators.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q037

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which explanation best accounts for the behavior or constraint described?

- **A. A long-tail incident strongly influences the arithmetic average** The center alone cannot describe a skewed sample. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. A single throughput metric hides failed-change consequences** More releases do not imply better delivery outcomes. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **C. Build health was being mistaken for service health** **Correct.** Successful automation can deploy an unhealthy application. This directly addresses the constraint stated in this case.

**Explanation:** Successful automation can deploy an unhealthy application. The selected answer is build health was being mistaken for service health.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q038

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dashboard exposes median tail and exceptional incidents** Multiple views distinguish routine behavior from rare severe events. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. Frequency improves without higher failure rate or recovery duration** The combined trend demonstrates sustainable delivery improvement. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **C. A production regression appears in the operations dashboard** **Correct.** The metric must reflect actual user-visible behavior. This directly addresses the constraint stated in this case.

**Explanation:** The metric must reflect actual user-visible behavior. The selected answer is a production regression appears in the operations dashboard.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q039

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which execution safeguard most directly addresses the risk in this case?

- **A. Define ownership and response actions for breached indicators** **Correct.** A dashboard alone does not restore service. This directly addresses the constraint stated in this case.
- **B. Keep incident inclusion rules consistent over time** Changing the sample invalidates historical comparison. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **C. Use consistent definitions for failed changes and recovery** Changing incident boundaries can artificially improve results. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.

**Explanation:** A dashboard alone does not restore service. The selected answer is define ownership and response actions for breached indicators.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q040

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. The team selects this remedy: "Add user-facing availability latency and error indicators." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Percentiles are unstable with very small samples** Interpret sparse operational data with its sample size. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. More frequent releases can increase operational overhead** Automation and small batches help control that cost. That addresses a different requirement: Deployment vanity metric. It does not directly resolve this case's stated constraint.
- **C. High-cardinality operational labels increase cost and complexity** **Correct.** Choose dimensions that support useful diagnosis. This directly addresses the constraint stated in this case.

**Explanation:** Choose dimensions that support useful diagnosis. The selected answer is high-cardinality operational labels increase cost and complexity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q041

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which next change most directly satisfies the stated requirement?

- **A. Add user-facing availability latency and error indicators** Runtime experience is distinct from pipeline completion. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **B. Show distributions and severe outliers alongside the mean** **Correct.** Averages hide the shape of recovery experience. This directly addresses the constraint stated in this case.
- **C. Normalize definitions before comparing team outcomes** Equivalent queries require equivalent measurement semantics. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.

**Explanation:** Averages hide the shape of recovery experience. The selected answer is show distributions and severe outliers alongside the mean.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q042

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which explanation best accounts for the behavior or constraint described?

- **A. A long-tail incident strongly influences the arithmetic average** **Correct.** The center alone cannot describe a skewed sample. This directly addresses the constraint stated in this case.
- **B. The populations and state transitions are not comparable** A shared chart does not guarantee shared definitions. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **C. Build health was being mistaken for service health** Successful automation can deploy an unhealthy application. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** The center alone cannot describe a skewed sample. The selected answer is a long-tail incident strongly influences the arithmetic average.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q043

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Both teams reproduce the same metric from documented rules** Reproducibility makes comparisons auditable and meaningful. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **B. A production regression appears in the operations dashboard** The metric must reflect actual user-visible behavior. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **C. The dashboard exposes median tail and exceptional incidents** **Correct.** Multiple views distinguish routine behavior from rare severe events. This directly addresses the constraint stated in this case.

**Explanation:** Multiple views distinguish routine behavior from rare severe events. The selected answer is the dashboard exposes median tail and exceptional incidents.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q044

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which execution safeguard most directly addresses the risk in this case?

- **A. Publish query definitions and data freshness with the chart** Consumers need to know how the numbers were derived. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **B. Define ownership and response actions for breached indicators** A dashboard alone does not restore service. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.
- **C. Keep incident inclusion rules consistent over time** **Correct.** Changing the sample invalidates historical comparison. This directly addresses the constraint stated in this case.

**Explanation:** Changing the sample invalidates historical comparison. The selected answer is keep incident inclusion rules consistent over time.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q045

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. The team selects this remedy: "Show distributions and severe outliers alongside the mean." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Percentiles are unstable with very small samples** **Correct.** Interpret sparse operational data with its sample size. This directly addresses the constraint stated in this case.
- **B. Uniform metrics can miss legitimate workflow differences** Use shared definitions while explaining contextual limitations. That addresses a different requirement: Cross-team comparison. It does not directly resolve this case's stated constraint.
- **C. High-cardinality operational labels increase cost and complexity** Choose dimensions that support useful diagnosis. That addresses a different requirement: Operational blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** Interpret sparse operational data with its sample size. The selected answer is percentiles are unstable with very small samples.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q046

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which next change most directly satisfies the stated requirement?

- **A. Show distributions and severe outliers alongside the mean** Averages hide the shape of recovery experience. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. Normalize definitions before comparing team outcomes** **Correct.** Equivalent queries require equivalent measurement semantics. This directly addresses the constraint stated in this case.
- **C. Measure lead time from creation through completion** Lead time includes waiting before active work starts. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Equivalent queries require equivalent measurement semantics. The selected answer is normalize definitions before comparing team outcomes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q047

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which explanation best accounts for the behavior or constraint described?

- **A. Cycle time omits the initial queue interval** Starting work and requesting work are different events. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.
- **B. A long-tail incident strongly influences the arithmetic average** The center alone cannot describe a skewed sample. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **C. The populations and state transitions are not comparable** **Correct.** A shared chart does not guarantee shared definitions. This directly addresses the constraint stated in this case.

**Explanation:** A shared chart does not guarantee shared definitions. The selected answer is the populations and state transitions are not comparable.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q048

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dashboard exposes median tail and exceptional incidents** Multiple views distinguish routine behavior from rare severe events. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. Both teams reproduce the same metric from documented rules** **Correct.** Reproducibility makes comparisons auditable and meaningful. This directly addresses the constraint stated in this case.
- **C. The reported interval includes Monday through Friday** The customer wait metric starts when demand enters. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Reproducibility makes comparisons auditable and meaningful. The selected answer is both teams reproduce the same metric from documented rules.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q049

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep incident inclusion rules consistent over time** Changing the sample invalidates historical comparison. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. Publish query definitions and data freshness with the chart** **Correct.** Consumers need to know how the numbers were derived. This directly addresses the constraint stated in this case.
- **C. Standardize state mappings and timestamp definitions** Different workflows otherwise produce incomparable time measures. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers need to know how the numbers were derived. The selected answer is publish query definitions and data freshness with the chart.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q050

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. The team selects this remedy: "Normalize definitions before comparing team outcomes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Percentiles are unstable with very small samples** Interpret sparse operational data with its sample size. That addresses a different requirement: Skewed recovery average. It does not directly resolve this case's stated constraint.
- **B. Uniform metrics can miss legitimate workflow differences** **Correct.** Use shared definitions while explaining contextual limitations. This directly addresses the constraint stated in this case.
- **C. Lead time can rise without slower active development** Queue delays can dominate the customer experience. That addresses a different requirement: Two clocks. It does not directly resolve this case's stated constraint.

**Explanation:** Use shared definitions while explaining contextual limitations. The selected answer is uniform metrics can miss legitimate workflow differences.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)
