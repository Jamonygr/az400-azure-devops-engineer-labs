# Lab 08 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L08-Q001

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which next change most directly satisfies the stated requirement?

- **A. Propagate the failed test exit code to the job result** The execution status must reflect the actual test outcome. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Add focused local unit tests for the calculation contract** **Correct.** Pure behavior can be checked cheaply without deployment. This directly addresses the constraint stated in this case.
- **C. Add an integration test against a representative database** The failure occurs at an external system boundary. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.

**Explanation:** Pure behavior can be checked cheaply without deployment. The selected answer is add focused local unit tests for the calculation contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q002

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which explanation best accounts for the behavior or constraint described?

- **A. The wrapper script swallowed the failing command status** Result files cannot compensate for an incorrect success state. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. The defect can be isolated below the integration boundary** **Correct.** Cloud deployment adds unnecessary feedback latency. This directly addresses the constraint stated in this case.
- **C. Mocks do not exercise actual database compatibility** The isolated test replaced the failing dependency. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.

**Explanation:** Cloud deployment adds unnecessary feedback latency. The selected answer is the defect can be isolated below the integration boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q003

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A wrong calculation fails the local test suite** **Correct.** The test must detect an actual incorrect result. This directly addresses the constraint stated in this case.
- **B. A schema-incompatible service fails the integration test** The test should reproduce the missing boundary behavior. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.
- **C. A known failing assertion makes the job fail** A controlled negative probe verifies status propagation. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.

**Explanation:** The test must detect an actual incorrect result. The selected answer is a wrong calculation fails the local test suite.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q004

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep diagnostic publication separate from success conditions** Useful failure reports should remain available after rejection. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Use deterministic inputs and assert meaningful outcomes** **Correct.** Nondeterministic tests weaken trust in fast feedback. This directly addresses the constraint stated in this case.
- **C. Use disposable test data and isolated credentials** Integration execution must not modify production records. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.

**Explanation:** Nondeterministic tests weaken trust in fast feedback. The selected answer is use deterministic inputs and assert meaningful outcomes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q005

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. The team selects this remedy: "Add focused local unit tests for the calculation contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Integration tests cost more time and infrastructure** Use them where boundary risks justify the overhead. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.
- **B. Correct failure propagation can reveal previously hidden defects** A newly red pipeline may indicate stronger reporting. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **C. Unit tests do not prove external integration behavior** **Correct.** A complete strategy needs additional test layers. This directly addresses the constraint stated in this case.

**Explanation:** A complete strategy needs additional test layers. The selected answer is unit tests do not prove external integration behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q006

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which next change most directly satisfies the stated requirement?

- **A. Run representative load tests with latency and error thresholds** Concurrency changes resource behavior beyond functional correctness. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **B. Add focused local unit tests for the calculation contract** Pure behavior can be checked cheaply without deployment. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **C. Add an integration test against a representative database** **Correct.** The failure occurs at an external system boundary. This directly addresses the constraint stated in this case.

**Explanation:** The failure occurs at an external system boundary. The selected answer is add an integration test against a representative database.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q007

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which explanation best accounts for the behavior or constraint described?

- **A. The defect can be isolated below the integration boundary** Cloud deployment adds unnecessary feedback latency. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **B. Mocks do not exercise actual database compatibility** **Correct.** The isolated test replaced the failing dependency. This directly addresses the constraint stated in this case.
- **C. Functional success under light traffic does not prove capacity** The missing signal is behavior under realistic demand. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.

**Explanation:** The isolated test replaced the failing dependency. The selected answer is mocks do not exercise actual database compatibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q008

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Latency and error rates satisfy thresholds at target load** The result must cover the expected workload shape. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **B. A wrong calculation fails the local test suite** The test must detect an actual incorrect result. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **C. A schema-incompatible service fails the integration test** **Correct.** The test should reproduce the missing boundary behavior. This directly addresses the constraint stated in this case.

**Explanation:** The test should reproduce the missing boundary behavior. The selected answer is a schema-incompatible service fails the integration test.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q009

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which execution safeguard most directly addresses the risk in this case?

- **A. Run controlled load against an authorized environment** Unbounded tests can disrupt services and create costs. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **B. Use deterministic inputs and assert meaningful outcomes** Nondeterministic tests weaken trust in fast feedback. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **C. Use disposable test data and isolated credentials** **Correct.** Integration execution must not modify production records. This directly addresses the constraint stated in this case.

**Explanation:** Integration execution must not modify production records. The selected answer is use disposable test data and isolated credentials.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q010

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. The team selects this remedy: "Add an integration test against a representative database." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Integration tests cost more time and infrastructure** **Correct.** Use them where boundary risks justify the overhead. This directly addresses the constraint stated in this case.
- **B. A synthetic workload may differ from real traffic** Capacity conclusions depend on representative test design. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **C. Unit tests do not prove external integration behavior** A complete strategy needs additional test layers. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.

**Explanation:** Use them where boundary risks justify the overhead. The selected answer is integration tests cost more time and infrastructure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q011

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which next change most directly satisfies the stated requirement?

- **A. Add an integration test against a representative database** The failure occurs at an external system boundary. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.
- **B. Run representative load tests with latency and error thresholds** **Correct.** Concurrency changes resource behavior beyond functional correctness. This directly addresses the constraint stated in this case.
- **C. Publish structured test results even when test execution fails** Failure details need an accessible reporting path. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.

**Explanation:** Concurrency changes resource behavior beyond functional correctness. The selected answer is run representative load tests with latency and error thresholds.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which explanation best accounts for the behavior or constraint described?

- **A. Execution failure and result publication are separate steps** A stopped job may skip ordinary success-only publishing. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **B. Mocks do not exercise actual database compatibility** The isolated test replaced the failing dependency. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.
- **C. Functional success under light traffic does not prove capacity** **Correct.** The missing signal is behavior under realistic demand. This directly addresses the constraint stated in this case.

**Explanation:** The missing signal is behavior under realistic demand. The selected answer is functional success under light traffic does not prove capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q013

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Latency and error rates satisfy thresholds at target load** **Correct.** The result must cover the expected workload shape. This directly addresses the constraint stated in this case.
- **B. The run displays the failing tests and diagnostic details** Actionable reports make failures reviewable and traceable. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **C. A schema-incompatible service fails the integration test** The test should reproduce the missing boundary behavior. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.

**Explanation:** The result must cover the expected workload shape. The selected answer is latency and error rates satisfy thresholds at target load.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q014

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which execution safeguard most directly addresses the risk in this case?

- **A. Preserve failure status while collecting diagnostic output** Publishing results should not convert a failed test to success. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **B. Use disposable test data and isolated credentials** Integration execution must not modify production records. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.
- **C. Run controlled load against an authorized environment** **Correct.** Unbounded tests can disrupt services and create costs. This directly addresses the constraint stated in this case.

**Explanation:** Unbounded tests can disrupt services and create costs. The selected answer is run controlled load against an authorized environment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q015

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. The team selects this remedy: "Run representative load tests with latency and error thresholds." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. A synthetic workload may differ from real traffic** **Correct.** Capacity conclusions depend on representative test design. This directly addresses the constraint stated in this case.
- **B. Detailed reports can expose sensitive test data** Sanitize inputs and control report access. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **C. Integration tests cost more time and infrastructure** Use them where boundary risks justify the overhead. That addresses a different requirement: Hidden integration failure. It does not directly resolve this case's stated constraint.

**Explanation:** Capacity conclusions depend on representative test design. The selected answer is a synthetic workload may differ from real traffic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q016

Foundational · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which next change most directly satisfies the stated requirement?

- **A. Run representative load tests with latency and error thresholds** Concurrency changes resource behavior beyond functional correctness. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **B. Publish structured test results even when test execution fails** **Correct.** Failure details need an accessible reporting path. This directly addresses the constraint stated in this case.
- **C. Review coverage scope and add behavioral tests for changed logic** A percentage must be interpreted against meaningful behavior. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.

**Explanation:** Failure details need an accessible reporting path. The selected answer is publish structured test results even when test execution fails.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q017

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which explanation best accounts for the behavior or constraint described?

- **A. Functional success under light traffic does not prove capacity** The missing signal is behavior under realistic demand. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **B. Execution failure and result publication are separate steps** **Correct.** A stopped job may skip ordinary success-only publishing. This directly addresses the constraint stated in this case.
- **C. Coverage measures execution rather than assertion quality** High execution coverage can coexist with weak validation. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.

**Explanation:** A stopped job may skip ordinary success-only publishing. The selected answer is execution failure and result publication are separate steps.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q018

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A deliberate business-logic defect causes a test failure** Mutation-like evidence checks whether assertions detect incorrect behavior. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **B. Latency and error rates satisfy thresholds at target load** The result must cover the expected workload shape. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **C. The run displays the failing tests and diagnostic details** **Correct.** Actionable reports make failures reviewable and traceable. This directly addresses the constraint stated in this case.

**Explanation:** Actionable reports make failures reviewable and traceable. The selected answer is the run displays the failing tests and diagnostic details.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q019

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which execution safeguard most directly addresses the risk in this case?

- **A. Document exclusions and avoid hiding high-risk code** Changing the denominator can create misleading improvements. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **B. Run controlled load against an authorized environment** Unbounded tests can disrupt services and create costs. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.
- **C. Preserve failure status while collecting diagnostic output** **Correct.** Publishing results should not convert a failed test to success. This directly addresses the constraint stated in this case.

**Explanation:** Publishing results should not convert a failed test to success. The selected answer is preserve failure status while collecting diagnostic output.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q020

Advanced · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. The team selects this remedy: "Publish structured test results even when test execution fails." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Detailed reports can expose sensitive test data** **Correct.** Sanitize inputs and control report access. This directly addresses the constraint stated in this case.
- **B. Coverage thresholds can encourage metric gaming** Treat coverage as one signal within the testing strategy. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **C. A synthetic workload may differ from real traffic** Capacity conclusions depend on representative test design. That addresses a different requirement: Capacity uncertainty. It does not directly resolve this case's stated constraint.

**Explanation:** Sanitize inputs and control report access. The selected answer is detailed reports can expose sensitive test data.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q021

Foundational · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which next change most directly satisfies the stated requirement?

- **A. Publish structured test results even when test execution fails** Failure details need an accessible reporting path. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **B. Review coverage scope and add behavioral tests for changed logic** **Correct.** A percentage must be interpreted against meaningful behavior. This directly addresses the constraint stated in this case.
- **C. Make critical quality results required deployment conditions** Informational reports do not enforce release safety. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.

**Explanation:** A percentage must be interpreted against meaningful behavior. The selected answer is review coverage scope and add behavioral tests for changed logic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q022

Foundational · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which explanation best accounts for the behavior or constraint described?

- **A. The release condition ignores failed validation outcomes** Visibility alone cannot stop an unsafe promotion. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.
- **B. Execution failure and result publication are separate steps** A stopped job may skip ordinary success-only publishing. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.
- **C. Coverage measures execution rather than assertion quality** **Correct.** High execution coverage can coexist with weak validation. This directly addresses the constraint stated in this case.

**Explanation:** High execution coverage can coexist with weak validation. The selected answer is coverage measures execution rather than assertion quality.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q023

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A deliberate business-logic defect causes a test failure** **Correct.** Mutation-like evidence checks whether assertions detect incorrect behavior. This directly addresses the constraint stated in this case.
- **B. A deliberately failed critical check blocks deployment** A negative test demonstrates actual gating behavior. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.
- **C. The run displays the failing tests and diagnostic details** Actionable reports make failures reviewable and traceable. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.

**Explanation:** Mutation-like evidence checks whether assertions detect incorrect behavior. The selected answer is a deliberate business-logic defect causes a test failure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q024

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which execution safeguard most directly addresses the risk in this case?

- **A. Document exclusions and avoid hiding high-risk code** **Correct.** Changing the denominator can create misleading improvements. This directly addresses the constraint stated in this case.
- **B. Provide an accountable exception path for exceptional cases** Unreviewed bypass would defeat the required control. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.
- **C. Preserve failure status while collecting diagnostic output** Publishing results should not convert a failed test to success. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.

**Explanation:** Changing the denominator can create misleading improvements. The selected answer is document exclusions and avoid hiding high-risk code.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q025

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. The team selects this remedy: "Review coverage scope and add behavioral tests for changed logic." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Coverage thresholds can encourage metric gaming** **Correct.** Treat coverage as one signal within the testing strategy. This directly addresses the constraint stated in this case.
- **B. Strict gates can block releases during tool outages** The exception policy should preserve evidence and ownership. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.
- **C. Detailed reports can expose sensitive test data** Sanitize inputs and control report access. That addresses a different requirement: Invisible failures. It does not directly resolve this case's stated constraint.

**Explanation:** Treat coverage as one signal within the testing strategy. The selected answer is coverage thresholds can encourage metric gaming.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q026

Foundational · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which next change most directly satisfies the stated requirement?

- **A. Make critical quality results required deployment conditions** **Correct.** Informational reports do not enforce release safety. This directly addresses the constraint stated in this case.
- **B. Align test environment dependencies and remove unintended locale assumptions** Reproducibility needs explicit environmental inputs. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **C. Review coverage scope and add behavioral tests for changed logic** A percentage must be interpreted against meaningful behavior. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.

**Explanation:** Informational reports do not enforce release safety. The selected answer is make critical quality results required deployment conditions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q027

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which explanation best accounts for the behavior or constraint described?

- **A. Coverage measures execution rather than assertion quality** High execution coverage can coexist with weak validation. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **B. The release condition ignores failed validation outcomes** **Correct.** Visibility alone cannot stop an unsafe promotion. This directly addresses the constraint stated in this case.
- **C. The test depends on an unrecorded local environment** Different agents expose the hidden assumption. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Visibility alone cannot stop an unsafe promotion. The selected answer is the release condition ignores failed validation outcomes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q028

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A clean agent reproduces the intended deterministic result** The validation must occur outside the developer machine. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **B. A deliberate business-logic defect causes a test failure** Mutation-like evidence checks whether assertions detect incorrect behavior. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **C. A deliberately failed critical check blocks deployment** **Correct.** A negative test demonstrates actual gating behavior. This directly addresses the constraint stated in this case.

**Explanation:** A negative test demonstrates actual gating behavior. The selected answer is a deliberately failed critical check blocks deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q029

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which execution safeguard most directly addresses the risk in this case?

- **A. Document exclusions and avoid hiding high-risk code** Changing the denominator can create misleading improvements. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **B. Provide an accountable exception path for exceptional cases** **Correct.** Unreviewed bypass would defeat the required control. This directly addresses the constraint stated in this case.
- **C. Pin supported runtimes and record relevant test configuration** Implicit defaults can change when images update. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Unreviewed bypass would defeat the required control. The selected answer is provide an accountable exception path for exceptional cases.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q030

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. The team selects this remedy: "Make critical quality results required deployment conditions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Coverage thresholds can encourage metric gaming** Treat coverage as one signal within the testing strategy. That addresses a different requirement: Inflated coverage. It does not directly resolve this case's stated constraint.
- **B. Strict gates can block releases during tool outages** **Correct.** The exception policy should preserve evidence and ownership. This directly addresses the constraint stated in this case.
- **C. Overpinning dependencies increases upgrade maintenance** Controlled updates are still required for support and security. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The exception policy should preserve evidence and ownership. The selected answer is strict gates can block releases during tool outages.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q031

Foundational · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which next change most directly satisfies the stated requirement?

- **A. Align test environment dependencies and remove unintended locale assumptions** **Correct.** Reproducibility needs explicit environmental inputs. This directly addresses the constraint stated in this case.
- **B. Classify and fix the flake while retaining failure visibility** Repeated retries can conceal reliability problems. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Make critical quality results required deployment conditions** Informational reports do not enforce release safety. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.

**Explanation:** Reproducibility needs explicit environmental inputs. The selected answer is align test environment dependencies and remove unintended locale assumptions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q032

Foundational · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which explanation best accounts for the behavior or constraint described?

- **A. The release condition ignores failed validation outcomes** Visibility alone cannot stop an unsafe promotion. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.
- **B. The test depends on an unrecorded local environment** **Correct.** Different agents expose the hidden assumption. This directly addresses the constraint stated in this case.
- **C. Intermittent infrastructure or timing assumptions contaminate the result** A later pass does not explain the original failure. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.

**Explanation:** Different agents expose the hidden assumption. The selected answer is the test depends on an unrecorded local environment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q033

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A clean agent reproduces the intended deterministic result** **Correct.** The validation must occur outside the developer machine. This directly addresses the constraint stated in this case.
- **B. Failure frequency and root cause improve after the targeted fix** The evidence should show reduced flakiness rather than hidden retries. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. A deliberately failed critical check blocks deployment** A negative test demonstrates actual gating behavior. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.

**Explanation:** The validation must occur outside the developer machine. The selected answer is a clean agent reproduces the intended deterministic result.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q034

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which execution safeguard most directly addresses the risk in this case?

- **A. Pin supported runtimes and record relevant test configuration** **Correct.** Implicit defaults can change when images update. This directly addresses the constraint stated in this case.
- **B. Quarantine only with an owner and recovery deadline** Unowned quarantine can permanently remove important coverage. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Provide an accountable exception path for exceptional cases** Unreviewed bypass would defeat the required control. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.

**Explanation:** Implicit defaults can change when images update. The selected answer is pin supported runtimes and record relevant test configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q035

Advanced · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. The team selects this remedy: "Align test environment dependencies and remove unintended locale assumptions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Overpinning dependencies increases upgrade maintenance** **Correct.** Controlled updates are still required for support and security. This directly addresses the constraint stated in this case.
- **B. Retries may improve resilience but increase latency** They should be bounded and reported transparently. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Strict gates can block releases during tool outages** The exception policy should preserve evidence and ownership. That addresses a different requirement: Unenforced gate. It does not directly resolve this case's stated constraint.

**Explanation:** Controlled updates are still required for support and security. The selected answer is overpinning dependencies increases upgrade maintenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q036

Foundational · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which next change most directly satisfies the stated requirement?

- **A. Inspect changed-code coverage and branch-risk scenarios** Overall aggregates can dilute untested new behavior. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **B. Align test environment dependencies and remove unintended locale assumptions** Reproducibility needs explicit environmental inputs. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **C. Classify and fix the flake while retaining failure visibility** **Correct.** Repeated retries can conceal reliability problems. This directly addresses the constraint stated in this case.

**Explanation:** Repeated retries can conceal reliability problems. The selected answer is classify and fix the flake while retaining failure visibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q037

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which explanation best accounts for the behavior or constraint described?

- **A. Existing well-tested code masks the new coverage gap** A stable average does not imply safe change coverage. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **B. The test depends on an unrecorded local environment** Different agents expose the hidden assumption. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **C. Intermittent infrastructure or timing assumptions contaminate the result** **Correct.** A later pass does not explain the original failure. This directly addresses the constraint stated in this case.

**Explanation:** A later pass does not explain the original failure. The selected answer is intermittent infrastructure or timing assumptions contaminate the result.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q038

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which observation provides the strongest evidence that the requested result was achieved?

- **A. New branches have assertions for relevant success and failure paths** The proof must address the newly introduced risk. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **B. A clean agent reproduces the intended deterministic result** The validation must occur outside the developer machine. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **C. Failure frequency and root cause improve after the targeted fix** **Correct.** The evidence should show reduced flakiness rather than hidden retries. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should show reduced flakiness rather than hidden retries. The selected answer is failure frequency and root cause improve after the targeted fix.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q039

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid using coverage alone as the release decision** Assertions and business-critical scenarios still require review. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **B. Pin supported runtimes and record relevant test configuration** Implicit defaults can change when images update. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **C. Quarantine only with an owner and recovery deadline** **Correct.** Unowned quarantine can permanently remove important coverage. This directly addresses the constraint stated in this case.

**Explanation:** Unowned quarantine can permanently remove important coverage. The selected answer is quarantine only with an owner and recovery deadline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q040

Advanced · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. The team selects this remedy: "Classify and fix the flake while retaining failure visibility." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Overpinning dependencies increases upgrade maintenance** Controlled updates are still required for support and security. That addresses a different requirement: Environment mismatch. It does not directly resolve this case's stated constraint.
- **B. Retries may improve resilience but increase latency** **Correct.** They should be bounded and reported transparently. This directly addresses the constraint stated in this case.
- **C. Changed-code metrics depend on the comparison baseline** Incorrect base revisions can misclassify the affected code. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** They should be bounded and reported transparently. The selected answer is retries may improve resilience but increase latency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q041

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which next change most directly satisfies the stated requirement?

- **A. Propagate the failed test exit code to the job result** The execution status must reflect the actual test outcome. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Classify and fix the flake while retaining failure visibility** Repeated retries can conceal reliability problems. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Inspect changed-code coverage and branch-risk scenarios** **Correct.** Overall aggregates can dilute untested new behavior. This directly addresses the constraint stated in this case.

**Explanation:** Overall aggregates can dilute untested new behavior. The selected answer is inspect changed-code coverage and branch-risk scenarios.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q042

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which explanation best accounts for the behavior or constraint described?

- **A. The wrapper script swallowed the failing command status** Result files cannot compensate for an incorrect success state. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Intermittent infrastructure or timing assumptions contaminate the result** A later pass does not explain the original failure. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Existing well-tested code masks the new coverage gap** **Correct.** A stable average does not imply safe change coverage. This directly addresses the constraint stated in this case.

**Explanation:** A stable average does not imply safe change coverage. The selected answer is existing well-tested code masks the new coverage gap.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q043

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Failure frequency and root cause improve after the targeted fix** The evidence should show reduced flakiness rather than hidden retries. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **B. New branches have assertions for relevant success and failure paths** **Correct.** The proof must address the newly introduced risk. This directly addresses the constraint stated in this case.
- **C. A known failing assertion makes the job fail** A controlled negative probe verifies status propagation. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.

**Explanation:** The proof must address the newly introduced risk. The selected answer is new branches have assertions for relevant success and failure paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q044

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep diagnostic publication separate from success conditions** Useful failure reports should remain available after rejection. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Quarantine only with an owner and recovery deadline** Unowned quarantine can permanently remove important coverage. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Avoid using coverage alone as the release decision** **Correct.** Assertions and business-critical scenarios still require review. This directly addresses the constraint stated in this case.

**Explanation:** Assertions and business-critical scenarios still require review. The selected answer is avoid using coverage alone as the release decision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q045

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. The team selects this remedy: "Inspect changed-code coverage and branch-risk scenarios." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Correct failure propagation can reveal previously hidden defects** A newly red pipeline may indicate stronger reporting. That addresses a different requirement: False green command. It does not directly resolve this case's stated constraint.
- **B. Retries may improve resilience but increase latency** They should be bounded and reported transparently. That addresses a different requirement: Flaky integration test. It does not directly resolve this case's stated constraint.
- **C. Changed-code metrics depend on the comparison baseline** **Correct.** Incorrect base revisions can misclassify the affected code. This directly addresses the constraint stated in this case.

**Explanation:** Incorrect base revisions can misclassify the affected code. The selected answer is changed-code metrics depend on the comparison baseline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q046

Foundational · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which next change most directly satisfies the stated requirement?

- **A. Propagate the failed test exit code to the job result** **Correct.** The execution status must reflect the actual test outcome. This directly addresses the constraint stated in this case.
- **B. Add focused local unit tests for the calculation contract** Pure behavior can be checked cheaply without deployment. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **C. Inspect changed-code coverage and branch-risk scenarios** Overall aggregates can dilute untested new behavior. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.

**Explanation:** The execution status must reflect the actual test outcome. The selected answer is propagate the failed test exit code to the job result.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q047

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which explanation best accounts for the behavior or constraint described?

- **A. The defect can be isolated below the integration boundary** Cloud deployment adds unnecessary feedback latency. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **B. Existing well-tested code masks the new coverage gap** A stable average does not imply safe change coverage. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **C. The wrapper script swallowed the failing command status** **Correct.** Result files cannot compensate for an incorrect success state. This directly addresses the constraint stated in this case.

**Explanation:** Result files cannot compensate for an incorrect success state. The selected answer is the wrapper script swallowed the failing command status.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q048

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A wrong calculation fails the local test suite** The test must detect an actual incorrect result. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **B. New branches have assertions for relevant success and failure paths** The proof must address the newly introduced risk. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **C. A known failing assertion makes the job fail** **Correct.** A controlled negative probe verifies status propagation. This directly addresses the constraint stated in this case.

**Explanation:** A controlled negative probe verifies status propagation. The selected answer is a known failing assertion makes the job fail.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q049

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid using coverage alone as the release decision** Assertions and business-critical scenarios still require review. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **B. Keep diagnostic publication separate from success conditions** **Correct.** Useful failure reports should remain available after rejection. This directly addresses the constraint stated in this case.
- **C. Use deterministic inputs and assert meaningful outcomes** Nondeterministic tests weaken trust in fast feedback. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.

**Explanation:** Useful failure reports should remain available after rejection. The selected answer is keep diagnostic publication separate from success conditions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)

## L08-Q050

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. The team selects this remedy: "Propagate the failed test exit code to the job result." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Unit tests do not prove external integration behavior** A complete strategy needs additional test layers. That addresses a different requirement: Fast feedback. It does not directly resolve this case's stated constraint.
- **B. Changed-code metrics depend on the comparison baseline** Incorrect base revisions can misclassify the affected code. That addresses a different requirement: Changed-code blind spot. It does not directly resolve this case's stated constraint.
- **C. Correct failure propagation can reveal previously hidden defects** **Correct.** A newly red pipeline may indicate stronger reporting. This directly addresses the constraint stated in this case.

**Explanation:** A newly red pipeline may indicate stronger reporting. The selected answer is correct failure propagation can reveal previously hidden defects.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-code-coverage-results?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-glossary?view=azure-devops)
