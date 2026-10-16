# Lab 24 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L24-Q001

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

An Application Insights component must store telemetry in an existing course workspace. Which configuration establishes that relationship?

- **A.** Put the workspace customer ID into the component's resource-group field
- **B.** Assign the workspace as the application's managed identity
- **C.** Set the component's workspaceResourceId to the intended workspace ARM ID
- **D.** Give both resources the same display name

## L24-Q002

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The metric definition in the exhibit declares MilliSeconds. Which threshold expresses a two-second response-time condition?

```json
{"name":{"value":"requests/duration"},"unit":"MilliSeconds","primaryAggregationType":"Average"}
```

- **A.** 0.002
- **B.** 2000000
- **C.** 2000
- **D.** 2

## L24-Q003

Applied · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A GitHub Projects chart is built from issues and pull requests. What can it directly describe without application instrumentation?

- **A.** Production HTTP response-time percentiles
- **B.** Private runner CPU usage during compilation
- **C.** SQL dependency failure rates for the deployed API
- **D.** The distribution of tracked project work by supported fields

## L24-Q004

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A silent training alert has no action groups. Its condition fires successfully. Which result remains unverified?

- **A.** Whether the resource exists in the selected scope
- **B.** Whether the alert rule can retain its name
- **C.** Delivery to an incident responder
- **D.** Whether the rule's condition can become true

## L24-Q005

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

During a planned deployment, operations must retain alert instances for later analysis while suppressing notifications for one hour. Which change fits the requirement?

- **A.** Delete the action group and recreate it afterward
- **B.** Raise the alert threshold until maintenance traffic appears healthy
- **C.** Apply a scoped scheduled alert processing rule that suppresses actions
- **D.** Disable the underlying alert rule for the maintenance window

## L24-Q006

Foundational · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

The API returns HTTP 200 from liveness but its database cannot be queried. Which signal best describes customer-request viability?

- **A.** The App Service deployment operation's completed status
- **B.** Only the repository's latest passing build result
- **C.** A readiness check that includes required database access
- **D.** Only the successful process liveness response

## L24-Q007

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Storage platform metrics exist, but the team's workspace contains no storage request logs. What should be configured and verified?

- **A.** Supported diagnostic log categories and their destination for the storage resource
- **B.** A longer retention period on the empty workspace table
- **C.** A GitHub Projects chart grouped by storage issue labels
- **D.** Another alert rule using the same uncollected log query

## L24-Q008

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Two GitHub workflow runs share the same name; one validates the released commit and the other a later commit. What should an incident notification link to?

- **A.** The most recent successful run regardless of revision
- **B.** The exact failed run and its source revision
- **C.** The repository's moving default-branch page
- **D.** The workflow definition file without a run identifier

## L24-Q009

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The displayed alert is Acknowledged by a user while its condition remains Fired. What does acknowledgement establish?

```json
{"monitorCondition":"Fired","userResponse":"Acknowledged"}
```

- **A.** The underlying latency has returned below the threshold
- **B.** All action groups have completed their recovery runbooks successfully
- **C.** The monitored resource was deleted and can no longer emit data
- **D.** A responder has recorded their response state, while the signal still breaches

## L24-Q010

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

An alert fired on the intended resource, but the on-call team received nothing. The action group test also fails for that receiver. What investigation is best targeted?

- **A.** Change the rule to query another resource's metrics
- **B.** Inspect that receiver's configuration and delivery path
- **C.** Reduce the metric threshold to fire more often
- **D.** Increase the workspace retention period before testing again

## L24-Q011

Foundational · [CP1](README.md#task-1) · [D5.1.2](../../docs/objective-map.md)

A team requires 90 days of interactive query access to one workspace table. Which configuration should it review?

- **A.** Only the workspace daily ingestion cap
- **B.** Only total retention, without checking analytics retention
- **C.** That table's supported analytics retention settings and applicable plan
- **D.** Only the Azure resource group deletion lock

## L24-Q012

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The team needs guest performance observations inside supported Azure and Arc servers. Which capability should it evaluate?

- **A.** Only the repository's issue-cycle-time chart
- **B.** Only the load balancer's frontend IP configuration
- **C.** VM Insights with its documented collection prerequisites
- **D.** Only the virtual machine's ARM provisioningState field

## L24-Q013

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

An AKS incident requires pod and container observations, but the only enabled monitoring covers a separate App Service API. Which change addresses the missing scope?

- **A.** Configure the cluster's supported Container Insights collection
- **B.** Increase sampling of the App Service API's traces
- **C.** Copy the API's application name into every pod label
- **D.** Add the cluster name to the API's release notes

## L24-Q014

Applied · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

A metric alert creation fails because the metric name is unsupported for its selected resource type. What should the engineer inspect first?

- **A.** The target resource's metric namespace and definitions
- **B.** Only the target resource's billing tag
- **C.** Only the alert description's spelling
- **D.** The metric names documented for a different service

## L24-Q015

Advanced · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

An alert averages request duration over five minutes. A small critical endpoint degrades while high-volume fast requests keep the average low. Which redesign best addresses the blind spot?

```text
POST /checkout: 20 requests, average 2400 ms
GET /health: 20000 requests, average 10 ms
Rule: all-request average > 1000 ms
```

- **A.** Keep the same average and attach additional email receivers
- **B.** Use supported endpoint-specific dimensions or a query that evaluates the critical operation
- **C.** Use the maximum of the same mixed population without identifying the endpoint
- **D.** Increase the overall average threshold to reduce noise

## L24-Q016

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Operations must detect a specific Azure control-plane resource deletion. Which alert source is the most direct fit?

- **A.** A Projects chart of completed issues
- **B.** A unit-test coverage report from the latest build
- **C.** An Activity Log alert for the matching operation
- **D.** A request-duration metric alert on the application

## L24-Q017

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

A component's workspaceResourceId points to a shared production workspace instead of the journal-owned sandbox workspace. What should validation report?

- **A.** A scope mismatch requiring correction
- **B.** A pass because both workspaces support Application Insights
- **C.** A pass after renaming the component to include sandbox
- **D.** A partial result only if the shared workspace is empty

## L24-Q018

Applied · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

A telemetry dashboard becomes quiet at the same time an exporter loses network access. Which conclusion is justified?

- **A.** No events is inconclusive until collection health and traffic are checked
- **B.** The application failure rate has certainly fallen to zero
- **C.** The release should automatically be promoted to every region
- **D.** The database must have recovered without intervention

## L24-Q019

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

An Azure DevOps team wants notification when a selected project's build completes unsuccessfully. Which design best targets that event?

- **A.** An Azure resource metric rule whose only scope is a storage account
- **B.** A weekly Projects chart showing every closed issue
- **C.** A longer retention setting for successful build artifacts
- **D.** A supported notification subscription with project and failure filters

## L24-Q020

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The action-group test succeeds, but no alert fires during a controlled breach. Which evidence must be checked next to complete the end-to-end verification?

```text
Action group test: delivered
Controlled slow request: completed
Alert instances for exact rule: none
```

- **A.** Only whether old alert instances have been manually closed
- **B.** Whether an unrelated workspace can send test email
- **C.** The rule's actual signal, scope, enabled state and condition evaluation
- **D.** Only whether the receiver's email address contains a typo

## L24-Q021

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A planning owner wants an issue chart grouped by team priority in GitHub Projects. What should the chart use?

- **A.** The operating system's process table on a self-hosted runner
- **B.** An Azure activity-log deletion operation
- **C.** A supported project priority field and the intended item filter
- **D.** An Application Insights request-duration metric namespace

## L24-Q022

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The service publishes a numeric latency metric and needs regular threshold evaluation. Which rule type is the direct starting point?

- **A.** A metric alert on that supported signal
- **B.** An Activity Log alert on role-assignment changes
- **C.** A service-health alert for regional platform incidents only
- **D.** A notification subscription for pull-request comments

## L24-Q023

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Two copies of the same API emit telemetry without distinct service or environment attributes. What operational problem can result?

- **A.** The SDK automatically stops exporting when it detects duplicate service names
- **B.** Requests from different deployments become difficult to separate reliably
- **C.** Every deployment becomes a separate workspace automatically
- **D.** Every alert necessarily produces one notification per deployment

## L24-Q024

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The rule in the exhibit is disabled, has a valid metric and has no actions. What must change before its signal can be evaluated automatically?

```json
{"enabled":false,"actions":[],"criteria":{"metricName":"requests/duration","threshold":2000}}
```

- **A.** Set the user response of an old alert to New
- **B.** Enable the rule while preserving the intended silent training configuration
- **C.** Add a receiver while leaving the rule disabled
- **D.** Rename the metric namespace to the action group's name

## L24-Q025

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A training validator passes because actions is empty, but the production exercise requires notifying an authorized responder. What acceptance change is required?

- **A.** Add every organization member as a default receiver
- **B.** Mark delivery passed if the alert's JSON can be parsed
- **C.** Keep silent training validation separate and test an approved production receiver explicitly
- **D.** Treat the empty actions list as successful responder notification

## L24-Q026

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

A metric exposes one series per deployment slot. The learner intends to monitor production only. Which configuration should be reviewed?

- **A.** Only the repository's default branch
- **B.** Only the retention period on pipeline test logs
- **C.** The resource scope and supported slot dimension filter
- **D.** Only the alert resource's friendly name

## L24-Q027

Applied · [CP3](README.md#task-3) · [D1.2.7](../../docs/objective-map.md)

A request identifier is added as a metric dimension for every incoming call. What should the team evaluate?

- **A.** Whether increasing alert severity reduces the number of metric series
- **B.** Whether renaming the metric eliminates ingestion charges
- **C.** Cardinality, cost and whether trace attributes better fit per-request detail
- **D.** Whether every request must instead share the same trace identifier

## L24-Q028

Applied · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Three synthetic events are processed using the displayed scope and latency rule. Which events should request investigation?

```text
Owned resource: sandbox-api; investigate when durationMs > 1000
A: sandbox-api, 1800 ms
B: production-api, 2400 ms
C: sandbox-api, 120 ms
```

- **A.** Only event A
- **B.** Events A and B
- **C.** Events A and C
- **D.** All three events

## L24-Q029

Applied · [CP1](README.md#task-1) · [D5.1.2](../../docs/objective-map.md)

A team reduces retention to control cost while promising a longer incident investigation window. What must be reconciled?

- **A.** Only the metric evaluation frequency
- **B.** Only the sampling percentage used during future collection
- **C.** Only a longer retention policy for pipeline artifacts
- **D.** The retained queryable data window and the documented investigation requirement

## L24-Q030

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The exhibit evaluates a five-minute average every minute. Which interpretation is correct for its lookback and schedule?

```json
{"evaluationFrequency":"PT1M","windowSize":"PT5M","timeAggregation":"Average"}
```

- **A.** The rule waits five minutes between every evaluation
- **B.** Each data point must breach continuously for exactly one minute
- **C.** The service sends exactly five notifications every minute
- **D.** Each scheduled evaluation examines the applicable five-minute window

## L24-Q031

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A response team needs one reusable set of authorized notification receivers across several alerts. Which Azure Monitor resource fits?

- **A.** An action group
- **B.** A resource lock
- **C.** A Bicep parameter file
- **D.** A GitHub CODEOWNERS file

## L24-Q032

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Creating a telemetry resource succeeds but no application exporter was configured. What has been verified?

- **A.** The API's dependency spans are flowing into that resource
- **B.** Every request has been correlated across service boundaries
- **C.** The application's latency objective is being met in production
- **D.** The monitoring resource exists, while application emission is still unverified

## L24-Q033

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A build-failure alert points to a failed step, but the logs contain an environment dump with a token. What should the notification contain?

- **A.** A sanitized failure summary and an access-controlled run link
- **B.** The complete environment dump so responders can reproduce immediately
- **C.** Only a green-build badge from the repository homepage
- **D.** The raw token with the middle characters visually highlighted

## L24-Q034

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

A diagnostic setting sends one log category to the workspace, while the incident query expects a different category. What should the engineer correct?

- **A.** Recreate the workspace with the same incomplete setting
- **B.** Select the required supported category and verify fresh data at the destination
- **C.** Only increase the query's row limit
- **D.** Only change the query editor's display timezone

## L24-Q035

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

The API has green deployment status, low recorded errors and no telemetry in the last hour despite known traffic. Which release decision is defensible?

```text
Deployment: Succeeded
Last request telemetry: 62 minutes ago
Independent traffic observation: requests continuing
Dashboard error count, last 5 minutes: 0
```

- **A.** Accept because a low error count always proves reliability
- **B.** Accept after replaying a historical healthy result from the same release
- **C.** Delete the old data so the dashboard shows a clean baseline
- **D.** Hold acceptance and investigate collection freshness plus observed request health

## L24-Q036

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A Projects insight chart excludes archived items. Which statement should accompany its completed-work count?

- **A.** The chart always includes every issue ever closed in the organization
- **B.** The chart establishes the API's operational availability for that period
- **C.** The count is independent of the chart's filters and source project
- **D.** The count reflects the chart's included item population, not every historical completion

## L24-Q037

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The incident condition requires joining several log fields and counting matching events. Which alerting approach should be evaluated?

- **A.** A project notification on every issue edit
- **B.** A supported log search alert using the required query
- **C.** A metric alert on an unrelated resource's CPU percentage
- **D.** An Activity Log alert for every subscription write

## L24-Q038

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The team samples telemetry to manage volume. Which claim needs qualification before interpreting an event count?

- **A.** That the rule definition exists in source control
- **B.** That the raw observed row count represents every real request
- **C.** That the component has a workspaceResourceId property
- **D.** That the selected resource belongs to its recorded resource group

## L24-Q039

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A caller receives authorization denied when reading an alert rule during cleanup. How should its existence be recorded?

- **A.** Healthy because no fired instances were returned
- **B.** Unowned because its name could not be enumerated
- **C.** Unknown until an authorized exact-resource read or prior confirmed deletion resolves it
- **D.** Deleted because the current caller cannot retrieve it

## L24-Q040

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The negative exercise disables the owned alert, validation fails for enabled=false, repair reenables it and validation passes. What remains outside this evidence?

```text
Healthy enabled=true: PASS
Injected enabled=false: FAIL expected disabled-rule reason
Repaired enabled=true: PASS
Action group: not configured
```

- **A.** Actual threshold firing and delivery to a configured responder
- **B.** Whether the validator notices the intended disabled configuration
- **C.** Whether repair restored the validator's required enabled state
- **D.** Whether the exercise used the recorded alert identity

## L24-Q041

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Two identical enabled alert rules target the same signal and conditions. What operational effect should the team expect to investigate?

- **A.** Duplicate alert instances or notifications from independent rules
- **B.** Automatic merging into a single canonical rule
- **C.** The newer rule automatically disables the older one
- **D.** Neither rule can fire until their names match

## L24-Q042

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

An action-group test delivers successfully to an approved webhook. What does this prove directly?

- **A.** That private SQL permissions are sufficient for the runtime identity
- **B.** That the tested action path can reach its configured receiver
- **C.** That every application alert condition is configured correctly
- **D.** That the receiver's production remediation always completes safely

## L24-Q043

Applied · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

A dashboard combines VM guest memory and Kubernetes container memory. What should the owner preserve when comparing these signals?

- **A.** Only the total number of series, regardless of units
- **B.** The assumption that both always measure the same memory limit
- **C.** Their source, units, aggregation and resource-level meaning
- **D.** Only one common friendly metric name

## L24-Q044

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A team receives notifications for every successful and failed pipeline run, burying actionable failures. Which adjustment best targets response needs?

- **A.** Send the same unrestricted stream to more channels
- **B.** Retain successful build artifacts for fewer days
- **C.** Filter the supported subscription to the relevant failures and responsible recipients
- **D.** Disable all build notifications permanently

## L24-Q045

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Production and sandbox share an action group. The course requires a silent sandbox fault exercise without interrupting production notification. Which change meets both boundaries?

```text
production-rule -> shared-oncall
sandbox-rule    -> shared-oncall
Requirement: sandbox evaluation stays on; sandbox sends nothing
```

- **A.** Delete the shared action group before injecting the fault
- **B.** Disable every alert in the shared subscription
- **C.** Change production receivers to synthetic addresses temporarily
- **D.** Detach the shared action group from the sandbox rule and verify that rule's empty action list

## L24-Q046

Foundational · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

An engineer selects error rate and response latency for the operations dashboard. What should define their acceptance thresholds?

- **A.** The service's documented user-facing reliability objectives
- **B.** The highest latency in the latest load test, without a user-impact target
- **C.** Default thresholds copied from a workload with a different request mix
- **D.** The thresholds that produce the fewest notifications this week

## L24-Q047

Applied · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The resource's definition supports Average and Maximum, but the proposed rule requests an unsupported aggregation. Which action is appropriate?

- **A.** Keep the unsupported value because the metric name exists
- **B.** Create another workspace without changing the metric rule
- **C.** Remove the resource scope so any aggregation will be accepted
- **D.** Choose a supported aggregation that matches the incident requirement

## L24-Q048

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The displayed CLI output has the expected component name but a different workspaceResourceId. Which comparison should determine the linkage result?

```json
{"name":"owned-app","workspaceResourceId":"/subscriptions/11111111-1111-4111-8111-111111111111/resourceGroups/shared-prod/providers/Microsoft.OperationalInsights/workspaces/logs"}
```

- **A.** Compare only whether both IDs contain Microsoft.OperationalInsights
- **B.** Compare only the component's location with the workspace's label
- **C.** Compare the complete normalized workspace ARM ID with the expected owned workspace
- **D.** Compare only the final workspace name segment

## L24-Q049

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A deployment alert system watches only pipeline failures. The pipeline finishes successfully but users receive errors after rollout. Which additional evidence is required?

- **A.** Only a Projects chart for the release milestone
- **B.** Runtime health and telemetry correlated with the released revision
- **C.** Only more frequent polling of the completed pipeline
- **D.** Only a longer retention period for successful CI logs

## L24-Q050

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

A local routing fixture selects the expected slow owned event and excludes a foreign resource, while the actual exporter, alert firing and receiver were never executed. Which release report is accurate?

```json
{"fixtureOnly":true,"selected":["owned-slow"],"messagesSent":0,"providerExecuted":false}
```

- **A.** Cleanup is complete because the fixture sent no notifications
- **B.** Routing logic passed locally; telemetry collection, alert evaluation and notification remain unverified
- **C.** The complete incident response pipeline passed end to end
- **D.** Azure confirmed the application's production latency objective
