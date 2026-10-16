# Lab 14 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L14-Q001

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which next change most directly satisfies the stated requirement?

- **A. Use an expand-and-contract migration sequence** Transitional schemas support old and new application versions. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **B. Stop promotion and apply the documented compatibility recovery path** The partial state needs an explicit safe response. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. Declare the schema prerequisite before dependent application rollout** **Correct.** Deployment order should follow actual compatibility dependencies. This directly addresses the constraint stated in this case.

**Explanation:** Deployment order should follow actual compatibility dependencies. The selected answer is declare the schema prerequisite before dependent application rollout.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q002

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which explanation best accounts for the behavior or constraint described?

- **A. The schema change immediately breaks an active consumer** Rolling deployments create mixed-version periods. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **B. A multistep release is not automatically an atomic transaction** Success in one subsystem can outlive another's failure. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. The pipeline graph omits a required dependency** **Correct.** Parallel scheduling exposes an unavailable schema. This directly addresses the constraint stated in this case.

**Explanation:** Parallel scheduling exposes an unavailable schema. The selected answer is the pipeline graph omits a required dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q003

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Both application versions work during the migration window** Compatibility must cover concurrent deployed versions. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **B. The old application remains functional or recovery restores compatibility** The outcome must validate the actual partial state. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. The compatible schema exists before the dependent application starts** **Correct.** Ordering evidence must follow the real prerequisite. This directly addresses the constraint stated in this case.

**Explanation:** Ordering evidence must follow the real prerequisite. The selected answer is the compatible schema exists before the dependent application starts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q004

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate backward compatibility before modifying shared schema** **Correct.** Old instances may run during the transition. This directly addresses the constraint stated in this case.
- **B. Delay destructive contraction until old consumers are retired** Premature removal defeats the compatibility bridge. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **C. Use backward-compatible intermediate states and failure checkpoints** These reduce the risk of stranded deployments. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.

**Explanation:** Old instances may run during the transition. The selected answer is validate backward compatibility before modifying shared schema.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q005

Advanced · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

Schema race: Application deployment starts while the required new database column has not yet been created. The team selects this remedy: "Declare the schema prerequisite before dependent application rollout." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Expand-and-contract requires multiple coordinated releases** Temporary duplication trades simplicity for safer rollout. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **B. Cross-system releases may need compensating actions** A single universal rollback operation is often unavailable. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. Strict ordering can extend deployment duration** **Correct.** Safe parallelism is limited by real dependencies. This directly addresses the constraint stated in this case.

**Explanation:** Safe parallelism is limited by real dependencies. The selected answer is strict ordering can extend deployment duration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q006

Foundational · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which next change most directly satisfies the stated requirement?

- **A. Use a reviewed idempotent or state-aware migration mechanism** Retries must account for already-applied schema changes. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. Declare the schema prerequisite before dependent application rollout** Deployment order should follow actual compatibility dependencies. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. Use an expand-and-contract migration sequence** **Correct.** Transitional schemas support old and new application versions. This directly addresses the constraint stated in this case.

**Explanation:** Transitional schemas support old and new application versions. The selected answer is use an expand-and-contract migration sequence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q007

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which explanation best accounts for the behavior or constraint described?

- **A. The script cannot distinguish completed work from missing work** Timeout leaves execution outcome potentially ambiguous. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. The pipeline graph omits a required dependency** Parallel scheduling exposes an unavailable schema. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. The schema change immediately breaks an active consumer** **Correct.** Rolling deployments create mixed-version periods. This directly addresses the constraint stated in this case.

**Explanation:** Rolling deployments create mixed-version periods. The selected answer is the schema change immediately breaks an active consumer.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q008

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A repeated deployment safely recognizes the existing migration state** The retry should not repeat destructive side effects. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. The compatible schema exists before the dependent application starts** Ordering evidence must follow the real prerequisite. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. Both application versions work during the migration window** **Correct.** Compatibility must cover concurrent deployed versions. This directly addresses the constraint stated in this case.

**Explanation:** Compatibility must cover concurrent deployed versions. The selected answer is both application versions work during the migration window.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q009

Applied · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. Which execution safeguard most directly addresses the risk in this case?

- **A. Back up and test recovery before high-risk schema changes** Idempotency does not prevent every data-loss scenario. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. Validate backward compatibility before modifying shared schema** Old instances may run during the transition. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. Delay destructive contraction until old consumers are retired** **Correct.** Premature removal defeats the compatibility bridge. This directly addresses the constraint stated in this case.

**Explanation:** Premature removal defeats the compatibility bridge. The selected answer is delay destructive contraction until old consumers are retired.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q010

Advanced · [CP4](README.md#task-4) · [D3.4.8](../../docs/objective-map.md)

Breaking migration: A new release renames a column while old application instances are still serving traffic. The team selects this remedy: "Use an expand-and-contract migration sequence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Strict ordering can extend deployment duration** Safe parallelism is limited by real dependencies. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **B. Expand-and-contract requires multiple coordinated releases** **Correct.** Temporary duplication trades simplicity for safer rollout. This directly addresses the constraint stated in this case.
- **C. Database rollback may require forward repair or restore** Schema changes are not always safely reversible. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.

**Explanation:** Temporary duplication trades simplicity for safer rollout. The selected answer is expand-and-contract requires multiple coordinated releases.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q011

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which next change most directly satisfies the stated requirement?

- **A. Use a reviewed idempotent or state-aware migration mechanism** **Correct.** Retries must account for already-applied schema changes. This directly addresses the constraint stated in this case.
- **B. Deploy the approved immutable image digest** A digest identifies the validated image content. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **C. Use an expand-and-contract migration sequence** Transitional schemas support old and new application versions. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.

**Explanation:** Retries must account for already-applied schema changes. The selected answer is use a reviewed idempotent or state-aware migration mechanism.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q012

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which explanation best accounts for the behavior or constraint described?

- **A. A moving tag is not stable content provenance** Registry names can be reassigned to different images. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **B. The schema change immediately breaks an active consumer** Rolling deployments create mixed-version periods. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **C. The script cannot distinguish completed work from missing work** **Correct.** Timeout leaves execution outcome potentially ambiguous. This directly addresses the constraint stated in this case.

**Explanation:** Timeout leaves execution outcome potentially ambiguous. The selected answer is the script cannot distinguish completed work from missing work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q013

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A repeated deployment safely recognizes the existing migration state** **Correct.** The retry should not repeat destructive side effects. This directly addresses the constraint stated in this case.
- **B. The running workload reports the approved digest** Runtime evidence must match the release candidate. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **C. Both application versions work during the migration window** Compatibility must cover concurrent deployed versions. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.

**Explanation:** The retry should not repeat destructive side effects. The selected answer is a repeated deployment safely recognizes the existing migration state.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q014

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify image origin and scan results before promotion** Immutable identity alone does not establish safety. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **B. Delay destructive contraction until old consumers are retired** Premature removal defeats the compatibility bridge. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **C. Back up and test recovery before high-risk schema changes** **Correct.** Idempotency does not prevent every data-loss scenario. This directly addresses the constraint stated in this case.

**Explanation:** Idempotency does not prevent every data-loss scenario. The selected answer is back up and test recovery before high-risk schema changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q015

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

Migration retry: A timed-out deployment reruns its database script and fails because the script assumes an empty database. The team selects this remedy: "Use a reviewed idempotent or state-aware migration mechanism." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Expand-and-contract requires multiple coordinated releases** Temporary duplication trades simplicity for safer rollout. That addresses a different requirement: Breaking migration. It does not directly resolve this case's stated constraint.
- **B. Database rollback may require forward repair or restore** **Correct.** Schema changes are not always safely reversible. This directly addresses the constraint stated in this case.
- **C. Digest pinning requires deliberate upgrade management** New images do not arrive automatically under a fixed digest. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.

**Explanation:** Schema changes are not always safely reversible. The selected answer is database rollback may require forward repair or restore.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q016

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which next change most directly satisfies the stated requirement?

- **A. Use a reviewed idempotent or state-aware migration mechanism** Retries must account for already-applied schema changes. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. Deploy the approved immutable image digest** **Correct.** A digest identifies the validated image content. This directly addresses the constraint stated in this case.
- **C. Select the artifact from the approved producing run** The release must use its verified input. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** A digest identifies the validated image content. The selected answer is deploy the approved immutable image digest.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q017

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which explanation best accounts for the behavior or constraint described?

- **A. The script cannot distinguish completed work from missing work** Timeout leaves execution outcome potentially ambiguous. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.
- **B. A moving tag is not stable content provenance** **Correct.** Registry names can be reassigned to different images. This directly addresses the constraint stated in this case.
- **C. Newest available does not mean correct release candidate** Global ordering ignores source and approval context. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Registry names can be reassigned to different images. The selected answer is a moving tag is not stable content provenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q018

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The running workload reports the approved digest** **Correct.** Runtime evidence must match the release candidate. This directly addresses the constraint stated in this case.
- **B. The deployed binary matches the approved artifact checksum** The comparison binds delivery to the tested bytes. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **C. A repeated deployment safely recognizes the existing migration state** The retry should not repeat destructive side effects. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.

**Explanation:** Runtime evidence must match the release candidate. The selected answer is the running workload reports the approved digest.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q019

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify image origin and scan results before promotion** **Correct.** Immutable identity alone does not establish safety. This directly addresses the constraint stated in this case.
- **B. Retain source and run provenance with the deployment record** A checksum needs a trusted reference to be meaningful. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **C. Back up and test recovery before high-risk schema changes** Idempotency does not prevent every data-loss scenario. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.

**Explanation:** Immutable identity alone does not establish safety. The selected answer is verify image origin and scan results before promotion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q020

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Mutable container: A deployment uses an image tag reused by several builds, and the runtime pulls different bytes on retry. The team selects this remedy: "Deploy the approved immutable image digest." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Digest pinning requires deliberate upgrade management** **Correct.** New images do not arrive automatically under a fixed digest. This directly addresses the constraint stated in this case.
- **B. Artifact retention becomes a deployment dependency** Deleting approved inputs can block redeployment. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **C. Database rollback may require forward repair or restore** Schema changes are not always safely reversible. That addresses a different requirement: Migration retry. It does not directly resolve this case's stated constraint.

**Explanation:** New images do not arrive automatically under a fixed digest. The selected answer is digest pinning requires deliberate upgrade management.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q021

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which next change most directly satisfies the stated requirement?

- **A. Select the artifact from the approved producing run** **Correct.** The release must use its verified input. This directly addresses the constraint stated in this case.
- **B. Remove the unnecessary dependency while keeping real prerequisites** The stage graph should encode required data flow. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **C. Deploy the approved immutable image digest** A digest identifies the validated image content. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.

**Explanation:** The release must use its verified input. The selected answer is select the artifact from the approved producing run.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q022

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which explanation best accounts for the behavior or constraint described?

- **A. An artificial edge serializes unrelated operations** The delay is unrelated to a technical dependency. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **B. A moving tag is not stable content provenance** Registry names can be reassigned to different images. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **C. Newest available does not mean correct release candidate** **Correct.** Global ordering ignores source and approval context. This directly addresses the constraint stated in this case.

**Explanation:** Global ordering ignores source and approval context. The selected answer is newest available does not mean correct release candidate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q023

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The running workload reports the approved digest** Runtime evidence must match the release candidate. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **B. The deployed binary matches the approved artifact checksum** **Correct.** The comparison binds delivery to the tested bytes. This directly addresses the constraint stated in this case.
- **C. Independent stages overlap and required consumers still wait** Performance improvement must preserve necessary ordering. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.

**Explanation:** The comparison binds delivery to the tested bytes. The selected answer is the deployed binary matches the approved artifact checksum.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q024

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. Which execution safeguard most directly addresses the risk in this case?

- **A. Retain source and run provenance with the deployment record** **Correct.** A checksum needs a trusted reference to be meaningful. This directly addresses the constraint stated in this case.
- **B. Keep sensitive promotion dependent on required quality evidence** Removing unrelated edges must not remove genuine gates. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **C. Verify image origin and scan results before promotion** Immutable identity alone does not establish safety. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.

**Explanation:** A checksum needs a trusted reference to be meaningful. The selected answer is retain source and run provenance with the deployment record.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q025

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

Binary mismatch: The release downloads a build output from another branch because it selects the newest artifact globally. The team selects this remedy: "Select the artifact from the approved producing run." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel execution can increase peak capacity use** Shorter elapsed time may consume more simultaneous workers. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **B. Digest pinning requires deliberate upgrade management** New images do not arrive automatically under a fixed digest. That addresses a different requirement: Mutable container. It does not directly resolve this case's stated constraint.
- **C. Artifact retention becomes a deployment dependency** **Correct.** Deleting approved inputs can block redeployment. This directly addresses the constraint stated in this case.

**Explanation:** Deleting approved inputs can block redeployment. The selected answer is artifact retention becomes a deployment dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q026

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which next change most directly satisfies the stated requirement?

- **A. Remove the unnecessary dependency while keeping real prerequisites** **Correct.** The stage graph should encode required data flow. This directly addresses the constraint stated in this case.
- **B. Scope a dedicated deployment identity to required database actions** Migration privilege should match the reviewed operation. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **C. Select the artifact from the approved producing run** The release must use its verified input. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The stage graph should encode required data flow. The selected answer is remove the unnecessary dependency while keeping real prerequisites.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q027

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which explanation best accounts for the behavior or constraint described?

- **A. An artificial edge serializes unrelated operations** **Correct.** The delay is unrelated to a technical dependency. This directly addresses the constraint stated in this case.
- **B. The identity grants broader control than the migration needs** Compromised pipeline code could misuse excess permissions. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **C. Newest available does not mean correct release candidate** Global ordering ignores source and approval context. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The delay is unrelated to a technical dependency. The selected answer is an artificial edge serializes unrelated operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q028

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployed binary matches the approved artifact checksum** The comparison binds delivery to the tested bytes. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **B. Independent stages overlap and required consumers still wait** **Correct.** Performance improvement must preserve necessary ordering. This directly addresses the constraint stated in this case.
- **C. The migration succeeds while unrelated administrative actions are denied** The test should demonstrate both capability and limit. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.

**Explanation:** Performance improvement must preserve necessary ordering. The selected answer is independent stages overlap and required consumers still wait.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q029

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. Which execution safeguard most directly addresses the risk in this case?

- **A. Use protected credentials and controlled migration approval** Database write authority is a sensitive release capability. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **B. Retain source and run provenance with the deployment record** A checksum needs a trusted reference to be meaningful. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **C. Keep sensitive promotion dependent on required quality evidence** **Correct.** Removing unrelated edges must not remove genuine gates. This directly addresses the constraint stated in this case.

**Explanation:** Removing unrelated edges must not remove genuine gates. The selected answer is keep sensitive promotion dependent on required quality evidence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q030

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Independent stages: Documentation publication waits for database deployment although neither consumes the other's output. The team selects this remedy: "Remove the unnecessary dependency while keeping real prerequisites." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some migrations require elevated capabilities temporarily** Design explicit bounded elevation when necessary. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **B. Artifact retention becomes a deployment dependency** Deleting approved inputs can block redeployment. That addresses a different requirement: Binary mismatch. It does not directly resolve this case's stated constraint.
- **C. Parallel execution can increase peak capacity use** **Correct.** Shorter elapsed time may consume more simultaneous workers. This directly addresses the constraint stated in this case.

**Explanation:** Shorter elapsed time may consume more simultaneous workers. The selected answer is parallel execution can increase peak capacity use.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q031

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which next change most directly satisfies the stated requirement?

- **A. Plan data recovery separately from application rollback** Changing application bytes does not restore deleted data. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **B. Remove the unnecessary dependency while keeping real prerequisites** The stage graph should encode required data flow. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **C. Scope a dedicated deployment identity to required database actions** **Correct.** Migration privilege should match the reviewed operation. This directly addresses the constraint stated in this case.

**Explanation:** Migration privilege should match the reviewed operation. The selected answer is scope a dedicated deployment identity to required database actions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q032

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which explanation best accounts for the behavior or constraint described?

- **A. The rollback plan covered only one deployment layer** Database state has an independent lifecycle. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **B. An artificial edge serializes unrelated operations** The delay is unrelated to a technical dependency. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **C. The identity grants broader control than the migration needs** **Correct.** Compromised pipeline code could misuse excess permissions. This directly addresses the constraint stated in this case.

**Explanation:** Compromised pipeline code could misuse excess permissions. The selected answer is the identity grants broader control than the migration needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q033

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A rehearsal restores a usable application and compatible data** Recovery must validate the whole service contract. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **B. Independent stages overlap and required consumers still wait** Performance improvement must preserve necessary ordering. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **C. The migration succeeds while unrelated administrative actions are denied** **Correct.** The test should demonstrate both capability and limit. This directly addresses the constraint stated in this case.

**Explanation:** The test should demonstrate both capability and limit. The selected answer is the migration succeeds while unrelated administrative actions are denied.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q034

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep sensitive promotion dependent on required quality evidence** Removing unrelated edges must not remove genuine gates. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.
- **B. Use protected credentials and controlled migration approval** **Correct.** Database write authority is a sensitive release capability. This directly addresses the constraint stated in this case.
- **C. Test backups and recovery objectives before destructive changes** An untested backup is weak recovery evidence. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.

**Explanation:** Database write authority is a sensitive release capability. The selected answer is use protected credentials and controlled migration approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q035

Advanced · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

Production credentials: A migration step runs with unrestricted database administrator rights although it only applies a known schema change. The team selects this remedy: "Scope a dedicated deployment identity to required database actions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some migrations require elevated capabilities temporarily** **Correct.** Design explicit bounded elevation when necessary. This directly addresses the constraint stated in this case.
- **B. Restoring data can lose later writes** Recovery planning must consider the acceptable data-loss window. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **C. Parallel execution can increase peak capacity use** Shorter elapsed time may consume more simultaneous workers. That addresses a different requirement: Independent stages. It does not directly resolve this case's stated constraint.

**Explanation:** Design explicit bounded elevation when necessary. The selected answer is some migrations require elevated capabilities temporarily.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q036

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which next change most directly satisfies the stated requirement?

- **A. Make the script converge to an explicit desired configuration** Repeated execution should not accumulate unintended permissions. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **B. Scope a dedicated deployment identity to required database actions** Migration privilege should match the reviewed operation. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **C. Plan data recovery separately from application rollback** **Correct.** Changing application bytes does not restore deleted data. This directly addresses the constraint stated in this case.

**Explanation:** Changing application bytes does not restore deleted data. The selected answer is plan data recovery separately from application rollback.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q037

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which explanation best accounts for the behavior or constraint described?

- **A. The rollback plan covered only one deployment layer** **Correct.** Database state has an independent lifecycle. This directly addresses the constraint stated in this case.
- **B. The script is imperative without state reconciliation** Each retry adds another side effect. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **C. The identity grants broader control than the migration needs** Compromised pipeline code could misuse excess permissions. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.

**Explanation:** Database state has an independent lifecycle. The selected answer is the rollback plan covered only one deployment layer.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q038

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A rehearsal restores a usable application and compatible data** **Correct.** Recovery must validate the whole service contract. This directly addresses the constraint stated in this case.
- **B. Repeated runs produce the same intended rule set** Convergence demonstrates safe retry behavior. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **C. The migration succeeds while unrelated administrative actions are denied** The test should demonstrate both capability and limit. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.

**Explanation:** Recovery must validate the whole service contract. The selected answer is a rehearsal restores a usable application and compatible data.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q039

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. Which execution safeguard most directly addresses the risk in this case?

- **A. Use protected credentials and controlled migration approval** Database write authority is a sensitive release capability. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **B. Test backups and recovery objectives before destructive changes** **Correct.** An untested backup is weak recovery evidence. This directly addresses the constraint stated in this case.
- **C. Validate the exact target and diff before applying changes** A correct script can still affect the wrong environment. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.

**Explanation:** An untested backup is weak recovery evidence. The selected answer is test backups and recovery objectives before destructive changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q040

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Rollback illusion: The application is rolled back successfully, but a destructive database migration has removed data the older version needs. The team selects this remedy: "Plan data recovery separately from application rollback." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some migrations require elevated capabilities temporarily** Design explicit bounded elevation when necessary. That addresses a different requirement: Production credentials. It does not directly resolve this case's stated constraint.
- **B. Restoring data can lose later writes** **Correct.** Recovery planning must consider the acceptable data-loss window. This directly addresses the constraint stated in this case.
- **C. Convergent scripts require state inspection and error handling** Idempotency needs deliberate implementation effort. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.

**Explanation:** Recovery planning must consider the acceptable data-loss window. The selected answer is restoring data can lose later writes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q041

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which next change most directly satisfies the stated requirement?

- **A. Make the script converge to an explicit desired configuration** **Correct.** Repeated execution should not accumulate unintended permissions. This directly addresses the constraint stated in this case.
- **B. Stop promotion and apply the documented compatibility recovery path** The partial state needs an explicit safe response. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. Plan data recovery separately from application rollback** Changing application bytes does not restore deleted data. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.

**Explanation:** Repeated execution should not accumulate unintended permissions. The selected answer is make the script converge to an explicit desired configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q042

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which explanation best accounts for the behavior or constraint described?

- **A. The script is imperative without state reconciliation** **Correct.** Each retry adds another side effect. This directly addresses the constraint stated in this case.
- **B. A multistep release is not automatically an atomic transaction** Success in one subsystem can outlive another's failure. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. The rollback plan covered only one deployment layer** Database state has an independent lifecycle. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.

**Explanation:** Each retry adds another side effect. The selected answer is the script is imperative without state reconciliation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q043

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A rehearsal restores a usable application and compatible data** Recovery must validate the whole service contract. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **B. Repeated runs produce the same intended rule set** **Correct.** Convergence demonstrates safe retry behavior. This directly addresses the constraint stated in this case.
- **C. The old application remains functional or recovery restores compatibility** The outcome must validate the actual partial state. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.

**Explanation:** Convergence demonstrates safe retry behavior. The selected answer is repeated runs produce the same intended rule set.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q044

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate the exact target and diff before applying changes** **Correct.** A correct script can still affect the wrong environment. This directly addresses the constraint stated in this case.
- **B. Use backward-compatible intermediate states and failure checkpoints** These reduce the risk of stranded deployments. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.
- **C. Test backups and recovery objectives before destructive changes** An untested backup is weak recovery evidence. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.

**Explanation:** A correct script can still affect the wrong environment. The selected answer is validate the exact target and diff before applying changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q045

Advanced · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Unsafe deployment script: A retry appends duplicate firewall rules and grants each rule broader access than the previous run. The team selects this remedy: "Make the script converge to an explicit desired configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Restoring data can lose later writes** Recovery planning must consider the acceptable data-loss window. That addresses a different requirement: Rollback illusion. It does not directly resolve this case's stated constraint.
- **B. Convergent scripts require state inspection and error handling** **Correct.** Idempotency needs deliberate implementation effort. This directly addresses the constraint stated in this case.
- **C. Cross-system releases may need compensating actions** A single universal rollback operation is often unavailable. That addresses a different requirement: Partial release. It does not directly resolve this case's stated constraint.

**Explanation:** Idempotency needs deliberate implementation effort. The selected answer is convergent scripts require state inspection and error handling.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q046

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which next change most directly satisfies the stated requirement?

- **A. Stop promotion and apply the documented compatibility recovery path** **Correct.** The partial state needs an explicit safe response. This directly addresses the constraint stated in this case.
- **B. Declare the schema prerequisite before dependent application rollout** Deployment order should follow actual compatibility dependencies. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. Make the script converge to an explicit desired configuration** Repeated execution should not accumulate unintended permissions. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.

**Explanation:** The partial state needs an explicit safe response. The selected answer is stop promotion and apply the documented compatibility recovery path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q047

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which explanation best accounts for the behavior or constraint described?

- **A. The pipeline graph omits a required dependency** Parallel scheduling exposes an unavailable schema. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **B. The script is imperative without state reconciliation** Each retry adds another side effect. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **C. A multistep release is not automatically an atomic transaction** **Correct.** Success in one subsystem can outlive another's failure. This directly addresses the constraint stated in this case.

**Explanation:** Success in one subsystem can outlive another's failure. The selected answer is a multistep release is not automatically an atomic transaction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q048

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The old application remains functional or recovery restores compatibility** **Correct.** The outcome must validate the actual partial state. This directly addresses the constraint stated in this case.
- **B. The compatible schema exists before the dependent application starts** Ordering evidence must follow the real prerequisite. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.
- **C. Repeated runs produce the same intended rule set** Convergence demonstrates safe retry behavior. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.

**Explanation:** The outcome must validate the actual partial state. The selected answer is the old application remains functional or recovery restores compatibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q049

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate the exact target and diff before applying changes** A correct script can still affect the wrong environment. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **B. Use backward-compatible intermediate states and failure checkpoints** **Correct.** These reduce the risk of stranded deployments. This directly addresses the constraint stated in this case.
- **C. Validate backward compatibility before modifying shared schema** Old instances may run during the transition. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.

**Explanation:** These reduce the risk of stranded deployments. The selected answer is use backward-compatible intermediate states and failure checkpoints.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md), [D3.4.8](../../docs/objective-map.md)

Partial release: Database deployment succeeds but application rollout fails, leaving a new schema with the old application. The team selects this remedy: "Stop promotion and apply the documented compatibility recovery path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Convergent scripts require state inspection and error handling** Idempotency needs deliberate implementation effort. That addresses a different requirement: Unsafe deployment script. It does not directly resolve this case's stated constraint.
- **B. Cross-system releases may need compensating actions** **Correct.** A single universal rollback operation is often unavailable. This directly addresses the constraint stated in this case.
- **C. Strict ordering can extend deployment duration** Safe parallelism is limited by real dependencies. That addresses a different requirement: Schema race. It does not directly resolve this case's stated constraint.

**Explanation:** A single universal rollback operation is often unavailable. The selected answer is cross-system releases may need compensating actions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops); [S2](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)
