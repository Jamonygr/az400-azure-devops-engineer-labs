# Lab 02 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L02-Q001

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A request is created Monday, enters active work Thursday, and finishes Friday. Which interval measures its lead time under the Azure Boards definition?

- **A. Active work to completion** That measures cycle time and excludes the initial waiting period.
- **B. First commit to deployment** That is a source-to-release interval, not this work-item definition.
- **C. Creation to first assignment** That measures intake delay but omits the remaining delivery time.
- **D. Creation to completion** **Correct.** Lead time includes the queue before active work begins.

**Explanation:** That measures cycle time and excludes the initial waiting period. That is a source-to-release interval, not this work-item definition. That measures intake delay but omits the remaining delivery time. Lead time includes the queue before active work begins.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q002

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Lead time increases while cycle time remains stable for comparable work items. Which investigation should receive the first attention?

- **A. Test-agent CPU during active validation** That work is inside execution, whose duration has not changed.
- **B. Longer deployment execution after work is completed** That interval is not the prework queue identified by stable active-work timing.
- **C. Waiting before active work begins** **Correct.** The changed part of the total interval is outside stable active execution.
- **D. Compiler optimization during development** Stable cycle time does not initially indicate a new compilation bottleneck.

**Explanation:** That work is inside execution, whose duration has not changed. That interval is not the prework queue identified by stable active-work timing. The changed part of the total interval is outside stable active execution. Stable cycle time does not initially indicate a new compilation bottleneck.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q003

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A planning chart counts one epic and one small task as equivalent completed units. What is the main interpretive problem?

- **A. Completed items can never be counted for planning** Counts can be useful when their population and interpretation are appropriate.
- **B. An epic must always take exactly one sprint** There is no universal fixed duration implied by the item type.
- **C. The units describe materially different work sizes and lifecycle levels** **Correct.** A count is difficult to compare when its underlying work units differ.
- **D. The two work-item types use different numeric identifiers** Identifier magnitude is not the reason their effort units are noncomparable.

**Explanation:** Counts can be useful when their population and interpretation are appropriate. There is no universal fixed duration implied by the item type. A count is difficult to compare when its underlying work units differ. Identifier magnitude is not the reason their effort units are noncomparable.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q004

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Which event starts cycle-time measurement for a work item that waits several days in the backlog before implementation?

- **A. Initial creation of the work item** Creation starts lead time, including the prework queue interval.
- **B. Creation of the first linked pull request** A pull-request event is not necessarily the work item's active-state transition.
- **C. Assignment of the release version label** A release label does not define when implementation work began.
- **D. Transition into an active work state** **Correct.** Cycle time starts with active work rather than backlog arrival.

**Explanation:** Creation starts lead time, including the prework queue interval. A pull-request event is not necessarily the work item's active-state transition. A release label does not define when implementation work began. Cycle time starts with active work rather than backlog arrival.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q005

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team completes work quickly once started, but requests wait weeks for assignment. Which metric directly reveals this queue contribution?

- **A. Average active coding duration** Coding duration is inside active work rather than the earlier queue.
- **B. Mean build-agent queue duration** Agent waiting is only one delivery stage and does not isolate backlog waiting.
- **C. Lead time minus cycle time for consistently defined items** **Correct.** The difference isolates time outside the active-to-complete interval.
- **D. Mean time to restore a failed deployment** Recovery measures incident restoration rather than waiting before implementation begins.

**Explanation:** Coding duration is inside active work rather than the earlier queue. Agent waiting is only one delivery stage and does not isolate backlog waiting. The difference isolates time outside the active-to-complete interval. Recovery measures incident restoration rather than waiting before implementation begins.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q006

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Which dashboard annotation makes a weekly throughput chart reproducible for another project analyst?

- **A. Work-item type filters, completion-state definition, and reporting window** **Correct.** These rules identify the population and event counted by the metric.
- **B. Only the current total of visible work items** A snapshot total omits the filters and completion events behind the weekly trend.
- **C. The sum of story points without its query definition** A summary value does not define which records and state transitions were included.
- **D. Only the date on which the dashboard was created** Creation date does not identify the reporting interval or counted work population.

**Explanation:** These rules identify the population and event counted by the metric. A snapshot total omits the filters and completion events behind the weekly trend. A summary value does not define which records and state transitions were included. Creation date does not identify the reporting interval or counted work population.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q007

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

An item is created at 09:00, starts work at 11:00, and completes at 15:00 on the same day. What are lead time and cycle time?

```text
Created: 2026-10-12T09: 00: 00Z
Active: 2026-10-12T11: 00: 00Z
Completed: 2026-10-12T15: 00: 00Z
```

- **A. Six hours lead time and four hours cycle time** **Correct.** Lead time includes two waiting hours plus four active hours.
- **B. Four hours lead time and six hours cycle time** This reverses the start events used by the two measurements.
- **C. Two hours lead time and four hours cycle time** The two-hour value is waiting time, not total lead time.
- **D. Six hours lead time and two hours cycle time** The two-hour interval ends at work start rather than completion.

**Explanation:** Lead time includes two waiting hours plus four active hours. This reverses the start events used by the two measurements. The two-hour value is waiting time, not total lead time. The two-hour interval ends at work start rather than completion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q008

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

After an intake-policy change, which observation most directly supports a reduction in queue delay without changing execution speed?

```text
Cohort: standard completed tasks
Before: mean lead 12 days; mean cycle 4 days
After:  mean lead7 days;  mean cycle 4 days
```

- **A. Fewer visible backlog items after hiding old requests** Changing visibility does not demonstrate shorter actual waiting intervals.
- **B. Lower lead time with similar cycle time for equivalent cohorts** **Correct.** That pattern is consistent with reduced waiting before active work.
- **C. Higher pull-request count with no time measurements** Activity volume does not establish that customers wait less.
- **D. Lower cycle time and unchanged lead time** That pattern could mean queue delay increased enough to offset faster execution.

**Explanation:** Changing visibility does not demonstrate shorter actual waiting intervals. That pattern is consistent with reduced waiting before active work. Activity volume does not establish that customers wait less. That pattern could mean queue delay increased enough to offset faster execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q009

Foundational · [CP2](README.md#task-2) · [D1.2.2](../../docs/objective-map.md)

A team creates 20 tasks, completes 12, and carries 8 forward. Which weekly count describes completed-item throughput under that definition?

```text
Created this week: 20 tasks
Completed this week: 12 tasks
Carried into next week: 8 tasks
```

- **A. Thirty-two tasks** Adding created and completed totals mixes different lifecycle events.
- **B. Twelve completed tasks** **Correct.** Throughput counts finished work during the reporting interval.
- **C. Twenty created tasks** That is incoming demand rather than completed output.
- **D. Eight carried tasks** That counts remaining work rather than finished work.

**Explanation:** Adding created and completed totals mixes different lifecycle events. Throughput counts finished work during the reporting interval. That is incoming demand rather than completed output. That counts remaining work rather than finished work.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q010

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team changes its workflow so Approved is a proposed state and Implementing is active. What must a cycle-time dashboard use consistently?

- **A. The date a pull request title first mentions the item** Mention timing is independent of the configured work-state categories.
- **B. The state-category mapping for when work actually becomes active** **Correct.** The metric depends on workflow semantics rather than the displayed word alone.
- **C. The alphabetically first state in each team's board** Alphabetical order does not identify an active-work lifecycle transition.
- **D. The date a reviewer first opens the dashboard** Dashboard viewing does not start the work item's execution interval.

**Explanation:** Mention timing is independent of the configured work-state categories. The metric depends on workflow semantics rather than the displayed word alone. Alphabetical order does not identify an active-work lifecycle transition. Dashboard viewing does not start the work item's execution interval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q011

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team proposes excluding every item older than 30 days before publishing lead-time improvement. Why is that method risky?

- **A. Azure Boards cannot calculate lead time for completed items** Completed work is a normal population for elapsed-time analysis.
- **B. Long-running items must always represent invalid data** Duration alone does not establish that a record is erroneous.
- **C. It removes precisely the long-waiting items the metric should expose** **Correct.** Selective exclusion can manufacture improvement without changing the customer experience.
- **D. It will necessarily overstate the duration of every recent item** Removing old items changes population, not each remaining item's timestamps.

**Explanation:** Completed work is a normal population for elapsed-time analysis. Duration alone does not establish that a record is erroneous. Selective exclusion can manufacture improvement without changing the customer experience. Removing old items changes population, not each remaining item's timestamps.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q012

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A dashboard presents a delivery forecast from three unusually quiet weeks without showing sample size. Which correction is most useful?

- **A. Show the sample period and uncertainty before treating the forecast as reliable** **Correct.** A short atypical history limits how confidently future behavior can be inferred.
- **B. Hide the dates so readers focus on the forecast** Removing provenance makes the evidence harder to assess.
- **C. Increase displayed precision from days to seconds** Extra digits do not add information to an unrepresentative sample.
- **D. Treat the last week's throughput as a guaranteed future capacity** One observed period is not a deterministic promise about future work.

**Explanation:** A short atypical history limits how confidently future behavior can be inferred. Removing provenance makes the evidence harder to assess. Extra digits do not add information to an unrepresentative sample. One observed period is not a deterministic promise about future work.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q013

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two teams report cycle time, but one starts at triage and the other at coding. Their dashboards rank one faster. Which comparison plan is defensible?

- **A. Use the smaller reported number as the organization's target for both teams** The smaller value may simply omit work counted by the other definition.
- **B. Publish the state definitions, compare equivalent cohorts, and explain remaining workflow differences** **Correct.** Comparable intervals and populations are prerequisites for interpreting a cross-team ranking.
- **C. Average both dashboards and use the combined number as a common baseline** Combining unlike definitions does not remove the underlying measurement mismatch.
- **D. Normalize only by developer headcount and keep the different start states** Headcount adjustment cannot make different elapsed-time definitions equivalent.

**Explanation:** The smaller value may simply omit work counted by the other definition. Comparable intervals and populations are prerequisites for interpreting a cross-team ranking. Combining unlike definitions does not remove the underlying measurement mismatch. Headcount adjustment cannot make different elapsed-time definitions equivalent.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q014

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A queue policy appears to lower average lead time, but unfinished requests are accumulating. What additional analysis prevents a misleading success claim?

- **A. Review aging work-in-progress and completion cohorts alongside completed-item lead time** **Correct.** A completed-only trend can look healthy while uncompleted customer demand grows older.
- **B. Compare only the most recently completed five requests** A small recent success sample makes the uncompleted backlog even less visible.
- **C. Exclude blocked work from every dashboard without reporting the exclusion** Blocked work still affects customer waiting and should not silently disappear.
- **D. Replace all time measures with the number of items created** Input volume does not establish how quickly either completed or pending work progresses.

**Explanation:** A completed-only trend can look healthy while uncompleted customer demand grows older. A small recent success sample makes the uncompleted backlog even less visible. Blocked work still affects customer waiting and should not silently disappear. Input volume does not establish how quickly either completed or pending work progresses.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q015

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Leadership wants to compare teams using task counts. One team splits work into dozens of small tasks while another uses a few large stories. What is the soundest action?

- **A. Explain the noncomparable units and use comparable definitions before drawing performance conclusions** **Correct.** Different decomposition practices can dominate the count independently of useful delivery performance.
- **B. Rank the first team higher because more completed records always means more value** Administrative granularity is not equivalent to customer value delivered.
- **C. Force both teams to create equal numbers of records without changing work** That would optimize the reporting artifact rather than establish meaningful comparability.
- **D. Divide both counts by the number of repositories** Repository count does not normalize differences in task decomposition or delivered value.

**Explanation:** Different decomposition practices can dominate the count independently of useful delivery performance. Administrative granularity is not equivalent to customer value delivered. That would optimize the reporting artifact rather than establish meaningful comparability. Repository count does not normalize differences in task decomposition or delivered value.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q016

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

A service's coding time is short, but pull requests wait four days before first review. Which measure locates that development bottleneck?

- **A. Time between the production deployments** Delivery cadence does not isolate the first-review queue of an individual change.
- **B. Elapsed time awaiting first meaningful review** **Correct.** The observed delay is a queue at the review stage.
- **C. End-to-end work-item lead time** That broader interval includes other stages and does not isolate review waiting.
- **D. Time spent executing the build tests** Test execution is a different stage from waiting for human review.

**Explanation:** Delivery cadence does not isolate the first-review queue of an individual change. The observed delay is a queue at the review stage. That broader interval includes other stages and does not isolate review waiting. Test execution is a different stage from waiting for human review.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q017

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

All executed unit tests pass, but no test exercises checkout against its database. What does the pass rate establish?

- **A. Only that the tests actually executed did not fail** **Correct.** Passing results do not establish correctness of omitted scenarios.
- **B. That every customer-critical workflow has been tested** The checkout integration is explicitly absent from the suite.
- **C. That the database schema matches every deployed application** Isolated unit tests do not exercise actual database compatibility.
- **D. That no production regression can escape** No finite passing suite proves the absence of all defects.

**Explanation:** Passing results do not establish correctness of omitted scenarios. The checkout integration is explicitly absent from the suite. Isolated unit tests do not exercise actual database compatibility. No finite passing suite proves the absence of all defects.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q018

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

An alert count falls after all findings are dismissed without investigation. Which conclusion is justified?

- **A. The report's state changed without proving reduced exposure** **Correct.** Dismissal is not evidence that vulnerabilities were fixed.
- **B. Security risk necessarily fell by the same percentage** Alert state and actual risk treatment are different quantities.
- **C. Every dismissed finding was automatically patched** Dismissal does not modify the vulnerable component.
- **D. The scanner can no longer inspect the repository** A disposition change does not necessarily disable scanning.

**Explanation:** Dismissal is not evidence that vulnerabilities were fixed. Alert state and actual risk treatment are different quantities. Dismissal does not modify the vulnerable component. A disposition change does not necessarily disable scanning.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q019

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md)

Deployments increase from 10 to 20 per week, while failures increase from 1 to 8. Which additional measure exposes the reliability deterioration?

- **A. Unit-test pass percentage alone** A passing predeployment suite does not quantify actual failed production changes.
- **B. Change failure rate** **Correct.** The proportion of failed changes rises despite higher delivery frequency.
- **C. Deployment frequency alone** More deployments describe throughput but omit the proportion that creates failures.
- **D. Mean source-to-release lead time alone** Faster delivery does not reveal whether a larger fraction of changes fails.

**Explanation:** A passing predeployment suite does not quantify actual failed production changes. The proportion of failed changes rises despite higher delivery frequency. More deployments describe throughput but omit the proportion that creates failures. Faster delivery does not reveal whether a larger fraction of changes fails.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q020

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A deployment succeeds, but users immediately receive errors. Which signal directly reports the operational outcome rather than automation completion?

- **A. User-facing error rate** **Correct.** The requested signal observes actual service behavior after deployment.
- **B. Pipeline task pass rate** The automation has already succeeded despite the user-visible failure.
- **C. Count of artifact upload steps** Artifact storage does not establish runtime service health.
- **D. Number of pull-request approvals** Review evidence does not measure current production behavior.

**Explanation:** The requested signal observes actual service behavior after deployment. The automation has already succeeded despite the user-visible failure. Artifact storage does not establish runtime service health. Review evidence does not measure current production behavior.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q021

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Why would commit count be a weak sole measure of an individual engineer's development contribution?

- **A. Commit count directly records how much customer value was accepted** A source-control activity counter does not establish a business acceptance outcome.
- **B. Every commit represents an equal amount of reviewed implementation** Commit contents and scope vary substantially between changes.
- **C. It counts activity without establishing complexity quality or customer outcome** **Correct.** Commit granularity can change independently of useful engineering value.
- **D. Commit count automatically normalizes squash and nonsquash workflows** Different history policies can produce different counts for equivalent engineering changes.

**Explanation:** A source-control activity counter does not establish a business acceptance outcome. Commit contents and scope vary substantially between changes. Commit granularity can change independently of useful engineering value. Different history policies can produce different counts for equivalent engineering changes.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q022

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Which dashboard pairing is most useful when assessing whether tests protect a critical customer workflow?

```text
Unit tests: 412 passed
Checkout-to-database tests: 0
Last three escaped defects: checkout schema mismatch
```

- **A. Build runtime and agent cost only** Execution efficiency does not establish protection of the customer-critical workflow.
- **B. Overall coverage and total source lines only** Broad execution coverage can dilute a missing critical-path test and weak assertions.
- **C. Critical-path test coverage and defects escaping into that workflow** **Correct.** The pairing connects exercised behavior with observed missed failures.
- **D. Test pass percentage and total test count only** Both can improve while omitting the critical checkout behavior that causes escaped failures.

**Explanation:** Execution efficiency does not establish protection of the customer-critical workflow. Broad execution coverage can dilute a missing critical-path test and weak assertions. The pairing connects exercised behavior with observed missed failures. Both can improve while omitting the critical checkout behavior that causes escaped failures.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q023

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Which metric reveals whether critical security findings remain unresolved for long periods?

- **A. Percentage of alerts closed including unreviewed dismissals** A closure fraction can hide whether critical issues were actually remediated or aged.
- **B. Number of packages inventoried regardless of findings** Inventory size does not measure the time required to treat known critical exposure.
- **C. Age of unresolved critical findings with accountable dispositions** **Correct.** The measure includes severity duration and treatment ownership.
- **D. Total findings discovered during the latest scan** A new-findings count does not show how long existing critical exposure remains unresolved.

**Explanation:** A closure fraction can hide whether critical issues were actually remediated or aged. Inventory size does not measure the time required to treat known critical exposure. The measure includes severity duration and treatment ownership. A new-findings count does not show how long existing critical exposure remains unresolved.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q024

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md)

A week contains twenty deployments and four failed changes under the team's documented definition. What is that week's change failure rate?

```text
Deployment window: one week
Total changes deployed: 20
Changes meeting documented failure definition: 4
```

- **A. Four percent** That treats the failure count as a percentage without the denominator.
- **B. Five percent** That reverses the relationship by taking one over the failed count.
- **C. Eighty percent** That is the success fraction rather than the failed-change fraction.
- **D. Twenty percent** **Correct.** Four failed changes divided by twenty changes is 0.20.

**Explanation:** That treats the failure count as a percentage without the denominator. That reverses the relationship by taking one over the failed count. That is the success fraction rather than the failed-change fraction. Four failed changes divided by twenty changes is 0.20.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q025

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Which operational measure is most appropriate when users complain about slow responses rather than outright request failures?

- **A. Latency distribution for the affected operations** **Correct.** Response-time behavior directly addresses the reported experience.
- **B. Request volume without response-time measurements** Volume alone does not describe how long users wait for a response.
- **C. HTTP error percentage without timing data** Requests can be slow yet successful, so errors alone miss the complaint.
- **D. Build-pipeline duration for the latest commit** Build timing does not measure current end-user request response time.

**Explanation:** Response-time behavior directly addresses the reported experience. Volume alone does not describe how long users wait for a response. Requests can be slow yet successful, so errors alone miss the complaint. Build timing does not measure current end-user request response time.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q026

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

After adding reviewer capacity, what outcome most directly verifies improvement to the reported review queue?

- **A. More people receive notification emails** Recipient count does not establish that reviews actually begin sooner.
- **B. The total duration of automated unit tests falls** Faster tests do not demonstrate that the unanswered-review queue was shortened.
- **C. The same class of changes waits less time for substantive review** **Correct.** The test targets the waiting stage rather than an unrelated activity total.
- **D. The team writes longer pull-request descriptions** Description length alone does not prove a shorter review queue.

**Explanation:** Recipient count does not establish that reviews actually begin sooner. Faster tests do not demonstrate that the unanswered-review queue was shortened. The test targets the waiting stage rather than an unrelated activity total. Description length alone does not prove a shorter review queue.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q027

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A deliberately broken checkout behavior fails the new integration test before release. What conclusion is supported?

- **A. The suite's pass rate must now remain permanently 100 percent** Future code or environment changes can still produce failures.
- **B. The added test can detect that specific regression** **Correct.** A controlled defect provides evidence for the targeted behavior.
- **C. Every possible checkout failure is now covered** One injected defect cannot establish complete behavioral coverage.
- **D. Database outages can no longer affect the service** Detecting failures does not eliminate runtime dependency outages.

**Explanation:** Future code or environment changes can still produce failures. A controlled defect provides evidence for the targeted behavior. One injected defect cannot establish complete behavioral coverage. Detecting failures does not eliminate runtime dependency outages.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q028

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

A critical dependency alert closes after a reviewed version update and a clean rescan of the delivered dependency graph. What evidence supports genuine remediation?

- **A. The affected version is absent from the verified release inputs** **Correct.** The evidence ties the corrective change to the actual delivered dependency.
- **B. The alert was dismissed by a repository administrator** An administrative disposition does not establish that the delivered vulnerable dependency was removed.
- **C. The direct package declaration changed but no resolved graph was checked** Transitive resolution can retain the affected version despite an edited declaration.
- **D. The dashboard reports fewer open findings without remediation evidence** A lower open count does not explain whether the affected release input was corrected.

**Explanation:** The evidence ties the corrective change to the actual delivered dependency. An administrative disposition does not establish that the delivered vulnerable dependency was removed. Transitive resolution can retain the affected version despite an edited declaration. A lower open count does not explain whether the affected release input was corrected.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q029

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

What observation supports sustainable delivery improvement rather than merely shipping more frequently?

- **A. More pipeline runs regardless of whether anything is delivered** Execution count is not equivalent to useful delivery.
- **B. More emergency patches after every release** That can indicate increased change failure rather than improvement.
- **C. Shorter deployment duration while failed changes increase** Task speed alone can improve while overall delivery reliability deteriorates.
- **D. Higher useful delivery frequency without worse failure or recovery outcomes** **Correct.** Balanced outcomes show that extra throughput did not simply shift cost into incidents.

**Explanation:** Execution count is not equivalent to useful delivery. That can indicate increased change failure rather than improvement. Task speed alone can improve while overall delivery reliability deteriorates. Balanced outcomes show that extra throughput did not simply shift cost into incidents.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q030

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A production dashboard is healthy only because telemetry stopped arriving. Which additional indicator prevents that false interpretation?

- **A. The last successful pipeline completion state** Deployment automation success does not prove the runtime collection path remains active.
- **B. Telemetry freshness or collection health** **Correct.** Missing observations must be distinguishable from observed healthy behavior.
- **C. The number of errors in an unverified empty stream** Zero errors can mean missing data unless collection freshness is checked.
- **D. The availability percentage from the last reporting period** A previous healthy period cannot establish that current observations are arriving.

**Explanation:** Deployment automation success does not prove the runtime collection path remains active. Missing observations must be distinguishable from observed healthy behavior. Zero errors can mean missing data unless collection freshness is checked. A previous healthy period cannot establish that current observations are arriving.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q031

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

A team halves review waiting time by removing required review from sensitive changes. Which extra signal is needed before calling this an improvement?

- **A. Only the median review waiting time after the policy change** The speed improvement is already known and does not establish preserved assurance.
- **B. The total number of requested reviews** A request count does not establish whether risky changes received effective scrutiny.
- **C. Defect and risk outcomes for the now-faster changes** **Correct.** Faster flow may have traded away the assurance that review provided.
- **D. The number of merged pull requests alone** More merges still omit the consequences of removing the quality control.

**Explanation:** The speed improvement is already known and does not establish preserved assurance. A request count does not establish whether risky changes received effective scrutiny. Faster flow may have traded away the assurance that review provided. More merges still omit the consequences of removing the quality control.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q032

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A test reporting chart groups product assertion failures together with runner outages. What classification improves diagnosis?

- **A. Classify every failed run as a product defect** That assigns infrastructure interruptions to the wrong problem class.
- **B. Exclude every infrastructure failure from all reporting** Those failures still affect delivery reliability and resource use.
- **C. Count retried tests only after they eventually pass** That hides the initial instability rather than classifying it.
- **D. Separate product failures infrastructure failures and known flakes** **Correct.** Different failure causes require different owners and corrective action.

**Explanation:** That assigns infrastructure interruptions to the wrong problem class. Those failures still affect delivery reliability and resource use. That hides the initial instability rather than classifying it. Different failure causes require different owners and corrective action.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q033

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Which exception record makes an accepted security risk distinguishable from an unreviewed suppressed alert?

- **A. The label false-positive applied to every alert** A universal label is not an investigated justification.
- **B. A private note known only to the dismissing engineer** Unshared reasoning does not create an auditable team decision.
- **C. Named owner rationale scope and review or expiry date** **Correct.** These fields make the deliberate treatment accountable and time bounded.
- **D. A green dashboard screenshot without the finding details** The screenshot hides the actual accepted exposure.

**Explanation:** A universal label is not an investigated justification. Unshared reasoning does not create an auditable team decision. These fields make the deliberate treatment accountable and time bounded. The screenshot hides the actual accepted exposure.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q034

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Why should a team document what qualifies as a failed change before comparing quarterly release metrics?

- **A. The deployment system otherwise cannot count any runs** The system can count runs even when business failure semantics are unclear.
- **B. Different inclusion rules can change the rate without changing actual service behavior** **Correct.** Comparable reporting requires stable definitions for both failures and changes.
- **C. A written definition makes every change succeed** Measurement documentation cannot prevent execution defects.
- **D. Only failed changes may have source commit identities** Successful changes can retain the same provenance information.

**Explanation:** The system can count runs even when business failure semantics are unclear. Comparable reporting requires stable definitions for both failures and changes. Measurement documentation cannot prevent execution defects. Successful changes can retain the same provenance information.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q035

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A team labels every request with a unique customer identifier and sees telemetry costs grow sharply. Which design review is most relevant?

- **A. Increase chart resolution to one-second intervals without changing collection** Finer display does not reduce the high-cardinality collection burden.
- **B. Move the same unique identifiers into every metric dimension** Moving high-cardinality identifiers between collected dimensions does not reduce their cardinality.
- **C. Increase raw telemetry retention to make the chart more complete** Longer retention increases storage and exposure without resolving unnecessary unique dimensions.
- **D. Review diagnostic value privacy and cardinality before retaining that dimension** **Correct.** Unique labels can expand data volume and sensitive-data exposure.

**Explanation:** Finer display does not reduce the high-cardinality collection burden. Moving high-cardinality identifiers between collected dimensions does not reduce their cardinality. Longer retention increases storage and exposure without resolving unnecessary unique dimensions. Unique labels can expand data volume and sensitive-data exposure.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q036

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

An organization wants to reduce review delay without making security-sensitive changes less reliable. Which intervention and evaluation fit both goals?

- **A. Add qualified review capacity or smaller review batches, then compare waiting time and escaped defects** **Correct.** This addresses the bottleneck while checking that the quality constraint still holds.
- **B. Remove all approvals and compare only merge frequency** That improves a speed counter while omitting the stated reliability requirement.
- **C. Reward reviewers only for approving the largest number of requests** The incentive can favor superficial approvals over useful independent review.
- **D. Ignore low-volume sensitive changes because they weaken the overall average** Excluding the highest-risk class would hide rather than satisfy the reliability constraint.

**Explanation:** This addresses the bottleneck while checking that the quality constraint still holds. That improves a speed counter while omitting the stated reliability requirement. The incentive can favor superficial approvals over useful independent review. Excluding the highest-risk class would hide rather than satisfy the reliability constraint.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q037

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

The suite grows from 100 to 1000 tests, but checkout defects continue escaping and CI takes much longer. Which assessment best avoids a misleading coverage claim?

- **A. Delete all integration tests to restore the old execution time** That removes boundary coverage without assessing which tests provide value.
- **B. Use only the final pass percentage as the release-quality indicator** The percentage can stay high while critical behavior remains untested.
- **C. Examine risk-relevant scenarios assertion quality and escaped-defect trends alongside runtime** **Correct.** More test records can add cost without protecting the behavior causing customer failures.
- **D. Declare success because the larger suite has more tests** Test count does not establish that important missing scenarios were added.

**Explanation:** That removes boundary coverage without assessing which tests provide value. The percentage can stay high while critical behavior remains untested. More test records can add cost without protecting the behavior causing customer failures. Test count does not establish that important missing scenarios were added.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q038

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

A team must report reduced exposure while some high-impact findings cannot be patched before release. Which dashboard approach is most honest?

- **A. Rank teams only by how quickly they click Dismiss** The metric rewards changing alert state rather than treating exposure.
- **B. Separate verified fixes accepted risks and unresolved findings, showing severity and age** **Correct.** Distinct dispositions prevent accepted or ignored exposure from being presented as eliminated risk.
- **C. Combine all closed dismissed and fixed findings into one remediation success number** That collapses materially different outcomes into a misleading claim.
- **D. Remove the unpatchable findings from both numerator and denominator** Silently excluding hard cases manufactures improvement.

**Explanation:** The metric rewards changing alert state rather than treating exposure. Distinct dispositions prevent accepted or ignored exposure from being presented as eliminated risk. That collapses materially different outcomes into a misleading claim. Silently excluding hard cases manufactures improvement.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q039

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Frequency improves after removing gates, but customer-facing rollback incidents rise. Which next evaluation addresses the apparent tradeoff?

- **A. Replace incident reporting with the number of passing unit tests** Predeployment test totals cannot substitute for observed production consequences.
- **B. Compare change failure recovery time and user impact for equivalent release cohorts** **Correct.** The investigation tests whether the speed gain came at an unacceptable operational cost.
- **C. Celebrate the frequency increase and omit the new incidents** That ignores the material reliability evidence.
- **D. Restore every historical gate without examining which failures occurred** A broad rollback of process may not target the actual regression mechanism.

**Explanation:** Predeployment test totals cannot substitute for observed production consequences. The investigation tests whether the speed gain came at an unacceptable operational cost. That ignores the material reliability evidence. A broad rollback of process may not target the actual regression mechanism.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q040

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

The pipeline team reports green automation while operations reports sustained customer errors. Which combined review best resolves the disagreement?

- **A. Keep delivery-system health and runtime service health distinct, correlate by release identity, and act on user impact** **Correct.** The two teams observe different layers, both of which are required to assess a release.
- **B. Treat successful automation as authoritative and discard runtime signals** A deployed application can be unhealthy despite successful deployment tasks.
- **C. Treat every runtime incident as proof that the build failed** Runtime failures can occur after a correctly completed build process.
- **D. Average pipeline pass percentage and HTTP error percentage into one health number** Unlike populations and meanings should not be combined into an uninterpretable average.

**Explanation:** The two teams observe different layers, both of which are required to assess a release. A deployed application can be unhealthy despite successful deployment tasks. Runtime failures can occur after a correctly completed build process. Unlike populations and meanings should not be combined into an uninterpretable average.

**Sources:** [S4](https://learn.microsoft.com/en-us/platform-engineering/plan)

## L02-Q041

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team reports shorter completed-item lead time after prioritizing easy new requests. The unfinished queue doubled, and its oldest requests aged from 20 to 60 days. Which conclusion best fits all evidence?

- **A. The oldest item should be excluded because it distorts the improved cohort** Excluding old demand hides the exact responsiveness problem the broader claim must address.
- **B. Completed work became faster for the selected cohort, while backlog aging undermines an overall responsiveness claim** **Correct.** Completed-only statistics and unfinished demand describe different populations, so both are needed for the stated service claim.
- **C. The lower completed-item mean proves every customer now waits less** The older unfinished requests contradict an inference about every customer's experience.
- **D. The larger queue proves cycle time necessarily increased** Queue growth does not alone establish the active-work interval of completed items.

**Explanation:** Excluding old demand hides the exact responsiveness problem the broader claim must address. Completed-only statistics and unfinished demand describe different populations, so both are needed for the stated service claim. The older unfinished requests contradict an inference about every customer's experience. Queue growth does not alone establish the active-work interval of completed items.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

## L02-Q042

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

The shown data compares two release periods. Management says reliability improved because incidents per pipeline run fell. Which assessment uses a consistent delivery population?

```text
Period A: deployments=20; failed changes=2; pipeline runs=40
Period B: deployments=30; failed changes=6; pipeline runs=300
```

- **A. Reliability stayed constant because there were 10 more deployments** The increase in deployment count does not cancel the larger proportional increase in failed changes.
- **B. Recovery necessarily improved because more pipeline runs completed** Build-run volume does not establish how long failed changes took to restore service.
- **C. Change failure rate worsened from 10 to 20 percent; build-run growth should not dilute the deployment denominator** **Correct.** The incident-to-deployment comparison is 2/20 versus 6/30, while pipeline-run counts describe a broader population.
- **D. Reliability improved because 6/300 is lower than 2/40** Those ratios mix release failures with all pipeline runs and mask the deployment outcome trend.

**Explanation:** The increase in deployment count does not cancel the larger proportional increase in failed changes. Build-run volume does not establish how long failed changes took to restore service. The incident-to-deployment comparison is 2/20 versus 6/30, while pipeline-run counts describe a broader population. Those ratios mix release failures with all pipeline runs and mask the deployment outcome trend.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q043

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Team A has one 300-minute outage; Team B has twenty two-minute outages. Management wants to compare recovery skill and customer disruption using one mean. Which reporting design is strongest?

- **A. Rank B better solely because its average recovery is two minutes** That describes recovery duration but ignores outage frequency and affected-user impact.
- **B. Rank A better solely because it has fewer incidents** Frequency alone does not establish recovery performance or the impact of the long outage.
- **C. Combine all durations into one company mean and rank both teams equally** An aggregated mean discards the team-specific frequency, duration, and impact differences.
- **D. Show per-incident recovery distributions, incident counts, and affected-user impact separately** **Correct.** Recovery speed and aggregate customer disruption differ, and unequal incident populations require transparent context.

**Explanation:** That describes recovery duration but ignores outage frequency and affected-user impact. Frequency alone does not establish recovery performance or the impact of the long outage. An aggregated mean discards the team-specific frequency, duration, and impact differences. Recovery speed and aggregate customer disruption differ, and unequal incident populations require transparent context.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q044

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A delivery forecast combines one team's stories and another team's subtasks. Historical records omit reopened work, and leadership requests a precise date. What should the analyst do first?

- **A. Align the unit and completion/reopening rules, then communicate a forecast range and remaining uncertainty** **Correct.** Comparable units and lifecycle definitions are prerequisites to interpreting the historical throughput evidence.
- **B. Use the combined raw count and publish the date with the most decimal precision** Greater numerical precision cannot repair incompatible units or missing lifecycle rules.
- **C. Drop the team with lower counts without documenting why** Selective exclusion does not create a fair or reproducible forecasting population.
- **D. Convert each story into ten tasks by assumption** An arbitrary fixed conversion does not establish equivalent work sizes or throughput.

**Explanation:** Comparable units and lifecycle definitions are prerequisites to interpreting the historical throughput evidence. Greater numerical precision cannot repair incompatible units or missing lifecycle rules. Selective exclusion does not create a fair or reproducible forecasting population. An arbitrary fixed conversion does not establish equivalent work sizes or throughput.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q045

Advanced · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md), [D1.2.2](../../docs/objective-map.md)

Review waiting fell from four days to one after small low-risk changes were split into separate requests. Sensitive changes still wait four days. Which evaluation can establish whether reviewer capacity improved?

- **A. Conclude capacity quadrupled from the aggregate average alone** The changed request mix prevents attributing the whole shift to reviewer capacity.
- **B. Combine sensitive and low-risk requests because risk classification is subjective** Dropping a relevant cohort distinction makes the comparison less interpretable.
- **C. Count the increased number of requests as direct proof of developer productivity** Request splitting changes the count without necessarily changing delivered value or reviewer capacity.
- **D. Compare waiting within comparable risk and size cohorts, and show the changed work mix** **Correct.** A larger proportion of quick low-risk requests can reduce an overall average without improving review of comparable work.

**Explanation:** The changed request mix prevents attributing the whole shift to reviewer capacity. Dropping a relevant cohort distinction makes the comparison less interpretable. Request splitting changes the count without necessarily changing delivered value or reviewer capacity. A larger proportion of quick low-risk requests can reduce an overall average without improving review of comparable work.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q046

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A service dashboard shows zero errors after a release, but request volume and telemetry ingestion both drop to zero while the external probe fails. What should the incident reviewer infer?

- **A. The release improved efficiency because the system processed fewer requests** A failed probe and missing demand observations do not establish an efficiency improvement.
- **B. The probe must be wrong because pipeline deployment completed** Delivery automation success does not override independent runtime failure evidence.
- **C. The missing telemetry invalidates the zero-error health inference; investigate collection and user-visible availability** **Correct.** No observations differ from observed successful requests, and the independent probe supplies contrary service evidence.
- **D. The service is healthy because the observed error count is zero** An empty observation stream does not establish successful request handling.

**Explanation:** A failed probe and missing demand observations do not establish an efficiency improvement. Delivery automation success does not override independent runtime failure evidence. No observations differ from observed successful requests, and the independent probe supplies contrary service evidence. An empty observation stream does not establish successful request handling.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)

## L02-Q047

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A suite's pass rate rises after infrastructure failures are excluded. Product failures remain unchanged, and 15 percent of required tests never ran. What should the quality report distinguish?

- **A. Report only the new pass rate because the excluded failures were not product defects** Missing required executions still constrain the quality conclusion even when infrastructure is the cause.
- **B. Count every unexecuted test as passed because no assertion failed** A test that did not run provides no positive verification evidence.
- **C. Count all infrastructure failures as confirmed product regressions** That misclassifies the cause and sends investigation toward the wrong failure category.
- **D. Executed product outcomes, infrastructure failures, and missing required execution** **Correct.** Separating these states prevents a cleaner pass-rate denominator from implying complete verification.

**Explanation:** Missing required executions still constrain the quality conclusion even when infrastructure is the cause. A test that did not run provides no positive verification evidence. That misclassifies the cause and sends investigation toward the wrong failure category. Separating these states prevents a cleaner pass-rate denominator from implying complete verification.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L02-Q048

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md), [D1.2.2](../../docs/objective-map.md)

Cycle time improves after Approved is reclassified from active to proposed. No item timestamps change, and customer completion dates stay the same. Which explanation is best supported?

- **A. Engineering execution accelerated because the displayed average fell** The unchanged timestamps and completion behavior do not support that causal claim.
- **B. Lead time must fall by exactly the same amount** Creation-to-completion time does not necessarily change when only the cycle boundary changes.
- **C. The original measurements should be deleted because the new definition is always superior** Historical definitions remain relevant, and the new policy needs a documented comparison rather than silent replacement.
- **D. The metric boundary changed; recompute comparable history before attributing the change to execution improvement** **Correct.** A different state-category mapping can shorten the measured interval without changing work behavior.

**Explanation:** The unchanged timestamps and completion behavior do not support that causal claim. Creation-to-completion time does not necessarily change when only the cycle boundary changes. Historical definitions remain relevant, and the new policy needs a documented comparison rather than silent replacement. A different state-category mapping can shorten the measured interval without changing work behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/report/powerbi/overview?view=azure-devops)

## L02-Q049

Advanced · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

The security dashboard shows 70 fewer open findings after 50 verified fixes, 15 risk acceptances, and five unreviewed dismissals. Leadership asks for the reduction in demonstrated exposure. Which response is sound?

- **A. Report 70 remediated findings because the open count fell by 70** That combines different dispositions into an unsupported remediation total.
- **B. Report zero improvement because some findings were only accepted** Verified fixes remain meaningful evidence even though other changes did not establish remediation.
- **C. Exclude all accepted and dismissed rows from historical reporting** Removing disposition history conceals why the open count changed.
- **D. Report the 50 verified fixes separately, with the remaining dispositions and evidence limits visible** **Correct.** An administrative closure or accepted exception is not the same evidence as verified remediation.

**Explanation:** That combines different dispositions into an unsupported remediation total. Verified fixes remain meaningful evidence even though other changes did not establish remediation. Removing disposition history conceals why the open count changed. An administrative closure or accepted exception is not the same evidence as verified remediation.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L02-Q050

Advanced · [CP5](README.md#task-5) · [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

A quarterly score rewards commits, test count, alert closures, and low error count. Teams can split commits, add weak tests, dismiss findings, and stop telemetry. Which redesign most directly addresses this incentive problem?

- **A. Weight the same four totals equally to remove disagreement about importance** Equal weights do not correct the mismatch between activity counts and verified outcomes.
- **B. Publish only one combined rank so individual metrics cannot be challenged** Hiding components prevents diagnosis and makes incentive problems harder to detect.
- **C. Increase the target for each activity count every quarter** Higher activity targets can intensify manipulation without establishing better quality or user outcomes.
- **D. Use decision-specific outcome and evidence measures with stable definitions and explicit completeness checks** **Correct.** The proposed controls evaluate useful behavior and data coverage instead of treating easily manipulated activity totals as equivalent value.

**Explanation:** Equal weights do not correct the mismatch between activity counts and verified outcomes. Hiding components prevents diagnosis and makes incentive problems harder to detect. Higher activity targets can intensify manipulation without establishing better quality or user outcomes. The proposed controls evaluate useful behavior and data coverage instead of treating easily manipulated activity totals as equivalent value.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops); [S5](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S6](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)
