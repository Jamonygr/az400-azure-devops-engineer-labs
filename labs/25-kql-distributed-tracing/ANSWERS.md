# Lab 25 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L25-Q001

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL request table has a Boolean success column. Which aggregation counts only failed rows?

```kusto
datatable(success:bool)[true,false,true,false]
```

- **A. sum(durationMs)** Summing duration computes time rather than the number of failed requests.
- **B. countif(success == false)** **Correct.** The Boolean predicate selects failed rows before the aggregation counts them.
- **C. count()** An unqualified count includes successful and failed rows together.
- **D. countif(success == true)** This predicate counts successes rather than failures.

**Explanation:** Summing duration computes time rather than the number of failed requests. The Boolean predicate selects failed rows before the aggregation counts them. An unqualified count includes successful and failed rows together. This predicate counts successes rather than failures.

**Sources:** [S5](https://learn.microsoft.com/en-us/kusto/query/countif-aggregation-function?view=microsoft-fabric)

## L25-Q002

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A correlation query must retain every request, including requests with no dependency span. Which join kind fits?

- **A. leftouter with dependencies on the left** This preserves dependencies rather than all requests.
- **B. leftsemi with requests on the left** A left semi join keeps only requests that have a matching right-side record.
- **C. leftouter with requests on the left** **Correct.** A left outer join preserves unmatched records from its left input.
- **D. inner with requests on the left** An inner join returns only requests with matching dependency records.

**Explanation:** This preserves dependencies rather than all requests. A left semi join keeps only requests that have a matching right-side record. A left outer join preserves unmatched records from its left input. An inner join returns only requests with matching dependency records.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric)

## L25-Q003

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Two service spans belong to one distributed transaction but have different span IDs. Which identity is shared across the trace?

- **A. The span ID** Each span has its own identity rather than every span sharing one span ID.
- **B. The service process ID** A trace can cross processes and machines with different process identifiers.
- **C. The HTTP response status code** Many unrelated requests share status codes, and status is not trace identity.
- **D. The trace ID** **Correct.** A trace groups spans under a shared trace identity while individual spans have distinct identities.

**Explanation:** Each span has its own identity rather than every span sharing one span ID. A trace can cross processes and machines with different process identifiers. Many unrelated requests share status codes, and status is not trace identity. A trace groups spans under a shared trace identity while individual spans have distinct identities.

**Sources:** [S2](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-concepts)

## L25-Q004

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

An operator wants only the last hour of request telemetry before calculating latency. Which KQL operator filters the input rows?

- **A. sort** Sorting changes row order rather than which timestamps are included.
- **B. where** **Correct.** The where operator selects rows satisfying the requested time predicate.
- **C. project** Projection selects columns rather than enforcing the requested row condition.
- **D. summarize** Aggregation groups or reduces rows but does not itself express the initial time filter.

**Explanation:** Sorting changes row order rather than which timestamps are included. The where operator selects rows satisfying the requested time predicate. Projection selects columns rather than enforcing the requested row condition. Aggregation groups or reduces rows but does not itself express the initial time filter.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric)

## L25-Q005

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The API's average duration is low, but a minority of requests is very slow. Which aggregation directly describes a high latency percentile?

- **A. countif(Success == false)** Failure count does not directly describe the latency distribution.
- **B. max(TimeGenerated)** The latest event time describes freshness rather than request duration.
- **C. percentile(DurationMs, 95)** **Correct.** This estimates a high point of the duration distribution rather than its arithmetic mean.
- **D. avg(DurationMs)** The mean can conceal the slow minority the operator needs to examine.

**Explanation:** Failure count does not directly describe the latency distribution. The latest event time describes freshness rather than request duration. This estimates a high point of the duration distribution rather than its arithmetic mean. The mean can conceal the slow minority the operator needs to examine.

**Sources:** [S6](https://learn.microsoft.com/en-us/kusto/query/percentiles-aggregation-function?view=microsoft-fabric)

## L25-Q006

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A local .NET ActivityListener observes an application span in a unit test. What does that result prove?

- **A. The tested instrumentation emitted a span observed by the local listener** **Correct.** Local observation establishes span creation in that execution, not successful remote export.
- **B. The span was ingested into Azure Monitor** A local listener is independent of an Azure exporter and ingestion pipeline.
- **C. Every production request will be sampled** A local test cannot establish the production sampling policy for all traffic.
- **D. The cloud workspace has the correct retention policy** Span observation does not inspect workspace configuration.

**Explanation:** Local observation establishes span creation in that execution, not successful remote export. A local listener is independent of an Azure exporter and ingestion pipeline. A local test cannot establish the production sampling policy for all traffic. Span observation does not inspect workspace configuration.

**Sources:** [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs)

## L25-Q007

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A workspace-based query joins AppRequests and AppDependencies. Which shared column is used for operation-level correlation?

```text
Workspace query context
Left table: AppRequests
Right table: AppDependencies
```

- **A. Name** Different requests and dependencies can share names without belonging to one operation.
- **B. ResultCode** A status or result code describes outcome rather than transaction identity.
- **C. DurationMs** Similar durations do not establish that two spans belong to the same operation.
- **D. OperationId** **Correct.** The workspace table schemas expose OperationId as the operation correlation identity.

**Explanation:** Different requests and dependencies can share names without belonging to one operation. A status or result code describes outcome rather than transaction identity. Similar durations do not establish that two spans belong to the same operation. The workspace table schemas expose OperationId as the operation correlation identity.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q008

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL summarize computes count() by operation name. What does each output row represent?

- **A. One original request with unchanged columns** Aggregation reduces each group rather than preserving every source row and column.
- **B. One row per workspace regardless of operation names** Grouping by operation name can produce several rows in one workspace.
- **C. One sorted list containing every original request** Summarize produces aggregate rows rather than merely changing original-row order.
- **D. One distinct operation-name group and its aggregated request count** **Correct.** The by expression defines groups, and the aggregation is calculated within each group.

**Explanation:** Aggregation reduces each group rather than preserving every source row and column. Grouping by operation name can produce several rows in one workspace. Summarize produces aggregate rows rather than merely changing original-row order. The by expression defines groups, and the aggregation is calculated within each group.

**Sources:** [S13](https://learn.microsoft.com/en-us/kusto/query/summarize-operator?view=microsoft-fabric)

## L25-Q009

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

A VM dashboard reports available memory in megabytes. Which comparison is meaningful?

- **A. Compare the raw value directly with a CPU percentage threshold** Memory size and processor utilization are different dimensions.
- **B. Treat the number as a disk latency in milliseconds** The same numeric value does not make different physical quantities interchangeable.
- **C. Assume any positive available-memory value proves no pressure** A positive amount can still be inadequate for the workload and its resource context.
- **D. Compare it with a threshold expressed in the same memory unit and scope** **Correct.** Unit consistency is needed before interpreting whether the observed memory crosses a threshold.

**Explanation:** Memory size and processor utilization are different dimensions. The same numeric value does not make different physical quantities interchangeable. A positive amount can still be inadequate for the workload and its resource context. Unit consistency is needed before interpreting whether the observed memory crosses a threshold.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q010

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A new .NET ActivitySource is named Training.Todos, but the collector subscribes only to Training.Payments. Why might the custom span be absent?

- **A. The source name must be a GitHub repository URL** ActivitySource names identify instrumentation sources and are not required to be repository URLs.
- **B. The collector does not subscribe to the actual source name** **Correct.** Custom ActivitySource collection depends on matching the intended instrumentation source.
- **C. A span can be collected only when its name matches the process executable** The ActivitySource name need not equal the executable filename.
- **D. Every ActivitySource automatically exports to every Azure resource** Producing instrumentation does not automatically configure exporter destinations.

**Explanation:** ActivitySource names identify instrumentation sources and are not required to be repository URLs. Custom ActivitySource collection depends on matching the intended instrumentation source. The ActivitySource name need not equal the executable filename. Producing instrumentation does not automatically configure exporter destinations.

**Sources:** [S10](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-instrumentation-walkthroughs)

## L25-Q011

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL result includes many internal columns. Which operator selects just operation name and latency for the final output?

- **A. take** Limiting row count does not remove unwanted columns.
- **B. distinct TimeGenerated** This changes the row set and grouping around a timestamp instead of selecting the requested fields.
- **C. project** **Correct.** Projection explicitly selects the intended result columns and can assign expressions.
- **D. where** Filtering rows does not by itself choose the displayed column set.

**Explanation:** Limiting row count does not remove unwanted columns. This changes the row set and grouping around a timestamp instead of selecting the requested fields. Projection explicitly selects the intended result columns and can assign expressions. Filtering rows does not by itself choose the displayed column set.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric)

## L25-Q012

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

An operator sees fewer trace records than total application requests after sampling was enabled. Which interpretation is appropriate?

- **A. Sampling changes the actual number of requests users sent** Collection policy changes observation rather than historical incoming traffic.
- **B. A sampled trace no longer needs operation correlation** Trace identity remains important for relating the collected spans.
- **C. The stored trace set can represent only a sampled subset of requests** **Correct.** Sampling deliberately reduces collected trace records, so raw row count need not equal total traffic.
- **D. Every missing row proves a failed application request** Sampling can omit healthy and failing observations according to its policy.

**Explanation:** Collection policy changes observation rather than historical incoming traffic. Trace identity remains important for relating the collected spans. Sampling deliberately reduces collected trace records, so raw row count need not equal total traffic. Sampling can omit healthy and failing observations according to its policy.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-sampling)

## L25-Q013

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Requests contain op1 and op2; dependencies contain one record for op1. What row count results from an explicit inner join on operation identity?

```text
requests: op1, op2
dependencies: op1 -> sql
join: kind=inner on operation_Id
```

- **A. Three** An inner join does not append all source rows as a union.
- **B. Zero** The matching op1 pair contributes one result row.
- **C. One** **Correct.** Only op1 has a match in both inputs, so op2 is excluded.
- **D. Two** That would require retaining the unmatched request, which inner join does not do.

**Explanation:** An inner join does not append all source rows as a union. The matching op1 pair contributes one result row. Only op1 has a match in both inputs, so op2 is excluded. That would require retaining the unmatched request, which inner join does not do.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric); [S16](https://learn.microsoft.com/en-us/kusto/query/join-inner?view=microsoft-fabric)

## L25-Q014

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk I/O latency spikes during the same interval as application latency. What conclusion is justified before further investigation?

- **A. Disk latency is proven to be the sole root cause** Coinciding signals do not rule out other causes or identify a causal path.
- **B. The application must be healthy because CPU is below its threshold** A low CPU value does not exclude storage or application problems.
- **C. Increasing memory is proven to resolve the incident** The observed disk signal does not establish that a memory change will fix it.
- **D. Disk contention is a hypothesis to investigate in the matching resource and time window** **Correct.** Temporal correlation can guide diagnosis but does not alone establish the cause of the application delay.

**Explanation:** Coinciding signals do not rule out other causes or identify a causal path. A low CPU value does not exclude storage or application problems. The observed disk signal does not establish that a memory change will fix it. Temporal correlation can guide diagnosis but does not alone establish the cause of the application delay.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q015

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query uses a datatable of three authored requests. What scope should its resulting latency summary claim?

- **A. A complete inventory of all workspace requests** A datatable supplies its own rows rather than enumerating every ingested table.
- **B. A successful live telemetry exporter test** Executing a synthetic table does not exercise application export or ingestion.
- **C. A calculation over those three synthetic rows** **Correct.** The result demonstrates query behavior for the supplied fixture, not production traffic characteristics.
- **D. A measured production service-level objective** Synthetic rows do not establish production request outcomes or demand.

**Explanation:** A datatable supplies its own rows rather than enumerating every ingested table. Executing a synthetic table does not exercise application export or ingestion. The result demonstrates query behavior for the supplied fixture, not production traffic characteristics. Synthetic rows do not establish production request outcomes or demand.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric)

## L25-Q016

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The exhibited query counts failures across three rows. Which result should validation expect?

```kusto
datatable(durationMs:real,success:bool)[10.0,true,30.0,true,100.0,false]
| summarize requests=count(), failures=countif(success == false)
```

- **A. requests = 3 and failures = 2** Two rows are successful, so this reverses the meaning of the failure predicate.
- **B. requests = 1 and failures = 1** The failure predicate affects countif but does not filter the separate total count.
- **C. requests = 2 and failures = 0** The total includes the failed row, which also contributes one failure.
- **D. requests = 3 and failures = 1** **Correct.** All three rows are counted, and only the false success value matches the failure predicate.

**Explanation:** Two rows are successful, so this reverses the meaning of the failure predicate. The failure predicate affects countif but does not filter the separate total count. The total includes the failed row, which also contributes one failure. All three rows are counted, and only the false success value matches the failure predicate.

**Sources:** [S5](https://learn.microsoft.com/en-us/kusto/query/countif-aggregation-function?view=microsoft-fabric); [S13](https://learn.microsoft.com/en-us/kusto/query/summarize-operator?view=microsoft-fabric)

## L25-Q017

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The shown request/dependency correlation drops op2 after changing one word. Which repair restores the requirement to retain requests with no dependency?

```kusto
requests
| join kind=inner dependencies on operation_Id
| project operation_Id, name, target, durationMs
```

- **A. Change kind=inner to kind=leftouter while keeping requests on the left** **Correct.** The left outer flavor preserves op2 even without a dependency match.
- **B. Change the join key from operation identity to duration** Duration equality is not transaction identity and cannot correctly retain unmatched requests.
- **C. Reverse the inputs while keeping an inner join** An inner join still excludes op2 regardless of input order.
- **D. Add a dependency record for op2 solely to satisfy the expected count** Inventing telemetry hides the missing-span case rather than testing correct join behavior.

**Explanation:** The left outer flavor preserves op2 even without a dependency match. Duration equality is not transaction identity and cannot correctly retain unmatched requests. An inner join still excludes op2 regardless of input order. Inventing telemetry hides the missing-span case rather than testing correct join behavior.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric)

## L25-Q018

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The exhibited code starts an Activity but has no interested listener. The returned value may be null. Which instrumentation style handles that supported behavior?

```csharp
using var span = source.StartActivity("TodoWrite");
span.SetTag("todo.operation", "write");
```

- **A. Assume every StartActivity call sends data directly to Azure** Activity creation and remote exporting are separate concerns.
- **B. Replace the source with a static shared Activity that is never stopped** Reusing one never-ending span would misrepresent distinct operations and their lifetimes.
- **C. Use null-safe tag access and configure an interested listener or collector for observation** **Correct.** StartActivity can return null when no listener requests it, so instrumentation should tolerate that optimized path.
- **D. Throw immediately whenever StartActivity returns null** A null Activity can be normal when nothing is collecting the source.

**Explanation:** Activity creation and remote exporting are separate concerns. Reusing one never-ending span would misrepresent distinct operations and their lifetimes. StartActivity can return null when no listener requests it, so instrumentation should tolerate that optimized path. A null Activity can be normal when nothing is collecting the source.

**Sources:** [S10](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-instrumentation-walkthroughs)

## L25-Q019

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query against AppRequests fails because it references duration rather than DurationMs. What should be checked before changing data ingestion?

```kusto
AppRequests
| where TimeGenerated > ago(1h)
| summarize p95=percentile(duration,95)
```

- **A. Whether a longer time range automatically renames columns** Time selection does not change a table's schema.
- **B. Whether the operation name contains the missing column as text** A value in one column does not define another column.
- **C. Whether the workspace needs to be recreated for every new query** An incorrect field name does not justify recreating the query destination.
- **D. The actual table schema and field naming for the selected query context** **Correct.** Workspace table names and columns differ from legacy application query aliases.

**Explanation:** Time selection does not change a table's schema. A value in one column does not define another column. An incorrect field name does not justify recreating the query destination. Workspace table names and columns differ from legacy application query aliases.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests)

## L25-Q020

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query summarizes requests by bin(TimeGenerated, 5m). What reporting behavior does this provide?

```kusto
AppRequests
| where TimeGenerated > ago(1h)
| summarize requests=count() by bin(TimeGenerated,5m)
```

- **A. A separate aggregate for each populated five-minute interval** **Correct.** Binning defines time groups for the aggregation rather than one result over the full period.
- **B. One aggregate per individual millisecond timestamp** Five-minute bins combine timestamps into broader intervals.
- **C. A guaranteed output row for every empty five-minute interval** A simple grouped summarize does not manufacture missing time buckets.
- **D. A five-minute delay before every query completes** The bin size controls grouping, not a mandatory execution delay.

**Explanation:** Binning defines time groups for the aggregation rather than one result over the full period. Five-minute bins combine timestamps into broader intervals. A simple grouped summarize does not manufacture missing time buckets. The bin size controls grouping, not a mandatory execution delay.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric); [S13](https://learn.microsoft.com/en-us/kusto/query/summarize-operator?view=microsoft-fabric)

## L25-Q021

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Two sampled AppRequests rows have ItemCount values 10 and 20. Which aggregation estimates represented request volume?

```text
Stored AppRequests rows
row A: ItemCount=10
row B: ItemCount=20
```

- **A. avg(ItemCount)** The average weight is not the total represented request count.
- **B. sum(ItemCount)** **Correct.** ItemCount records how many telemetry items a stored row represents, so the weights total 30.
- **C. count()** Raw row count is two and ignores the provided representation weights.
- **D. max(ItemCount)** The largest weight alone omits the represented requests in the other row.

**Explanation:** The average weight is not the total represented request count. ItemCount records how many telemetry items a stored row represents, so the weights total 30. Raw row count is two and ignores the provided representation weights. The largest weight alone omits the represented requests in the other row.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-sampling)

## L25-Q022

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A workspace query scans 90 days and every column although the incident concerns one service in the last 30 minutes. Which optimization is most directly useful?

- **A. Increase the lookback to one year to give the engine more data** More unrelated data increases work without serving the stated diagnostic question.
- **B. Remove all predicates and sort the entire workspace first** That broadens work before eliminating irrelevant records.
- **C. Replace operation identity with free-text matching across every column** Broad text scanning weakens correlation precision and can add avoidable cost.
- **D. Apply selective time and service filters early and project only needed columns** **Correct.** Reducing the scanned data and carried columns targets unnecessary query work without changing the incident scope.

**Explanation:** More unrelated data increases work without serving the stated diagnostic question. That broadens work before eliminating irrelevant records. Broad text scanning weakens correlation precision and can add avoidable cost. Reducing the scanned data and carried columns targets unnecessary query work without changing the incident scope.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q023

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

One request has two matching dependency rows and another has none. How many rows does the shown leftouter join produce?

```kusto
let requests=datatable(operation_Id:string)["a","b"];
let dependencies=datatable(operation_Id:string,target:string)["a","sql","a","cache"];
requests | join kind=leftouter dependencies on operation_Id
```

- **A. Two** A left outer join can expand a left record when multiple right records match.
- **B. One** This omits both the second dependency match and the unmatched request.
- **C. Four** The unmatched request contributes one row, not one row for every right-side dependency.
- **D. Three** **Correct.** The first request yields two matches, and the unmatched second request is retained once.

**Explanation:** A left outer join can expand a left record when multiple right records match. This omits both the second dependency match and the unmatched request. The unmatched request contributes one row, not one row for every right-side dependency. The first request yields two matches, and the unmatched second request is retained once.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric)

## L25-Q024

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

Several requests occur within the same second. Which correlation method best avoids assigning a dependency to the wrong request?

- **A. Use operation identity and the available parent/span relationships** **Correct.** Distributed trace identities distinguish concurrent transactions and their individual span relationships.
- **B. Join only on a one-second timestamp bucket** Concurrent unrelated transactions can share a time bucket.
- **C. Join on equal response duration** Duration similarity is not an identity relationship.
- **D. Join on the same HTTP result code** Many unrelated operations share a status code.

**Explanation:** Distributed trace identities distinguish concurrent transactions and their individual span relationships. Concurrent unrelated transactions can share a time bucket. Duration similarity is not an identity relationship. Many unrelated operations share a status code.

**Sources:** [S2](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-concepts); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q025

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

The fixture reports network errors as fraction 0.004. Which percentage should the interpretation record?

```json
{"networkErrorRate":0.004,"unit":"fraction"}
```

- **A. 40 percent** This overstates the conversion by a factor of one hundred.
- **B. 0.4 percent** **Correct.** Multiplying the fraction by 100 yields 0.4 percent.
- **C. 4 percent** This overstates the fraction-to-percentage conversion by a factor of ten.
- **D. 0.004 percent** This repeats the fraction value without converting it to percentage units.

**Explanation:** This overstates the conversion by a factor of one hundred. Multiplying the fraction by 100 yields 0.4 percent. This overstates the fraction-to-percentage conversion by a factor of ten. This repeats the fraction value without converting it to percentage units.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q026

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

An analyst wants the failure rate of all observed requests, but filters to failed rows before calculating countif(false) divided by count(). What is the flaw?

```kusto
AppRequests
| where Success == false
| summarize failures=countif(Success == false), requests=count()
| extend failureRate=100.0*failures/requests
```

- **A. The query must group by request name to count any rows** Grouping by name is optional and does not repair the missing successful population.
- **B. The denominator now contains only failures, so it no longer represents all requests** **Correct.** Filtering out successes before the ratio makes the population inconsistent with the requested failure rate.
- **C. countif cannot operate on Boolean expressions** Boolean predicates are exactly what countif expects.
- **D. A rate cannot be calculated with numeric aggregates** A consistent numerator and denominator can express a request failure rate.

**Explanation:** Grouping by name is optional and does not repair the missing successful population. Filtering out successes before the ratio makes the population inconsistent with the requested failure rate. Boolean predicates are exactly what countif expects. A consistent numerator and denominator can express a request failure rate.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric); [S5](https://learn.microsoft.com/en-us/kusto/query/countif-aggregation-function?view=microsoft-fabric)

## L25-Q027

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

A three-request fixture produces a high percentile of 100 ms. What should the learner avoid claiming from this result?

- **A. A precise production tail-latency guarantee at real demand** **Correct.** A tiny synthetic population demonstrates calculation behavior rather than a statistically robust production promise.
- **B. That one fixture request was as slow as the reported tail observation** The supplied synthetic data can legitimately include a slow observation.
- **C. That the query can be validated against a controlled input** Controlled fixture validation is a useful and appropriately bounded exercise.
- **D. That units should appear in the metric name** Explicit milliseconds help readers interpret the result correctly.

**Explanation:** A tiny synthetic population demonstrates calculation behavior rather than a statistically robust production promise. The supplied synthetic data can legitimately include a slow observation. Controlled fixture validation is a useful and appropriately bounded exercise. Explicit milliseconds help readers interpret the result correctly.

**Sources:** [S6](https://learn.microsoft.com/en-us/kusto/query/percentiles-aggregation-function?view=microsoft-fabric)

## L25-Q028

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The local span test passes, but Azure Monitor has no matching operation. Which evidence should be investigated next?

- **A. Whether the test can replace the workspace query entirely** A local observation cannot prove successful remote telemetry ingestion.
- **B. Exporter configuration, destination, transport, sampling, and ingestion for the same operation** **Correct.** Local emission is one stage; the remote collection path must be validated independently.
- **C. Only the span test's assertion count** Additional local assertions cannot establish that the remote export path works.
- **D. Only whether the Git working tree is clean** Source status does not diagnose exporter destination or ingestion.

**Explanation:** A local observation cannot prove successful remote telemetry ingestion. Local emission is one stage; the remote collection path must be validated independently. Additional local assertions cannot establish that the remote export path works. Source status does not diagnose exporter destination or ingestion.

**Sources:** [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs); [S12](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L25-Q029

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A request and dependency share OperationId. The engineer wants to know which request span directly initiated that dependency. What additional relationship is relevant?

```text
request: Id=request-span; OperationId=trace-a
dependency: Id=dep-span; OperationId=trace-a; ParentId=request-span
```

- **A. The alphabetical order of their Name values** Names do not encode the direct parent-child span relationship.
- **B. The larger DurationMs value** A longer duration does not identify which span initiated another.
- **C. The later ingestion timestamp alone** Ingestion order can differ from execution order and is not a parent identifier.
- **D. The dependency ParentId compared with the parent span's Id** **Correct.** OperationId groups the transaction, while parent/span identities describe the direct relationship.

**Explanation:** Names do not encode the direct parent-child span relationship. A longer duration does not identify which span initiated another. Ingestion order can differ from execution order and is not a parent identifier. OperationId groups the transaction, while parent/span identities describe the direct relationship.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q030

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU is reported for vm-a over 10:00–10:05, while a slow request ran on vm-b at 11:00. What is the main problem with claiming CPU caused this request's delay?

- **A. CPU is never relevant to application latency** CPU can be relevant when measured in the appropriate execution context.
- **B. A request must always execute on the VM with the highest CPU** The highest utilization elsewhere does not identify the request's actual host.
- **C. All infrastructure metrics need the same numeric unit as latency** Different dimensions can be compared contextually without pretending they share units.
- **D. The resource and observation window do not match the affected request** **Correct.** Unrelated resource and time measurements cannot establish the proposed request-level explanation.

**Explanation:** CPU can be relevant when measured in the appropriate execution context. The highest utilization elsewhere does not identify the request's actual host. Different dimensions can be compared contextually without pretending they share units. Unrelated resource and time measurements cannot establish the proposed request-level explanation.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q031

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

After a leftouter join, durationMs is a real-valued dependency column. How can the query identify retained requests with no dependency value?

```kusto
requests
| join kind=leftouter dependencies on operation_Id
// durationMs is real in the right input
```

- **A. isnull(operation_Id) on the preserved left key** The left request's operation identity remains present for an unmatched request.
- **B. isnull(durationMs)** **Correct.** An unmatched right-side real column has a null value that can be tested explicitly.
- **C. durationMs == 0** A real dependency can have zero duration, while null is not a zero measurement.
- **D. durationMs > 0** This selects positive measured durations rather than the missing right-side values.

**Explanation:** The left request's operation identity remains present for an unmatched request. An unmatched right-side real column has a null value that can be tested explicitly. A real dependency can have zero duration, while null is not a zero measurement. This selects positive measured durations rather than the missing right-side values.

**Sources:** [S15](https://learn.microsoft.com/en-us/kusto/query/isnull-function?view=microsoft-fabric); [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric)

## L25-Q032

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A summarize groups by operation name, but the author then projects a raw request ID that was neither grouped nor aggregated. Why does the query fail?

```kusto
AppRequests
| summarize total=count() by Name
| project Name, Id, total
```

- **A. Request IDs must always be numeric** String identifiers are valid; the issue is column availability after aggregation.
- **B. Summarize automatically encrypts request identifiers** Aggregation changes the result schema rather than encrypting arbitrary fields.
- **C. The aggregate result does not retain arbitrary ungrouped source columns** **Correct.** Only grouping keys and computed aggregates are available after this summarize.
- **D. Every project operator requires a join first** Projection can operate directly on a valid table without a join.

**Explanation:** String identifiers are valid; the issue is column availability after aggregation. Aggregation changes the result schema rather than encrypting arbitrary fields. Only grouping keys and computed aggregates are available after this summarize. Projection can operate directly on a valid table without a join.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric); [S13](https://learn.microsoft.com/en-us/kusto/query/summarize-operator?view=microsoft-fabric)

## L25-Q033

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

The same expensive filtered dataset is referenced several times in one query. An engineer proposes materialize without measurement. What is the right evaluation?

- **A. Remove all early filters so the cached expression serves every possible question** That can materialize far more data than the actual query needs.
- **B. Treat successful parsing as proof of lower execution cost** Syntax validity does not establish performance or resource improvement.
- **C. Benchmark the intended reuse and memory tradeoff on the filtered projected dataset** **Correct.** Materialization can help reuse, but its benefit depends on data size and query shape.
- **D. Assume materialize always speeds up any query regardless of size** Extra materialization can consume resources and is not universally beneficial.

**Explanation:** That can materialize far more data than the actual query needs. Syntax validity does not establish performance or resource improvement. Materialization can help reuse, but its benefit depends on data size and query shape. Extra materialization can consume resources and is not universally beneficial.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization)

## L25-Q034

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Memory available falls during the incident while disk queue and latency rise. Which next step best tests a contention hypothesis?

- **A. Declare a network root cause solely because multiple metrics moved** The observed signals do not specifically establish a network failure.
- **B. Increase every resource allocation and treat any later recovery as controlled proof** A broad simultaneous change obscures which factor mattered and can waste resources.
- **C. Ignore memory because only CPU can affect request latency** Memory pressure and storage behavior can affect service response times.
- **D. Inspect matching workload, paging or I/O evidence, and per-resource time series before choosing a mitigation** **Correct.** Several correlated signals guide a targeted investigation but do not alone identify the exact limiting mechanism.

**Explanation:** The observed signals do not specifically establish a network failure. A broad simultaneous change obscures which factor mattered and can waste resources. Memory pressure and storage behavior can affect service response times. Several correlated signals guide a targeted investigation but do not alone identify the exact limiting mechanism.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q035

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query groups by every unique request ID to summarize average duration, producing almost as many rows as its input. The goal is one trend per operation type. What should change?

- **A. Group by the bounded operation type and intended time bucket instead of the unique request ID** **Correct.** The grouping dimension should match the trend question rather than preserve per-request cardinality.
- **B. Add more unique identifiers to the grouping keys** That preserves or increases cardinality instead of producing the requested trend.
- **C. Use take 1 before aggregation** That discards most observations and cannot represent the operation-type trend.
- **D. Rename the request ID column operation type without changing its values** Changing a name does not change the distinct grouping population.

**Explanation:** The grouping dimension should match the trend question rather than preserve per-request cardinality. That preserves or increases cardinality instead of producing the requested trend. That discards most observations and cannot represent the operation-type trend. Changing a name does not change the distinct grouping population.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric); [S13](https://learn.microsoft.com/en-us/kusto/query/summarize-operator?view=microsoft-fabric)

## L25-Q036

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A custom span appears without its expected completion duration because observation occurs only at ActivityStarted. What collection point should be reviewed?

```csharp
ActivitySource.AddActivityListener(new ActivityListener {
    ShouldListenTo = s => s.Name == "Training.Todos",
    Sample = (ref ActivityCreationOptions<ActivityContext> o) => ActivitySamplingResult.AllDataAndRecorded,
    ActivityStarted = a => Capture(a.Duration)
});
```

- **A. Assign the same fixed duration to all spans** A fabricated value does not measure completed work.
- **B. Start a second root Activity whenever the first Activity starts** A second span does not supply the original span's final completion evidence.
- **C. Observe the completed Activity at ActivityStopped for final duration and populated information** **Correct.** Start callbacks can occur before the work has finished and before final data is available.
- **D. Use the process startup timestamp as every span's end time** Process lifecycle is different from each operation's completion.

**Explanation:** A fabricated value does not measure completed work. A second span does not supply the original span's final completion evidence. Start callbacks can occur before the work has finished and before final data is available. Process lifecycle is different from each operation's completion.

**Sources:** [S10](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-instrumentation-walkthroughs); [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs)

## L25-Q037

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

The query selects slow requests, sorts them descending by DurationMs, and takes ten. What does the result describe?

```kusto
AppRequests
| where TimeGenerated > ago(30m) and DurationMs > 1000
| sort by DurationMs desc
| take 10
```

- **A. All requests that failed during the day** The filter and ordering described concern slow observations, not necessarily failure state or a full day.
- **B. The ten slowest observed requests within the filtered population** **Correct.** Filtering establishes scope, descending duration orders the observations, and take limits that ordered result.
- **C. The ten most recent requests regardless of duration** Sorting by duration does not sort by request timestamp.
- **D. A statistically precise 99th-percentile value** Selecting ten records is not the same operation as estimating a specified percentile.

**Explanation:** The filter and ordering described concern slow observations, not necessarily failure state or a full day. Filtering establishes scope, descending duration orders the observations, and take limits that ordered result. Sorting by duration does not sort by request timestamp. Selecting ten records is not the same operation as estimating a specified percentile.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric)

## L25-Q038

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A test changes a leftouter join to inner. Its positive assertion checks only that one matched dependency exists, so the test still passes. Which negative assertion detects the regression?

- **A. Assert that the query string is nonempty** Nonempty text does not establish the join's row-retention behavior.
- **B. Assert that the workspace ID has not changed** Destination identity is separate from whether the query drops unmatched requests.
- **C. Assert that the known unmatched request remains in the result** **Correct.** Both join kinds retain the matched pair, but only the intended leftouter behavior retains the unmatched request.
- **D. Assert that at least one dependency has a target** That checks only the already preserved matched pair.

**Explanation:** Nonempty text does not establish the join's row-retention behavior. Destination identity is separate from whether the query drops unmatched requests. Both join kinds retain the matched pair, but only the intended leftouter behavior retains the unmatched request. That checks only the already preserved matched pair.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric); [S16](https://learn.microsoft.com/en-us/kusto/query/join-inner?view=microsoft-fabric)

## L25-Q039

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

A dashboard's raw request count falls after the sampling rate decreases, but incoming traffic is unchanged. Which analysis is appropriate?

- **A. Conclude every dropped row was an error** Sampling does not establish the outcome of omitted requests by itself.
- **B. Disable all operation identifiers to reduce sampling** Removing correlation identifiers does not correct the interpretation of sampled counts.
- **C. Inspect sampling and representation weights before interpreting the stored row-count trend** **Correct.** Stored rows can change with collection policy even when actual demand is stable.
- **D. Report a demand decrease equal to the raw row decrease** This confuses telemetry storage volume with incoming request volume.

**Explanation:** Sampling does not establish the outcome of omitted requests by itself. Removing correlation identifiers does not correct the interpretation of sampled counts. Stored rows can change with collection policy even when actual demand is stable. This confuses telemetry storage volume with incoming request volume.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-sampling)

## L25-Q040

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A workspace executes all synthetic KQL exercises successfully while the application's exporter remains unconfigured. Which completion statement is accurate?

- **A. Synthetic query behavior and local instrumentation can pass while live application ingestion remains unverified** **Correct.** The two evidence lanes do not establish the missing application-to-cloud export path.
- **B. The real application tracing integration is complete because a workspace can execute queries** A query endpoint does not prove that application telemetry reaches it.
- **C. The local instrumentation test is invalid because the exporter is absent** Local emission can be tested independently of remote collection.
- **D. Synthetic KQL results should be labeled as real user traffic to unify reporting** That would misrepresent the input source and the scope of the observed results.

**Explanation:** The two evidence lanes do not establish the missing application-to-cloud export path. A query endpoint does not prove that application telemetry reaches it. Local emission can be tested independently of remote collection. That would misrepresent the input source and the scope of the observed results.

**Sources:** [S12](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview); [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs)

## L25-Q041

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Two intervals contain 10 requests with two failures and 990 requests with 18 failures. A dashboard averages the two percentages. Which calculation represents overall failure rate?

```text
Window A: requests=10; failures=2
Window B: requests=990; failures=18
```

- **A. The mean of 20 percent and about 1.82 percent, or about 10.91 percent** An unweighted average gives the ten-request interval the same influence as the 990-request interval.
- **B. The larger interval's rate alone, about 1.82 percent** That omits the failures and requests in the first interval.
- **C. Two failures divided by 1000 requests, or 0.2 percent** That combines one interval's numerator with both intervals' denominator.
- **D. Total failures divided by total requests: 20 divided by 1000, or 2 percent** **Correct.** Combining consistent counts weights intervals by their actual request populations.

**Explanation:** An unweighted average gives the ten-request interval the same influence as the 990-request interval. That omits the failures and requests in the first interval. That combines one interval's numerator with both intervals' denominator. Combining consistent counts weights intervals by their actual request populations.

**Sources:** [S5](https://learn.microsoft.com/en-us/kusto/query/countif-aggregation-function?view=microsoft-fabric); [S19](https://learn.microsoft.com/en-us/kusto/query/sumif-aggregation-function?view=microsoft-fabric)

## L25-Q042

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

One request has five dependencies and another has none. A dashboard averages request duration after a leftouter dependency join. Why can the mean change even though no request duration changed?

```text
Requests: r1 duration=100 ms; r2 duration=10 ms
Dependencies: five rows matching r1; no row matching r2
Query: leftouter join, then avg(requestDurationMs)
```

- **A. Every dependency automatically adds its duration to the request duration column** Joining does not itself change a preserved request duration by summing dependencies.
- **B. Operation IDs become random after a join** Join output multiplicity does not randomize the stored correlation identifiers.
- **C. The first request is repeated five times, so join multiplicity reweights the request average** **Correct.** Request metrics should be aggregated at the intended request identity or protected from dependency fan-out.
- **D. A leftouter join always deletes requests that have no dependencies** The unmatched request remains, so deletion is not the reason here.

**Explanation:** Joining does not itself change a preserved request duration by summing dependencies. Join output multiplicity does not randomize the stored correlation identifiers. Request metrics should be aggregated at the intended request identity or protected from dependency fan-out. The unmatched request remains, so deletion is not the reason here.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric); [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q043

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

The API request and downstream service span occur together but have different trace IDs after an HTTP boundary. CPU is normal. What investigation best targets the missing trace continuity?

- **A. Join all spans in the same second and declare the trace repaired** Concurrent operations can share a second, so that invents unsupported relationships.
- **B. Increase the API CPU allocation to make trace IDs equal** Processor capacity does not establish trace context propagation.
- **C. Replace every downstream trace ID with the most recent API trace ID** Overwriting observed identity can join unrelated requests and corrupt diagnostic provenance.
- **D. Check W3C context propagation and the downstream instrumentation before correlating by identity** **Correct.** A broken propagation boundary can create a new trace, and timestamp proximity cannot safely repair that identity relationship.

**Explanation:** Concurrent operations can share a second, so that invents unsupported relationships. Processor capacity does not establish trace context propagation. Overwriting observed identity can join unrelated requests and corrupt diagnostic provenance. A broken propagation boundary can create a new trace, and timestamp proximity cannot safely repair that identity relationship.

**Sources:** [S2](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-concepts); [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q044

Advanced · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The local ActivityListener test passes, but a production-like request has no remote span. The collector subscribes to the correct source; exporter retries show a destination error. What readiness decision follows?

```text
Local ActivityListener: TodoWrite observed
Collector source selection: Training.Todos
Exporter: retries exhausted; destination rejected
Azure query: no matching operation
```

- **A. Local span emission is verified; resolve the exporter destination failure and verify the same operation's ingestion before claiming integration** **Correct.** The observed stages identify a working producer and a failing remote collection boundary.
- **B. Mark integration complete because correct source subscription is the last required stage** Correct subscription does not prove successful export and ingestion.
- **C. Rewrite the ActivitySource names because any missing remote span proves emission failed** The passing listener and destination error point to a different boundary.
- **D. Delete the local test because it cannot diagnose every exporter failure** The test remains useful evidence for instrumentation even though it does not cover the whole path.

**Explanation:** The observed stages identify a working producer and a failing remote collection boundary. Correct subscription does not prove successful export and ingestion. The passing listener and destination error point to a different boundary. The test remains useful evidence for instrumentation even though it does not cover the whole path.

**Sources:** [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs); [S10](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-instrumentation-walkthroughs); [S12](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

## L25-Q045

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A sample contains successful rows representing 900 requests and failed rows representing 100. The raw row ratio is 50 percent because there is one row of each type. Which rate and interpretation fit?

```text
Stored rows:
Success=true,  ItemCount=900
Success=false, ItemCount=100
```

- **A. A 50 percent rate because every stored row always represents one request** ItemCount explicitly shows unequal numbers represented by these stored rows.
- **B. A 100 percent rate because the failure row has a positive weight** Positive failed volume does not mean every represented request failed.
- **C. A zero percent rate because sampled failures should be ignored** Sampling does not make the represented failure evidence irrelevant.
- **D. A represented failure rate of 10 percent using the corresponding ItemCount weights** **Correct.** The provided representation weights total 1000 requests with 100 failures; raw row count ignores sampling representation.

**Explanation:** ItemCount explicitly shows unequal numbers represented by these stored rows. Positive failed volume does not mean every represented request failed. Sampling does not make the represented failure evidence irrelevant. The provided representation weights total 1000 requests with 100 failures; raw row count ignores sampling representation.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S11](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-sampling); [S19](https://learn.microsoft.com/en-us/kusto/query/sumif-aggregation-function?view=microsoft-fabric)

## L25-Q046

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A correlation query joins 90 days of all services, then filters one operation in a ten-minute incident. It returns correct rows but is expensive. Which optimization preserves the intended result most directly?

- **A. Change to a timestamp-only join because it has fewer key characters** Shorter key text does not establish correct identity matching or lower total cost.
- **B. Keep all history and add more output columns for future reuse** That increases the carried population rather than the specific incident's diagnostic value.
- **C. Replace the query with the first ten dependency rows from any service** An arbitrary sample no longer answers the scoped correlation question.
- **D. Apply equivalent time and scope filters to each input early, project required fields, and verify result equivalence before tuning join strategy** **Correct.** Reducing irrelevant input targets cost without changing the incident's identity-based correlation contract.

**Explanation:** Shorter key text does not establish correct identity matching or lower total cost. That increases the carried population rather than the specific incident's diagnostic value. An arbitrary sample no longer answers the scoped correlation question. Reducing irrelevant input targets cost without changing the incident's identity-based correlation contract.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-optimization); [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric)

## L25-Q047

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

The fixture's slowest request overlaps CPU 75 percent and disk latency 14 ms on its host. Another host peaks at CPU 99 percent outside the window. What report best supports a bounded diagnosis?

- **A. Declare CPU 99 percent the root cause because it is the largest number** The maximum belongs to a different host and time, so it is not relevant causal evidence for this request.
- **B. Compare 75 and 14 directly and choose CPU because its numeric value is higher** Percent utilization and milliseconds measure different quantities and cannot be ranked by raw magnitude.
- **C. Declare no issue because CPU is below 100 percent** A bottleneck or slow path can exist without processor utilization reaching its absolute maximum.
- **D. Investigate CPU and disk contention on the request's host and time window, without claiming causation or using the unrelated maximum** **Correct.** Matching scope and units support a targeted hypothesis; an unrelated host maximum does not explain this operation.

**Explanation:** The maximum belongs to a different host and time, so it is not relevant causal evidence for this request. Percent utilization and milliseconds measure different quantities and cannot be ranked by raw magnitude. A bottleneck or slow path can exist without processor utilization reaching its absolute maximum. Matching scope and units support a targeted hypothesis; an unrelated host maximum does not explain this operation.

**Sources:** [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)

## L25-Q048

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A leftouter join must retain every request and attach only dependency matches with real durationMs greater than 50. Requests with no qualifying dependency must remain with empty right-side values. Which design fits?

```kusto
requests
| join kind=leftouter dependencies on operation_Id
| where durationMs > 50
```

- **A. Filter slow dependencies in the right input before the leftouter join and retain the unmatched-request interpretation** **Correct.** Right-side prefiltering preserves all left requests while limiting which dependency records can match.
- **B. Keep the post-join duration filter unchanged** For unmatched real values the comparison does not pass, so those requests disappear.
- **C. Use an inner join and append a count of all original requests as a label** The label does not restore the missing individual unmatched request records.
- **D. Replace missing durations with 1000 ms before filtering** That fabricates slow dependency measurements for requests with no observed dependency.

**Explanation:** Right-side prefiltering preserves all left requests while limiting which dependency records can match. For unmatched real values the comparison does not pass, so those requests disappear. The label does not restore the missing individual unmatched request records. That fabricates slow dependency measurements for requests with no observed dependency.

**Sources:** [S4](https://learn.microsoft.com/en-us/kusto/query/join-leftouter?view=microsoft-fabric); [S15](https://learn.microsoft.com/en-us/kusto/query/isnull-function?view=microsoft-fabric)

## L25-Q049

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A query copied from a legacy application context uses requests, operation_Id, and timespan duration. The workspace contains AppRequests and AppDependencies with DurationMs. What migration review is required?

```text
Legacy application context: requests.operation_Id, requests.duration (timespan)
Workspace schema: AppRequests.OperationId, AppRequests.DurationMs (real)
```

- **A. Change the join key to Name because it exists in both contexts** A common display name is not a substitute for operation correlation identity.
- **B. Translate table and column names using the actual schemas, preserve numeric milliseconds, and validate correlation on known operations** **Correct.** Query-context differences affect naming and units, so a mechanical partial rename is insufficient.
- **C. Rename only requests to AppRequests and keep every legacy field and conversion unchanged** The workspace columns and duration representation also differ.
- **D. Multiply DurationMs by 1000 because every Azure duration column is seconds** The column already declares milliseconds, so that changes the units incorrectly.

**Explanation:** A common display name is not a substitute for operation correlation identity. Query-context differences affect naming and units, so a mechanical partial rename is insufficient. The workspace columns and duration representation also differ. The column already declares milliseconds, so that changes the units incorrectly.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/apprequests); [S8](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/appdependencies)

## L25-Q050

Advanced · [CP5](README.md#task-5) · [D5.1.2](../../docs/objective-map.md), [D5.2.1](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The lab's Python fixture returns expected aggregates, a local listener sees a span, and synthetic KQL passes in a workspace. Real production exporter behavior has never run. Which evidence-based handoff is accurate?

- **A. Record each verified local or synthetic result separately and leave live export, production trace coverage, and causal diagnosis pending their own evidence** **Correct.** Several useful tests can pass without establishing unexecuted integration or production conclusions.
- **B. Report complete production tracing because three independent checks passed** Independence does not expand their scope beyond local and synthetic inputs.
- **C. Discard the Python reference because only a cloud query can establish any numeric correctness** A reference calculation is useful when clearly labeled and not represented as KQL-engine execution.
- **D. Mark the highest infrastructure metric as the confirmed incident cause to complete the report** Synthetic maxima and correlation do not establish production causation.

**Explanation:** Several useful tests can pass without establishing unexecuted integration or production conclusions. Independence does not expand their scope beyond local and synthetic inputs. A reference calculation is useful when clearly labeled and not represented as KQL-engine execution. Synthetic maxima and correlation do not establish production causation.

**Sources:** [S1](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric); [S2](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-concepts); [S9](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/distributed-tracing-collection-walkthroughs); [S14](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-performance)
