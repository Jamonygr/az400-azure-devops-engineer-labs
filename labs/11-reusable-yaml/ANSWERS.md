# Lab 11 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L11-Q001

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which next change most directly satisfies the stated requirement?

- **A. Extract a governed reusable template** **Correct.** Shared implementation reduces unmanaged copy divergence. This directly addresses the constraint stated in this case.
- **B. Replace free-form executable input with constrained parameters** The interface should restrict executable choices. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **C. Remove unnecessary dependencies while retaining required data ordering** The graph should express actual prerequisites. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.

**Explanation:** Shared implementation reduces unmanaged copy divergence. The selected answer is extract a governed reusable template.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which explanation best accounts for the behavior or constraint described?

- **A. The template delegates privileged code execution** Untrusted strings become powerful build instructions. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. Artificial edges prevent eligible parallel execution** Agent capacity alone cannot override dependency ordering. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. Copies have independent maintenance lifecycles** **Correct.** Editing one copy cannot update others. This directly addresses the constraint stated in this case.

**Explanation:** Editing one copy cannot update others. The selected answer is copies have independent maintenance lifecycles.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q003

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Unsupported parameter values are rejected before deployment** Negative validation proves the interface boundary. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. Independent tests overlap without missing required outputs** The result should improve runtime and preserve correctness. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. Consumers execute the approved template revision** **Correct.** The resolved reference proves adoption. This directly addresses the constraint stated in this case.

**Explanation:** The resolved reference proves adoption. The selected answer is consumers execute the approved template revision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q004

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep publication and deployment dependent on required test results** Parallelism must not bypass validation gates. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **B. Review central changes with representative consumers** **Correct.** A shared defect affects many pipelines. This directly addresses the constraint stated in this case.
- **C. Separate trusted implementation from caller-controlled values** Parameterization should not become code injection. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.

**Explanation:** A shared defect affects many pipelines. The selected answer is review central changes with representative consumers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q005

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. The team selects this remedy: "Extract a governed reusable template." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared templates create coordinated upgrade work** **Correct.** Consumers need compatible change management. This directly addresses the constraint stated in this case.
- **B. Constrained interfaces reduce caller flexibility** Additional capabilities require deliberate template evolution. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **C. More parallel jobs consume more execution capacity** Runtime improvement may increase peak resource use. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers need compatible change management. The selected answer is shared templates create coordinated upgrade work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q006

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which next change most directly satisfies the stated requirement?

- **A. Extract a governed reusable template** Shared implementation reduces unmanaged copy divergence. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **B. Replace free-form executable input with constrained parameters** **Correct.** The interface should restrict executable choices. This directly addresses the constraint stated in this case.
- **C. Use the appropriate template parameter and expression phase** Structural expansion happens before runtime execution. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.

**Explanation:** The interface should restrict executable choices. The selected answer is replace free-form executable input with constrained parameters.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q007

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which explanation best accounts for the behavior or constraint described?

- **A. The template delegates privileged code execution** **Correct.** Untrusted strings become powerful build instructions. This directly addresses the constraint stated in this case.
- **B. The value is unavailable during template expansion** Runtime state cannot retroactively create compiled structure. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **C. Copies have independent maintenance lifecycles** Editing one copy cannot update others. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.

**Explanation:** Untrusted strings become powerful build instructions. The selected answer is the template delegates privileged code execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q008

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Consumers execute the approved template revision** The resolved reference proves adoption. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **B. Unsupported parameter values are rejected before deployment** **Correct.** Negative validation proves the interface boundary. This directly addresses the constraint stated in this case.
- **C. The expanded pipeline contains the intended stage graph** Rendered structure verifies compile-time behavior. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Negative validation proves the interface boundary. The selected answer is unsupported parameter values are rejected before deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q009

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which execution safeguard most directly addresses the risk in this case?

- **A. Review central changes with representative consumers** A shared defect affects many pipelines. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **B. Separate trusted implementation from caller-controlled values** **Correct.** Parameterization should not become code injection. This directly addresses the constraint stated in this case.
- **C. Keep secrets out of compile-time parameter values** Expanded structures can expose supplied configuration. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Parameterization should not become code injection. The selected answer is separate trusted implementation from caller-controlled values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q010

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. The team selects this remedy: "Replace free-form executable input with constrained parameters." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Constrained interfaces reduce caller flexibility** **Correct.** Additional capabilities require deliberate template evolution. This directly addresses the constraint stated in this case.
- **B. Compile-time choices cannot use later job results** Dynamic execution may need runtime conditions instead. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **C. Shared templates create coordinated upgrade work** Consumers need compatible change management. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.

**Explanation:** Additional capabilities require deliberate template evolution. The selected answer is constrained interfaces reduce caller flexibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which next change most directly satisfies the stated requirement?

- **A. Replace free-form executable input with constrained parameters** The interface should restrict executable choices. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. Use the appropriate template parameter and expression phase** **Correct.** Structural expansion happens before runtime execution. This directly addresses the constraint stated in this case.
- **C. Declare and reference a supported cross-job output** Job boundaries need explicit data transfer. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.

**Explanation:** Structural expansion happens before runtime execution. The selected answer is use the appropriate template parameter and expression phase.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which explanation best accounts for the behavior or constraint described?

- **A. The template delegates privileged code execution** Untrusted strings become powerful build instructions. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. The value is unavailable during template expansion** **Correct.** Runtime state cannot retroactively create compiled structure. This directly addresses the constraint stated in this case.
- **C. A process environment does not span independent jobs** Worker isolation prevents implicit variable inheritance. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.

**Explanation:** Runtime state cannot retroactively create compiled structure. The selected answer is the value is unavailable during template expansion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q013

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dependent job receives the expected output value** The value must cross the actual execution boundary. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.
- **B. Unsupported parameter values are rejected before deployment** Negative validation proves the interface boundary. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **C. The expanded pipeline contains the intended stage graph** **Correct.** Rendered structure verifies compile-time behavior. This directly addresses the constraint stated in this case.

**Explanation:** Rendered structure verifies compile-time behavior. The selected answer is the expanded pipeline contains the intended stage graph.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q014

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate trusted implementation from caller-controlled values** Parameterization should not become code injection. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. Keep secrets out of compile-time parameter values** **Correct.** Expanded structures can expose supplied configuration. This directly addresses the constraint stated in this case.
- **C. Declare the dependency and avoid transferring secrets casually** Data flow should follow the intended trust graph. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.

**Explanation:** Expanded structures can expose supplied configuration. The selected answer is keep secrets out of compile-time parameter values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. The team selects this remedy: "Use the appropriate template parameter and expression phase." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Constrained interfaces reduce caller flexibility** Additional capabilities require deliberate template evolution. That addresses a different requirement: Unsafe template input. It does not directly resolve this case's stated constraint.
- **B. Compile-time choices cannot use later job results** **Correct.** Dynamic execution may need runtime conditions instead. This directly addresses the constraint stated in this case.
- **C. Outputs are metadata rather than bulk artifact transport** Large deliverables belong in artifact storage. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.

**Explanation:** Dynamic execution may need runtime conditions instead. The selected answer is compile-time choices cannot use later job results.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q016

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which next change most directly satisfies the stated requirement?

- **A. Authorize that pipeline to use the group** Resource existence does not imply pipeline authorization. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **B. Use the appropriate template parameter and expression phase** Structural expansion happens before runtime execution. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **C. Declare and reference a supported cross-job output** **Correct.** Job boundaries need explicit data transfer. This directly addresses the constraint stated in this case.

**Explanation:** Job boundaries need explicit data transfer. The selected answer is declare and reference a supported cross-job output.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q017

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which explanation best accounts for the behavior or constraint described?

- **A. The shared configuration resource is protected separately** Referencing its name does not grant access. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **B. The value is unavailable during template expansion** Runtime state cannot retroactively create compiled structure. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **C. A process environment does not span independent jobs** **Correct.** Worker isolation prevents implicit variable inheritance. This directly addresses the constraint stated in this case.

**Explanation:** Worker isolation prevents implicit variable inheritance. The selected answer is a process environment does not span independent jobs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q018

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The expanded pipeline contains the intended stage graph** Rendered structure verifies compile-time behavior. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **B. The dependent job receives the expected output value** **Correct.** The value must cross the actual execution boundary. This directly addresses the constraint stated in this case.
- **C. The authorized pipeline reads the required values** The test should verify controlled resource consumption. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.

**Explanation:** The value must cross the actual execution boundary. The selected answer is the dependent job receives the expected output value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q019

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid enabling blanket access for all pipelines** Shared secrets need deliberate consumer authorization. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **B. Keep secrets out of compile-time parameter values** Expanded structures can expose supplied configuration. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.
- **C. Declare the dependency and avoid transferring secrets casually** **Correct.** Data flow should follow the intended trust graph. This directly addresses the constraint stated in this case.

**Explanation:** Data flow should follow the intended trust graph. The selected answer is declare the dependency and avoid transferring secrets casually.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q020

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. The team selects this remedy: "Declare and reference a supported cross-job output." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Outputs are metadata rather than bulk artifact transport** **Correct.** Large deliverables belong in artifact storage. This directly addresses the constraint stated in this case.
- **B. Central variables create shared operational dependencies** Changes can affect multiple authorized consumers. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **C. Compile-time choices cannot use later job results** Dynamic execution may need runtime conditions instead. That addresses a different requirement: Compile-time surprise. It does not directly resolve this case's stated constraint.

**Explanation:** Large deliverables belong in artifact storage. The selected answer is outputs are metadata rather than bulk artifact transport.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q021

Foundational · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which next change most directly satisfies the stated requirement?

- **A. Authorize that pipeline to use the group** **Correct.** Resource existence does not imply pipeline authorization. This directly addresses the constraint stated in this case.
- **B. Pin the shared template to a reviewed immutable revision** Stable references make executable dependencies predictable. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **C. Declare and reference a supported cross-job output** Job boundaries need explicit data transfer. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.

**Explanation:** Resource existence does not imply pipeline authorization. The selected answer is authorize that pipeline to use the group.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q022

Foundational · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which explanation best accounts for the behavior or constraint described?

- **A. The dependency changed independently of consumer code** A moving branch allows unreviewed downstream behavior changes. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **B. A process environment does not span independent jobs** Worker isolation prevents implicit variable inheritance. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.
- **C. The shared configuration resource is protected separately** **Correct.** Referencing its name does not grant access. This directly addresses the constraint stated in this case.

**Explanation:** Referencing its name does not grant access. The selected answer is the shared configuration resource is protected separately.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q023

Applied · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dependent job receives the expected output value** The value must cross the actual execution boundary. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.
- **B. The authorized pipeline reads the required values** **Correct.** The test should verify controlled resource consumption. This directly addresses the constraint stated in this case.
- **C. The run resolves the documented template commit** Resolution evidence identifies the executed implementation. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.

**Explanation:** The test should verify controlled resource consumption. The selected answer is the authorized pipeline reads the required values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q024

Applied · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which execution safeguard most directly addresses the risk in this case?

- **A. Declare the dependency and avoid transferring secrets casually** Data flow should follow the intended trust graph. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.
- **B. Avoid enabling blanket access for all pipelines** **Correct.** Shared secrets need deliberate consumer authorization. This directly addresses the constraint stated in this case.
- **C. Advance pins through tested reviewed updates** Permanent pins can miss security fixes. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.

**Explanation:** Shared secrets need deliberate consumer authorization. The selected answer is avoid enabling blanket access for all pipelines.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q025

Advanced · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. The team selects this remedy: "Authorize that pipeline to use the group." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Outputs are metadata rather than bulk artifact transport** Large deliverables belong in artifact storage. That addresses a different requirement: Missing output. It does not directly resolve this case's stated constraint.
- **B. Central variables create shared operational dependencies** **Correct.** Changes can affect multiple authorized consumers. This directly addresses the constraint stated in this case.
- **C. Pinning shifts freshness to a maintenance workflow** Reproducibility requires intentional upgrade discipline. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.

**Explanation:** Changes can affect multiple authorized consumers. The selected answer is central variables create shared operational dependencies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q026

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which next change most directly satisfies the stated requirement?

- **A. Pin the shared template to a reviewed immutable revision** **Correct.** Stable references make executable dependencies predictable. This directly addresses the constraint stated in this case.
- **B. Expose a reusable workflow with an explicit caller contract** Workflow reuse supports a governed multi-job interface. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **C. Authorize that pipeline to use the group** Resource existence does not imply pipeline authorization. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.

**Explanation:** Stable references make executable dependencies predictable. The selected answer is pin the shared template to a reviewed immutable revision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q027

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which explanation best accounts for the behavior or constraint described?

- **A. Copying workflow files loses shared implementation ownership** Consumers would maintain separate definitions. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **B. The shared configuration resource is protected separately** Referencing its name does not grant access. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **C. The dependency changed independently of consumer code** **Correct.** A moving branch allows unreviewed downstream behavior changes. This directly addresses the constraint stated in this case.

**Explanation:** A moving branch allows unreviewed downstream behavior changes. The selected answer is the dependency changed independently of consumer code.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q028

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The run resolves the documented template commit** **Correct.** Resolution evidence identifies the executed implementation. This directly addresses the constraint stated in this case.
- **B. A caller invokes the shared workflow with validated inputs** The call demonstrates the intended reuse boundary. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **C. The authorized pipeline reads the required values** The test should verify controlled resource consumption. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.

**Explanation:** Resolution evidence identifies the executed implementation. The selected answer is the run resolves the documented template commit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q029

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which execution safeguard most directly addresses the risk in this case?

- **A. Advance pins through tested reviewed updates** **Correct.** Permanent pins can miss security fixes. This directly addresses the constraint stated in this case.
- **B. Declare only required secret and permission access** Reusable code should not receive unnecessary authority. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **C. Avoid enabling blanket access for all pipelines** Shared secrets need deliberate consumer authorization. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.

**Explanation:** Permanent pins can miss security fixes. The selected answer is advance pins through tested reviewed updates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q030

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. The team selects this remedy: "Pin the shared template to a reviewed immutable revision." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reusable workflows have documented nesting and permission constraints** The interface must fit supported platform behavior. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **B. Central variables create shared operational dependencies** Changes can affect multiple authorized consumers. That addresses a different requirement: Variable group access. It does not directly resolve this case's stated constraint.
- **C. Pinning shifts freshness to a maintenance workflow** **Correct.** Reproducibility requires intentional upgrade discipline. This directly addresses the constraint stated in this case.

**Explanation:** Reproducibility requires intentional upgrade discipline. The selected answer is pinning shifts freshness to a maintenance workflow.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q031

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which next change most directly satisfies the stated requirement?

- **A. Pin the shared template to a reviewed immutable revision** Stable references make executable dependencies predictable. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **B. Expose a reusable workflow with an explicit caller contract** **Correct.** Workflow reuse supports a governed multi-job interface. This directly addresses the constraint stated in this case.
- **C. Inspect scope precedence and remove ambiguous duplicate definitions** Effective values depend on where variables are defined. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Workflow reuse supports a governed multi-job interface. The selected answer is expose a reusable workflow with an explicit caller contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q032

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which explanation best accounts for the behavior or constraint described?

- **A. The dependency changed independently of consumer code** A moving branch allows unreviewed downstream behavior changes. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **B. Copying workflow files loses shared implementation ownership** **Correct.** Consumers would maintain separate definitions. This directly addresses the constraint stated in this case.
- **C. A narrower definition overrides the expected broader value** The visible top-level setting may not be effective. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers would maintain separate definitions. The selected answer is copying workflow files loses shared implementation ownership.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q033

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The resolved nonsecret target matches the reviewed configuration** The test must inspect the effective runtime value. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.
- **B. The run resolves the documented template commit** Resolution evidence identifies the executed implementation. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **C. A caller invokes the shared workflow with validated inputs** **Correct.** The call demonstrates the intended reuse boundary. This directly addresses the constraint stated in this case.

**Explanation:** The call demonstrates the intended reuse boundary. The selected answer is a caller invokes the shared workflow with validated inputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q034

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which execution safeguard most directly addresses the risk in this case?

- **A. Advance pins through tested reviewed updates** Permanent pins can miss security fixes. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **B. Declare only required secret and permission access** **Correct.** Reusable code should not receive unnecessary authority. This directly addresses the constraint stated in this case.
- **C. Use distinct names and explicit environment configuration** Ambiguous reuse increases wrong-target deployment risk. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Reusable code should not receive unnecessary authority. The selected answer is declare only required secret and permission access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q035

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. The team selects this remedy: "Expose a reusable workflow with an explicit caller contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Centralization does not eliminate precedence rules** Template consumers still need a clear configuration contract. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.
- **B. Pinning shifts freshness to a maintenance workflow** Reproducibility requires intentional upgrade discipline. That addresses a different requirement: Moving shared reference. It does not directly resolve this case's stated constraint.
- **C. Reusable workflows have documented nesting and permission constraints** **Correct.** The interface must fit supported platform behavior. This directly addresses the constraint stated in this case.

**Explanation:** The interface must fit supported platform behavior. The selected answer is reusable workflows have documented nesting and permission constraints.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q036

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which next change most directly satisfies the stated requirement?

- **A. Expose a reusable workflow with an explicit caller contract** Workflow reuse supports a governed multi-job interface. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **B. Inspect scope precedence and remove ambiguous duplicate definitions** **Correct.** Effective values depend on where variables are defined. This directly addresses the constraint stated in this case.
- **C. Translate repeated tasks into supported YAML templates** Classic task groups and YAML templates differ. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.

**Explanation:** Effective values depend on where variables are defined. The selected answer is inspect scope precedence and remove ambiguous duplicate definitions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q037

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which explanation best accounts for the behavior or constraint described?

- **A. Classic UI definitions are not directly interchangeable with YAML** The reuse mechanism depends on pipeline style. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **B. Copying workflow files loses shared implementation ownership** Consumers would maintain separate definitions. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **C. A narrower definition overrides the expected broader value** **Correct.** The visible top-level setting may not be effective. This directly addresses the constraint stated in this case.

**Explanation:** The visible top-level setting may not be effective. The selected answer is a narrower definition overrides the expected broader value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q038

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The YAML consumer expands and executes the shared steps** The migrated reuse must work in its target engine. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **B. A caller invokes the shared workflow with validated inputs** The call demonstrates the intended reuse boundary. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.
- **C. The resolved nonsecret target matches the reviewed configuration** **Correct.** The test must inspect the effective runtime value. This directly addresses the constraint stated in this case.

**Explanation:** The test must inspect the effective runtime value. The selected answer is the resolved nonsecret target matches the reviewed configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q039

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which execution safeguard most directly addresses the risk in this case?

- **A. Use distinct names and explicit environment configuration** **Correct.** Ambiguous reuse increases wrong-target deployment risk. This directly addresses the constraint stated in this case.
- **B. Preserve task inputs and security controls during translation** Structural migration can silently weaken operational behavior. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **C. Declare only required secret and permission access** Reusable code should not receive unnecessary authority. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Ambiguous reuse increases wrong-target deployment risk. The selected answer is use distinct names and explicit environment configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q040

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. The team selects this remedy: "Inspect scope precedence and remove ambiguous duplicate definitions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Centralization does not eliminate precedence rules** **Correct.** Template consumers still need a clear configuration contract. This directly addresses the constraint stated in this case.
- **B. Migration may require redesign rather than text conversion** Equivalent intent can use a different platform construct. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **C. Reusable workflows have documented nesting and permission constraints** The interface must fit supported platform behavior. That addresses a different requirement: GitHub workflow reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Template consumers still need a clear configuration contract. The selected answer is centralization does not eliminate precedence rules.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q041

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which next change most directly satisfies the stated requirement?

- **A. Translate repeated tasks into supported YAML templates** **Correct.** Classic task groups and YAML templates differ. This directly addresses the constraint stated in this case.
- **B. Remove unnecessary dependencies while retaining required data ordering** The graph should express actual prerequisites. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. Inspect scope precedence and remove ambiguous duplicate definitions** Effective values depend on where variables are defined. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Classic task groups and YAML templates differ. The selected answer is translate repeated tasks into supported YAML templates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q042

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which explanation best accounts for the behavior or constraint described?

- **A. Classic UI definitions are not directly interchangeable with YAML** **Correct.** The reuse mechanism depends on pipeline style. This directly addresses the constraint stated in this case.
- **B. Artificial edges prevent eligible parallel execution** Agent capacity alone cannot override dependency ordering. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. A narrower definition overrides the expected broader value** The visible top-level setting may not be effective. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** The reuse mechanism depends on pipeline style. The selected answer is classic UI definitions are not directly interchangeable with YAML.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q043

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Independent tests overlap without missing required outputs** The result should improve runtime and preserve correctness. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **B. The resolved nonsecret target matches the reviewed configuration** The test must inspect the effective runtime value. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.
- **C. The YAML consumer expands and executes the shared steps** **Correct.** The migrated reuse must work in its target engine. This directly addresses the constraint stated in this case.

**Explanation:** The migrated reuse must work in its target engine. The selected answer is the YAML consumer expands and executes the shared steps.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q044

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which execution safeguard most directly addresses the risk in this case?

- **A. Preserve task inputs and security controls during translation** **Correct.** Structural migration can silently weaken operational behavior. This directly addresses the constraint stated in this case.
- **B. Keep publication and deployment dependent on required test results** Parallelism must not bypass validation gates. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. Use distinct names and explicit environment configuration** Ambiguous reuse increases wrong-target deployment risk. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Structural migration can silently weaken operational behavior. The selected answer is preserve task inputs and security controls during translation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. The team selects this remedy: "Translate repeated tasks into supported YAML templates." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Migration may require redesign rather than text conversion** **Correct.** Equivalent intent can use a different platform construct. This directly addresses the constraint stated in this case.
- **B. More parallel jobs consume more execution capacity** Runtime improvement may increase peak resource use. That addresses a different requirement: Accidental serialization. It does not directly resolve this case's stated constraint.
- **C. Centralization does not eliminate precedence rules** Template consumers still need a clear configuration contract. That addresses a different requirement: Shadowed configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Equivalent intent can use a different platform construct. The selected answer is migration may require redesign rather than text conversion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q046

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which next change most directly satisfies the stated requirement?

- **A. Remove unnecessary dependencies while retaining required data ordering** **Correct.** The graph should express actual prerequisites. This directly addresses the constraint stated in this case.
- **B. Extract a governed reusable template** Shared implementation reduces unmanaged copy divergence. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **C. Translate repeated tasks into supported YAML templates** Classic task groups and YAML templates differ. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.

**Explanation:** The graph should express actual prerequisites. The selected answer is remove unnecessary dependencies while retaining required data ordering.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q047

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which explanation best accounts for the behavior or constraint described?

- **A. Artificial edges prevent eligible parallel execution** **Correct.** Agent capacity alone cannot override dependency ordering. This directly addresses the constraint stated in this case.
- **B. Copies have independent maintenance lifecycles** Editing one copy cannot update others. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **C. Classic UI definitions are not directly interchangeable with YAML** The reuse mechanism depends on pipeline style. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.

**Explanation:** Agent capacity alone cannot override dependency ordering. The selected answer is artificial edges prevent eligible parallel execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q048

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Independent tests overlap without missing required outputs** **Correct.** The result should improve runtime and preserve correctness. This directly addresses the constraint stated in this case.
- **B. Consumers execute the approved template revision** The resolved reference proves adoption. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **C. The YAML consumer expands and executes the shared steps** The migrated reuse must work in its target engine. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.

**Explanation:** The result should improve runtime and preserve correctness. The selected answer is independent tests overlap without missing required outputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q049

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which execution safeguard most directly addresses the risk in this case?

- **A. Review central changes with representative consumers** A shared defect affects many pipelines. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **B. Preserve task inputs and security controls during translation** Structural migration can silently weaken operational behavior. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **C. Keep publication and deployment dependent on required test results** **Correct.** Parallelism must not bypass validation gates. This directly addresses the constraint stated in this case.

**Explanation:** Parallelism must not bypass validation gates. The selected answer is keep publication and deployment dependent on required test results.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)

## L11-Q050

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. The team selects this remedy: "Remove unnecessary dependencies while retaining required data ordering." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared templates create coordinated upgrade work** Consumers need compatible change management. That addresses a different requirement: Copied pipelines. It does not directly resolve this case's stated constraint.
- **B. Migration may require redesign rather than text conversion** Equivalent intent can use a different platform construct. That addresses a different requirement: Classic migration. It does not directly resolve this case's stated constraint.
- **C. More parallel jobs consume more execution capacity** **Correct.** Runtime improvement may increase peak resource use. This directly addresses the constraint stated in this case.

**Explanation:** Runtime improvement may increase peak resource use. The selected answer is more parallel jobs consume more execution capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops); [S3](https://docs.github.com/en/actions/sharing-automations/reusing-workflows)
