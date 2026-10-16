# Lab 02 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L02-Q001

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A request is created Monday, enters active work Thursday, and finishes Friday. Which interval measures its lead time under the Azure Boards definition?

- **A.** Active work to completion
- **B.** First commit to deployment
- **C.** Creation to first assignment
- **D.** Creation to completion

## L02-Q002

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Lead time increases while cycle time remains stable for comparable work items. Which investigation should receive the first attention?

- **A.** Test-agent CPU during active validation
- **B.** Longer deployment execution after work is completed
- **C.** Waiting before active work begins
- **D.** Compiler optimization during development

## L02-Q003

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A planning chart counts one epic and one small task as equivalent completed units. What is the main interpretive problem?

- **A.** Completed items can never be counted for planning
- **B.** An epic must always take exactly one sprint
- **C.** The units describe materially different work sizes and lifecycle levels
- **D.** The two work-item types use different numeric identifiers

## L02-Q004

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Which event starts cycle-time measurement for a work item that waits several days in the backlog before implementation?

- **A.** Initial creation of the work item
- **B.** Creation of the first linked pull request
- **C.** Assignment of the release version label
- **D.** Transition into an active work state

## L02-Q005

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team completes work quickly once started, but requests wait weeks for assignment. Which metric directly reveals this queue contribution?

- **A.** Average active coding duration
- **B.** Mean build-agent queue duration
- **C.** Lead time minus cycle time for consistently defined items
- **D.** Mean time to restore a failed deployment

## L02-Q006

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Which dashboard annotation makes a weekly throughput chart reproducible for another project analyst?

- **A.** Work-item type filters, completion-state definition, and reporting window
- **B.** Only the current total of visible work items
- **C.** The sum of story points without its query definition
- **D.** Only the date on which the dashboard was created

## L02-Q007

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

An item is created at 09:00, starts work at 11:00, and completes at 15:00 on the same day. What are lead time and cycle time?

```text
Created: 2026-10-12T09: 00: 00Z
Active: 2026-10-12T11: 00: 00Z
Completed: 2026-10-12T15: 00: 00Z
```

- **A.** Six hours lead time and four hours cycle time
- **B.** Four hours lead time and six hours cycle time
- **C.** Two hours lead time and four hours cycle time
- **D.** Six hours lead time and two hours cycle time

## L02-Q008

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

After an intake-policy change, which observation most directly supports a reduction in queue delay without changing execution speed?

```text
Cohort: standard completed tasks
Before: mean lead 12 days; mean cycle 4 days
After:  mean lead7 days;  mean cycle 4 days
```

- **A.** Fewer visible backlog items after hiding old requests
- **B.** Lower lead time with similar cycle time for equivalent cohorts
- **C.** Higher pull-request count with no time measurements
- **D.** Lower cycle time and unchanged lead time

## L02-Q009

Foundational · [CP2](README.md#task-2) · [D1.2.2](../../docs/objective-map.md)

A team creates 20 tasks, completes 12, and carries 8 forward. Which weekly count describes completed-item throughput under that definition?

```text
Created this week: 20 tasks
Completed this week: 12 tasks
Carried into next week: 8 tasks
```

- **A.** Thirty-two tasks
- **B.** Twelve completed tasks
- **C.** Twenty created tasks
- **D.** Eight carried tasks

## L02-Q010

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team changes its workflow so Approved is a proposed state and Implementing is active. What must a cycle-time dashboard use consistently?

- **A.** The date a pull request title first mentions the item
- **B.** The state-category mapping for when work actually becomes active
- **C.** The alphabetically first state in each team's board
- **D.** The date a reviewer first opens the dashboard

## L02-Q011

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team proposes excluding every item older than 30 days before publishing lead-time improvement. Why is that method risky?

- **A.** Azure Boards cannot calculate lead time for completed items
- **B.** Long-running items must always represent invalid data
- **C.** It removes precisely the long-waiting items the metric should expose
- **D.** It will necessarily overstate the duration of every recent item

## L02-Q012

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A dashboard presents a delivery forecast from three unusually quiet weeks without showing sample size. Which correction is most useful?

- **A.** Show the sample period and uncertainty before treating the forecast as reliable
- **B.** Hide the dates so readers focus on the forecast
- **C.** Increase displayed precision from days to seconds
- **D.** Treat the last week's throughput as a guaranteed future capacity

## L02-Q013

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

Two teams report cycle time, but one starts at triage and the other at coding. Their dashboards rank one faster. Which comparison plan is defensible?

- **A.** Use the smaller reported number as the organization's target for both teams
- **B.** Publish the state definitions, compare equivalent cohorts, and explain remaining workflow differences
- **C.** Average both dashboards and use the combined number as a common baseline
- **D.** Normalize only by developer headcount and keep the different start states

## L02-Q014

Foundational · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A queue policy appears to lower average lead time, but unfinished requests are accumulating. What additional analysis prevents a misleading success claim?

- **A.** Review aging work-in-progress and completion cohorts alongside completed-item lead time
- **B.** Compare only the most recently completed five requests
- **C.** Exclude blocked work from every dashboard without reporting the exclusion
- **D.** Replace all time measures with the number of items created

## L02-Q015

Foundational · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

Leadership wants to compare teams using task counts. One team splits work into dozens of small tasks while another uses a few large stories. What is the soundest action?

- **A.** Explain the noncomparable units and use comparable definitions before drawing performance conclusions
- **B.** Rank the first team higher because more completed records always means more value
- **C.** Force both teams to create equal numbers of records without changing work
- **D.** Divide both counts by the number of repositories

## L02-Q016

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

A service's coding time is short, but pull requests wait four days before first review. Which measure locates that development bottleneck?

- **A.** Time between the production deployments
- **B.** Elapsed time awaiting first meaningful review
- **C.** End-to-end work-item lead time
- **D.** Time spent executing the build tests

## L02-Q017

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

All executed unit tests pass, but no test exercises checkout against its database. What does the pass rate establish?

- **A.** Only that the tests actually executed did not fail
- **B.** That every customer-critical workflow has been tested
- **C.** That the database schema matches every deployed application
- **D.** That no production regression can escape

## L02-Q018

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

An alert count falls after all findings are dismissed without investigation. Which conclusion is justified?

- **A.** The report's state changed without proving reduced exposure
- **B.** Security risk necessarily fell by the same percentage
- **C.** Every dismissed finding was automatically patched
- **D.** The scanner can no longer inspect the repository

## L02-Q019

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md)

Deployments increase from 10 to 20 per week, while failures increase from 1 to 8. Which additional measure exposes the reliability deterioration?

- **A.** Unit-test pass percentage alone
- **B.** Change failure rate
- **C.** Deployment frequency alone
- **D.** Mean source-to-release lead time alone

## L02-Q020

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A deployment succeeds, but users immediately receive errors. Which signal directly reports the operational outcome rather than automation completion?

- **A.** User-facing error rate
- **B.** Pipeline task pass rate
- **C.** Count of artifact upload steps
- **D.** Number of pull-request approvals

## L02-Q021

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

Why would commit count be a weak sole measure of an individual engineer's development contribution?

- **A.** Commit count directly records how much customer value was accepted
- **B.** Every commit represents an equal amount of reviewed implementation
- **C.** It counts activity without establishing complexity quality or customer outcome
- **D.** Commit count automatically normalizes squash and nonsquash workflows

## L02-Q022

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

Which dashboard pairing is most useful when assessing whether tests protect a critical customer workflow?

```text
Unit tests: 412 passed
Checkout-to-database tests: 0
Last three escaped defects: checkout schema mismatch
```

- **A.** Build runtime and agent cost only
- **B.** Overall coverage and total source lines only
- **C.** Critical-path test coverage and defects escaping into that workflow
- **D.** Test pass percentage and total test count only

## L02-Q023

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Which metric reveals whether critical security findings remain unresolved for long periods?

- **A.** Percentage of alerts closed including unreviewed dismissals
- **B.** Number of packages inventoried regardless of findings
- **C.** Age of unresolved critical findings with accountable dispositions
- **D.** Total findings discovered during the latest scan

## L02-Q024

Applied · [CP4](README.md#task-4) · [D1.2.6](../../docs/objective-map.md)

A week contains twenty deployments and four failed changes under the team's documented definition. What is that week's change failure rate?

```text
Deployment window: one week
Total changes deployed: 20
Changes meeting documented failure definition: 4
```

- **A.** Four percent
- **B.** Five percent
- **C.** Eighty percent
- **D.** Twenty percent

## L02-Q025

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

Which operational measure is most appropriate when users complain about slow responses rather than outright request failures?

- **A.** Latency distribution for the affected operations
- **B.** Request volume without response-time measurements
- **C.** HTTP error percentage without timing data
- **D.** Build-pipeline duration for the latest commit

## L02-Q026

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

After adding reviewer capacity, what outcome most directly verifies improvement to the reported review queue?

- **A.** More people receive notification emails
- **B.** The total duration of automated unit tests falls
- **C.** The same class of changes waits less time for substantive review
- **D.** The team writes longer pull-request descriptions

## L02-Q027

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A deliberately broken checkout behavior fails the new integration test before release. What conclusion is supported?

- **A.** The suite's pass rate must now remain permanently 100 percent
- **B.** The added test can detect that specific regression
- **C.** Every possible checkout failure is now covered
- **D.** Database outages can no longer affect the service

## L02-Q028

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

A critical dependency alert closes after a reviewed version update and a clean rescan of the delivered dependency graph. What evidence supports genuine remediation?

- **A.** The affected version is absent from the verified release inputs
- **B.** The alert was dismissed by a repository administrator
- **C.** The direct package declaration changed but no resolved graph was checked
- **D.** The dashboard reports fewer open findings without remediation evidence

## L02-Q029

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

What observation supports sustainable delivery improvement rather than merely shipping more frequently?

- **A.** More pipeline runs regardless of whether anything is delivered
- **B.** More emergency patches after every release
- **C.** Shorter deployment duration while failed changes increase
- **D.** Higher useful delivery frequency without worse failure or recovery outcomes

## L02-Q030

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A production dashboard is healthy only because telemetry stopped arriving. Which additional indicator prevents that false interpretation?

- **A.** The last successful pipeline completion state
- **B.** Telemetry freshness or collection health
- **C.** The number of errors in an unverified empty stream
- **D.** The availability percentage from the last reporting period

## L02-Q031

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

A team halves review waiting time by removing required review from sensitive changes. Which extra signal is needed before calling this an improvement?

- **A.** Only the median review waiting time after the policy change
- **B.** The total number of requested reviews
- **C.** Defect and risk outcomes for the now-faster changes
- **D.** The number of merged pull requests alone

## L02-Q032

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A test reporting chart groups product assertion failures together with runner outages. What classification improves diagnosis?

- **A.** Classify every failed run as a product defect
- **B.** Exclude every infrastructure failure from all reporting
- **C.** Count retried tests only after they eventually pass
- **D.** Separate product failures infrastructure failures and known flakes

## L02-Q033

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

Which exception record makes an accepted security risk distinguishable from an unreviewed suppressed alert?

- **A.** The label false-positive applied to every alert
- **B.** A private note known only to the dismissing engineer
- **C.** Named owner rationale scope and review or expiry date
- **D.** A green dashboard screenshot without the finding details

## L02-Q034

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Why should a team document what qualifies as a failed change before comparing quarterly release metrics?

- **A.** The deployment system otherwise cannot count any runs
- **B.** Different inclusion rules can change the rate without changing actual service behavior
- **C.** A written definition makes every change succeed
- **D.** Only failed changes may have source commit identities

## L02-Q035

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A team labels every request with a unique customer identifier and sees telemetry costs grow sharply. Which design review is most relevant?

- **A.** Increase chart resolution to one-second intervals without changing collection
- **B.** Move the same unique identifiers into every metric dimension
- **C.** Increase raw telemetry retention to make the chart more complete
- **D.** Review diagnostic value privacy and cardinality before retaining that dimension

## L02-Q036

Applied · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md)

An organization wants to reduce review delay without making security-sensitive changes less reliable. Which intervention and evaluation fit both goals?

- **A.** Add qualified review capacity or smaller review batches, then compare waiting time and escaped defects
- **B.** Remove all approvals and compare only merge frequency
- **C.** Reward reviewers only for approving the largest number of requests
- **D.** Ignore low-volume sensitive changes because they weaken the overall average

## L02-Q037

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

The suite grows from 100 to 1000 tests, but checkout defects continue escaping and CI takes much longer. Which assessment best avoids a misleading coverage claim?

- **A.** Delete all integration tests to restore the old execution time
- **B.** Use only the final pass percentage as the release-quality indicator
- **C.** Examine risk-relevant scenarios assertion quality and escaped-defect trends alongside runtime
- **D.** Declare success because the larger suite has more tests

## L02-Q038

Applied · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

A team must report reduced exposure while some high-impact findings cannot be patched before release. Which dashboard approach is most honest?

- **A.** Rank teams only by how quickly they click Dismiss
- **B.** Separate verified fixes accepted risks and unresolved findings, showing severity and age
- **C.** Combine all closed dismissed and fixed findings into one remediation success number
- **D.** Remove the unpatchable findings from both numerator and denominator

## L02-Q039

Applied · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Frequency improves after removing gates, but customer-facing rollback incidents rise. Which next evaluation addresses the apparent tradeoff?

- **A.** Replace incident reporting with the number of passing unit tests
- **B.** Compare change failure recovery time and user impact for equivalent release cohorts
- **C.** Celebrate the frequency increase and omit the new incidents
- **D.** Restore every historical gate without examining which failures occurred

## L02-Q040

Applied · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

The pipeline team reports green automation while operations reports sustained customer errors. Which combined review best resolves the disagreement?

- **A.** Keep delivery-system health and runtime service health distinct, correlate by release identity, and act on user impact
- **B.** Treat successful automation as authoritative and discard runtime signals
- **C.** Treat every runtime incident as proof that the build failed
- **D.** Average pipeline pass percentage and HTTP error percentage into one health number

## L02-Q041

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md)

A team reports shorter completed-item lead time after prioritizing easy new requests. The unfinished queue doubled, and its oldest requests aged from 20 to 60 days. Which conclusion best fits all evidence?

- **A.** The oldest item should be excluded because it distorts the improved cohort
- **B.** Completed work became faster for the selected cohort, while backlog aging undermines an overall responsiveness claim
- **C.** The lower completed-item mean proves every customer now waits less
- **D.** The larger queue proves cycle time necessarily increased

## L02-Q042

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

The shown data compares two release periods. Management says reliability improved because incidents per pipeline run fell. Which assessment uses a consistent delivery population?

```text
Period A: deployments=20; failed changes=2; pipeline runs=40
Period B: deployments=30; failed changes=6; pipeline runs=300
```

- **A.** Reliability stayed constant because there were 10 more deployments
- **B.** Recovery necessarily improved because more pipeline runs completed
- **C.** Change failure rate worsened from 10 to 20 percent; build-run growth should not dilute the deployment denominator
- **D.** Reliability improved because 6/300 is lower than 2/40

## L02-Q043

Advanced · [CP5](README.md#task-5) · [D1.2.6](../../docs/objective-map.md)

Team A has one 300-minute outage; Team B has twenty two-minute outages. Management wants to compare recovery skill and customer disruption using one mean. Which reporting design is strongest?

- **A.** Rank B better solely because its average recovery is two minutes
- **B.** Rank A better solely because it has fewer incidents
- **C.** Combine all durations into one company mean and rank both teams equally
- **D.** Show per-incident recovery distributions, incident counts, and affected-user impact separately

## L02-Q044

Advanced · [CP1](README.md#task-1) · [D1.2.2](../../docs/objective-map.md)

A delivery forecast combines one team's stories and another team's subtasks. Historical records omit reopened work, and leadership requests a precise date. What should the analyst do first?

- **A.** Align the unit and completion/reopening rules, then communicate a forecast range and remaining uncertainty
- **B.** Use the combined raw count and publish the date with the most decimal precision
- **C.** Drop the team with lower counts without documenting why
- **D.** Convert each story into ten tasks by assumption

## L02-Q045

Advanced · [CP4](README.md#task-4) · [D1.2.3](../../docs/objective-map.md), [D1.2.2](../../docs/objective-map.md)

Review waiting fell from four days to one after small low-risk changes were split into separate requests. Sensitive changes still wait four days. Which evaluation can establish whether reviewer capacity improved?

- **A.** Conclude capacity quadrupled from the aggregate average alone
- **B.** Combine sensitive and low-risk requests because risk classification is subjective
- **C.** Count the increased number of requests as direct proof of developer productivity
- **D.** Compare waiting within comparable risk and size cohorts, and show the changed work mix

## L02-Q046

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

A service dashboard shows zero errors after a release, but request volume and telemetry ingestion both drop to zero while the external probe fails. What should the incident reviewer infer?

- **A.** The release improved efficiency because the system processed fewer requests
- **B.** The probe must be wrong because pipeline deployment completed
- **C.** The missing telemetry invalidates the zero-error health inference; investigate collection and user-visible availability
- **D.** The service is healthy because the observed error count is zero

## L02-Q047

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md)

A suite's pass rate rises after infrastructure failures are excluded. Product failures remain unchanged, and 15 percent of required tests never ran. What should the quality report distinguish?

- **A.** Report only the new pass rate because the excluded failures were not product defects
- **B.** Count every unexecuted test as passed because no assertion failed
- **C.** Count all infrastructure failures as confirmed product regressions
- **D.** Executed product outcomes, infrastructure failures, and missing required execution

## L02-Q048

Advanced · [CP2](README.md#task-2) · [D1.2.1](../../docs/objective-map.md), [D1.2.2](../../docs/objective-map.md)

Cycle time improves after Approved is reclassified from active to proposed. No item timestamps change, and customer completion dates stay the same. Which explanation is best supported?

- **A.** Engineering execution accelerated because the displayed average fell
- **B.** Lead time must fall by exactly the same amount
- **C.** The original measurements should be deleted because the new definition is always superior
- **D.** The metric boundary changed; recompute comparable history before attributing the change to execution improvement

## L02-Q049

Advanced · [CP3](README.md#task-3) · [D1.2.5](../../docs/objective-map.md)

The security dashboard shows 70 fewer open findings after 50 verified fixes, 15 risk acceptances, and five unreviewed dismissals. Leadership asks for the reduction in demonstrated exposure. Which response is sound?

- **A.** Report 70 remediated findings because the open count fell by 70
- **B.** Report zero improvement because some findings were only accepted
- **C.** Exclude all accepted and dismissed rows from historical reporting
- **D.** Report the 50 verified fixes separately, with the remaining dispositions and evidence limits visible

## L02-Q050

Advanced · [CP5](README.md#task-5) · [D1.2.3](../../docs/objective-map.md), [D1.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md), [D1.2.7](../../docs/objective-map.md)

A quarterly score rewards commits, test count, alert closures, and low error count. Teams can split commits, add weak tests, dismiss findings, and stop telemetry. Which redesign most directly addresses this incentive problem?

- **A.** Weight the same four totals equally to remove disagreement about importance
- **B.** Publish only one combined rank so individual metrics cannot be challenged
- **C.** Increase the target for each activity count every quarter
- **D.** Use decision-specific outcome and evidence measures with stable definitions and explicit completeness checks
