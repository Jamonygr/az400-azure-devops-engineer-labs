# Lab 02 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L02-Q001

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which next change most directly satisfies the stated requirement?

- **A.** Investigate intake queues and work-in-progress limits
- **B.** Normalize definitions before comparing team outcomes
- **C.** Measure lead time from creation through completion

## L02-Q002

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which explanation best accounts for the behavior or constraint described?

- **A.** The delay occurs before work starts
- **B.** The populations and state transitions are not comparable
- **C.** Cycle time omits the initial queue interval

## L02-Q003

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The reported interval includes Monday through Friday
- **B.** Queue age falls while cycle time remains stable
- **C.** Both teams reproduce the same metric from documented rules

## L02-Q004

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. Which execution safeguard most directly addresses the risk in this case?

- **A.** Standardize state mappings and timestamp definitions
- **B.** Compare similar work-item types and reporting windows
- **C.** Publish query definitions and data freshness with the chart

## L02-Q005

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two clocks: A ticket was created Monday, work began Thursday, and it was completed Friday; stakeholders want customer wait time. The team selects this remedy: "Measure lead time from creation through completion." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Uniform metrics can miss legitimate workflow differences
- **B.** Lead time can rise without slower active development
- **C.** Lower queue age may require accepting less concurrent work

## L02-Q006

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which next change most directly satisfies the stated requirement?

- **A.** Separate planning metrics by comparable work-item class
- **B.** Measure lead time from creation through completion
- **C.** Investigate intake queues and work-in-progress limits

## L02-Q007

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which explanation best accounts for the behavior or constraint described?

- **A.** Heterogeneous work units distort count-based comparisons
- **B.** Cycle time omits the initial queue interval
- **C.** The delay occurs before work starts

## L02-Q008

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Queue age falls while cycle time remains stable
- **B.** Forecasts show consistent definitions and comparable historical cohorts
- **C.** The reported interval includes Monday through Friday

## L02-Q009

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. Which execution safeguard most directly addresses the risk in this case?

- **A.** Compare similar work-item types and reporting windows
- **B.** Document filters and excluded work-item types
- **C.** Standardize state mappings and timestamp definitions

## L02-Q010

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Long queue: Lead time doubled while cycle time stayed stable, and work items spend most of their life waiting for assignment. The team selects this remedy: "Investigate intake queues and work-in-progress limits." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Lower queue age may require accepting less concurrent work
- **B.** Item counts do not measure delivered customer value
- **C.** Lead time can rise without slower active development

## L02-Q011

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which next change most directly satisfies the stated requirement?

- **A.** Separate planning metrics by comparable work-item class
- **B.** Measure review waiting time and rebalance reviewer capacity
- **C.** Investigate intake queues and work-in-progress limits

## L02-Q012

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which explanation best accounts for the behavior or constraint described?

- **A.** The development bottleneck is reviewer availability
- **B.** The delay occurs before work starts
- **C.** Heterogeneous work units distort count-based comparisons

## L02-Q013

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Forecasts show consistent definitions and comparable historical cohorts
- **B.** Time awaiting first meaningful review decreases
- **C.** Queue age falls while cycle time remains stable

## L02-Q014

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid evaluating individual developers by raw commit counts
- **B.** Compare similar work-item types and reporting windows
- **C.** Document filters and excluded work-item types

## L02-Q015

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Unreliable forecasts: Planning dashboards mix large epics with small tasks, so weekly completed-item totals vary wildly without staffing changes. The team selects this remedy: "Separate planning metrics by comparable work-item class." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Lower queue age may require accepting less concurrent work
- **B.** Item counts do not measure delivered customer value
- **C.** Review speed must preserve review quality

## L02-Q016

Foundational · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which next change most directly satisfies the stated requirement?

- **A.** Measure review waiting time and rebalance reviewer capacity
- **B.** Track critical-path coverage and escaped defects together
- **C.** Separate planning metrics by comparable work-item class

## L02-Q017

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which explanation best accounts for the behavior or constraint described?

- **A.** Heterogeneous work units distort count-based comparisons
- **B.** The development bottleneck is reviewer availability
- **C.** The dashboard measures executed tests rather than absent tests

## L02-Q018

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Forecasts show consistent definitions and comparable historical cohorts
- **B.** Time awaiting first meaningful review decreases
- **C.** Checkout integration failures are detected before release

## L02-Q019

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document filters and excluded work-item types
- **B.** Avoid evaluating individual developers by raw commit counts
- **C.** Keep test failure classification separate from infrastructure faults

## L02-Q020

Advanced · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Review bottleneck: Coding finishes quickly, but pull requests wait four days for review before their changes can reach the main branch. The team selects this remedy: "Measure review waiting time and rebalance reviewer capacity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More tests can increase runtime and maintenance
- **B.** Item counts do not measure delivered customer value
- **C.** Review speed must preserve review quality

## L02-Q021

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which next change most directly satisfies the stated requirement?

- **A.** Measure remediation age and justified risk dispositions
- **B.** Measure review waiting time and rebalance reviewer capacity
- **C.** Track critical-path coverage and escaped defects together

## L02-Q022

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which explanation best accounts for the behavior or constraint described?

- **A.** The metric rewards changing alert state rather than fixing exposure
- **B.** The development bottleneck is reviewer availability
- **C.** The dashboard measures executed tests rather than absent tests

## L02-Q023

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Critical findings have verified fixes or documented accepted risk
- **B.** Time awaiting first meaningful review decreases
- **C.** Checkout integration failures are detected before release

## L02-Q024

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. Which execution safeguard most directly addresses the risk in this case?

- **A.** Require review of dismissal reasons and exceptions
- **B.** Avoid evaluating individual developers by raw commit counts
- **C.** Keep test failure classification separate from infrastructure faults

## L02-Q025

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Green but weak tests: The build pass rate is high, yet critical payment regressions escape because no integration tests exercise checkout. The team selects this remedy: "Track critical-path coverage and escaped defects together." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Risk acceptance can leave exposure intentionally unresolved
- **B.** Review speed must preserve review quality
- **C.** More tests can increase runtime and maintenance

## L02-Q026

Foundational · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which next change most directly satisfies the stated requirement?

- **A.** Measure remediation age and justified risk dispositions
- **B.** Pair delivery frequency with change failure and recovery metrics
- **C.** Track critical-path coverage and escaped defects together

## L02-Q027

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which explanation best accounts for the behavior or constraint described?

- **A.** A single throughput metric hides failed-change consequences
- **B.** The dashboard measures executed tests rather than absent tests
- **C.** The metric rewards changing alert state rather than fixing exposure

## L02-Q028

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Checkout integration failures are detected before release
- **B.** Critical findings have verified fixes or documented accepted risk
- **C.** Frequency improves without higher failure rate or recovery duration

## L02-Q029

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep test failure classification separate from infrastructure faults
- **B.** Require review of dismissal reasons and exceptions
- **C.** Use consistent definitions for failed changes and recovery

## L02-Q030

Advanced · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Misleading security chart: A project celebrates fewer open alerts after suppressing every alert, including unreviewed critical findings. The team selects this remedy: "Measure remediation age and justified risk dispositions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More frequent releases can increase operational overhead
- **B.** More tests can increase runtime and maintenance
- **C.** Risk acceptance can leave exposure intentionally unresolved

## L02-Q031

Foundational · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which next change most directly satisfies the stated requirement?

- **A.** Add user-facing availability latency and error indicators
- **B.** Measure remediation age and justified risk dispositions
- **C.** Pair delivery frequency with change failure and recovery metrics

## L02-Q032

Foundational · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which explanation best accounts for the behavior or constraint described?

- **A.** A single throughput metric hides failed-change consequences
- **B.** Build health was being mistaken for service health
- **C.** The metric rewards changing alert state rather than fixing exposure

## L02-Q033

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Frequency improves without higher failure rate or recovery duration
- **B.** A production regression appears in the operations dashboard
- **C.** Critical findings have verified fixes or documented accepted risk

## L02-Q034

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Define ownership and response actions for breached indicators
- **B.** Require review of dismissal reasons and exceptions
- **C.** Use consistent definitions for failed changes and recovery

## L02-Q035

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Deployment vanity metric: Release frequency increased, but failed deployments and emergency recoveries also doubled after gates were removed. The team selects this remedy: "Pair delivery frequency with change failure and recovery metrics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** High-cardinality operational labels increase cost and complexity
- **B.** Risk acceptance can leave exposure intentionally unresolved
- **C.** More frequent releases can increase operational overhead

## L02-Q036

Foundational · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which next change most directly satisfies the stated requirement?

- **A.** Pair delivery frequency with change failure and recovery metrics
- **B.** Add user-facing availability latency and error indicators
- **C.** Show distributions and severe outliers alongside the mean

## L02-Q037

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which explanation best accounts for the behavior or constraint described?

- **A.** A long-tail incident strongly influences the arithmetic average
- **B.** A single throughput metric hides failed-change consequences
- **C.** Build health was being mistaken for service health

## L02-Q038

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dashboard exposes median tail and exceptional incidents
- **B.** Frequency improves without higher failure rate or recovery duration
- **C.** A production regression appears in the operations dashboard

## L02-Q039

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. Which execution safeguard most directly addresses the risk in this case?

- **A.** Define ownership and response actions for breached indicators
- **B.** Keep incident inclusion rules consistent over time
- **C.** Use consistent definitions for failed changes and recovery

## L02-Q040

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Operational blind spot: Dashboards show pipeline success, but users experience high error rates after deployment because runtime metrics are absent. The team selects this remedy: "Add user-facing availability latency and error indicators." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Percentiles are unstable with very small samples
- **B.** More frequent releases can increase operational overhead
- **C.** High-cardinality operational labels increase cost and complexity

## L02-Q041

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which next change most directly satisfies the stated requirement?

- **A.** Add user-facing availability latency and error indicators
- **B.** Show distributions and severe outliers alongside the mean
- **C.** Normalize definitions before comparing team outcomes

## L02-Q042

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which explanation best accounts for the behavior or constraint described?

- **A.** A long-tail incident strongly influences the arithmetic average
- **B.** The populations and state transitions are not comparable
- **C.** Build health was being mistaken for service health

## L02-Q043

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Both teams reproduce the same metric from documented rules
- **B.** A production regression appears in the operations dashboard
- **C.** The dashboard exposes median tail and exceptional incidents

## L02-Q044

Applied · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. Which execution safeguard most directly addresses the risk in this case?

- **A.** Publish query definitions and data freshness with the chart
- **B.** Define ownership and response actions for breached indicators
- **C.** Keep incident inclusion rules consistent over time

## L02-Q045

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Skewed recovery average: Nine incidents recover in minutes and one lasts two days; a single mean makes the normal response look slow. The team selects this remedy: "Show distributions and severe outliers alongside the mean." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Percentiles are unstable with very small samples
- **B.** Uniform metrics can miss legitimate workflow differences
- **C.** High-cardinality operational labels increase cost and complexity

## L02-Q046

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which next change most directly satisfies the stated requirement?

- **A.** Show distributions and severe outliers alongside the mean
- **B.** Normalize definitions before comparing team outcomes
- **C.** Measure lead time from creation through completion

## L02-Q047

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which explanation best accounts for the behavior or constraint described?

- **A.** Cycle time omits the initial queue interval
- **B.** A long-tail incident strongly influences the arithmetic average
- **C.** The populations and state transitions are not comparable

## L02-Q048

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dashboard exposes median tail and exceptional incidents
- **B.** Both teams reproduce the same metric from documented rules
- **C.** The reported interval includes Monday through Friday

## L02-Q049

Applied · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep incident inclusion rules consistent over time
- **B.** Publish query definitions and data freshness with the chart
- **C.** Standardize state mappings and timestamp definitions

## L02-Q050

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md), [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

Cross-team comparison: Two teams use different completion states and exclude different failed runs, but leadership ranks them on one dashboard. The team selects this remedy: "Normalize definitions before comparing team outcomes." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Percentiles are unstable with very small samples
- **B.** Uniform metrics can miss legitimate workflow differences
- **C.** Lead time can rise without slower active development
