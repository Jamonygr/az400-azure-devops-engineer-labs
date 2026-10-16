# Lab 08 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L08-Q001

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A deterministic price-calculation function needs feedback before any cloud environment exists. Which test layer is the best first fit?

- **A.** A manual release approval with no executed assertion
- **B.** A database migration smoke test only
- **C.** Focused local unit tests with explicit expected results
- **D.** A full production load test as the only validation

## L08-Q002

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Unit tests use a database mock and pass, but the actual deployed schema lacks a required column. What missing test layer addresses the failure?

- **A.** An integration test against a representative database schema
- **B.** More repetitions of the same database mock
- **C.** A test that checks only repository branch naming
- **D.** A release-note spelling check

## L08-Q003

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

The API passes functional checks for one user but slows sharply with hundreds of concurrent requests. Which test addresses the unresolved risk?

- **A.** Only a database migration dry run
- **B.** A representative load test with response-time and error acceptance criteria
- **C.** Only a unit test of one controller's return type
- **D.** Only another static analysis pass of method names

## L08-Q004

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which unit-test dependency design makes an isolated calculation test deterministic?

- **A.** Depend on whichever records happen to exist in the shared production database
- **B.** Order all tests alphabetically so one test prepares another's hidden state
- **C.** Supply controlled inputs and replace unrelated external dependencies through suitable boundaries
- **D.** Use the current production exchange rate from the internet in every assertion

## L08-Q005

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

What must a representative integration database provide for a meaningful schema-compatibility test?

- **A.** The relevant schema and behavior needed by the application contract
- **B.** Exactly the same unrelated customer records as production
- **C.** The cheapest storage option regardless of unsupported behavior
- **D.** Only an open TCP port with no database operations

## L08-Q006

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which workload input matters when using a load test to support a capacity claim?

- **A.** Only the latest release tag's text
- **B.** Only the number of assertions in unit tests
- **C.** A request mix arrival pattern and concurrency representative of the intended users
- **D.** Only the number of source files in the repository

## L08-Q007

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A calculation test executes the code but never checks the returned total. What confidence is missing?

```csharp
[Fact]
public void Calculates_total()
{
    var actual = Price.Calculate(100m, 0.20m);
    // No assertion checks actual.
}
```

- **A.** Evidence that the calculation method can be invoked without throwing
- **B.** Evidence that the method returns a value of the expected type
- **C.** Evidence that the test is discovered and counted by the runner
- **D.** Evidence that an incorrect result would cause the test to fail

## L08-Q008

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which outcome demonstrates the new integration test covers the previously missed database contract?

- **A.** A deliberately incompatible schema causes an actionable test failure before promotion
- **B.** The test still passes when the required column is removed
- **C.** The database server's display name matches the application name
- **D.** The test runner reports more skipped tests

## L08-Q009

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A load test must satisfy P95 latency under 500 ms and error rate under 1 percent at the target demand. Which result meets both stated thresholds?

```text
Required demand: 200 concurrent users
Acceptance: P95<500ms and errors<1 percent
CandidateA: P95420ms,errors0.4 percent at 200 users
```

- **A.** P95 of 420 ms with 0.4 percent errors at the target demand
- **B.** Mean latency 200 ms with P95 of 900 ms and 0.2 percent errors
- **C.** P95 of 350 ms with 3 percent errors
- **D.** P95 of 400 ms with 0.3 percent errors at one tenth of target demand

## L08-Q010

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which controlled negative check best validates a unit test for a tax rule?

- **A.** Run the unchanged test repeatedly until its duration decreases
- **B.** Introduce a safe deliberate wrong result in the test exercise and confirm the assertion fails
- **C.** Add another passing assertion that true equals true
- **D.** Rename the test method to include the expected tax

## L08-Q011

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

How should integration-test data be handled in a shared training environment?

- **A.** Let every parallel test overwrite the same shared row without coordination
- **B.** Disable cleanup and reuse every previous run's unknown state
- **C.** Use isolated controlled fixtures and clean up only the test-owned data
- **D.** Use live customer records so no fixture preparation is needed

## L08-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which prerequisite should be established before running a substantial load test against an endpoint?

- **A.** Authorization scope resource limits and an agreed safe test window
- **B.** Only one successful functional probe against the endpoint
- **C.** Only source-repository read permission for the load-test author
- **D.** Only a production-like request mix with no agreed workload ceiling

## L08-Q013

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

The checkout code has pure pricing rules and a database boundary. The team needs fast local feedback plus protection against schema incompatibility. Which strategy fits?

- **A.** Mock every database call and declare integration compatibility proven
- **B.** Run only a slow full-system test for every arithmetic edit and omit local assertions
- **C.** Use code coverage as the only acceptance condition for both layers
- **D.** Use focused unit tests for isolated rules and representative integration tests for the database contract

## L08-Q014

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A realistic database test costs minutes while pricing unit tests cost milliseconds. Which pipeline allocation best balances feedback speed and boundary risk?

- **A.** Run all integration tests only after every production release has fully completed
- **B.** Replace all unit tests with integration tests even for pure calculation changes
- **C.** Run fast isolated checks early and gate relevant promotion with representative integration tests
- **D.** Remove integration tests because they are slower than unit tests

## L08-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A load test passes on a small synthetic dataset with warm caches, but the claimed deployment must handle larger cold-start traffic. What is the defensible next step?

- **A.** Multiply the observed throughput by the production server count without further checks
- **B.** Ignore latency tails because the overall request count was high
- **C.** State the tested conditions and extend representative scenarios before claiming the broader capacity
- **D.** Declare the same result valid for every dataset and startup condition

## L08-Q016

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

The test runner creates a TRX file, but Azure Pipelines shows no test cases. Which step connects that file to the run's test reporting?

- **A.** Upload the TRX file only as a generic pipeline artifact
- **B.** Publish code coverage while omitting the test-result task
- **C.** Set a pipeline variable to the number of passed tests
- **D.** Publish the supported test result file using the correct format and path

## L08-Q017

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A coverage report says 80 of 100 included lines executed. What does the 80 percent line coverage value establish?

```text
Included source lines: 100
Executed included lines: 80
Line coverage: 80 percent
Assertion strength: not measured by this counter
```

- **A.** Every possible branch condition was exercised
- **B.** Those included lines were exercised during the measured tests
- **C.** Every included line has an assertion proving its business behavior
- **D.** The application has only a 20 percentchance of a production defect

## L08-Q018

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Security and test reports are generated, but deployment proceeds after a required validation fails. What condition is missing?

- **A.** A more detailed deployment-step display name
- **B.** An enforced release dependency on the required successful validation
- **C.** A longer retention window for successful reports
- **D.** A second dashboard displaying the same optional failure

## L08-Q019

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Tests pass locally but fail on the hosted runner because their expected date format depends on the current locale. What should be fixed?

- **A.** Copy the local test output into the hosted result directory
- **B.** Make the intended formatting contract explicit and control the test environment inputs
- **C.** Run retries until the hosted locale happens to match
- **D.** Remove all assertions involving dates

## L08-Q020

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

An integration test fails intermittently and passes on retry without a source change. What evidence should remain visible?

- **A.** Only the final passing result
- **B.** Only the fastest successful execution time
- **C.** Only the total test count regardless of attempts
- **D.** Initial failures retries and the identified flake classification

## L08-Q021

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which task input must match a runner producing VSTest TRX results?

- **A.** Only the target branch's name
- **B.** Only the number of CPUs on the build agent
- **C.** Only the release environment's approver list
- **D.** The result format and file selection identifying the TRX output

## L08-Q022

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A suite reports 95 percent line coverage yet accepts a deliberately wrong business result. What weakness does this expose?

- **A.** The application cannot have reached the incorrect method
- **B.** High execution coverage can coexist with inadequate assertions
- **C.** The coverage tool must be unable to count any executed lines
- **D.** Every high-coverage test is necessarily a load test

## L08-Q023

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

A deployment job uses a custom condition that ignores failed prerequisite jobs. What must the author review?

- **A.** Whether the custom expression preserves the required success dependency
- **B.** Only whether the YAML file has an application version comment
- **C.** Only the order jobs appear in the text
- **D.** Only how long the agent takes to download the source

## L08-Q024

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

A workflow relies on whichever .NET SDK is preinstalled on its hosted image. What improves toolchain repeatability?

```json
{"sdk":{"version":"10.0.100","rollForward":"latestPatch"}}
```

- **A.** Rename the solution without changing its runtime requirements
- **B.** Increase the timeout while leaving the toolchain implicit
- **C.** Always use the latest preview SDK without validating compatibility
- **D.** Select and install the supported SDK explicitly using the repository's version policy

## L08-Q025

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

What is the first useful question when investigating an intermittently failing test?

- **A.** How to increase retries without recording which attempts failed
- **B.** Which uncontrolled timing shared state infrastructure or input differs between attempts
- **C.** How to raise every timeout before inspecting the failing step
- **D.** How to classify every transient failure as a product defect immediately

## L08-Q026

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Tests fail and a success-only reporting step is skipped. How should failure diagnostics be retained without turning the build green?

```yaml
- script: dotnet test --logger trx --results-directory TestResults
- task: PublishTestResults@2
  #Default success-only condition; no explicit failure-aware condition.
  inputs:
    testResultsFormat: VSTest
    testResultsFiles: TestResults/*.trx
```

- **A.** Set the entire test job to continue successfully on every error
- **B.** Skip result publication whenever any assertion fails
- **C.** Replace the failed result with an empty successful report
- **D.** Use an appropriate failure-aware publishing condition while preserving the failed test outcome

## L08-Q027

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

What should be inspected when a coverage percentage jumps after exclusions are expanded?

- **A.** Which code left the denominator and whether important risk paths were hidden
- **B.** Only whether the coverage report filename changed
- **C.** Only whether the exclusion rules use valid syntax
- **D.** Only whether the resulting number exceeds the old threshold

## L08-Q028

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

What negative probe demonstrates that a quality gate actually protects release promotion?

- **A.** Count all jobs with test in their names
- **B.** Introduce a controlled disallowed validation outcome and verify deployment does not start
- **C.** Run the healthy path twice and compare green badges
- **D.** Inspect a statement in the README saying tests are required

## L08-Q029

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which test most directly reveals a hidden dependency on one developer's machine?

- **A.** Execute the documented build and tests in a clean representative environment
- **B.** Run the tests repeatedly in the same unchanged local workspace
- **C.** Ask the developer whether the dependency exists
- **D.** Copy the previous build outputs into the test folder before running

## L08-Q030

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A test is temporarily quarantined while its timing defect is repaired. What makes this accountable?

- **A.** A documented owner reason scope and deadline to restore reliable coverage
- **B.** No record because quarantine means the test is irrelevant
- **C.** Automatically quarantine every future failure of any test
- **D.** Keep reporting the skipped test as an executed pass

## L08-Q031

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which verification distinguishes a published test report from a merely existing file on the agent?

- **A.** The run's test view contains the expected cases and recorded failures
- **B.** The temporary directory contains a file with a test-like name
- **C.** The build log prints the intended report path
- **D.** The pipeline artifact list contains an unrelated ZIP file

## L08-Q032

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A pipeline publishes coverage but has no numeric quality policy. What is needed to enforce a required minimum?

- **A.** Only a larger coverage chart on the dashboard
- **B.** A comment in YAML saying coverage should be high
- **C.** A package version label containing the target percentage
- **D.** A deliberate threshold check whose failure affects the acceptance path

## L08-Q033

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

The test service is unavailable during an emergency release. What makes an exception process accountable?

- **A.** Automatically mark every unavailable check successful
- **B.** Remove the gate permanently whenever an outage occurs
- **C.** Let the requesting author approve their own exception without recording it
- **D.** A restricted authorized decision with recorded reason scope and follow-up validation

## L08-Q034

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

What must be recorded when pinning a test toolchain to make reproducibility sustainable?

- **A.** A commitment never to update any component again
- **B.** Only the successful test count from the latest run
- **C.** Only a download link that always resolves to the latest SDK
- **D.** An owner and reviewed update process for supported versions

## L08-Q035

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Why can bounded retries be useful yet insufficient as the complete flakiness strategy?

- **A.** Retries never consume extra execution capacity
- **B.** Every flaky test should be retried forever until it eventually passes
- **C.** They may recover transient execution but can hide failures and add time unless classified and investigated
- **D.** A retry guarantees the original failure was not a product defect

## L08-Q036

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A required test fails. The team needs the gate to stay red, the TRX report available, and diagnostic files free of credentials. Which design fits?

- **A.** Ignore the test exit code and rely on reviewers to find a failure in the uploaded logs
- **B.** Publish results only after every test succeeds and omit all failed-run artifacts
- **C.** Upload the entire runner environment and workspace whenever tests fail
- **D.** Propagate the test failure, publish supported results under a failure-aware condition, and upload only sanitized diagnostics

## L08-Q037

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Two measured modules contain 100 and 900 included lines. They cover 100 and 450 lines respectively. Which combined line-coverage figure correctly weights the included source population?

```text
Module A: included=100; covered=100
Module B: included=900; covered=450
```

- **A.** 55 percent
- **B.** 75 percent
- **C.** 50 percent
- **D.** 100 percent

## L08-Q038

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

A pipeline needs strict rejection for failed tests but diagnostic publication after failures and an approved emergency exception path. Which design meets those distinct purposes?

- **A.** Use continue-on-error for every task so diagnostic steps always run
- **B.** Block diagnostic publication whenever a gate rejects the candidate
- **C.** Treat the existence of any approval as proof that the tests passed
- **D.** Keep failure propagation and required dependencies, use failure-aware diagnostic steps, and govern exceptions separately

## L08-Q039

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A locale-dependent test and an implicit SDK both fail after moving to hosted CI. The team also needs supported upgrades over time. Which repair plan is strongest?

- **A.** Force every hosted job to reuse an old local output directory
- **B.** Retry failures indefinitely while keeping runtime and locale implicit
- **C.** Remove the failing cases and label the hosted environment unsupported
- **D.** Specify the behavior and environment inputs, run clean representative tests, and maintain the pinned toolchain through reviewed upgrades

## L08-Q040

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

The integration test starts an asynchronous write, then reads immediately; timing varies across runs. Which repair best removes the race while preserving the intended write/read contract?

```csharp
var pending = repository.WriteAsync(item);
var actual = await repository.ReadAsync(item.Id);
Assert.Equal(item, actual);
```

- **A.** Await the write completion, isolate the test data, and use a bounded observable readiness condition if the boundary is eventually consistent
- **B.** Add the same 30-second sleep before every assertion and keep shared data
- **C.** Retry the whole suite until every test eventually passes without recording the first failure
- **D.** Replace the read assertion with a check that the write task was allocated

## L08-Q041

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Overall line coverage is 92 percent, but a new payment branch executes only during startup and accepts a deliberately wrong total. The CI time budget is fixed. Which acceptance change is strongest?

- **A.** Raise the overall threshold to 93 percent using more startup tests
- **B.** Exclude the payment module so its new branches do not affect the denominator
- **C.** Accept the module because 92 percent exceeds the repository target
- **D.** Add focused assertions for the payment behavior and inspect changed-risk coverage against the correct baseline

## L08-Q042

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

The Bash step in the exhibit runs failed tests, then prints a message; deployment proceeds. Diagnostics must remain available after failure. Which repair satisfies both requirements?

```bash
dotnet test --logger trx
printf "test step complete\n"
```

- **A.** Keep the wrapper and make the message say tests failed
- **B.** Remove report publication so the last command becomes the failed test
- **C.** Allow deployment and open an issue whenever the report contains failures
- **D.** Propagate the test failure and publish results in a separate failure-aware step, with deployment requiring the validation outcome

## L08-Q043

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A pull request changes ten risky lines, but changed-code coverage is computed against last month's release and includes 500 unrelated lines. The threshold passes. What correction makes the gate meaningful?

- **A.** Exclude all preexisting files regardless of which lines the request changes
- **B.** Use the intended comparison revision and verify relevant scenarios and exclusions for the actual change
- **C.** Keep the broad base because more measured lines always means stronger protection
- **D.** Replace the threshold with the number of test files changed

## L08-Q044

Advanced · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Tests return a failure status, but the PublishTestResults task has its default success-only condition. No cases appear for failing runs. What should change without making failed tests pass?

```yaml
- script: dotnet test --logger "trx;LogFileName=tests.trx"
- task: PublishTestResults@2
  inputs:
    testResultsFormat: VSTest
    testResultsFiles: "**/tests.trx"
```

- **A.** Run only the passing tests before publication
- **B.** Use a failure-aware publication condition, correct TRX format/path, and retain the original failed job outcome
- **C.** Set the entire test job to continueOnError and use its resulting success as deployment approval
- **D.** Publish the source directory as test results without parsing the runner format

## L08-Q045

Advanced · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Database mocks pass, but the real schema rejects a required column write. Full end-to-end tests take an hour. Which test allocation offers useful early protection under a short CI budget?

- **A.** Keep focused unit checks and add a representative targeted integration test for the schema contract before promotion
- **B.** Replace all unit tests with the entire hour-long suite for every local edit
- **C.** Make the mock accept every write so it matches the successful unit outcome
- **D.** Treat a clean application build as equivalent to a database integration test

## L08-Q046

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A critical integration test fails on five percent of unchanged runs and passes on retry. Release needs its coverage; hiding retries makes the dashboard look green. Which strategy is strongest?

- **A.** Retry until success and publish only the last attempt
- **B.** Delete the test permanently because a flaky test cannot provide any useful signal
- **C.** Treat every intermittent failure as a product regression without investigating cause
- **D.** Expose initial failures and retries, investigate shared state or timing, and govern any quarantine with owner, deadline, and replacement protection

## L08-Q047

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Coverage rose after generated and legacy paths were excluded. A critical hand-written error path was included in the new exclusions. What should the reviewer do?

- **A.** Compare only the new percentage with the old target and ignore scope changes
- **B.** Review the excluded paths and restore risk-relevant measurement and assertions before interpreting the percentage
- **C.** Approve because any exclusion of legacy code is automatically harmless
- **D.** Require zero exclusions even for generated code without considering policy purpose

## L08-Q048

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

A deployment job uses the shown custom Azure Pipelines condition. The unit-test job failed, but a branch check is true. Which correction preserves the required dependency?

```yaml
- job: Deploy
  dependsOn: UnitTests
  condition: eq(variables['Build.SourceBranch'], 'refs/heads/main')
  steps:
    - script: ./deploy.sh
```

- **A.** Remove dependsOn and rely only on the branch name
- **B.** Run deployment first and inspect the test job result afterward
- **C.** Combine the branch condition with the required success condition and verify a controlled failed prerequisite blocks deployment
- **D.** Keep the condition because dependsOn alone always prevents execution after failures

## L08-Q049

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

A team must preserve its overall coverage policy, verify a new validation branch, and avoid extending CI beyond ten minutes. Which plan best balances these constraints?

- **A.** Raise coverage by repeatedly running the same startup test
- **B.** Disable the coverage gate and rely only on the historical defect count
- **C.** Keep the policy, add targeted positive and rejection assertions, and review redundant test cost and coverage scope
- **D.** Remove the rejection test because successful-path execution counts as line coverage

## L08-Q050

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A release pipeline masks dotnet test failure, skips reports on failed jobs, and has a deployment condition that checks only main. Which end-to-end acceptance test best verifies the repair?

- **A.** Run the healthy test suite once and confirm deployment succeeds
- **B.** Inspect only the YAML for the word succeeded
- **C.** Confirm a TRX file exists locally and approve the release
- **D.** Inject a controlled failing assertion, confirm the validation stays failed, inspect the published cases, and prove deployment never starts; then verify the repaired healthy path
