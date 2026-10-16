# Lab 08 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L08-Q001

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A deterministic price-calculation function needs feedback before any cloud environment exists. Which test layer is the best first fit?

- **A. A manual release approval with no executed assertion** Approval does not evaluate whether the calculation returns the required result.
- **B. A database migration smoke test only** Schema behavior does not directly test the price-calculation contract.
- **C. Focused local unit tests with explicit expected results** **Correct.** The isolated calculation can be checked quickly without deploying external dependencies.
- **D. A full production load test as the only validation** That is expensive indirect feedback for an isolated pure function.

**Explanation:** Approval does not evaluate whether the calculation returns the required result. Schema behavior does not directly test the price-calculation contract. The isolated calculation can be checked quickly without deploying external dependencies. That is expensive indirect feedback for an isolated pure function.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q002

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Unit tests use a database mock and pass, but the actual deployed schema lacks a required column. What missing test layer addresses the failure?

- **A. An integration test against a representative database schema** **Correct.** The failure occurs at a real dependency contract omitted by the mock.
- **B. More repetitions of the same database mock** Repeated isolated behavior does not create real schema interaction.
- **C. A test that checks only repository branch naming** A source workflow property does not exercise the database boundary.
- **D. A release-note spelling check** Documentation correctness does not validate the runtime schema.

**Explanation:** The failure occurs at a real dependency contract omitted by the mock. Repeated isolated behavior does not create real schema interaction. A source workflow property does not exercise the database boundary. Documentation correctness does not validate the runtime schema.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q003

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

The API passes functional checks for one user but slows sharply with hundreds of concurrent requests. Which test addresses the unresolved risk?

- **A. Only a database migration dry run** Schema planning does not establish end-to-end service capacity.
- **B. A representative load test with response-time and error acceptance criteria** **Correct.** The question concerns behavior under concurrent demand rather than single-request correctness.
- **C. Only a unit test of one controller's return type** That does not exercise contention and capacity at the required workload.
- **D. Only another static analysis pass of method names** Naming analysis does not measure runtime concurrency behavior.

**Explanation:** Schema planning does not establish end-to-end service capacity. The question concerns behavior under concurrent demand rather than single-request correctness. That does not exercise contention and capacity at the required workload. Naming analysis does not measure runtime concurrency behavior.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q004

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which unit-test dependency design makes an isolated calculation test deterministic?

- **A. Depend on whichever records happen to exist in the shared production database** Uncontrolled data couples the result to unrelated activity.
- **B. Order all tests alphabetically so one test prepares another's hidden state** A deterministic suite should not rely on accidental test ordering.
- **C. Supply controlled inputs and replace unrelated external dependencies through suitable boundaries** **Correct.** The test should exercise the intended behavior without uncontrolled network or clock effects.
- **D. Use the current production exchange rate from the internet in every assertion** A changing external input can alter results independently of the code under test.

**Explanation:** Uncontrolled data couples the result to unrelated activity. A deterministic suite should not rely on accidental test ordering. The test should exercise the intended behavior without uncontrolled network or clock effects. A changing external input can alter results independently of the code under test.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q005

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

What must a representative integration database provide for a meaningful schema-compatibility test?

- **A. The relevant schema and behavior needed by the application contract** **Correct.** The test environment must exercise the boundary at risk, not merely any database connection.
- **B. Exactly the same unrelated customer records as production** Sensitive production data is not inherently required to validate this schema relationship.
- **C. The cheapest storage option regardless of unsupported behavior** A nonrepresentative dependency can hide the very contract failure being tested.
- **D. Only an open TCP port with no database operations** Connectivity alone does not establish the application's schema behavior.

**Explanation:** The test environment must exercise the boundary at risk, not merely any database connection. Sensitive production data is not inherently required to validate this schema relationship. A nonrepresentative dependency can hide the very contract failure being tested. Connectivity alone does not establish the application's schema behavior.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q006

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which workload input matters when using a load test to support a capacity claim?

- **A. Only the latest release tag's text** A label does not describe traffic mix or demand timing.
- **B. Only the number of assertions in unit tests** Unit-suite size does not define production concurrency.
- **C. A request mix arrival pattern and concurrency representative of the intended users** **Correct.** Capacity evidence depends on the actual shape of demand being simulated.
- **D. Only the number of source files in the repository** Repository size is not a request workload model.

**Explanation:** A label does not describe traffic mix or demand timing. Unit-suite size does not define production concurrency. Capacity evidence depends on the actual shape of demand being simulated. Repository size is not a request workload model.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

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

- **A. Evidence that the calculation method can be invoked without throwing** Successful invocation does not establish that a wrong returned value would fail this test.
- **B. Evidence that the method returns a value of the expected type** Type correctness alone does not verify the required numeric total.
- **C. Evidence that the test is discovered and counted by the runner** Discovery and execution count do not establish a meaningful correctness assertion.
- **D. Evidence that an incorrect result would cause the test to fail** **Correct.** Execution alone does not establish a meaningful behavioral assertion.

**Explanation:** Successful invocation does not establish that a wrong returned value would fail this test. Type correctness alone does not verify the required numeric total. Discovery and execution count do not establish a meaningful correctness assertion. Execution alone does not establish a meaningful behavioral assertion.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q008

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which outcome demonstrates the new integration test covers the previously missed database contract?

- **A. A deliberately incompatible schema causes an actionable test failure before promotion** **Correct.** The negative case exercises the exact boundary whose absence caused the escape.
- **B. The test still passes when the required column is removed** That suggests it is not checking the intended compatibility risk.
- **C. The database server's display name matches the application name** Naming does not prove operational schema compatibility.
- **D. The test runner reports more skipped tests** Skipped cases do not demonstrate the required defect was detected.

**Explanation:** The negative case exercises the exact boundary whose absence caused the escape. That suggests it is not checking the intended compatibility risk. Naming does not prove operational schema compatibility. Skipped cases do not demonstrate the required defect was detected.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q009

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A load test must satisfy P95 latency under 500 ms and error rate under 1 percent at the target demand. Which result meets both stated thresholds?

```text
Required demand: 200 concurrent users
Acceptance: P95<500ms and errors<1 percent
CandidateA: P95420ms,errors0.4 percent at 200 users
```

- **A. P95 of 420 ms with 0.4 percent errors at the target demand** **Correct.** Both the tail latency and error proportion satisfy the declared workload-specific limits.
- **B. Mean latency 200 ms with P95 of 900 ms and 0.2 percent errors** A fast mean does not satisfy the stated P95 limit.
- **C. P95 of 350 ms with 3 percent errors** The latency passes while the error-rate requirement fails.
- **D. P95 of 400 ms with 0.3 percent errors at one tenth of target demand** Passing under a different much lighter workload does not establish the requested capacity.

**Explanation:** Both the tail latency and error proportion satisfy the declared workload-specific limits. A fast mean does not satisfy the stated P95 limit. The latency passes while the error-rate requirement fails. Passing under a different much lighter workload does not establish the requested capacity.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q010

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which controlled negative check best validates a unit test for a tax rule?

- **A. Run the unchanged test repeatedly until its duration decreases** Timing does not demonstrate defect-detection strength.
- **B. Introduce a safe deliberate wrong result in the test exercise and confirm the assertion fails** **Correct.** A targeted defect demonstrates that the assertion detects the behavior it claims to protect.
- **C. Add another passing assertion that true equals true** That increases test count without testing the tax result.
- **D. Rename the test method to include the expected tax** A name alone does not make a false result fail.

**Explanation:** Timing does not demonstrate defect-detection strength. A targeted defect demonstrates that the assertion detects the behavior it claims to protect. That increases test count without testing the tax result. A name alone does not make a false result fail.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q011

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

How should integration-test data be handled in a shared training environment?

- **A. Let every parallel test overwrite the same shared row without coordination** Uncontrolled shared mutation can create flakes and corrupt test assumptions.
- **B. Disable cleanup and reuse every previous run's unknown state** Accumulated state makes later results harder to reproduce and attribute.
- **C. Use isolated controlled fixtures and clean up only the test-owned data** **Correct.** The test should avoid modifying unrelated or sensitive production records.
- **D. Use live customer records so no fixture preparation is needed** That creates avoidable privacy and modification risks.

**Explanation:** Uncontrolled shared mutation can create flakes and corrupt test assumptions. Accumulated state makes later results harder to reproduce and attribute. The test should avoid modifying unrelated or sensitive production records. That creates avoidable privacy and modification risks.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Which prerequisite should be established before running a substantial load test against an endpoint?

- **A. Authorization scope resource limits and an agreed safe test window** **Correct.** Synthetic demand can affect availability and incur costs beyond a local test process.
- **B. Only one successful functional probe against the endpoint** Reachability does not authorize significant artificial demand or establish safe resource limits.
- **C. Only source-repository read permission for the load-test author** Source access does not authorize stressing a deployed service.
- **D. Only a production-like request mix with no agreed workload ceiling** A realistic workload still needs authorized scope and operational bounds before execution.

**Explanation:** Synthetic demand can affect availability and incur costs beyond a local test process. Reachability does not authorize significant artificial demand or establish safe resource limits. Source access does not authorize stressing a deployed service. A realistic workload still needs authorized scope and operational bounds before execution.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q013

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

The checkout code has pure pricing rules and a database boundary. The team needs fast local feedback plus protection against schema incompatibility. Which strategy fits?

- **A. Mock every database call and declare integration compatibility proven** A mock does not exercise the actual external schema contract.
- **B. Run only a slow full-system test for every arithmetic edit and omit local assertions** That loses useful fast feedback and makes diagnosis less focused.
- **C. Use code coverage as the only acceptance condition for both layers** Execution percentage does not prove either the asserted rule or real boundary compatibility.
- **D. Use focused unit tests for isolated rules and representative integration tests for the database contract** **Correct.** Different layers address different risks without making every check depend on full deployment.

**Explanation:** A mock does not exercise the actual external schema contract. That loses useful fast feedback and makes diagnosis less focused. Execution percentage does not prove either the asserted rule or real boundary compatibility. Different layers address different risks without making every check depend on full deployment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q014

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A realistic database test costs minutes while pricing unit tests cost milliseconds. Which pipeline allocation best balances feedback speed and boundary risk?

- **A. Run all integration tests only after every production release has fully completed** That detects compatibility problems too late to serve the intended prepromotion gate.
- **B. Replace all unit tests with integration tests even for pure calculation changes** The additional dependency cost is unnecessary for every isolated behavior check.
- **C. Run fast isolated checks early and gate relevant promotion with representative integration tests** **Correct.** The strategy preserves quick feedback while retaining the important external-contract evidence.
- **D. Remove integration tests because they are slower than unit tests** That discards the missing boundary assurance rather than optimizing its placement.

**Explanation:** That detects compatibility problems too late to serve the intended prepromotion gate. The additional dependency cost is unnecessary for every isolated behavior check. The strategy preserves quick feedback while retaining the important external-contract evidence. That discards the missing boundary assurance rather than optimizing its placement.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q015

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

A load test passes on a small synthetic dataset with warm caches, but the claimed deployment must handle larger cold-start traffic. What is the defensible next step?

- **A. Multiply the observed throughput by the production server count without further checks** Scaling can be limited by shared bottlenecks and workload differences.
- **B. Ignore latency tails because the overall request count was high** Volume alone does not satisfy a user-facing response-time requirement.
- **C. State the tested conditions and extend representative scenarios before claiming the broader capacity** **Correct.** The current evidence does not cover important demand and data conditions in the proposed claim.
- **D. Declare the same result valid for every dataset and startup condition** Capacity depends on the workload and environment actually exercised.

**Explanation:** Scaling can be limited by shared bottlenecks and workload differences. Volume alone does not satisfy a user-facing response-time requirement. The current evidence does not cover important demand and data conditions in the proposed claim. Capacity depends on the workload and environment actually exercised.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q016

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

The test runner creates a TRX file, but Azure Pipelines shows no test cases. Which step connects that file to the run's test reporting?

- **A. Upload the TRX file only as a generic pipeline artifact** File retention helps diagnostics but does not itself ingest structured test cases into the test view.
- **B. Publish code coverage while omitting the test-result task** Coverage and test-case outcome publication are distinct reporting operations.
- **C. Set a pipeline variable to the number of passed tests** An aggregate variable does not provide the structured result file and format needed for case ingestion.
- **D. Publish the supported test result file using the correct format and path** **Correct.** Execution and structured result ingestion are separate pipeline operations.

**Explanation:** File retention helps diagnostics but does not itself ingest structured test cases into the test view. Coverage and test-case outcome publication are distinct reporting operations. An aggregate variable does not provide the structured result file and format needed for case ingestion. Execution and structured result ingestion are separate pipeline operations.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines)

## L08-Q017

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A coverage report says 80 of 100 included lines executed. What does the 80 percent line coverage value establish?

```text
Included source lines: 100
Executed included lines: 80
Line coverage: 80 percent
Assertion strength: not measured by this counter
```

- **A. Every possible branch condition was exercised** Line coverage does not necessarily establish branch coverage.
- **B. Those included lines were exercised during the measured tests** **Correct.** Execution coverage does not by itself establish strong assertions or complete correctness.
- **C. Every included line has an assertion proving its business behavior** Executed lines need not have meaningful assertions about every outcome.
- **D. The application has only a 20 percentchance of a production defect** Coverage is not a calibrated probability of failure.

**Explanation:** Line coverage does not necessarily establish branch coverage. Execution coverage does not by itself establish strong assertions or complete correctness. Executed lines need not have meaningful assertions about every outcome. Coverage is not a calibrated probability of failure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

## L08-Q018

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Security and test reports are generated, but deployment proceeds after a required validation fails. What condition is missing?

- **A. A more detailed deployment-step display name** Naming does not change the stage's execution condition.
- **B. An enforced release dependency on the required successful validation** **Correct.** Reporting a result does not automatically make promotion conditional on it.
- **C. A longer retention window for successful reports** Storage duration does not control whether the candidate can deploy.
- **D. A second dashboard displaying the same optional failure** Duplicating visibility does not enforce an acceptance rule.

**Explanation:** Naming does not change the stage's execution condition. Reporting a result does not automatically make promotion conditional on it. Storage duration does not control whether the candidate can deploy. Duplicating visibility does not enforce an acceptance rule.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q019

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Tests pass locally but fail on the hosted runner because their expected date format depends on the current locale. What should be fixed?

- **A. Copy the local test output into the hosted result directory** That would misrepresent what the hosted execution actually observed.
- **B. Make the intended formatting contract explicit and control the test environment inputs** **Correct.** An unrecorded locale assumption can create environment-dependent results.
- **C. Run retries until the hosted locale happens to match** Retries do not deliberately establish the required formatting behavior.
- **D. Remove all assertions involving dates** That discards behavior coverage rather than clarifying the contract.

**Explanation:** That would misrepresent what the hosted execution actually observed. An unrecorded locale assumption can create environment-dependent results. Retries do not deliberately establish the required formatting behavior. That discards behavior coverage rather than clarifying the contract.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)

## L08-Q020

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

An integration test fails intermittently and passes on retry without a source change. What evidence should remain visible?

- **A. Only the final passing result** That hides the first failure and the repeated work.
- **B. Only the fastest successful execution time** A best-case duration conceals the unstable behavior.
- **C. Only the total test count regardless of attempts** The count does not explain why the result changes.
- **D. Initial failures retries and the identified flake classification** **Correct.** The final green attempt does not erase the delivery cost or underlying instability.

**Explanation:** That hides the first failure and the repeated work. A best-case duration conceals the unstable behavior. The count does not explain why the result changes. The final green attempt does not erase the delivery cost or underlying instability.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops)

## L08-Q021

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which task input must match a runner producing VSTest TRX results?

- **A. Only the target branch's name** Branch naming does not define the report parser or file location.
- **B. Only the number of CPUs on the build agent** Capacity does not tell the publisher which structured files to read.
- **C. Only the release environment's approver list** Deployment approval does not configure test-report ingestion.
- **D. The result format and file selection identifying the TRX output** **Correct.** The publisher needs to interpret and locate the actual emitted report.

**Explanation:** Branch naming does not define the report parser or file location. Capacity does not tell the publisher which structured files to read. Deployment approval does not configure test-report ingestion. The publisher needs to interpret and locate the actual emitted report.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines)

## L08-Q022

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A suite reports 95 percent line coverage yet accepts a deliberately wrong business result. What weakness does this expose?

- **A. The application cannot have reached the incorrect method** Execution and acceptance of a wrong value can occur together.
- **B. High execution coverage can coexist with inadequate assertions** **Correct.** Coverage and behavioral defect detection are different signals.
- **C. The coverage tool must be unable to count any executed lines** The reported execution can be real even if its assertions are weak.
- **D. Every high-coverage test is necessarily a load test** Coverage does not determine the test layer.

**Explanation:** Execution and acceptance of a wrong value can occur together. Coverage and behavioral defect detection are different signals. The reported execution can be real even if its assertions are weak. Coverage does not determine the test layer.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q023

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

A deployment job uses a custom condition that ignores failed prerequisite jobs. What must the author review?

- **A. Whether the custom expression preserves the required success dependency** **Correct.** Custom conditions can alter the default acceptance behavior.
- **B. Only whether the YAML file has an application version comment** Comments do not establish execution semantics.
- **C. Only the order jobs appear in the text** A graph and its conditions, not visual text order alone, control scheduling.
- **D. Only how long the agent takes to download the source** Checkout duration does not determine whether failed validation gates deployment.

**Explanation:** Custom conditions can alter the default acceptance behavior. Comments do not establish execution semantics. A graph and its conditions, not visual text order alone, control scheduling. Checkout duration does not determine whether failed validation gates deployment.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q024

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

A workflow relies on whichever .NET SDK is preinstalled on its hosted image. What improves toolchain repeatability?

```json
{"sdk":{"version":"10.0.100","rollForward":"latestPatch"}}
```

- **A. Rename the solution without changing its runtime requirements** File naming does not select a deterministic SDK.
- **B. Increase the timeout while leaving the toolchain implicit** More time does not resolve an incompatible default runtime.
- **C. Always use the latest preview SDK without validating compatibility** A moving preview is not the intended stable supported toolchain.
- **D. Select and install the supported SDK explicitly using the repository's version policy** **Correct.** The build environment should not depend on an uncontrolled image default.

**Explanation:** File naming does not select a deterministic SDK. More time does not resolve an incompatible default runtime. A moving preview is not the intended stable supported toolchain. The build environment should not depend on an uncontrolled image default.

**Sources:** [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)

## L08-Q025

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

What is the first useful question when investigating an intermittently failing test?

- **A. How to increase retries without recording which attempts failed** Retries can hide changing conditions rather than identify the cause of instability.
- **B. Which uncontrolled timing shared state infrastructure or input differs between attempts** **Correct.** A causal investigation needs the changing condition behind the outcome.
- **C. How to raise every timeout before inspecting the failing step** Broad timeout changes can mask a race or shared-state problem without locating it.
- **D. How to classify every transient failure as a product defect immediately** Classification should follow evidence about the changing test, environment, or product condition.

**Explanation:** Retries can hide changing conditions rather than identify the cause of instability. A causal investigation needs the changing condition behind the outcome. Broad timeout changes can mask a race or shared-state problem without locating it. Classification should follow evidence about the changing test, environment, or product condition.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

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

- **A. Set the entire test job to continue successfully on every error** That can conceal the gate failure while publishing the report.
- **B. Skip result publication whenever any assertion fails** That removes the evidence most needed to diagnose a failing run.
- **C. Replace the failed result with an empty successful report** That misstates the actual execution rather than preserving it.
- **D. Use an appropriate failure-aware publishing condition while preserving the failed test outcome** **Correct.** Diagnostics should remain available even when the required execution correctly rejects the candidate.

**Explanation:** That can conceal the gate failure while publishing the report. That removes the evidence most needed to diagnose a failing run. That misstates the actual execution rather than preserving it. Diagnostics should remain available even when the required execution correctly rejects the candidate.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines); [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q027

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

What should be inspected when a coverage percentage jumps after exclusions are expanded?

- **A. Which code left the denominator and whether important risk paths were hidden** **Correct.** A smaller included population can improve the percentage without adding protective tests.
- **B. Only whether the coverage report filename changed** Report naming does not establish which source code left the measured population.
- **C. Only whether the exclusion rules use valid syntax** Valid rules can still exclude important behavior and distort the policy evidence.
- **D. Only whether the resulting number exceeds the old threshold** The same threshold can represent weaker protection after the denominator changes.

**Explanation:** A smaller included population can improve the percentage without adding protective tests. Report naming does not establish which source code left the measured population. Valid rules can still exclude important behavior and distort the policy evidence. The same threshold can represent weaker protection after the denominator changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q028

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

What negative probe demonstrates that a quality gate actually protects release promotion?

- **A. Count all jobs with test in their names** A naming count cannot prove their outcomes constrain promotion.
- **B. Introduce a controlled disallowed validation outcome and verify deployment does not start** **Correct.** The test exercises the denied path rather than only a successful run.
- **C. Run the healthy path twice and compare green badges** Repeated success does not show how the gate handles failure.
- **D. Inspect a statement in the README saying tests are required** Documentation intent is weaker than actual execution enforcement.

**Explanation:** A naming count cannot prove their outcomes constrain promotion. The test exercises the denied path rather than only a successful run. Repeated success does not show how the gate handles failure. Documentation intent is weaker than actual execution enforcement.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q029

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which test most directly reveals a hidden dependency on one developer's machine?

- **A. Execute the documented build and tests in a clean representative environment** **Correct.** A clean run exposes missing inputs or settings masked by local state.
- **B. Run the tests repeatedly in the same unchanged local workspace** That can preserve the hidden state that makes them pass.
- **C. Ask the developer whether the dependency exists** Self-report is less direct than exercising the clean environment.
- **D. Copy the previous build outputs into the test folder before running** That can conceal missing or stale build inputs.

**Explanation:** A clean run exposes missing inputs or settings masked by local state. That can preserve the hidden state that makes them pass. Self-report is less direct than exercising the clean environment. That can conceal missing or stale build inputs.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q030

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A test is temporarily quarantined while its timing defect is repaired. What makes this accountable?

- **A. A documented owner reason scope and deadline to restore reliable coverage** **Correct.** Temporary exclusion should not become permanent unowned loss of protection.
- **B. No record because quarantine means the test is irrelevant** The test may protect important behavior despite its implementation defect.
- **C. Automatically quarantine every future failure of any test** That would progressively remove assurance without investigation.
- **D. Keep reporting the skipped test as an executed pass** That misstates the remaining coverage and execution evidence.

**Explanation:** Temporary exclusion should not become permanent unowned loss of protection. The test may protect important behavior despite its implementation defect. That would progressively remove assurance without investigation. That misstates the remaining coverage and execution evidence.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q031

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Which verification distinguishes a published test report from a merely existing file on the agent?

- **A. The run's test view contains the expected cases and recorded failures** **Correct.** The structured output must reach the intended review surface.
- **B. The temporary directory contains a file with a test-like name** Local existence does not prove ingestion.
- **C. The build log prints the intended report path** A printed path does not prove the publisher matched and parsed the file.
- **D. The pipeline artifact list contains an unrelated ZIP file** Artifact storage is separate from structured test reporting.

**Explanation:** The structured output must reach the intended review surface. Local existence does not prove ingestion. A printed path does not prove the publisher matched and parsed the file. Artifact storage is separate from structured test reporting.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines)

## L08-Q032

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A pipeline publishes coverage but has no numeric quality policy. What is needed to enforce a required minimum?

- **A. Only a larger coverage chart on the dashboard** Visibility does not turn a metric into a required acceptance condition.
- **B. A comment in YAML saying coverage should be high** A comment does not execute a threshold decision.
- **C. A package version label containing the target percentage** A label does not evaluate actual measured coverage.
- **D. A deliberate threshold check whose failure affects the acceptance path** **Correct.** Report publication alone is not necessarily a policy-enforcement gate.

**Explanation:** Visibility does not turn a metric into a required acceptance condition. A comment does not execute a threshold decision. A label does not evaluate actual measured coverage. Report publication alone is not necessarily a policy-enforcement gate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

## L08-Q033

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

The test service is unavailable during an emergency release. What makes an exception process accountable?

- **A. Automatically mark every unavailable check successful** That changes missing assurance into false positive evidence.
- **B. Remove the gate permanently whenever an outage occurs** A temporary failure does not justify indefinite loss of protection.
- **C. Let the requesting author approve their own exception without recording it** That removes independent accountability for the changed risk decision.
- **D. A restricted authorized decision with recorded reason scope and follow-up validation** **Correct.** An exception should remain deliberate and auditable rather than becoming silent routine bypass.

**Explanation:** That changes missing assurance into false positive evidence. A temporary failure does not justify indefinite loss of protection. That removes independent accountability for the changed risk decision. An exception should remain deliberate and auditable rather than becoming silent routine bypass.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q034

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

What must be recorded when pinning a test toolchain to make reproducibility sustainable?

- **A. A commitment never to update any component again** Permanent stasis can retain vulnerabilities or unsupported toolchain versions.
- **B. Only the successful test count from the latest run** A count does not identify the software inputs or their future maintenance policy.
- **C. Only a download link that always resolves to the latest SDK** A moving download does not preserve the selected version or establish reviewed updates.
- **D. An owner and reviewed update process for supported versions** **Correct.** A deliberate pin still needs security compatibility and support maintenance.

**Explanation:** Permanent stasis can retain vulnerabilities or unsupported toolchain versions. A count does not identify the software inputs or their future maintenance policy. A moving download does not preserve the selected version or establish reviewed updates. A deliberate pin still needs security compatibility and support maintenance.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)

## L08-Q035

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Why can bounded retries be useful yet insufficient as the complete flakiness strategy?

- **A. Retries never consume extra execution capacity** Repeated attempts use runner time and resources.
- **B. Every flaky test should be retried forever until it eventually passes** Unbounded repetition can turn persistent defects into delayed misleading success.
- **C. They may recover transient execution but can hide failures and add time unless classified and investigated** **Correct.** Retry behavior and root-cause remediation have different purposes.
- **D. A retry guarantees the original failure was not a product defect** A later pass alone does not establish what caused the first failure.

**Explanation:** Repeated attempts use runner time and resources. Unbounded repetition can turn persistent defects into delayed misleading success. Retry behavior and root-cause remediation have different purposes. A later pass alone does not establish what caused the first failure.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q036

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A required test fails. The team needs the gate to stay red, the TRX report available, and diagnostic files free of credentials. Which design fits?

- **A. Ignore the test exit code and rely on reviewers to find a failure in the uploaded logs** That loses the required automated rejection boundary.
- **B. Publish results only after every test succeeds and omit all failed-run artifacts** That preserves redness but fails the diagnostic-availability requirement.
- **C. Upload the entire runner environment and workspace whenever tests fail** That can distribute secrets and unrelated data with the useful report.
- **D. Propagate the test failure, publish supported results under a failure-aware condition, and upload only sanitized diagnostics** **Correct.** Failure semantics, structured reporting, and content hygiene are separate requirements the design addresses.

**Explanation:** That loses the required automated rejection boundary. That preserves redness but fails the diagnostic-availability requirement. That can distribute secrets and unrelated data with the useful report. Failure semantics, structured reporting, and content hygiene are separate requirements the design addresses.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines); [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q037

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Two measured modules contain 100 and 900 included lines. They cover 100 and 450 lines respectively. Which combined line-coverage figure correctly weights the included source population?

```text
Module A: included=100; covered=100
Module B: included=900; covered=450
```

- **A. 55 percent** **Correct.** The combined ratio is 550 covered lines divided by 1000 included lines.
- **B. 75 percent** Averaging the module percentages gives equal weight to modules with very different line counts.
- **C. 50 percent** This uses only the larger module and omits the fully covered smaller module.
- **D. 100 percent** Complete coverage of one module does not establish complete coverage of the other.

**Explanation:** The combined ratio is 550 covered lines divided by 1000 included lines. Averaging the module percentages gives equal weight to modules with very different line counts. This uses only the larger module and omits the fully covered smaller module. Complete coverage of one module does not establish complete coverage of the other.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

## L08-Q038

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

A pipeline needs strict rejection for failed tests but diagnostic publication after failures and an approved emergency exception path. Which design meets those distinct purposes?

- **A. Use continue-on-error for every task so diagnostic steps always run** That can turn required failures into a nonblocking path.
- **B. Block diagnostic publication whenever a gate rejects the candidate** That makes failures harder to investigate without strengthening rejection.
- **C. Treat the existence of any approval as proof that the tests passed** Authorization to accept risk is different from an actual successful test result.
- **D. Keep failure propagation and required dependencies, use failure-aware diagnostic steps, and govern exceptions separately** **Correct.** Observability should not weaken the normal gate, while exceptional authority remains explicit.

**Explanation:** That can turn required failures into a nonblocking path. That makes failures harder to investigate without strengthening rejection. Authorization to accept risk is different from an actual successful test result. Observability should not weaken the normal gate, while exceptional authority remains explicit.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q039

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

A locale-dependent test and an implicit SDK both fail after moving to hosted CI. The team also needs supported upgrades over time. Which repair plan is strongest?

- **A. Force every hosted job to reuse an old local output directory** That imports uncontrolled state and can hide whether the current source builds.
- **B. Retry failures indefinitely while keeping runtime and locale implicit** Unbounded retries do not establish the intended execution contract.
- **C. Remove the failing cases and label the hosted environment unsupported** That avoids the required hosted validation instead of resolving its assumptions.
- **D. Specify the behavior and environment inputs, run clean representative tests, and maintain the pinned toolchain through reviewed upgrades** **Correct.** The plan addresses deterministic behavior and ongoing support rather than freezing an accidental local setup.

**Explanation:** That imports uncontrolled state and can hide whether the current source builds. Unbounded retries do not establish the intended execution contract. That avoids the required hosted validation instead of resolving its assumptions. The plan addresses deterministic behavior and ongoing support rather than freezing an accidental local setup.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)

## L08-Q040

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

The integration test starts an asynchronous write, then reads immediately; timing varies across runs. Which repair best removes the race while preserving the intended write/read contract?

```csharp
var pending = repository.WriteAsync(item);
var actual = await repository.ReadAsync(item.Id);
Assert.Equal(item, actual);
```

- **A. Await the write completion, isolate the test data, and use a bounded observable readiness condition if the boundary is eventually consistent** **Correct.** Synchronization should follow the operation contract rather than a guessed fixed delay.
- **B. Add the same 30-second sleep before every assertion and keep shared data** A fixed delay is slow and still timing-dependent, while shared data can add interference.
- **C. Retry the whole suite until every test eventually passes without recording the first failure** This hides the race rather than making the individual contract test deterministic.
- **D. Replace the read assertion with a check that the write task was allocated** Task creation does not establish the completed write or the read behavior being tested.

**Explanation:** Synchronization should follow the operation contract rather than a guessed fixed delay. A fixed delay is slow and still timing-dependent, while shared data can add interference. This hides the race rather than making the individual contract test deterministic. Task creation does not establish the completed write or the read behavior being tested.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops)

## L08-Q041

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Overall line coverage is 92 percent, but a new payment branch executes only during startup and accepts a deliberately wrong total. The CI time budget is fixed. Which acceptance change is strongest?

- **A. Raise the overall threshold to 93 percent using more startup tests** That can increase execution coverage while leaving the wrong payment behavior undetected.
- **B. Exclude the payment module so its new branches do not affect the denominator** Exclusion hides the risk rather than verifying the required behavior.
- **C. Accept the module because 92 percent exceeds the repository target** A passing aggregate threshold does not resolve the demonstrated assertion failure.
- **D. Add focused assertions for the payment behavior and inspect changed-risk coverage against the correct baseline** **Correct.** Execution coverage and behavioral detection are different evidence, so target the high-risk gap without padding unrelated tests.

**Explanation:** That can increase execution coverage while leaving the wrong payment behavior undetected. Exclusion hides the risk rather than verifying the required behavior. A passing aggregate threshold does not resolve the demonstrated assertion failure. Execution coverage and behavioral detection are different evidence, so target the high-risk gap without padding unrelated tests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

## L08-Q042

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

The Bash step in the exhibit runs failed tests, then prints a message; deployment proceeds. Diagnostics must remain available after failure. Which repair satisfies both requirements?

```bash
dotnet test --logger trx
printf "test step complete\n"
```

- **A. Keep the wrapper and make the message say tests failed** Text output does not change the successful shell exit status masking the failure.
- **B. Remove report publication so the last command becomes the failed test** That can expose failure but abandons the required structured diagnostic retention.
- **C. Allow deployment and open an issue whenever the report contains failures** That changes a required pre-deployment rejection into a post-deployment follow-up.
- **D. Propagate the test failure and publish results in a separate failure-aware step, with deployment requiring the validation outcome** **Correct.** The test status must remain authoritative while diagnostic publication is independently allowed after failure.

**Explanation:** Text output does not change the successful shell exit status masking the failure. That can expose failure but abandons the required structured diagnostic retention. That changes a required pre-deployment rejection into a post-deployment follow-up. The test status must remain authoritative while diagnostic publication is independently allowed after failure.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops); [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)

## L08-Q043

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

A pull request changes ten risky lines, but changed-code coverage is computed against last month's release and includes 500 unrelated lines. The threshold passes. What correction makes the gate meaningful?

- **A. Exclude all preexisting files regardless of which lines the request changes** A changed line in an existing file can still carry the exact risk the gate should assess.
- **B. Use the intended comparison revision and verify relevant scenarios and exclusions for the actual change** **Correct.** The base determines what counts as changed, and numeric coverage still needs behavioral interpretation.
- **C. Keep the broad base because more measured lines always means stronger protection** Unrelated lines can dilute the specific change's untested behavior.
- **D. Replace the threshold with the number of test files changed** File counts do not establish coverage or assertions for the risky behavior.

**Explanation:** A changed line in an existing file can still carry the exact risk the gate should assess. The base determines what counts as changed, and numeric coverage still needs behavioral interpretation. Unrelated lines can dilute the specific change's untested behavior. File counts do not establish coverage or assertions for the risky behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

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

- **A. Run only the passing tests before publication** That hides the failing execution rather than reporting the actual required suite.
- **B. Use a failure-aware publication condition, correct TRX format/path, and retain the original failed job outcome** **Correct.** Publication and acceptance are distinct concerns; diagnostics should survive the failure they explain.
- **C. Set the entire test job to continueOnError and use its resulting success as deployment approval** That can weaken the required failure boundary instead of independently publishing diagnostics.
- **D. Publish the source directory as test results without parsing the runner format** An arbitrary directory upload does not establish structured case reporting.

**Explanation:** That hides the failing execution rather than reporting the actual required suite. Publication and acceptance are distinct concerns; diagnostics should survive the failure they explain. That can weaken the required failure boundary instead of independently publishing diagnostics. An arbitrary directory upload does not establish structured case reporting.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines); [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q045

Advanced · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Database mocks pass, but the real schema rejects a required column write. Full end-to-end tests take an hour. Which test allocation offers useful early protection under a short CI budget?

- **A. Keep focused unit checks and add a representative targeted integration test for the schema contract before promotion** **Correct.** A narrow real-boundary test addresses the observed gap without requiring every change to wait for the full suite.
- **B. Replace all unit tests with the entire hour-long suite for every local edit** That may increase feedback delay without being necessary to target this specific boundary failure.
- **C. Make the mock accept every write so it matches the successful unit outcome** Relaxing the mock does not validate the actual schema compatibility.
- **D. Treat a clean application build as equivalent to a database integration test** Compilation does not establish that the deployed schema accepts the application's write contract.

**Explanation:** A narrow real-boundary test addresses the observed gap without requiring every change to wait for the full suite. That may increase feedback delay without being necessary to target this specific boundary failure. Relaxing the mock does not validate the actual schema compatibility. Compilation does not establish that the deployed schema accepts the application's write contract.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing)

## L08-Q046

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A critical integration test fails on five percent of unchanged runs and passes on retry. Release needs its coverage; hiding retries makes the dashboard look green. Which strategy is strongest?

- **A. Retry until success and publish only the last attempt** That conceals the observed reliability problem and can add unbounded delay.
- **B. Delete the test permanently because a flaky test cannot provide any useful signal** The critical behavior still needs reliable coverage rather than permanent abandonment.
- **C. Treat every intermittent failure as a product regression without investigating cause** A useful disposition must distinguish product behavior from environment or test nondeterminism.
- **D. Expose initial failures and retries, investigate shared state or timing, and govern any quarantine with owner, deadline, and replacement protection** **Correct.** Retries can aid execution recovery but do not replace diagnosis or transparent risk management.

**Explanation:** That conceals the observed reliability problem and can add unbounded delay. The critical behavior still needs reliable coverage rather than permanent abandonment. A useful disposition must distinguish product behavior from environment or test nondeterminism. Retries can aid execution recovery but do not replace diagnosis or transparent risk management.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/well-architected/design-guides/testing); [S6](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops)

## L08-Q047

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Coverage rose after generated and legacy paths were excluded. A critical hand-written error path was included in the new exclusions. What should the reviewer do?

- **A. Compare only the new percentage with the old target and ignore scope changes** The same threshold can mean different evidence when the measured population changes.
- **B. Review the excluded paths and restore risk-relevant measurement and assertions before interpreting the percentage** **Correct.** A changed denominator can improve the number while hiding behavior the policy intended to protect.
- **C. Approve because any exclusion of legacy code is automatically harmless** The critical hand-written path's risk is not removed by labeling it legacy.
- **D. Require zero exclusions even for generated code without considering policy purpose** The issue is justified risk-aware scope, not an indiscriminate ban on every exclusion.

**Explanation:** The same threshold can mean different evidence when the measured population changes. A changed denominator can improve the number while hiding behavior the policy intended to protect. The critical hand-written path's risk is not removed by labeling it legacy. The issue is justified risk-aware scope, not an indiscriminate ban on every exclusion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

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

- **A. Remove dependsOn and rely only on the branch name** That removes explicit sequencing and still does not require successful validation.
- **B. Run deployment first and inspect the test job result afterward** That reverses the required protection boundary rather than enforcing it.
- **C. Combine the branch condition with the required success condition and verify a controlled failed prerequisite blocks deployment** **Correct.** A custom condition can override default success behavior, so both the branch and dependency result must be expressed.
- **D. Keep the condition because dependsOn alone always prevents execution after failures** Custom conditions determine execution and can permit a job despite a failed dependency.

**Explanation:** That removes explicit sequencing and still does not require successful validation. That reverses the required protection boundary rather than enforcing it. A custom condition can override default success behavior, so both the branch and dependency result must be expressed. Custom conditions determine execution and can permit a job despite a failed dependency.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops)

## L08-Q049

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

A team must preserve its overall coverage policy, verify a new validation branch, and avoid extending CI beyond ten minutes. Which plan best balances these constraints?

- **A. Raise coverage by repeatedly running the same startup test** Repeated execution of the same lines does not add the missing behavioral evidence.
- **B. Disable the coverage gate and rely only on the historical defect count** Past defects do not establish acceptance of the new branch or preserve the required policy.
- **C. Keep the policy, add targeted positive and rejection assertions, and review redundant test cost and coverage scope** **Correct.** The plan protects the new risk while optimizing low-value execution rather than hiding gaps.
- **D. Remove the rejection test because successful-path execution counts as line coverage** Executing success behavior does not verify that invalid input is rejected.

**Explanation:** Repeated execution of the same lines does not add the missing behavioral evidence. Past defects do not establish acceptance of the new branch or preserve the required policy. The plan protects the new risk while optimizing low-value execution rather than hiding gaps. Executing success behavior does not verify that invalid input is rejected.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S5](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage)

## L08-Q050

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

A release pipeline masks dotnet test failure, skips reports on failed jobs, and has a deployment condition that checks only main. Which end-to-end acceptance test best verifies the repair?

- **A. Run the healthy test suite once and confirm deployment succeeds** A healthy path cannot demonstrate that required failure rejection works.
- **B. Inspect only the YAML for the word succeeded** Text inspection cannot establish actual script exit handling or published result contents.
- **C. Confirm a TRX file exists locally and approve the release** Local file presence does not prove structured publication or deployment gating.
- **D. Inject a controlled failing assertion, confirm the validation stays failed, inspect the published cases, and prove deployment never starts; then verify the repaired healthy path** **Correct.** The combined contract includes failure propagation, retained structured diagnostics, and enforced promotion dependency in both directions.

**Explanation:** A healthy path cannot demonstrate that required failure rejection works. Text inspection cannot establish actual script exit handling or published result contents. Local file presence does not prove structured publication or deployment gating. The combined contract includes failure propagation, retained structured diagnostics, and enforced promotion dependency in both directions.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines); [S7](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops); [S8](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-test)
