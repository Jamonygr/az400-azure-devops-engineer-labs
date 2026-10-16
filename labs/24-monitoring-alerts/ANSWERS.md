# Lab 24 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L24-Q001

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

An Application Insights component must store telemetry in an existing course workspace. Which configuration establishes that relationship?

- **A. Put the workspace customer ID into the component's resource-group field** The resource-group field selects an ARM scope, not telemetry storage.
- **B. Assign the workspace as the application's managed identity** A workspace is a data resource, not an application identity.
- **C. Set the component's workspaceResourceId to the intended workspace ARM ID** **Correct.** This property binds the component to the chosen workspace resource.
- **D. Give both resources the same display name** Display-name equality does not establish a storage relationship between resources.

**Explanation:** This property binds the component to the chosen workspace resource. The resource-group field selects an ARM scope, not telemetry storage. A workspace is a data resource, not an application identity. Display-name equality does not establish a storage relationship between resources.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/azure-monitor/app/create-workspace-resource)

## L24-Q002

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The metric definition in the exhibit declares MilliSeconds. Which threshold expresses a two-second response-time condition?

```json
{"name":{"value":"requests/duration"},"unit":"MilliSeconds","primaryAggregationType":"Average"}
```

- **A. 0.002** This value would express a small fraction of one millisecond.
- **B. 2000000** That value represents two thousand seconds in the declared units.
- **C. 2000** **Correct.** Two seconds equals two thousand of the metric's millisecond units.
- **D. 2** A threshold of two here means two milliseconds, not seconds.

**Explanation:** Two seconds equals two thousand of the metric's millisecond units. This value would express a small fraction of one millisecond. That value represents two thousand seconds in the declared units. A threshold of two here means two milliseconds, not seconds.

**Sources:** [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q003

Applied · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A GitHub Projects chart is built from issues and pull requests. What can it directly describe without application instrumentation?

- **A. Production HTTP response-time percentiles** Those timings require runtime request telemetry absent from project fields.
- **B. Private runner CPU usage during compilation** Runner host performance is outside ordinary Projects item data.
- **C. SQL dependency failure rates for the deployed API** Database failures require application or dependency instrumentation, not issue counts.
- **D. The distribution of tracked project work by supported fields** **Correct.** Project insights chart work items and their configured project fields.

**Explanation:** Project insights chart work items and their configured project fields. Those timings require runtime request telemetry absent from project fields. Runner host performance is outside ordinary Projects item data. Database failures require application or dependency instrumentation, not issue counts.

**Sources:** [S3](https://docs.github.com/en/issues/planning-and-tracking-with-projects/viewing-insights-from-your-project/about-insights-for-projects)

## L24-Q004

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A silent training alert has no action groups. Its condition fires successfully. Which result remains unverified?

- **A. Whether the resource exists in the selected scope** The scoped rule observation already establishes that resource's visible existence.
- **B. Whether the alert rule can retain its name** Naming persistence is unrelated to the missing delivery integration.
- **C. Delivery to an incident responder** **Correct.** A fired condition does not exercise an unconfigured notification destination.
- **D. Whether the rule's condition can become true** The recorded fired instance provides evidence of that condition evaluation.

**Explanation:** A fired condition does not exercise an unconfigured notification destination. The scoped rule observation already establishes that resource's visible existence. Naming persistence is unrelated to the missing delivery integration. The recorded fired instance provides evidence of that condition evaluation.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q005

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

During a planned deployment, operations must retain alert instances for later analysis while suppressing notifications for one hour. Which change fits the requirement?

- **A. Delete the action group and recreate it afterward** Deleting a shared destination disrupts other rules and loses its configuration.
- **B. Raise the alert threshold until maintenance traffic appears healthy** Changing the condition hides the incidents the team intends to retain.
- **C. Apply a scoped scheduled alert processing rule that suppresses actions** **Correct.** Processing rules can suppress action groups without disabling the monitored rule.
- **D. Disable the underlying alert rule for the maintenance window** Disabling evaluation prevents the required alert instances from being generated.

**Explanation:** Processing rules can suppress action groups without disabling the monitored rule. Deleting a shared destination disrupts other rules and loses its configuration. Changing the condition hides the incidents the team intends to retain. Disabling evaluation prevents the required alert instances from being generated.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S12](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-processing-rules)

## L24-Q006

Foundational · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

The API returns HTTP 200 from liveness but its database cannot be queried. Which signal best describes customer-request viability?

- **A. The App Service deployment operation's completed status** Successful deployment reports resource operation completion, not request correctness.
- **B. Only the repository's latest passing build result** A build result cannot observe this deployed database connection failure.
- **C. A readiness check that includes required database access** **Correct.** Readiness checks required dependencies before claiming the application can serve work.
- **D. Only the successful process liveness response** Process survival does not establish the availability of required downstream services.

**Explanation:** Readiness checks required dependencies before claiming the application can serve work. Successful deployment reports resource operation completion, not request correctness. A build result cannot observe this deployed database connection failure. Process survival does not establish the availability of required downstream services.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q007

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Storage platform metrics exist, but the team's workspace contains no storage request logs. What should be configured and verified?

- **A. Supported diagnostic log categories and their destination for the storage resource** **Correct.** Resource logs require their applicable collection configuration and selected destination.
- **B. A longer retention period on the empty workspace table** Retention keeps collected data; it cannot create a missing collection stream.
- **C. A GitHub Projects chart grouped by storage issue labels** An issue chart does not collect runtime Azure storage requests.
- **D. Another alert rule using the same uncollected log query** A new rule cannot evaluate events that never reach its query source.

**Explanation:** Resource logs require their applicable collection configuration and selected destination. Retention keeps collected data; it cannot create a missing collection stream. An issue chart does not collect runtime Azure storage requests. A new rule cannot evaluate events that never reach its query source.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/azure-monitor/data-collection/diagnostic-settings)

## L24-Q008

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Two GitHub workflow runs share the same name; one validates the released commit and the other a later commit. What should an incident notification link to?

- **A. The most recent successful run regardless of revision** A later successful run cannot explain the earlier failed candidate.
- **B. The exact failed run and its source revision** **Correct.** Run identity and revision connect the recipient to the specific failed execution.
- **C. The repository's moving default-branch page** The branch may have advanced beyond the code that actually failed.
- **D. The workflow definition file without a run identifier** A definition describes automation but does not identify this execution's failure.

**Explanation:** Run identity and revision connect the recipient to the specific failed execution. A later successful run cannot explain the earlier failed candidate. The branch may have advanced beyond the code that actually failed. A definition describes automation but does not identify this execution's failure.

**Sources:** [S8](https://docs.github.com/en/actions/how-tos/monitor-workflows/use-workflow-run-logs)

## L24-Q009

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The displayed alert is Acknowledged by a user while its condition remains Fired. What does acknowledgement establish?

```json
{"monitorCondition":"Fired","userResponse":"Acknowledged"}
```

- **A. The underlying latency has returned below the threshold** Acknowledging an alert does not change the measured service condition.
- **B. All action groups have completed their recovery runbooks successfully** Human response state does not attest to automation completion results.
- **C. The monitored resource was deleted and can no longer emit data** Acknowledgement carries no such resource-lifecycle or telemetry conclusion.
- **D. A responder has recorded their response state, while the signal still breaches** **Correct.** User response and the service-evaluated alert condition are separate states.

**Explanation:** User response and the service-evaluated alert condition are separate states. Acknowledging an alert does not change the measured service condition. Human response state does not attest to automation completion results. Acknowledgement carries no such resource-lifecycle or telemetry conclusion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q010

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

An alert fired on the intended resource, but the on-call team received nothing. The action group test also fails for that receiver. What investigation is best targeted?

- **A. Change the rule to query another resource's metrics** Changing the monitored source would discard the already correct signal scope.
- **B. Inspect that receiver's configuration and delivery path** **Correct.** The successful signal and failed receiver test narrow the problem to delivery.
- **C. Reduce the metric threshold to fire more often** More incidents would reuse the same failing notification destination.
- **D. Increase the workspace retention period before testing again** Retention does not repair the receiver configuration or delivery route.

**Explanation:** The successful signal and failed receiver test narrow the problem to delivery. Changing the monitored source would discard the already correct signal scope. More incidents would reuse the same failing notification destination. Retention does not repair the receiver configuration or delivery route.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q011

Foundational · [CP1](README.md#task-1) · [D5.1.2](../../docs/objective-map.md)

A team requires 90 days of interactive query access to one workspace table. Which configuration should it review?

- **A. Only the workspace daily ingestion cap** An ingestion cap limits collection volume rather than defining the required interactive query-retention window.
- **B. Only total retention, without checking analytics retention** Longer total retention does not necessarily provide the same interactive query access throughout that period.
- **C. That table's supported analytics retention settings and applicable plan** **Correct.** The table plan and analytics retention govern how its data remains queryable.
- **D. Only the Azure resource group deletion lock** A lock protects resource management operations but does not configure how long table data stays queryable.

**Explanation:** The table plan and analytics retention govern how its data remains queryable. An ingestion cap limits collection volume rather than defining the required interactive query-retention window. Longer total retention does not necessarily provide the same interactive query access throughout that period. A lock protects resource management operations but does not configure how long table data stays queryable.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-retention-configure)

## L24-Q012

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The team needs guest performance observations inside supported Azure and Arc servers. Which capability should it evaluate?

- **A. Only the repository's issue-cycle-time chart** Work-item flow does not describe the virtual machine's guest behavior.
- **B. Only the load balancer's frontend IP configuration** A network endpoint configuration does not collect guest operating-system telemetry.
- **C. VM Insights with its documented collection prerequisites** **Correct.** VM Insights addresses guest-machine monitoring when its required collection is configured.
- **D. Only the virtual machine's ARM provisioningState field** Provisioning state does not report ongoing guest CPU or memory performance.

**Explanation:** VM Insights addresses guest-machine monitoring when its required collection is configured. Work-item flow does not describe the virtual machine's guest behavior. A network endpoint configuration does not collect guest operating-system telemetry. Provisioning state does not report ongoing guest CPU or memory performance.

**Sources:** [S10](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-overview)

## L24-Q013

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

An AKS incident requires pod and container observations, but the only enabled monitoring covers a separate App Service API. Which change addresses the missing scope?

- **A. Configure the cluster's supported Container Insights collection** **Correct.** Cluster and container data need collection targeted to that Kubernetes environment.
- **B. Increase sampling of the App Service API's traces** More traces from another resource do not collect the cluster's container data.
- **C. Copy the API's application name into every pod label** A label can aid grouping but does not install telemetry collection.
- **D. Add the cluster name to the API's release notes** Release documentation cannot enable collection from the Kubernetes cluster.

**Explanation:** Cluster and container data need collection targeted to that Kubernetes environment. More traces from another resource do not collect the cluster's container data. A label can aid grouping but does not install telemetry collection. Release documentation cannot enable collection from the Kubernetes cluster.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview)

## L24-Q014

Applied · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

A metric alert creation fails because the metric name is unsupported for its selected resource type. What should the engineer inspect first?

- **A. The target resource's metric namespace and definitions** **Correct.** Definitions identify supported names, units, dimensions and aggregation for that target.
- **B. Only the target resource's billing tag** A billing label does not determine the service's metric catalog.
- **C. Only the alert description's spelling** Descriptions do not select or validate the monitored metric namespace.
- **D. The metric names documented for a different service** Metrics are resource-specific, so another service's catalog can repeat the mistake.

**Explanation:** Definitions identify supported names, units, dimensions and aggregation for that target. A billing label does not determine the service's metric catalog. Descriptions do not select or validate the monitored metric namespace. Metrics are resource-specific, so another service's catalog can repeat the mistake.

**Sources:** [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q015

Advanced · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

An alert averages request duration over five minutes. A small critical endpoint degrades while high-volume fast requests keep the average low. Which redesign best addresses the blind spot?

```text
POST /checkout: 20 requests, average 2400 ms
GET /health: 20000 requests, average 10 ms
Rule: all-request average > 1000 ms
```

- **A. Keep the same average and attach additional email receivers** More receivers do not alter the condition that fails to detect the incident.
- **B. Use supported endpoint-specific dimensions or a query that evaluates the critical operation** **Correct.** Separating the affected operation prevents unrelated fast traffic from hiding its degradation.
- **C. Use the maximum of the same mixed population without identifying the endpoint** A maximum might reveal an outlier but does not identify or consistently assess the specific critical operation.
- **D. Increase the overall average threshold to reduce noise** A higher threshold makes the already masked degradation still less detectable.

**Explanation:** Separating the affected operation prevents unrelated fast traffic from hiding its degradation. More receivers do not alter the condition that fails to detect the incident. A maximum might reveal an outlier but does not identify or consistently assess the specific critical operation. A higher threshold makes the already masked degradation still less detectable.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q016

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Operations must detect a specific Azure control-plane resource deletion. Which alert source is the most direct fit?

- **A. A Projects chart of completed issues** Work tracking does not record every Azure control-plane operation.
- **B. A unit-test coverage report from the latest build** Coverage reports code execution in tests, not resource deletion events.
- **C. An Activity Log alert for the matching operation** **Correct.** The Activity Log records control-plane operations suitable for this event condition.
- **D. A request-duration metric alert on the application** Application latency does not directly identify the resource deletion operation.

**Explanation:** The Activity Log records control-plane operations suitable for this event condition. Work tracking does not record every Azure control-plane operation. Coverage reports code execution in tests, not resource deletion events. Application latency does not directly identify the resource deletion operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q017

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

A component's workspaceResourceId points to a shared production workspace instead of the journal-owned sandbox workspace. What should validation report?

- **A. A scope mismatch requiring correction** **Correct.** A valid resource ID is still wrong when it violates the intended ownership boundary.
- **B. A pass because both workspaces support Application Insights** Service compatibility does not satisfy the required exact workspace relationship.
- **C. A pass after renaming the component to include sandbox** Changing a label leaves the actual telemetry destination unchanged.
- **D. A partial result only if the shared workspace is empty** The incorrect destination violates scope regardless of current data volume.

**Explanation:** A valid resource ID is still wrong when it violates the intended ownership boundary. Service compatibility does not satisfy the required exact workspace relationship. Changing a label leaves the actual telemetry destination unchanged. The incorrect destination violates scope regardless of current data volume.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/azure-monitor/app/create-workspace-resource)

## L24-Q018

Applied · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

A telemetry dashboard becomes quiet at the same time an exporter loses network access. Which conclusion is justified?

- **A. No events is inconclusive until collection health and traffic are checked** **Correct.** Missing telemetry can reflect collection failure rather than successful service behavior.
- **B. The application failure rate has certainly fallen to zero** An absent event stream cannot establish a zero failure rate.
- **C. The release should automatically be promoted to every region** Promotion requires positive health evidence rather than an unexplained telemetry gap.
- **D. The database must have recovered without intervention** Exporter connectivity does not establish database availability or recovery.

**Explanation:** Missing telemetry can reflect collection failure rather than successful service behavior. An absent event stream cannot establish a zero failure rate. Promotion requires positive health evidence rather than an unexplained telemetry gap. Exporter connectivity does not establish database availability or recovery.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q019

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

An Azure DevOps team wants notification when a selected project's build completes unsuccessfully. Which design best targets that event?

- **A. An Azure resource metric rule whose only scope is a storage account** Storage metrics do not identify the Azure DevOps build completion event.
- **B. A weekly Projects chart showing every closed issue** An issue chart cannot deliver the requested build-failure notification.
- **C. A longer retention setting for successful build artifacts** Artifact lifetime does not subscribe responders to unsuccessful build events.
- **D. A supported notification subscription with project and failure filters** **Correct.** The subscription should select the intended event population and recipients.

**Explanation:** The subscription should select the intended event population and recipients. Storage metrics do not identify the Azure DevOps build completion event. An issue chart cannot deliver the requested build-failure notification. Artifact lifetime does not subscribe responders to unsuccessful build events.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/notifications/about-notifications?view=azure-devops)

## L24-Q020

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The action-group test succeeds, but no alert fires during a controlled breach. Which evidence must be checked next to complete the end-to-end verification?

```text
Action group test: delivered
Controlled slow request: completed
Alert instances for exact rule: none
```

- **A. Only whether old alert instances have been manually closed** Closing historical response records does not validate the current rule condition.
- **B. Whether an unrelated workspace can send test email** Another workspace's test repeats delivery evidence without testing this signal.
- **C. The rule's actual signal, scope, enabled state and condition evaluation** **Correct.** Receiver tests validate delivery independently from whether the monitored condition evaluates true.
- **D. Only whether the receiver's email address contains a typo** The successful receiver test already exercised that delivery path.

**Explanation:** Receiver tests validate delivery independently from whether the monitored condition evaluates true. Closing historical response records does not validate the current rule condition. Another workspace's test repeats delivery evidence without testing this signal. The successful receiver test already exercised that delivery path.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q021

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A planning owner wants an issue chart grouped by team priority in GitHub Projects. What should the chart use?

- **A. The operating system's process table on a self-hosted runner** Runner processes do not encode the project's issue priority categories.
- **B. An Azure activity-log deletion operation** Infrastructure lifecycle events do not represent the project's priority distribution.
- **C. A supported project priority field and the intended item filter** **Correct.** Insights charts derive their grouping and population from project items and fields.
- **D. An Application Insights request-duration metric namespace** Runtime metrics do not represent priority values on project work items.

**Explanation:** Insights charts derive their grouping and population from project items and fields. Runner processes do not encode the project's issue priority categories. Infrastructure lifecycle events do not represent the project's priority distribution. Runtime metrics do not represent priority values on project work items.

**Sources:** [S3](https://docs.github.com/en/issues/planning-and-tracking-with-projects/viewing-insights-from-your-project/about-insights-for-projects)

## L24-Q022

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The service publishes a numeric latency metric and needs regular threshold evaluation. Which rule type is the direct starting point?

- **A. A metric alert on that supported signal** **Correct.** Metric alerts evaluate numeric metric series against configured conditions.
- **B. An Activity Log alert on role-assignment changes** Role-assignment operations do not provide the requested latency series.
- **C. A service-health alert for regional platform incidents only** Regional incident notices do not directly evaluate this application's metric.
- **D. A notification subscription for pull-request comments** Review comments are unrelated to the runtime latency threshold.

**Explanation:** Metric alerts evaluate numeric metric series against configured conditions. Role-assignment operations do not provide the requested latency series. Regional incident notices do not directly evaluate this application's metric. Review comments are unrelated to the runtime latency threshold.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-types)

## L24-Q023

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Two copies of the same API emit telemetry without distinct service or environment attributes. What operational problem can result?

- **A. The SDK automatically stops exporting when it detects duplicate service names** Shared names can make interpretation ambiguous, but they do not inherently disable the configured exporter.
- **B. Requests from different deployments become difficult to separate reliably** **Correct.** Missing context can combine populations that require different incident decisions.
- **C. Every deployment becomes a separate workspace automatically** Service attributes do not automatically create or choose distinct workspace resources.
- **D. Every alert necessarily produces one notification per deployment** Notification grouping depends on rule configuration and cannot be inferred from missing deployment attributes alone.

**Explanation:** Missing context can combine populations that require different incident decisions. Shared names can make interpretation ambiguous, but they do not inherently disable the configured exporter. Service attributes do not automatically create or choose distinct workspace resources. Notification grouping depends on rule configuration and cannot be inferred from missing deployment attributes alone.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q024

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The rule in the exhibit is disabled, has a valid metric and has no actions. What must change before its signal can be evaluated automatically?

```json
{"enabled":false,"actions":[],"criteria":{"metricName":"requests/duration","threshold":2000}}
```

- **A. Set the user response of an old alert to New** Historical response state does not enable the current alert rule.
- **B. Enable the rule while preserving the intended silent training configuration** **Correct.** The enabled flag controls evaluation; an empty action list can remain deliberate.
- **C. Add a receiver while leaving the rule disabled** A configured receiver does not turn disabled signal evaluation on.
- **D. Rename the metric namespace to the action group's name** Metric namespaces and notification destinations are different resource concepts.

**Explanation:** The enabled flag controls evaluation; an empty action list can remain deliberate. Historical response state does not enable the current alert rule. A configured receiver does not turn disabled signal evaluation on. Metric namespaces and notification destinations are different resource concepts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q025

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A training validator passes because actions is empty, but the production exercise requires notifying an authorized responder. What acceptance change is required?

- **A. Add every organization member as a default receiver** Broadcasting broadly does not satisfy the specific authorized response boundary.
- **B. Mark delivery passed if the alert's JSON can be parsed** Syntactic validity does not verify real notification receipt.
- **C. Keep silent training validation separate and test an approved production receiver explicitly** **Correct.** The two exercises have different delivery requirements and need distinct evidence.
- **D. Treat the empty actions list as successful responder notification** No receiver was invoked, so notification success cannot be inferred.

**Explanation:** The two exercises have different delivery requirements and need distinct evidence. Broadcasting broadly does not satisfy the specific authorized response boundary. Syntactic validity does not verify real notification receipt. No receiver was invoked, so notification success cannot be inferred.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q026

Foundational · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

A metric exposes one series per deployment slot. The learner intends to monitor production only. Which configuration should be reviewed?

- **A. Only the repository's default branch** A source branch does not choose the metric's deployment-slot dimension.
- **B. Only the retention period on pipeline test logs** Test-log lifetime does not select Azure metric series.
- **C. The resource scope and supported slot dimension filter** **Correct.** Correct scope and dimensions select the intended production metric population.
- **D. Only the alert resource's friendly name** A name containing production cannot constrain the underlying series.

**Explanation:** Correct scope and dimensions select the intended production metric population. A source branch does not choose the metric's deployment-slot dimension. Test-log lifetime does not select Azure metric series. A name containing production cannot constrain the underlying series.

**Sources:** [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q027

Applied · [CP3](README.md#task-3) · [D1.2.7](../../docs/objective-map.md)

A request identifier is added as a metric dimension for every incoming call. What should the team evaluate?

- **A. Whether increasing alert severity reduces the number of metric series** Severity classifies alerts and does not change their dimension cardinality.
- **B. Whether renaming the metric eliminates ingestion charges** A label change does not remove the underlying collection volume.
- **C. Cardinality, cost and whether trace attributes better fit per-request detail** **Correct.** Unique dimensions multiply series and may be better represented in detailed traces.
- **D. Whether every request must instead share the same trace identifier** Reusing trace identity would destroy correlation rather than solve metric design.

**Explanation:** Unique dimensions multiply series and may be better represented in detailed traces. Severity classifies alerts and does not change their dimension cardinality. A label change does not remove the underlying collection volume. Reusing trace identity would destroy correlation rather than solve metric design.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q028

Applied · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Three synthetic events are processed using the displayed scope and latency rule. Which events should request investigation?

```text
Owned resource: sandbox-api; investigate when durationMs > 1000
A: sandbox-api, 1800 ms
B: production-api, 2400 ms
C: sandbox-api, 120 ms
```

- **A. Only event A** **Correct.** A is both inside the owned resource scope and over the latency threshold.
- **B. Events A and B** B breaches latency but belongs to an unrelated resource scope.
- **C. Events A and C** C is owned but does not meet the slow-response condition.
- **D. All three events** That selection ignores both ownership and the latency threshold.

**Explanation:** A is both inside the owned resource scope and over the latency threshold. B breaches latency but belongs to an unrelated resource scope. C is owned but does not meet the slow-response condition. That selection ignores both ownership and the latency threshold.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q029

Applied · [CP1](README.md#task-1) · [D5.1.2](../../docs/objective-map.md)

A team reduces retention to control cost while promising a longer incident investigation window. What must be reconciled?

- **A. Only the metric evaluation frequency** Evaluation frequency controls alert scheduling rather than the historical data window available for investigation.
- **B. Only the sampling percentage used during future collection** Sampling changes collected volume and detail but does not preserve already collected data beyond retention.
- **C. Only a longer retention policy for pipeline artifacts** Pipeline artifacts and operational telemetry have separate retention settings and investigation roles.
- **D. The retained queryable data window and the documented investigation requirement** **Correct.** Cost policy must still preserve the evidence required by operational commitments.

**Explanation:** Cost policy must still preserve the evidence required by operational commitments. Evaluation frequency controls alert scheduling rather than the historical data window available for investigation. Sampling changes collected volume and detail but does not preserve already collected data beyond retention. Pipeline artifacts and operational telemetry have separate retention settings and investigation roles.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-retention-configure)

## L24-Q030

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The exhibit evaluates a five-minute average every minute. Which interpretation is correct for its lookback and schedule?

```json
{"evaluationFrequency":"PT1M","windowSize":"PT5M","timeAggregation":"Average"}
```

- **A. The rule waits five minutes between every evaluation** The one-minute frequency, not the window size, controls this schedule.
- **B. Each data point must breach continuously for exactly one minute** An average over a window does not impose that individual-point condition.
- **C. The service sends exactly five notifications every minute** Evaluation settings alone do not determine such a notification count.
- **D. Each scheduled evaluation examines the applicable five-minute window** **Correct.** Window size and evaluation frequency describe separate parts of the alert condition.

**Explanation:** Window size and evaluation frequency describe separate parts of the alert condition. The one-minute frequency, not the window size, controls this schedule. An average over a window does not impose that individual-point condition. Evaluation settings alone do not determine such a notification count.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q031

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A response team needs one reusable set of authorized notification receivers across several alerts. Which Azure Monitor resource fits?

- **A. An action group** **Correct.** Action groups organize notification and action destinations for alert rules.
- **B. A resource lock** Locks control management operations rather than organize alert receivers.
- **C. A Bicep parameter file** A parameter file supplies deployment inputs but is not a notification destination.
- **D. A GitHub CODEOWNERS file** Code ownership routes repository review, not Azure Monitor incident delivery.

**Explanation:** Action groups organize notification and action destinations for alert rules. Locks control management operations rather than organize alert receivers. A parameter file supplies deployment inputs but is not a notification destination. Code ownership routes repository review, not Azure Monitor incident delivery.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q032

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Creating a telemetry resource succeeds but no application exporter was configured. What has been verified?

- **A. The API's dependency spans are flowing into that resource** No exporter evidence supports a claim about emitted dependency spans.
- **B. Every request has been correlated across service boundaries** Cross-service correlation requires instrumentation and actual observed traces.
- **C. The application's latency objective is being met in production** Resource creation supplies no production request-performance measurements.
- **D. The monitoring resource exists, while application emission is still unverified** **Correct.** Provisioning creates the destination; it does not prove the app exports events.

**Explanation:** Provisioning creates the destination; it does not prove the app exports events. No exporter evidence supports a claim about emitted dependency spans. Cross-service correlation requires instrumentation and actual observed traces. Resource creation supplies no production request-performance measurements.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q033

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A build-failure alert points to a failed step, but the logs contain an environment dump with a token. What should the notification contain?

- **A. A sanitized failure summary and an access-controlled run link** **Correct.** Responders need diagnostic context without copying credentials into additional destinations.
- **B. The complete environment dump so responders can reproduce immediately** Copying the dump extends the credential exposure beyond its existing log.
- **C. Only a green-build badge from the repository homepage** That badge can hide the failed execution and gives no usable diagnosis.
- **D. The raw token with the middle characters visually highlighted** Highlighting sensitive text does not remove or protect the secret value.

**Explanation:** Responders need diagnostic context without copying credentials into additional destinations. Copying the dump extends the credential exposure beyond its existing log. That badge can hide the failed execution and gives no usable diagnosis. Highlighting sensitive text does not remove or protect the secret value.

**Sources:** [S8](https://docs.github.com/en/actions/how-tos/monitor-workflows/use-workflow-run-logs)

## L24-Q034

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

A diagnostic setting sends one log category to the workspace, while the incident query expects a different category. What should the engineer correct?

- **A. Recreate the workspace with the same incomplete setting** Recreation preserves the configuration gap while disrupting existing evidence.
- **B. Select the required supported category and verify fresh data at the destination** **Correct.** Collection categories must cover the events the investigation actually needs.
- **C. Only increase the query's row limit** A row limit cannot retrieve a category that was never collected.
- **D. Only change the query editor's display timezone** Display timezone cannot populate an unconfigured category's missing event stream.

**Explanation:** Collection categories must cover the events the investigation actually needs. Recreation preserves the configuration gap while disrupting existing evidence. A row limit cannot retrieve a category that was never collected. Display timezone cannot populate an unconfigured category's missing event stream.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/azure-monitor/data-collection/diagnostic-settings)

## L24-Q035

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

The API has green deployment status, low recorded errors and no telemetry in the last hour despite known traffic. Which release decision is defensible?

```text
Deployment: Succeeded
Last request telemetry: 62 minutes ago
Independent traffic observation: requests continuing
Dashboard error count, last 5 minutes: 0
```

- **A. Accept because a low error count always proves reliability** Counts from a stale stream do not characterize current customer requests.
- **B. Accept after replaying a historical healthy result from the same release** Historical observations cannot establish current health when the collection stream has become stale.
- **C. Delete the old data so the dashboard shows a clean baseline** Removing evidence does not fix collection or validate the deployed application.
- **D. Hold acceptance and investigate collection freshness plus observed request health** **Correct.** The stale data prevents interpreting low recorded errors as current healthy service.

**Explanation:** The stale data prevents interpreting low recorded errors as current healthy service. Counts from a stale stream do not characterize current customer requests. Historical observations cannot establish current health when the collection stream has become stale. Removing evidence does not fix collection or validate the deployed application.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q036

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

A Projects insight chart excludes archived items. Which statement should accompany its completed-work count?

- **A. The chart always includes every issue ever closed in the organization** A project chart does not provide an unrestricted organization-wide historical inventory.
- **B. The chart establishes the API's operational availability for that period** Work-item completion is not a measure of customer-request availability.
- **C. The count is independent of the chart's filters and source project** Changing the population can change the reported count directly.
- **D. The count reflects the chart's included item population, not every historical completion** **Correct.** Filters and archived-item behavior constrain the population represented by the chart.

**Explanation:** Filters and archived-item behavior constrain the population represented by the chart. A project chart does not provide an unrestricted organization-wide historical inventory. Work-item completion is not a measure of customer-request availability. Changing the population can change the reported count directly.

**Sources:** [S3](https://docs.github.com/en/issues/planning-and-tracking-with-projects/viewing-insights-from-your-project/about-insights-for-projects)

## L24-Q037

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The incident condition requires joining several log fields and counting matching events. Which alerting approach should be evaluated?

- **A. A project notification on every issue edit** Work-tracking events do not query the application's telemetry tables.
- **B. A supported log search alert using the required query** **Correct.** Query-based evaluation can express conditions across the collected log fields.
- **C. A metric alert on an unrelated resource's CPU percentage** An unrelated numeric series does not express the requested event relationship.
- **D. An Activity Log alert for every subscription write** Broad control-plane activity does not implement the specific log query.

**Explanation:** Query-based evaluation can express conditions across the collected log fields. Work-tracking events do not query the application's telemetry tables. An unrelated numeric series does not express the requested event relationship. Broad control-plane activity does not implement the specific log query.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-types)

## L24-Q038

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The team samples telemetry to manage volume. Which claim needs qualification before interpreting an event count?

- **A. That the rule definition exists in source control** A collection policy does not determine whether a file is versioned.
- **B. That the raw observed row count represents every real request** **Correct.** Sampling can change the relationship between stored rows and total traffic.
- **C. That the component has a workspaceResourceId property** Sampling does not remove that resource configuration relationship.
- **D. That the selected resource belongs to its recorded resource group** Sampling does not alter the resource's ARM ownership scope.

**Explanation:** Sampling can change the relationship between stored rows and total traffic. A collection policy does not determine whether a file is versioned. Sampling does not remove that resource configuration relationship. Sampling does not alter the resource's ARM ownership scope.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q039

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

A caller receives authorization denied when reading an alert rule during cleanup. How should its existence be recorded?

- **A. Healthy because no fired instances were returned** The read failed, so no health conclusion follows from absent output.
- **B. Unowned because its name could not be enumerated** A failed read does not erase the recorded ownership evidence.
- **C. Unknown until an authorized exact-resource read or prior confirmed deletion resolves it** **Correct.** A permission failure cannot distinguish a present resource from a deleted one.
- **D. Deleted because the current caller cannot retrieve it** Invisibility under limited authorization is not evidence of deletion.

**Explanation:** A permission failure cannot distinguish a present resource from a deleted one. The read failed, so no health conclusion follows from absent output. A failed read does not erase the recorded ownership evidence. Invisibility under limited authorization is not evidence of deletion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q040

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

The negative exercise disables the owned alert, validation fails for enabled=false, repair reenables it and validation passes. What remains outside this evidence?

```text
Healthy enabled=true: PASS
Injected enabled=false: FAIL expected disabled-rule reason
Repaired enabled=true: PASS
Action group: not configured
```

- **A. Actual threshold firing and delivery to a configured responder** **Correct.** This sequence exercises configuration validation, not signal ingestion and notification delivery.
- **B. Whether the validator notices the intended disabled configuration** The observed named failure already demonstrates that detection behavior.
- **C. Whether repair restored the validator's required enabled state** The repaired read and successful validation provide that evidence.
- **D. Whether the exercise used the recorded alert identity** The scenario explicitly operates on the owned alert throughout.

**Explanation:** This sequence exercises configuration validation, not signal ingestion and notification delivery. The observed named failure already demonstrates that detection behavior. The repaired read and successful validation provide that evidence. The scenario explicitly operates on the owned alert throughout.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q041

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Two identical enabled alert rules target the same signal and conditions. What operational effect should the team expect to investigate?

- **A. Duplicate alert instances or notifications from independent rules** **Correct.** Azure Monitor evaluates rules individually rather than deduplicating their definitions.
- **B. Automatic merging into a single canonical rule** Duplicate conditions do not cause the service to merge rule resources.
- **C. The newer rule automatically disables the older one** Creating another rule does not imply deletion or disabling of existing rules.
- **D. Neither rule can fire until their names match** Rule names do not impose such a mutual execution requirement.

**Explanation:** Azure Monitor evaluates rules individually rather than deduplicating their definitions. Duplicate conditions do not cause the service to merge rule resources. Creating another rule does not imply deletion or disabling of existing rules. Rule names do not impose such a mutual execution requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## L24-Q042

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

An action-group test delivers successfully to an approved webhook. What does this prove directly?

- **A. That private SQL permissions are sufficient for the runtime identity** Webhook delivery does not test database authorization for the application.
- **B. That the tested action path can reach its configured receiver** **Correct.** The test exercises the selected delivery mechanism with a test payload.
- **C. That every application alert condition is configured correctly** Receiver testing does not evaluate every rule's signal and threshold.
- **D. That the receiver's production remediation always completes safely** Delivery alone does not prove downstream business processing or recovery behavior.

**Explanation:** The test exercises the selected delivery mechanism with a test payload. Webhook delivery does not test database authorization for the application. Receiver testing does not evaluate every rule's signal and threshold. Delivery alone does not prove downstream business processing or recovery behavior.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q043

Applied · [CP2](README.md#task-2) · [D1.2.7](../../docs/objective-map.md)

A dashboard combines VM guest memory and Kubernetes container memory. What should the owner preserve when comparing these signals?

- **A. Only the total number of series, regardless of units** Series counts do not make unlike measurements numerically comparable.
- **B. The assumption that both always measure the same memory limit** Guest and container limits can represent different resource constraints.
- **C. Their source, units, aggregation and resource-level meaning** **Correct.** Different resource layers and definitions must remain visible for a valid comparison.
- **D. Only one common friendly metric name** A common name can hide differing meanings and measurement boundaries.

**Explanation:** Different resource layers and definitions must remain visible for a valid comparison. Series counts do not make unlike measurements numerically comparable. Guest and container limits can represent different resource constraints. A common name can hide differing meanings and measurement boundaries.

**Sources:** [S10](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-overview); [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview)

## L24-Q044

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A team receives notifications for every successful and failed pipeline run, burying actionable failures. Which adjustment best targets response needs?

- **A. Send the same unrestricted stream to more channels** Duplicating noisy delivery does not improve relevance or accountability.
- **B. Retain successful build artifacts for fewer days** Artifact retention does not control the notification event subscription.
- **C. Filter the supported subscription to the relevant failures and responsible recipients** **Correct.** Narrow event and recipient scope reduces noise while preserving actionable delivery.
- **D. Disable all build notifications permanently** Removing every signal also removes the failures the team needs to act on.

**Explanation:** Narrow event and recipient scope reduces noise while preserving actionable delivery. Duplicating noisy delivery does not improve relevance or accountability. Artifact retention does not control the notification event subscription. Removing every signal also removes the failures the team needs to act on.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/devops/notifications/about-notifications?view=azure-devops)

## L24-Q045

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Production and sandbox share an action group. The course requires a silent sandbox fault exercise without interrupting production notification. Which change meets both boundaries?

```text
production-rule -> shared-oncall
sandbox-rule    -> shared-oncall
Requirement: sandbox evaluation stays on; sandbox sends nothing
```

- **A. Delete the shared action group before injecting the fault** Deletion also removes the destination production rules still require.
- **B. Disable every alert in the shared subscription** That suppresses unrelated production protection beyond the exercise's scope.
- **C. Change production receivers to synthetic addresses temporarily** Modifying shared production delivery violates the stated isolation requirement.
- **D. Detach the shared action group from the sandbox rule and verify that rule's empty action list** **Correct.** The sandbox rule can remain evaluable without changing production's shared receiver resource.

**Explanation:** The sandbox rule can remain evaluable without changing production's shared receiver resource. Deletion also removes the destination production rules still require. That suppresses unrelated production protection beyond the exercise's scope. Modifying shared production delivery violates the stated isolation requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S6](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)

## L24-Q046

Foundational · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md)

An engineer selects error rate and response latency for the operations dashboard. What should define their acceptance thresholds?

- **A. The service's documented user-facing reliability objectives** **Correct.** Operational thresholds should reflect the behavior customers require from the service.
- **B. The highest latency in the latest load test, without a user-impact target** Observed performance is evidence to compare with requirements, not by itself a justified service objective.
- **C. Default thresholds copied from a workload with a different request mix** Different user journeys and traffic populations can make another service threshold inappropriate.
- **D. The thresholds that produce the fewest notifications this week** Minimizing notification volume alone can hide failures rather than protect user-facing reliability.

**Explanation:** Operational thresholds should reflect the behavior customers require from the service. Observed performance is evidence to compare with requirements, not by itself a justified service objective. Different user journeys and traffic populations can make another service threshold inappropriate. Minimizing notification volume alone can hide failures rather than protect user-facing reliability.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L24-Q047

Applied · [CP3](README.md#task-3) · [D5.1.1](../../docs/objective-map.md)

The resource's definition supports Average and Maximum, but the proposed rule requests an unsupported aggregation. Which action is appropriate?

- **A. Keep the unsupported value because the metric name exists** A valid name does not make every aggregation supported.
- **B. Create another workspace without changing the metric rule** A workspace change does not alter the target metric's supported aggregations.
- **C. Remove the resource scope so any aggregation will be accepted** A rule needs an appropriate target and cannot solve the mismatch by losing scope.
- **D. Choose a supported aggregation that matches the incident requirement** **Correct.** The definition constrains valid aggregation while the requirement determines which is useful.

**Explanation:** The definition constrains valid aggregation while the requirement determines which is useful. A valid name does not make every aggregation supported. A workspace change does not alter the target metric's supported aggregations. A rule needs an appropriate target and cannot solve the mismatch by losing scope.

**Sources:** [S13](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## L24-Q048

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

The displayed CLI output has the expected component name but a different workspaceResourceId. Which comparison should determine the linkage result?

```json
{"name":"owned-app","workspaceResourceId":"/subscriptions/11111111-1111-4111-8111-111111111111/resourceGroups/shared-prod/providers/Microsoft.OperationalInsights/workspaces/logs"}
```

- **A. Compare only whether both IDs contain Microsoft.OperationalInsights** A provider type match does not establish the intended specific workspace.
- **B. Compare only the component's location with the workspace's label** Location and a friendly label do not prove the actual relationship.
- **C. Compare the complete normalized workspace ARM ID with the expected owned workspace** **Correct.** The complete identity distinguishes resources across subscriptions and groups despite similar names.
- **D. Compare only the final workspace name segment** Identical names can exist under different subscription or group scopes.

**Explanation:** The complete identity distinguishes resources across subscriptions and groups despite similar names. A provider type match does not establish the intended specific workspace. Location and a friendly label do not prove the actual relationship. Identical names can exist under different subscription or group scopes.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/azure-monitor/app/create-workspace-resource)

## L24-Q049

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

A deployment alert system watches only pipeline failures. The pipeline finishes successfully but users receive errors after rollout. Which additional evidence is required?

- **A. Only a Projects chart for the release milestone** Planning progress does not detect a deployed runtime regression.
- **B. Runtime health and telemetry correlated with the released revision** **Correct.** Automation success and customer service health are separate observations that must be connected.
- **C. Only more frequent polling of the completed pipeline** Polling the same successful run cannot observe the later request failures.
- **D. Only a longer retention period for successful CI logs** Retention preserves evidence but does not add runtime observation.

**Explanation:** Automation success and customer service health are separate observations that must be connected. Planning progress does not detect a deployed runtime regression. Polling the same successful run cannot observe the later request failures. Retention preserves evidence but does not add runtime observation.

**Sources:** [S8](https://docs.github.com/en/actions/how-tos/monitor-workflows/use-workflow-run-logs); [S9](https://learn.microsoft.com/en-us/azure/devops/notifications/about-notifications?view=azure-devops)

## L24-Q050

Advanced · [CP5](README.md#task-5) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

A local routing fixture selects the expected slow owned event and excludes a foreign resource, while the actual exporter, alert firing and receiver were never executed. Which release report is accurate?

```json
{"fixtureOnly":true,"selected":["owned-slow"],"messagesSent":0,"providerExecuted":false}
```

- **A. Cleanup is complete because the fixture sent no notifications** A local non-sending exercise does not establish cloud resource cleanup.
- **B. Routing logic passed locally; telemetry collection, alert evaluation and notification remain unverified** **Correct.** The evidence proves only the exercised local decisions and preserves the integration gaps.
- **C. The complete incident response pipeline passed end to end** The unexecuted exporter, provider condition and receiver prevent that claim.
- **D. Azure confirmed the application's production latency objective** Synthetic fixture values are not observed production performance measurements.

**Explanation:** The evidence proves only the exercised local decisions and preserves the integration gaps. A local non-sending exercise does not establish cloud resource cleanup. The unexecuted exporter, provider condition and receiver prevent that claim. Synthetic fixture values are not observed production performance measurements.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview); [S2](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)
