# Lab 08 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L08-Q001

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which next change most directly satisfies the stated requirement?

- **A.** Propagate the failed test exit code to the job result
- **B.** Add focused local unit tests for the calculation contract
- **C.** Add an integration test against a representative database

## L08-Q002

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which explanation best accounts for the behavior or constraint described?

- **A.** The wrapper script swallowed the failing command status
- **B.** The defect can be isolated below the integration boundary
- **C.** Mocks do not exercise actual database compatibility

## L08-Q003

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A wrong calculation fails the local test suite
- **B.** A schema-incompatible service fails the integration test
- **C.** A known failing assertion makes the job fail

## L08-Q004

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep diagnostic publication separate from success conditions
- **B.** Use deterministic inputs and assert meaningful outcomes
- **C.** Use disposable test data and isolated credentials

## L08-Q005

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Fast feedback: A pure price-calculation function changes frequently, and defects should be caught before any cloud environment is provisioned. The team selects this remedy: "Add focused local unit tests for the calculation contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Integration tests cost more time and infrastructure
- **B.** Correct failure propagation can reveal previously hidden defects
- **C.** Unit tests do not prove external integration behavior

## L08-Q006

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which next change most directly satisfies the stated requirement?

- **A.** Run representative load tests with latency and error thresholds
- **B.** Add focused local unit tests for the calculation contract
- **C.** Add an integration test against a representative database

## L08-Q007

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which explanation best accounts for the behavior or constraint described?

- **A.** The defect can be isolated below the integration boundary
- **B.** Mocks do not exercise actual database compatibility
- **C.** Functional success under light traffic does not prove capacity

## L08-Q008

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Latency and error rates satisfy thresholds at target load
- **B.** A wrong calculation fails the local test suite
- **C.** A schema-incompatible service fails the integration test

## L08-Q009

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. Which execution safeguard most directly addresses the risk in this case?

- **A.** Run controlled load against an authorized environment
- **B.** Use deterministic inputs and assert meaningful outcomes
- **C.** Use disposable test data and isolated credentials

## L08-Q010

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Hidden integration failure: Unit tests mock the database successfully, but the deployed service cannot read its real schema. The team selects this remedy: "Add an integration test against a representative database." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Integration tests cost more time and infrastructure
- **B.** A synthetic workload may differ from real traffic
- **C.** Unit tests do not prove external integration behavior

## L08-Q011

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which next change most directly satisfies the stated requirement?

- **A.** Add an integration test against a representative database
- **B.** Run representative load tests with latency and error thresholds
- **C.** Publish structured test results even when test execution fails

## L08-Q012

Foundational · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which explanation best accounts for the behavior or constraint described?

- **A.** Execution failure and result publication are separate steps
- **B.** Mocks do not exercise actual database compatibility
- **C.** Functional success under light traffic does not prove capacity

## L08-Q013

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Latency and error rates satisfy thresholds at target load
- **B.** The run displays the failing tests and diagnostic details
- **C.** A schema-incompatible service fails the integration test

## L08-Q014

Applied · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. Which execution safeguard most directly addresses the risk in this case?

- **A.** Preserve failure status while collecting diagnostic output
- **B.** Use disposable test data and isolated credentials
- **C.** Run controlled load against an authorized environment

## L08-Q015

Advanced · [CP5](README.md#task-5) · [D3.2.2](../../docs/objective-map.md)

Capacity uncertainty: The API passes functional tests but latency becomes unacceptable when hundreds of clients use it simultaneously. The team selects this remedy: "Run representative load tests with latency and error thresholds." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** A synthetic workload may differ from real traffic
- **B.** Detailed reports can expose sensitive test data
- **C.** Integration tests cost more time and infrastructure

## L08-Q016

Foundational · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which next change most directly satisfies the stated requirement?

- **A.** Run representative load tests with latency and error thresholds
- **B.** Publish structured test results even when test execution fails
- **C.** Review coverage scope and add behavioral tests for changed logic

## L08-Q017

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which explanation best accounts for the behavior or constraint described?

- **A.** Functional success under light traffic does not prove capacity
- **B.** Execution failure and result publication are separate steps
- **C.** Coverage measures execution rather than assertion quality

## L08-Q018

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A deliberate business-logic defect causes a test failure
- **B.** Latency and error rates satisfy thresholds at target load
- **C.** The run displays the failing tests and diagnostic details

## L08-Q019

Applied · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document exclusions and avoid hiding high-risk code
- **B.** Run controlled load against an authorized environment
- **C.** Preserve failure status while collecting diagnostic output

## L08-Q020

Advanced · [CP2](README.md#task-2) · [D3.2.3](../../docs/objective-map.md)

Invisible failures: A test command returns nonzero, but the pipeline uploads no test report and reviewers cannot identify failing cases. The team selects this remedy: "Publish structured test results even when test execution fails." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Detailed reports can expose sensitive test data
- **B.** Coverage thresholds can encourage metric gaming
- **C.** A synthetic workload may differ from real traffic

## L08-Q021

Foundational · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which next change most directly satisfies the stated requirement?

- **A.** Publish structured test results even when test execution fails
- **B.** Review coverage scope and add behavioral tests for changed logic
- **C.** Make critical quality results required deployment conditions

## L08-Q022

Foundational · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which explanation best accounts for the behavior or constraint described?

- **A.** The release condition ignores failed validation outcomes
- **B.** Execution failure and result publication are separate steps
- **C.** Coverage measures execution rather than assertion quality

## L08-Q023

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A deliberate business-logic defect causes a test failure
- **B.** A deliberately failed critical check blocks deployment
- **C.** The run displays the failing tests and diagnostic details

## L08-Q024

Applied · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document exclusions and avoid hiding high-risk code
- **B.** Provide an accountable exception path for exceptional cases
- **C.** Preserve failure status while collecting diagnostic output

## L08-Q025

Advanced · [CP3](README.md#task-3) · [D3.2.4](../../docs/objective-map.md)

Inflated coverage: The dashboard reports98 percent coverage after generated files are excluded, but changed business logic has no assertions. The team selects this remedy: "Review coverage scope and add behavioral tests for changed logic." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Coverage thresholds can encourage metric gaming
- **B.** Strict gates can block releases during tool outages
- **C.** Detailed reports can expose sensitive test data

## L08-Q026

Foundational · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which next change most directly satisfies the stated requirement?

- **A.** Make critical quality results required deployment conditions
- **B.** Align test environment dependencies and remove unintended locale assumptions
- **C.** Review coverage scope and add behavioral tests for changed logic

## L08-Q027

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which explanation best accounts for the behavior or constraint described?

- **A.** Coverage measures execution rather than assertion quality
- **B.** The release condition ignores failed validation outcomes
- **C.** The test depends on an unrecorded local environment

## L08-Q028

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A clean agent reproduces the intended deterministic result
- **B.** A deliberate business-logic defect causes a test failure
- **C.** A deliberately failed critical check blocks deployment

## L08-Q029

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. Which execution safeguard most directly addresses the risk in this case?

- **A.** Document exclusions and avoid hiding high-risk code
- **B.** Provide an accountable exception path for exceptional cases
- **C.** Pin supported runtimes and record relevant test configuration

## L08-Q030

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md)

Unenforced gate: A team publishes security and test reports but deployment continues even when critical checks fail. The team selects this remedy: "Make critical quality results required deployment conditions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Coverage thresholds can encourage metric gaming
- **B.** Strict gates can block releases during tool outages
- **C.** Overpinning dependencies increases upgrade maintenance

## L08-Q031

Foundational · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which next change most directly satisfies the stated requirement?

- **A.** Align test environment dependencies and remove unintended locale assumptions
- **B.** Classify and fix the flake while retaining failure visibility
- **C.** Make critical quality results required deployment conditions

## L08-Q032

Foundational · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which explanation best accounts for the behavior or constraint described?

- **A.** The release condition ignores failed validation outcomes
- **B.** The test depends on an unrecorded local environment
- **C.** Intermittent infrastructure or timing assumptions contaminate the result

## L08-Q033

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A clean agent reproduces the intended deterministic result
- **B.** Failure frequency and root cause improve after the targeted fix
- **C.** A deliberately failed critical check blocks deployment

## L08-Q034

Applied · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. Which execution safeguard most directly addresses the risk in this case?

- **A.** Pin supported runtimes and record relevant test configuration
- **B.** Quarantine only with an owner and recovery deadline
- **C.** Provide an accountable exception path for exceptional cases

## L08-Q035

Advanced · [CP1](README.md#task-1) · [D3.2.3](../../docs/objective-map.md)

Environment mismatch: Tests pass locally but fail on the hosted agent because their runtime and locale differ. The team selects this remedy: "Align test environment dependencies and remove unintended locale assumptions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Overpinning dependencies increases upgrade maintenance
- **B.** Retries may improve resilience but increase latency
- **C.** Strict gates can block releases during tool outages

## L08-Q036

Foundational · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which next change most directly satisfies the stated requirement?

- **A.** Inspect changed-code coverage and branch-risk scenarios
- **B.** Align test environment dependencies and remove unintended locale assumptions
- **C.** Classify and fix the flake while retaining failure visibility

## L08-Q037

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which explanation best accounts for the behavior or constraint described?

- **A.** Existing well-tested code masks the new coverage gap
- **B.** The test depends on an unrecorded local environment
- **C.** Intermittent infrastructure or timing assumptions contaminate the result

## L08-Q038

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** New branches have assertions for relevant success and failure paths
- **B.** A clean agent reproduces the intended deterministic result
- **C.** Failure frequency and root cause improve after the targeted fix

## L08-Q039

Applied · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid using coverage alone as the release decision
- **B.** Pin supported runtimes and record relevant test configuration
- **C.** Quarantine only with an owner and recovery deadline

## L08-Q040

Advanced · [CP2](README.md#task-2) · [D3.2.2](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

Flaky integration test: A network-dependent test fails randomly and the team proposes rerunning every failure until the pipeline turns green. The team selects this remedy: "Classify and fix the flake while retaining failure visibility." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Overpinning dependencies increases upgrade maintenance
- **B.** Retries may improve resilience but increase latency
- **C.** Changed-code metrics depend on the comparison baseline

## L08-Q041

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which next change most directly satisfies the stated requirement?

- **A.** Propagate the failed test exit code to the job result
- **B.** Classify and fix the flake while retaining failure visibility
- **C.** Inspect changed-code coverage and branch-risk scenarios

## L08-Q042

Foundational · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which explanation best accounts for the behavior or constraint described?

- **A.** The wrapper script swallowed the failing command status
- **B.** Intermittent infrastructure or timing assumptions contaminate the result
- **C.** Existing well-tested code masks the new coverage gap

## L08-Q043

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Failure frequency and root cause improve after the targeted fix
- **B.** New branches have assertions for relevant success and failure paths
- **C.** A known failing assertion makes the job fail

## L08-Q044

Applied · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep diagnostic publication separate from success conditions
- **B.** Quarantine only with an owner and recovery deadline
- **C.** Avoid using coverage alone as the release decision

## L08-Q045

Advanced · [CP3](README.md#task-3) · [D1.2.4](../../docs/objective-map.md), [D3.2.4](../../docs/objective-map.md)

Changed-code blind spot: Overall coverage remains stable while a new critical module adds many untested branches. The team selects this remedy: "Inspect changed-code coverage and branch-risk scenarios." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Correct failure propagation can reveal previously hidden defects
- **B.** Retries may improve resilience but increase latency
- **C.** Changed-code metrics depend on the comparison baseline

## L08-Q046

Foundational · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which next change most directly satisfies the stated requirement?

- **A.** Propagate the failed test exit code to the job result
- **B.** Add focused local unit tests for the calculation contract
- **C.** Inspect changed-code coverage and branch-risk scenarios

## L08-Q047

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which explanation best accounts for the behavior or constraint described?

- **A.** The defect can be isolated below the integration boundary
- **B.** Existing well-tested code masks the new coverage gap
- **C.** The wrapper script swallowed the failing command status

## L08-Q048

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A wrong calculation fails the local test suite
- **B.** New branches have assertions for relevant success and failure paths
- **C.** A known failing assertion makes the job fail

## L08-Q049

Applied · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid using coverage alone as the release decision
- **B.** Keep diagnostic publication separate from success conditions
- **C.** Use deterministic inputs and assert meaningful outcomes

## L08-Q050

Advanced · [CP4](README.md#task-4) · [D3.2.1](../../docs/objective-map.md), [D3.2.3](../../docs/objective-map.md)

False green command: A shell step ignores the test process exit code and reports success after multiple assertion failures. The team selects this remedy: "Propagate the failed test exit code to the job result." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Unit tests do not prove external integration behavior
- **B.** Changed-code metrics depend on the comparison baseline
- **C.** Correct failure propagation can reveal previously hidden defects
