# Lab 25 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L25-Q001

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL request table has a Boolean success column. Which aggregation counts only failed rows?

```kusto
datatable(success:bool)[true,false,true,false]
```

- **A.** sum(durationMs)
- **B.** countif(success == false)
- **C.** count()
- **D.** countif(success == true)

## L25-Q002

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A correlation query must retain every request, including requests with no dependency span. Which join kind fits?

- **A.** leftouter with dependencies on the left
- **B.** leftsemi with requests on the left
- **C.** leftouter with requests on the left
- **D.** inner with requests on the left

## L25-Q003

Foundational · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

Two service spans belong to one distributed transaction but have different span IDs. Which identity is shared across the trace?

- **A.** The span ID
- **B.** The service process ID
- **C.** The HTTP response status code
- **D.** The trace ID

## L25-Q004

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

An operator wants only the last hour of request telemetry before calculating latency. Which KQL operator filters the input rows?

- **A.** sort
- **B.** where
- **C.** project
- **D.** summarize

## L25-Q005

Foundational · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The API's average duration is low, but a minority of requests is very slow. Which aggregation directly describes a high latency percentile?

- **A.** countif(Success == false)
- **B.** max(TimeGenerated)
- **C.** percentile(DurationMs, 95)
- **D.** avg(DurationMs)

## L25-Q006

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A local .NET ActivityListener observes an application span in a unit test. What does that result prove?

- **A.** The tested instrumentation emitted a span observed by the local listener
- **B.** The span was ingested into Azure Monitor
- **C.** Every production request will be sampled
- **D.** The cloud workspace has the correct retention policy

## L25-Q007

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A workspace-based query joins AppRequests and AppDependencies. Which shared column is used for operation-level correlation?

```text
Workspace query context
Left table: AppRequests
Right table: AppDependencies
```

- **A.** Name
- **B.** ResultCode
- **C.** DurationMs
- **D.** OperationId

## L25-Q008

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL summarize computes count() by operation name. What does each output row represent?

- **A.** One original request with unchanged columns
- **B.** One row per workspace regardless of operation names
- **C.** One sorted list containing every original request
- **D.** One distinct operation-name group and its aggregated request count

## L25-Q009

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

A VM dashboard reports available memory in megabytes. Which comparison is meaningful?

- **A.** Compare the raw value directly with a CPU percentage threshold
- **B.** Treat the number as a disk latency in milliseconds
- **C.** Assume any positive available-memory value proves no pressure
- **D.** Compare it with a threshold expressed in the same memory unit and scope

## L25-Q010

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A new .NET ActivitySource is named Training.Todos, but the collector subscribes only to Training.Payments. Why might the custom span be absent?

- **A.** The source name must be a GitHub repository URL
- **B.** The collector does not subscribe to the actual source name
- **C.** A span can be collected only when its name matches the process executable
- **D.** Every ActivitySource automatically exports to every Azure resource

## L25-Q011

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A KQL result includes many internal columns. Which operator selects just operation name and latency for the final output?

- **A.** take
- **B.** distinct TimeGenerated
- **C.** project
- **D.** where

## L25-Q012

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

An operator sees fewer trace records than total application requests after sampling was enabled. Which interpretation is appropriate?

- **A.** Sampling changes the actual number of requests users sent
- **B.** A sampled trace no longer needs operation correlation
- **C.** The stored trace set can represent only a sampled subset of requests
- **D.** Every missing row proves a failed application request

## L25-Q013

Foundational · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Requests contain op1 and op2; dependencies contain one record for op1. What row count results from an explicit inner join on operation identity?

```text
requests: op1, op2
dependencies: op1 -> sql
join: kind=inner on operation_Id
```

- **A.** Three
- **B.** Zero
- **C.** One
- **D.** Two

## L25-Q014

Foundational · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Disk I/O latency spikes during the same interval as application latency. What conclusion is justified before further investigation?

- **A.** Disk latency is proven to be the sole root cause
- **B.** The application must be healthy because CPU is below its threshold
- **C.** Increasing memory is proven to resolve the incident
- **D.** Disk contention is a hypothesis to investigate in the matching resource and time window

## L25-Q015

Foundational · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query uses a datatable of three authored requests. What scope should its resulting latency summary claim?

- **A.** A complete inventory of all workspace requests
- **B.** A successful live telemetry exporter test
- **C.** A calculation over those three synthetic rows
- **D.** A measured production service-level objective

## L25-Q016

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The exhibited query counts failures across three rows. Which result should validation expect?

```kusto
datatable(durationMs:real,success:bool)[10.0,true,30.0,true,100.0,false]
| summarize requests=count(), failures=countif(success == false)
```

- **A.** requests = 3 and failures = 2
- **B.** requests = 1 and failures = 1
- **C.** requests = 2 and failures = 0
- **D.** requests = 3 and failures = 1

## L25-Q017

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The shown request/dependency correlation drops op2 after changing one word. Which repair restores the requirement to retain requests with no dependency?

```kusto
requests
| join kind=inner dependencies on operation_Id
| project operation_Id, name, target, durationMs
```

- **A.** Change kind=inner to kind=leftouter while keeping requests on the left
- **B.** Change the join key from operation identity to duration
- **C.** Reverse the inputs while keeping an inner join
- **D.** Add a dependency record for op2 solely to satisfy the expected count

## L25-Q018

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The exhibited code starts an Activity but has no interested listener. The returned value may be null. Which instrumentation style handles that supported behavior?

```csharp
using var span = source.StartActivity("TodoWrite");
span.SetTag("todo.operation", "write");
```

- **A.** Assume every StartActivity call sends data directly to Azure
- **B.** Replace the source with a static shared Activity that is never stopped
- **C.** Use null-safe tag access and configure an interested listener or collector for observation
- **D.** Throw immediately whenever StartActivity returns null

## L25-Q019

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query against AppRequests fails because it references duration rather than DurationMs. What should be checked before changing data ingestion?

```kusto
AppRequests
| where TimeGenerated > ago(1h)
| summarize p95=percentile(duration,95)
```

- **A.** Whether a longer time range automatically renames columns
- **B.** Whether the operation name contains the missing column as text
- **C.** Whether the workspace needs to be recreated for every new query
- **D.** The actual table schema and field naming for the selected query context

## L25-Q020

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query summarizes requests by bin(TimeGenerated, 5m). What reporting behavior does this provide?

```kusto
AppRequests
| where TimeGenerated > ago(1h)
| summarize requests=count() by bin(TimeGenerated,5m)
```

- **A.** A separate aggregate for each populated five-minute interval
- **B.** One aggregate per individual millisecond timestamp
- **C.** A guaranteed output row for every empty five-minute interval
- **D.** A five-minute delay before every query completes

## L25-Q021

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Two sampled AppRequests rows have ItemCount values 10 and 20. Which aggregation estimates represented request volume?

```text
Stored AppRequests rows
row A: ItemCount=10
row B: ItemCount=20
```

- **A.** avg(ItemCount)
- **B.** sum(ItemCount)
- **C.** count()
- **D.** max(ItemCount)

## L25-Q022

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A workspace query scans 90 days and every column although the incident concerns one service in the last 30 minutes. Which optimization is most directly useful?

- **A.** Increase the lookback to one year to give the engine more data
- **B.** Remove all predicates and sort the entire workspace first
- **C.** Replace operation identity with free-text matching across every column
- **D.** Apply selective time and service filters early and project only needed columns

## L25-Q023

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

One request has two matching dependency rows and another has none. How many rows does the shown leftouter join produce?

```kusto
let requests=datatable(operation_Id:string)["a","b"];
let dependencies=datatable(operation_Id:string,target:string)["a","sql","a","cache"];
requests | join kind=leftouter dependencies on operation_Id
```

- **A.** Two
- **B.** One
- **C.** Four
- **D.** Three

## L25-Q024

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

Several requests occur within the same second. Which correlation method best avoids assigning a dependency to the wrong request?

- **A.** Use operation identity and the available parent/span relationships
- **B.** Join only on a one-second timestamp bucket
- **C.** Join on equal response duration
- **D.** Join on the same HTTP result code

## L25-Q025

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

The fixture reports network errors as fraction 0.004. Which percentage should the interpretation record?

```json
{"networkErrorRate":0.004,"unit":"fraction"}
```

- **A.** 40 percent
- **B.** 0.4 percent
- **C.** 4 percent
- **D.** 0.004 percent

## L25-Q026

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

An analyst wants the failure rate of all observed requests, but filters to failed rows before calculating countif(false) divided by count(). What is the flaw?

```kusto
AppRequests
| where Success == false
| summarize failures=countif(Success == false), requests=count()
| extend failureRate=100.0*failures/requests
```

- **A.** The query must group by request name to count any rows
- **B.** The denominator now contains only failures, so it no longer represents all requests
- **C.** countif cannot operate on Boolean expressions
- **D.** A rate cannot be calculated with numeric aggregates

## L25-Q027

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

A three-request fixture produces a high percentile of 100 ms. What should the learner avoid claiming from this result?

- **A.** A precise production tail-latency guarantee at real demand
- **B.** That one fixture request was as slow as the reported tail observation
- **C.** That the query can be validated against a controlled input
- **D.** That units should appear in the metric name

## L25-Q028

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The local span test passes, but Azure Monitor has no matching operation. Which evidence should be investigated next?

- **A.** Whether the test can replace the workspace query entirely
- **B.** Exporter configuration, destination, transport, sampling, and ingestion for the same operation
- **C.** Only the span test's assertion count
- **D.** Only whether the Git working tree is clean

## L25-Q029

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A request and dependency share OperationId. The engineer wants to know which request span directly initiated that dependency. What additional relationship is relevant?

```text
request: Id=request-span; OperationId=trace-a
dependency: Id=dep-span; OperationId=trace-a; ParentId=request-span
```

- **A.** The alphabetical order of their Name values
- **B.** The larger DurationMs value
- **C.** The later ingestion timestamp alone
- **D.** The dependency ParentId compared with the parent span's Id

## L25-Q030

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

CPU is reported for vm-a over 10:00–10:05, while a slow request ran on vm-b at 11:00. What is the main problem with claiming CPU caused this request's delay?

- **A.** CPU is never relevant to application latency
- **B.** A request must always execute on the VM with the highest CPU
- **C.** All infrastructure metrics need the same numeric unit as latency
- **D.** The resource and observation window do not match the affected request

## L25-Q031

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

After a leftouter join, durationMs is a real-valued dependency column. How can the query identify retained requests with no dependency value?

```kusto
requests
| join kind=leftouter dependencies on operation_Id
// durationMs is real in the right input
```

- **A.** isnull(operation_Id) on the preserved left key
- **B.** isnull(durationMs)
- **C.** durationMs == 0
- **D.** durationMs > 0

## L25-Q032

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A summarize groups by operation name, but the author then projects a raw request ID that was neither grouped nor aggregated. Why does the query fail?

```kusto
AppRequests
| summarize total=count() by Name
| project Name, Id, total
```

- **A.** Request IDs must always be numeric
- **B.** Summarize automatically encrypts request identifiers
- **C.** The aggregate result does not retain arbitrary ungrouped source columns
- **D.** Every project operator requires a join first

## L25-Q033

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

The same expensive filtered dataset is referenced several times in one query. An engineer proposes materialize without measurement. What is the right evaluation?

- **A.** Remove all early filters so the cached expression serves every possible question
- **B.** Treat successful parsing as proof of lower execution cost
- **C.** Benchmark the intended reuse and memory tradeoff on the filtered projected dataset
- **D.** Assume materialize always speeds up any query regardless of size

## L25-Q034

Applied · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

Memory available falls during the incident while disk queue and latency rise. Which next step best tests a contention hypothesis?

- **A.** Declare a network root cause solely because multiple metrics moved
- **B.** Increase every resource allocation and treat any later recovery as controlled proof
- **C.** Ignore memory because only CPU can affect request latency
- **D.** Inspect matching workload, paging or I/O evidence, and per-resource time series before choosing a mitigation

## L25-Q035

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

A query groups by every unique request ID to summarize average duration, producing almost as many rows as its input. The goal is one trend per operation type. What should change?

- **A.** Group by the bounded operation type and intended time bucket instead of the unique request ID
- **B.** Add more unique identifiers to the grouping keys
- **C.** Use take 1 before aggregation
- **D.** Rename the request ID column operation type without changing its values

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

- **A.** Assign the same fixed duration to all spans
- **B.** Start a second root Activity whenever the first Activity starts
- **C.** Observe the completed Activity at ActivityStopped for final duration and populated information
- **D.** Use the process startup timestamp as every span's end time

## L25-Q037

Applied · [CP2](README.md#task-2) · [D5.2.4](../../docs/objective-map.md)

The query selects slow requests, sorts them descending by DurationMs, and takes ten. What does the result describe?

```kusto
AppRequests
| where TimeGenerated > ago(30m) and DurationMs > 1000
| sort by DurationMs desc
| take 10
```

- **A.** All requests that failed during the day
- **B.** The ten slowest observed requests within the filtered population
- **C.** The ten most recent requests regardless of duration
- **D.** A statistically precise 99th-percentile value

## L25-Q038

Applied · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md)

A test changes a leftouter join to inner. Its positive assertion checks only that one matched dependency exists, so the test still passes. Which negative assertion detects the regression?

- **A.** Assert that the query string is nonempty
- **B.** Assert that the workspace ID has not changed
- **C.** Assert that the known unmatched request remains in the result
- **D.** Assert that at least one dependency has a target

## L25-Q039

Applied · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md)

A dashboard's raw request count falls after the sampling rate decreases, but incoming traffic is unchanged. Which analysis is appropriate?

- **A.** Conclude every dropped row was an error
- **B.** Disable all operation identifiers to reduce sampling
- **C.** Inspect sampling and representation weights before interpreting the stored row-count trend
- **D.** Report a demand decrease equal to the raw row decrease

## L25-Q040

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

A workspace executes all synthetic KQL exercises successfully while the application's exporter remains unconfigured. Which completion statement is accurate?

- **A.** Synthetic query behavior and local instrumentation can pass while live application ingestion remains unverified
- **B.** The real application tracing integration is complete because a workspace can execute queries
- **C.** The local instrumentation test is invalid because the exporter is absent
- **D.** Synthetic KQL results should be labeled as real user traffic to unify reporting

## L25-Q041

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

Two intervals contain 10 requests with two failures and 990 requests with 18 failures. A dashboard averages the two percentages. Which calculation represents overall failure rate?

```text
Window A: requests=10; failures=2
Window B: requests=990; failures=18
```

- **A.** The mean of 20 percent and about 1.82 percent, or about 10.91 percent
- **B.** The larger interval's rate alone, about 1.82 percent
- **C.** Two failures divided by 1000 requests, or 0.2 percent
- **D.** Total failures divided by total requests: 20 divided by 1000, or 2 percent

## L25-Q042

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

One request has five dependencies and another has none. A dashboard averages request duration after a leftouter dependency join. Why can the mean change even though no request duration changed?

```text
Requests: r1 duration=100 ms; r2 duration=10 ms
Dependencies: five rows matching r1; no row matching r2
Query: leftouter join, then avg(requestDurationMs)
```

- **A.** Every dependency automatically adds its duration to the request duration column
- **B.** Operation IDs become random after a join
- **C.** The first request is repeated five times, so join multiplicity reweights the request average
- **D.** A leftouter join always deletes requests that have no dependencies

## L25-Q043

Advanced · [CP3](README.md#task-3) · [D5.2.3](../../docs/objective-map.md)

The API request and downstream service span occur together but have different trace IDs after an HTTP boundary. CPU is normal. What investigation best targets the missing trace continuity?

- **A.** Join all spans in the same second and declare the trace repaired
- **B.** Increase the API CPU allocation to make trace IDs equal
- **C.** Replace every downstream trace ID with the most recent API trace ID
- **D.** Check W3C context propagation and the downstream instrumentation before correlating by identity

## L25-Q044

Advanced · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

The local ActivityListener test passes, but a production-like request has no remote span. The collector subscribes to the correct source; exporter retries show a destination error. What readiness decision follows?

```text
Local ActivityListener: TodoWrite observed
Collector source selection: Training.Todos
Exporter: retries exhausted; destination rejected
Azure query: no matching operation
```

- **A.** Local span emission is verified; resolve the exporter destination failure and verify the same operation's ingestion before claiming integration
- **B.** Mark integration complete because correct source subscription is the last required stage
- **C.** Rewrite the ActivitySource names because any missing remote span proves emission failed
- **D.** Delete the local test because it cannot diagnose every exporter failure

## L25-Q045

Advanced · [CP2](README.md#task-2) · [D5.2.2](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A sample contains successful rows representing 900 requests and failed rows representing 100. The raw row ratio is 50 percent because there is one row of each type. Which rate and interpretation fit?

```text
Stored rows:
Success=true,  ItemCount=900
Success=false, ItemCount=100
```

- **A.** A 50 percent rate because every stored row always represents one request
- **B.** A 100 percent rate because the failure row has a positive weight
- **C.** A zero percent rate because sampled failures should be ignored
- **D.** A represented failure rate of 10 percent using the corresponding ItemCount weights

## L25-Q046

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A correlation query joins 90 days of all services, then filters one operation in a ten-minute incident. It returns correct rows but is expensive. Which optimization preserves the intended result most directly?

- **A.** Change to a timestamp-only join because it has fewer key characters
- **B.** Keep all history and add more output columns for future reuse
- **C.** Replace the query with the first ten dependency rows from any service
- **D.** Apply equivalent time and scope filters to each input early, project required fields, and verify result equivalence before tuning join strategy

## L25-Q047

Advanced · [CP5](README.md#task-5) · [D5.2.1](../../docs/objective-map.md)

The fixture's slowest request overlaps CPU 75 percent and disk latency 14 ms on its host. Another host peaks at CPU 99 percent outside the window. What report best supports a bounded diagnosis?

- **A.** Declare CPU 99 percent the root cause because it is the largest number
- **B.** Compare 75 and 14 directly and choose CPU because its numeric value is higher
- **C.** Declare no issue because CPU is below 100 percent
- **D.** Investigate CPU and disk contention on the request's host and time window, without claiming causation or using the unrelated maximum

## L25-Q048

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A leftouter join must retain every request and attach only dependency matches with real durationMs greater than 50. Requests with no qualifying dependency must remain with empty right-side values. Which design fits?

```kusto
requests
| join kind=leftouter dependencies on operation_Id
| where durationMs > 50
```

- **A.** Filter slow dependencies in the right input before the leftouter join and retain the unmatched-request interpretation
- **B.** Keep the post-join duration filter unchanged
- **C.** Use an inner join and append a count of all original requests as a label
- **D.** Replace missing durations with 1000 ms before filtering

## L25-Q049

Advanced · [CP4](README.md#task-4) · [D5.2.3](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

A query copied from a legacy application context uses requests, operation_Id, and timespan duration. The workspace contains AppRequests and AppDependencies with DurationMs. What migration review is required?

```text
Legacy application context: requests.operation_Id, requests.duration (timespan)
Workspace schema: AppRequests.OperationId, AppRequests.DurationMs (real)
```

- **A.** Change the join key to Name because it exists in both contexts
- **B.** Translate table and column names using the actual schemas, preserve numeric milliseconds, and validate correlation on known operations
- **C.** Rename only requests to AppRequests and keep every legacy field and conversion unchanged
- **D.** Multiply DurationMs by 1000 because every Azure duration column is seconds

## L25-Q050

Advanced · [CP5](README.md#task-5) · [D5.1.2](../../docs/objective-map.md), [D5.2.1](../../docs/objective-map.md), [D5.2.4](../../docs/objective-map.md)

The lab's Python fixture returns expected aggregates, a local listener sees a span, and synthetic KQL passes in a workspace. Real production exporter behavior has never run. Which evidence-based handoff is accurate?

- **A.** Record each verified local or synthetic result separately and leave live export, production trace coverage, and causal diagnosis pending their own evidence
- **B.** Report complete production tracing because three independent checks passed
- **C.** Discard the Python reference because only a cloud query can establish any numeric correctness
- **D.** Mark the highest infrastructure metric as the confirmed incident cause to complete the report
