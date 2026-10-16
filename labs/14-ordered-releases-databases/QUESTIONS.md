# Lab 14 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L14-Q001

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which next change most directly satisfies the stated requirement?

- **A.** Use an expand-and-contract migration sequence
- **B.** Stop promotion and apply the documented compatibility recovery path
- **C.** Declare the schema prerequisite before dependent application rollout

## L14-Q002

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which explanation best accounts for the behavior or constraint described?

- **A.** The schema change immediately breaks an active consumer
- **B.** A multistep release is not automatically an atomic transaction
- **C.** The pipeline graph omits a required dependency

## L14-Q003

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Both application versions work during the migration window
- **B.** The old application remains functional or recovery restores compatibility
- **C.** The compatible schema exists before the dependent application starts

## L14-Q004

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate backward compatibility before modifying shared schema
- **B.** Delay destructive contraction until old consumers are retired
- **C.** Use backward-compatible intermediate states and failure checkpoints

## L14-Q005

Advanced · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. The team selects this remedy: "Declare the schema prerequisite before dependent application rollout." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Expand-and-contract requires multiple coordinated releases
- **B.** Cross-system releases may need compensating actions
- **C.** Strict ordering can extend deployment duration

## L14-Q006

Foundational · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which next change most directly satisfies the stated requirement?

- **A.** Use a reviewed idempotent or state-aware migration mechanism
- **B.** Declare the schema prerequisite before dependent application rollout
- **C.** Use an expand-and-contract migration sequence

## L14-Q007

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which explanation best accounts for the behavior or constraint described?

- **A.** The script cannot distinguish completed work from missing work
- **B.** The pipeline graph omits a required dependency
- **C.** The schema change immediately breaks an active consumer

## L14-Q008

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A repeated deployment safely recognizes the existing migration state
- **B.** The compatible schema exists before the dependent application starts
- **C.** Both application versions work during the migration window

## L14-Q009

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which execution safeguard most directly addresses the risk in this case?

- **A.** Back up and test recovery before high-risk schema changes
- **B.** Validate backward compatibility before modifying shared schema
- **C.** Delay destructive contraction until old consumers are retired

## L14-Q010

Advanced · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. The team selects this remedy: "Use an expand-and-contract migration sequence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Strict ordering can extend deployment duration
- **B.** Expand-and-contract requires multiple coordinated releases
- **C.** Database rollback may require forward repair or restore

## L14-Q011

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which next change most directly satisfies the stated requirement?

- **A.** Use a reviewed idempotent or state-aware migration mechanism
- **B.** Deploy the approved immutable image digest
- **C.** Use an expand-and-contract migration sequence

## L14-Q012

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which explanation best accounts for the behavior or constraint described?

- **A.** A moving tag is not stable content provenance
- **B.** The schema change immediately breaks an active consumer
- **C.** The script cannot distinguish completed work from missing work

## L14-Q013

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A repeated deployment safely recognizes the existing migration state
- **B.** The running workload reports the approved digest
- **C.** Both application versions work during the migration window

## L14-Q014

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify image origin and scan results before promotion
- **B.** Delay destructive contraction until old consumers are retired
- **C.** Back up and test recovery before high-risk schema changes

## L14-Q015

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. The team selects this remedy: "Use a reviewed idempotent or state-aware migration mechanism." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Expand-and-contract requires multiple coordinated releases
- **B.** Database rollback may require forward repair or restore
- **C.** Digest pinning requires deliberate upgrade management

## L14-Q016

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which next change most directly satisfies the stated requirement?

- **A.** Use a reviewed idempotent or state-aware migration mechanism
- **B.** Deploy the approved immutable image digest
- **C.** Select the artifact from the approved producing run

## L14-Q017

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which explanation best accounts for the behavior or constraint described?

- **A.** The script cannot distinguish completed work from missing work
- **B.** A moving tag is not stable content provenance
- **C.** Newest available does not mean correct release candidate

## L14-Q018

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The running workload reports the approved digest
- **B.** The deployed binary matches the approved artifact checksum
- **C.** A repeated deployment safely recognizes the existing migration state

## L14-Q019

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify image origin and scan results before promotion
- **B.** Retain source and run provenance with the deployment record
- **C.** Back up and test recovery before high-risk schema changes

## L14-Q020

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. The team selects this remedy: "Deploy the approved immutable image digest." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Digest pinning requires deliberate upgrade management
- **B.** Artifact retention becomes a deployment dependency
- **C.** Database rollback may require forward repair or restore

## L14-Q021

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which next change most directly satisfies the stated requirement?

- **A.** Select the artifact from the approved producing run
- **B.** Remove the unnecessary dependency while keeping real prerequisites
- **C.** Deploy the approved immutable image digest

## L14-Q022

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which explanation best accounts for the behavior or constraint described?

- **A.** An artificial edge serializes unrelated operations
- **B.** A moving tag is not stable content provenance
- **C.** Newest available does not mean correct release candidate

## L14-Q023

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The running workload reports the approved digest
- **B.** The deployed binary matches the approved artifact checksum
- **C.** Independent stages overlap and required consumers still wait

## L14-Q024

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retain source and run provenance with the deployment record
- **B.** Keep sensitive promotion dependent on required quality evidence
- **C.** Verify image origin and scan results before promotion

## L14-Q025

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. The team selects this remedy: "Select the artifact from the approved producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Parallel execution can increase peak capacity use
- **B.** Digest pinning requires deliberate upgrade management
- **C.** Artifact retention becomes a deployment dependency

## L14-Q026

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which next change most directly satisfies the stated requirement?

- **A.** Remove the unnecessary dependency while keeping real prerequisites
- **B.** Scope a dedicated deployment identity to required database actions
- **C.** Select the artifact from the approved producing run

## L14-Q027

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which explanation best accounts for the behavior or constraint described?

- **A.** An artificial edge serializes unrelated operations
- **B.** The identity grants broader control than the migration needs
- **C.** Newest available does not mean correct release candidate

## L14-Q028

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployed binary matches the approved artifact checksum
- **B.** Independent stages overlap and required consumers still wait
- **C.** The migration succeeds while unrelated administrative actions are denied

## L14-Q029

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use protected credentials and controlled migration approval
- **B.** Retain source and run provenance with the deployment record
- **C.** Keep sensitive promotion dependent on required quality evidence

## L14-Q030

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. The team selects this remedy: "Remove the unnecessary dependency while keeping real prerequisites." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Some migrations require elevated capabilities temporarily
- **B.** Artifact retention becomes a deployment dependency
- **C.** Parallel execution can increase peak capacity use

## L14-Q031

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which next change most directly satisfies the stated requirement?

- **A.** Plan data recovery separately from application rollback
- **B.** Remove the unnecessary dependency while keeping real prerequisites
- **C.** Scope a dedicated deployment identity to required database actions

## L14-Q032

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which explanation best accounts for the behavior or constraint described?

- **A.** The rollback plan covered only one deployment layer
- **B.** An artificial edge serializes unrelated operations
- **C.** The identity grants broader control than the migration needs

## L14-Q033

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A rehearsal restores a usable application and compatible data
- **B.** Independent stages overlap and required consumers still wait
- **C.** The migration succeeds while unrelated administrative actions are denied

## L14-Q034

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep sensitive promotion dependent on required quality evidence
- **B.** Use protected credentials and controlled migration approval
- **C.** Test backups and recovery objectives before destructive changes

## L14-Q035

Advanced · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. The team selects this remedy: "Scope a dedicated deployment identity to required database actions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Some migrations require elevated capabilities temporarily
- **B.** Restoring data can lose later writes
- **C.** Parallel execution can increase peak capacity use

## L14-Q036

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which next change most directly satisfies the stated requirement?

- **A.** Make the script converge to an explicit desired configuration
- **B.** Scope a dedicated deployment identity to required database actions
- **C.** Plan data recovery separately from application rollback

## L14-Q037

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which explanation best accounts for the behavior or constraint described?

- **A.** The rollback plan covered only one deployment layer
- **B.** The script is imperative without state reconciliation
- **C.** The identity grants broader control than the migration needs

## L14-Q038

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A rehearsal restores a usable application and compatible data
- **B.** Repeated runs produce the same intended rule set
- **C.** The migration succeeds while unrelated administrative actions are denied

## L14-Q039

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use protected credentials and controlled migration approval
- **B.** Test backups and recovery objectives before destructive changes
- **C.** Validate the exact target and diff before applying changes

## L14-Q040

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. The team selects this remedy: "Plan data recovery separately from application rollback." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Some migrations require elevated capabilities temporarily
- **B.** Restoring data can lose later writes
- **C.** Convergent scripts require state inspection and error handling

## L14-Q041

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which next change most directly satisfies the stated requirement?

- **A.** Make the script converge to an explicit desired configuration
- **B.** Stop promotion and apply the documented compatibility recovery path
- **C.** Plan data recovery separately from application rollback

## L14-Q042

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which explanation best accounts for the behavior or constraint described?

- **A.** The script is imperative without state reconciliation
- **B.** A multistep release is not automatically an atomic transaction
- **C.** The rollback plan covered only one deployment layer

## L14-Q043

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A rehearsal restores a usable application and compatible data
- **B.** Repeated runs produce the same intended rule set
- **C.** The old application remains functional or recovery restores compatibility

## L14-Q044

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate the exact target and diff before applying changes
- **B.** Use backward-compatible intermediate states and failure checkpoints
- **C.** Test backups and recovery objectives before destructive changes

## L14-Q045

Advanced · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. The team selects this remedy: "Make the script converge to an explicit desired configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Restoring data can lose later writes
- **B.** Convergent scripts require state inspection and error handling
- **C.** Cross-system releases may need compensating actions

## L14-Q046

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which next change most directly satisfies the stated requirement?

- **A.** Stop promotion and apply the documented compatibility recovery path
- **B.** Declare the schema prerequisite before dependent application rollout
- **C.** Make the script converge to an explicit desired configuration

## L14-Q047

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which explanation best accounts for the behavior or constraint described?

- **A.** The pipeline graph omits a required dependency
- **B.** The script is imperative without state reconciliation
- **C.** A multistep release is not automatically an atomic transaction

## L14-Q048

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The old application remains functional or recovery restores compatibility
- **B.** The compatible schema exists before the dependent application starts
- **C.** Repeated runs produce the same intended rule set

## L14-Q049

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which execution safeguard most directly addresses the risk in this case?

- **A.** Validate the exact target and diff before applying changes
- **B.** Use backward-compatible intermediate states and failure checkpoints
- **C.** Validate backward compatibility before modifying shared schema

## L14-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. The team selects this remedy: "Stop promotion and apply the documented compatibility recovery path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Convergent scripts require state inspection and error handling
- **B.** Cross-system releases may need compensating actions
- **C.** Strict ordering can extend deployment duration
