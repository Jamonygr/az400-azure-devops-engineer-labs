# Lab 15 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L15-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which next change most directly satisfies the stated requirement?

- **A.** Use a blue-green traffic-switch strategy
- **B.** Halt expansion and restore the cohort to the healthy baseline
- **C.** Rehearse rollback with explicit health and completion criteria

## L15-Q002

Foundational · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which explanation best accounts for the behavior or constraint described?

- **A.** The design maintains two release environments
- **B.** The candidate fails the defined comparative health criteria
- **C.** Retaining old capacity is not proof of recoverability

## L15-Q003

Applied · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Exposure stops and cohort errors return to acceptable levels
- **B.** A failed candidate is replaced by the healthy baseline within target time
- **C.** Traffic moves to the validated environment and the old one remains recoverable

## L15-Q004

Applied · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate shared dependencies before switching traffic
- **B.** Define thresholds and observation time before rollout
- **C.** Confirm data and schema compatibility before rollback

## L15-Q005

Advanced · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. The team selects this remedy: "Use a blue-green traffic-switch strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Small cohorts may produce statistically weak signals
- **B.** Rollback can be constrained by irreversible changes
- **C.** Parallel environments increase resource cost

## L15-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which next change most directly satisfies the stated requirement?

- **A.** Use ordered deployment rings with validation between rings
- **B.** Use a blue-green traffic-switch strategy
- **C.** Halt expansion and restore the cohort to the healthy baseline

## L15-Q007

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which explanation best accounts for the behavior or constraint described?

- **A.** Different risk cohorts require controlled promotion order
- **B.** The design maintains two release environments
- **C.** The candidate fails the defined comparative health criteria

## L15-Q008

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Exposure stops and cohort errors return to acceptable levels
- **B.** Each ring advances only after its acceptance evidence passes
- **C.** Traffic moves to the validated environment and the old one remains recoverable

## L15-Q009

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate shared dependencies before switching traffic
- **B.** Define thresholds and observation time before rollout
- **C.** Keep cohort definitions and emergency stop controls explicit

## L15-Q010

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. The team selects this remedy: "Halt expansion and restore the cohort to the healthy baseline." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel environments increase resource cost
- **B.** Small cohorts may produce statistically weak signals
- **C.** Ring management adds operational complexity

## L15-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which next change most directly satisfies the stated requirement?

- **A.** Run an A-B experiment with stable assignment and business metrics
- **B.** Halt expansion and restore the cohort to the healthy baseline
- **C.** Use ordered deployment rings with validation between rings

## L15-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which explanation best accounts for the behavior or constraint described?

- **A.** Different risk cohorts require controlled promotion order
- **B.** This is an experimentation question rather than only rollout safety
- **C.** The candidate fails the defined comparative health criteria

## L15-Q013

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Comparable cohorts produce the specified conversion measurements
- **B.** Exposure stops and cohort errors return to acceptable levels
- **C.** Each ring advances only after its acceptance evidence passes

## L15-Q014

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep cohort definitions and emergency stop controls explicit
- **B.** Avoid changing assignment mid-session or mixing incompatible data
- **C.** Define thresholds and observation time before rollout

## L15-Q015

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. The team selects this remedy: "Use ordered deployment rings with validation between rings." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Small cohorts may produce statistically weak signals
- **B.** Ring management adds operational complexity
- **C.** Experiments need sufficient sample size and bias control

## L15-Q016

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which next change most directly satisfies the stated requirement?

- **A.** Warm and validate the staging slot before cutover
- **B.** Use ordered deployment rings with validation between rings
- **C.** Run an A-B experiment with stable assignment and business metrics

## L15-Q017

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which explanation best accounts for the behavior or constraint described?

- **A.** Different risk cohorts require controlled promotion order
- **B.** This is an experimentation question rather than only rollout safety
- **C.** Startup readiness was not established before routing traffic

## L15-Q018

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The candidate passes readiness checks before traffic moves
- **B.** Each ring advances only after its acceptance evidence passes
- **C.** Comparable cohorts produce the specified conversion measurements

## L15-Q019

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use health checks representative of critical dependencies
- **B.** Keep cohort definitions and emergency stop controls explicit
- **C.** Avoid changing assignment mid-session or mixing incompatible data

## L15-Q020

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. The team selects this remedy: "Run an A-B experiment with stable assignment and business metrics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Ring management adds operational complexity
- **B.** Experiments need sufficient sample size and bias control
- **C.** Warmup increases release time and resource use

## L15-Q021

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which next change most directly satisfies the stated requirement?

- **A.** Run an A-B experiment with stable assignment and business metrics
- **B.** Warm and validate the staging slot before cutover
- **C.** Review slot-specific settings and swap behavior

## L15-Q022

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which explanation best accounts for the behavior or constraint described?

- **A.** This is an experimentation question rather than only rollout safety
- **B.** Startup readiness was not established before routing traffic
- **C.** Not every setting has the desired stickiness behavior

## L15-Q023

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Comparable cohorts produce the specified conversion measurements
- **B.** The candidate passes readiness checks before traffic moves
- **C.** After a rehearsal each slot retains its intended backend configuration

## L15-Q024

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use nonproduction validation targets during the rehearsal
- **B.** Avoid changing assignment mid-session or mixing incompatible data
- **C.** Use health checks representative of critical dependencies

## L15-Q025

Advanced · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. The team selects this remedy: "Warm and validate the staging slot before cutover." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Warmup increases release time and resource use
- **B.** Slot swap is not equivalent to full environment isolation
- **C.** Experiments need sufficient sample size and bias control

## L15-Q026

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which next change most directly satisfies the stated requirement?

- **A.** Use the documented supported-release hotfix path
- **B.** Warm and validate the staging slot before cutover
- **C.** Review slot-specific settings and swap behavior

## L15-Q027

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which explanation best accounts for the behavior or constraint described?

- **A.** Startup readiness was not established before routing traffic
- **B.** Not every setting has the desired stickiness behavior
- **C.** The default branch does not represent the deployed baseline

## L15-Q028

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The candidate passes readiness checks before traffic moves
- **B.** After a rehearsal each slot retains its intended backend configuration
- **C.** The patch fixes production and is reconciled into future development

## L15-Q029

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use nonproduction validation targets during the rehearsal
- **B.** Retain required review and targeted regression tests
- **C.** Use health checks representative of critical dependencies

## L15-Q030

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. The team selects this remedy: "Review slot-specific settings and swap behavior." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel hotfix branches increase reconciliation work
- **B.** Warmup increases release time and resource use
- **C.** Slot swap is not equivalent to full environment isolation

## L15-Q031

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which next change most directly satisfies the stated requirement?

- **A.** Review slot-specific settings and swap behavior
- **B.** Use the documented supported-release hotfix path
- **C.** Use a controlled rolling deployment with readiness checks

## L15-Q032

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which explanation best accounts for the behavior or constraint described?

- **A.** The default branch does not represent the deployed baseline
- **B.** The rollout removes all serving capacity at once
- **C.** Not every setting has the desired stickiness behavior

## L15-Q033

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** After a rehearsal each slot retains its intended backend configuration
- **B.** The patch fixes production and is reconciled into future development
- **C.** Some healthy instances serve traffic throughout the update

## L15-Q034

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which execution safeguard most directly addresses the risk in this case?

- **A.** Set capacity and failure thresholds for the actual workload
- **B.** Use nonproduction validation targets during the rehearsal
- **C.** Retain required review and targeted regression tests

## L15-Q035

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. The team selects this remedy: "Use the documented supported-release hotfix path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel hotfix branches increase reconciliation work
- **B.** Rolling updates temporarily run mixed application versions
- **C.** Slot swap is not equivalent to full environment isolation

## L15-Q036

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which next change most directly satisfies the stated requirement?

- **A.** Externalize or deliberately handle session state across the cutover
- **B.** Use the documented supported-release hotfix path
- **C.** Use a controlled rolling deployment with readiness checks

## L15-Q037

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which explanation best accounts for the behavior or constraint described?

- **A.** Session data is tied to the old instances
- **B.** The default branch does not represent the deployed baseline
- **C.** The rollout removes all serving capacity at once

## L15-Q038

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A representative user session remains valid through cutover
- **B.** The patch fixes production and is reconciled into future development
- **C.** Some healthy instances serve traffic throughout the update

## L15-Q039

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retain required review and targeted regression tests
- **B.** Set capacity and failure thresholds for the actual workload
- **C.** Assess security and expiry rules for shared session storage

## L15-Q040

Advanced · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. The team selects this remedy: "Use a controlled rolling deployment with readiness checks." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel hotfix branches increase reconciliation work
- **B.** Rolling updates temporarily run mixed application versions
- **C.** Shared state introduces another dependency

## L15-Q041

Foundational · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which next change most directly satisfies the stated requirement?

- **A.** Externalize or deliberately handle session state across the cutover
- **B.** Rehearse rollback with explicit health and completion criteria
- **C.** Use a controlled rolling deployment with readiness checks

## L15-Q042

Foundational · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which explanation best accounts for the behavior or constraint described?

- **A.** The rollout removes all serving capacity at once
- **B.** Session data is tied to the old instances
- **C.** Retaining old capacity is not proof of recoverability

## L15-Q043

Applied · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Some healthy instances serve traffic throughout the update
- **B.** A representative user session remains valid through cutover
- **C.** A failed candidate is replaced by the healthy baseline within target time

## L15-Q044

Applied · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which execution safeguard most directly addresses the risk in this case?

- **A.** Confirm data and schema compatibility before rollback
- **B.** Set capacity and failure thresholds for the actual workload
- **C.** Assess security and expiry rules for shared session storage

## L15-Q045

Advanced · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. The team selects this remedy: "Externalize or deliberately handle session state across the cutover." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Rolling updates temporarily run mixed application versions
- **B.** Shared state introduces another dependency
- **C.** Rollback can be constrained by irreversible changes

## L15-Q046

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which next change most directly satisfies the stated requirement?

- **A.** Externalize or deliberately handle session state across the cutover
- **B.** Rehearse rollback with explicit health and completion criteria
- **C.** Use a blue-green traffic-switch strategy

## L15-Q047

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which explanation best accounts for the behavior or constraint described?

- **A.** Session data is tied to the old instances
- **B.** Retaining old capacity is not proof of recoverability
- **C.** The design maintains two release environments

## L15-Q048

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A failed candidate is replaced by the healthy baseline within target time
- **B.** Traffic moves to the validated environment and the old one remains recoverable
- **C.** A representative user session remains valid through cutover

## L15-Q049

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate shared dependencies before switching traffic
- **B.** Assess security and expiry rules for shared session storage
- **C.** Confirm data and schema compatibility before rollback

## L15-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. The team selects this remedy: "Rehearse rollback with explicit health and completion criteria." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel environments increase resource cost
- **B.** Shared state introduces another dependency
- **C.** Rollback can be constrained by irreversible changes
