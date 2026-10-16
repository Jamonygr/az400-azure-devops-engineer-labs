# Lab 11 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L11-Q001

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which next change most directly satisfies the stated requirement?

- **A.** Extract a governed reusable template
- **B.** Replace free-form executable input with constrained parameters
- **C.** Remove unnecessary dependencies while retaining required data ordering

## L11-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which explanation best accounts for the behavior or constraint described?

- **A.** The template delegates privileged code execution
- **B.** Artificial edges prevent eligible parallel execution
- **C.** Copies have independent maintenance lifecycles

## L11-Q003

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Unsupported parameter values are rejected before deployment
- **B.** Independent tests overlap without missing required outputs
- **C.** Consumers execute the approved template revision

## L11-Q004

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep publication and deployment dependent on required test results
- **B.** Review central changes with representative consumers
- **C.** Separate trusted implementation from caller-controlled values

## L11-Q005

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Copied pipelines: Twelve services duplicate identical security steps, and fixing one copy leaves eleven services exposed. The team selects this remedy: "Extract a governed reusable template." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared templates create coordinated upgrade work
- **B.** Constrained interfaces reduce caller flexibility
- **C.** More parallel jobs consume more execution capacity

## L11-Q006

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which next change most directly satisfies the stated requirement?

- **A.** Extract a governed reusable template
- **B.** Replace free-form executable input with constrained parameters
- **C.** Use the appropriate template parameter and expression phase

## L11-Q007

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which explanation best accounts for the behavior or constraint described?

- **A.** The template delegates privileged code execution
- **B.** The value is unavailable during template expansion
- **C.** Copies have independent maintenance lifecycles

## L11-Q008

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Consumers execute the approved template revision
- **B.** Unsupported parameter values are rejected before deployment
- **C.** The expanded pipeline contains the intended stage graph

## L11-Q009

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review central changes with representative consumers
- **B.** Separate trusted implementation from caller-controlled values
- **C.** Keep secrets out of compile-time parameter values

## L11-Q010

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Unsafe template input: A caller passes arbitrary shell text to a reusable pipeline that has privileged deployment access. The team selects this remedy: "Replace free-form executable input with constrained parameters." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Constrained interfaces reduce caller flexibility
- **B.** Compile-time choices cannot use later job results
- **C.** Shared templates create coordinated upgrade work

## L11-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which next change most directly satisfies the stated requirement?

- **A.** Replace free-form executable input with constrained parameters
- **B.** Use the appropriate template parameter and expression phase
- **C.** Declare and reference a supported cross-job output

## L11-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which explanation best accounts for the behavior or constraint described?

- **A.** The template delegates privileged code execution
- **B.** The value is unavailable during template expansion
- **C.** A process environment does not span independent jobs

## L11-Q013

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dependent job receives the expected output value
- **B.** Unsupported parameter values are rejected before deployment
- **C.** The expanded pipeline contains the intended stage graph

## L11-Q014

Applied · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate trusted implementation from caller-controlled values
- **B.** Keep secrets out of compile-time parameter values
- **C.** Declare the dependency and avoid transferring secrets casually

## L11-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.5](../../docs/objective-map.md)

Compile-time surprise: A runtime variable is expected to decide whether a YAML template inserts an entire stage. The team selects this remedy: "Use the appropriate template parameter and expression phase." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Constrained interfaces reduce caller flexibility
- **B.** Compile-time choices cannot use later job results
- **C.** Outputs are metadata rather than bulk artifact transport

## L11-Q016

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which next change most directly satisfies the stated requirement?

- **A.** Authorize that pipeline to use the group
- **B.** Use the appropriate template parameter and expression phase
- **C.** Declare and reference a supported cross-job output

## L11-Q017

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which explanation best accounts for the behavior or constraint described?

- **A.** The shared configuration resource is protected separately
- **B.** The value is unavailable during template expansion
- **C.** A process environment does not span independent jobs

## L11-Q018

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The expanded pipeline contains the intended stage graph
- **B.** The dependent job receives the expected output value
- **C.** The authorized pipeline reads the required values

## L11-Q019

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid enabling blanket access for all pipelines
- **B.** Keep secrets out of compile-time parameter values
- **C.** Declare the dependency and avoid transferring secrets casually

## L11-Q020

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Missing output: A downstream job reads a value created in another job as though both shared one process environment. The team selects this remedy: "Declare and reference a supported cross-job output." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Outputs are metadata rather than bulk artifact transport
- **B.** Central variables create shared operational dependencies
- **C.** Compile-time choices cannot use later job results

## L11-Q021

Foundational · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which next change most directly satisfies the stated requirement?

- **A.** Authorize that pipeline to use the group
- **B.** Pin the shared template to a reviewed immutable revision
- **C.** Declare and reference a supported cross-job output

## L11-Q022

Foundational · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which explanation best accounts for the behavior or constraint described?

- **A.** The dependency changed independently of consumer code
- **B.** A process environment does not span independent jobs
- **C.** The shared configuration resource is protected separately

## L11-Q023

Applied · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dependent job receives the expected output value
- **B.** The authorized pipeline reads the required values
- **C.** The run resolves the documented template commit

## L11-Q024

Applied · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. Which execution safeguard most directly addresses the risk in this case?

- **A.** Declare the dependency and avoid transferring secrets casually
- **B.** Avoid enabling blanket access for all pipelines
- **C.** Advance pins through tested reviewed updates

## L11-Q025

Advanced · [CP3](README.md#task-3) · [D3.3.8](../../docs/objective-map.md)

Variable group access: A pipeline references an existing variable group but is rejected before its deployment stage starts. The team selects this remedy: "Authorize that pipeline to use the group." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Outputs are metadata rather than bulk artifact transport
- **B.** Central variables create shared operational dependencies
- **C.** Pinning shifts freshness to a maintenance workflow

## L11-Q026

Foundational · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which next change most directly satisfies the stated requirement?

- **A.** Pin the shared template to a reviewed immutable revision
- **B.** Expose a reusable workflow with an explicit caller contract
- **C.** Authorize that pipeline to use the group

## L11-Q027

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which explanation best accounts for the behavior or constraint described?

- **A.** Copying workflow files loses shared implementation ownership
- **B.** The shared configuration resource is protected separately
- **C.** The dependency changed independently of consumer code

## L11-Q028

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The run resolves the documented template commit
- **B.** A caller invokes the shared workflow with validated inputs
- **C.** The authorized pipeline reads the required values

## L11-Q029

Applied · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. Which execution safeguard most directly addresses the risk in this case?

- **A.** Advance pins through tested reviewed updates
- **B.** Declare only required secret and permission access
- **C.** Avoid enabling blanket access for all pipelines

## L11-Q030

Advanced · [CP2](README.md#task-2) · [D3.3.8](../../docs/objective-map.md)

Moving shared reference: A pipeline imports a template from a branch that changes daily and breaks an unchanged consumer. The team selects this remedy: "Pin the shared template to a reviewed immutable revision." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reusable workflows have documented nesting and permission constraints
- **B.** Central variables create shared operational dependencies
- **C.** Pinning shifts freshness to a maintenance workflow

## L11-Q031

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which next change most directly satisfies the stated requirement?

- **A.** Pin the shared template to a reviewed immutable revision
- **B.** Expose a reusable workflow with an explicit caller contract
- **C.** Inspect scope precedence and remove ambiguous duplicate definitions

## L11-Q032

Foundational · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which explanation best accounts for the behavior or constraint described?

- **A.** The dependency changed independently of consumer code
- **B.** Copying workflow files loses shared implementation ownership
- **C.** A narrower definition overrides the expected broader value

## L11-Q033

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The resolved nonsecret target matches the reviewed configuration
- **B.** The run resolves the documented template commit
- **C.** A caller invokes the shared workflow with validated inputs

## L11-Q034

Applied · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. Which execution safeguard most directly addresses the risk in this case?

- **A.** Advance pins through tested reviewed updates
- **B.** Declare only required secret and permission access
- **C.** Use distinct names and explicit environment configuration

## L11-Q035

Advanced · [CP1](README.md#task-1) · [D3.3.8](../../docs/objective-map.md)

GitHub workflow reuse: Teams need a whole reusable CI workflow with declared inputs rather than another copy of all jobs. The team selects this remedy: "Expose a reusable workflow with an explicit caller contract." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Centralization does not eliminate precedence rules
- **B.** Pinning shifts freshness to a maintenance workflow
- **C.** Reusable workflows have documented nesting and permission constraints

## L11-Q036

Foundational · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which next change most directly satisfies the stated requirement?

- **A.** Expose a reusable workflow with an explicit caller contract
- **B.** Inspect scope precedence and remove ambiguous duplicate definitions
- **C.** Translate repeated tasks into supported YAML templates

## L11-Q037

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which explanation best accounts for the behavior or constraint described?

- **A.** Classic UI definitions are not directly interchangeable with YAML
- **B.** Copying workflow files loses shared implementation ownership
- **C.** A narrower definition overrides the expected broader value

## L11-Q038

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The YAML consumer expands and executes the shared steps
- **B.** A caller invokes the shared workflow with validated inputs
- **C.** The resolved nonsecret target matches the reviewed configuration

## L11-Q039

Applied · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use distinct names and explicit environment configuration
- **B.** Preserve task inputs and security controls during translation
- **C.** Declare only required secret and permission access

## L11-Q040

Advanced · [CP3](README.md#task-3) · [D3.3.5](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Shadowed configuration: A pipeline defines the same variable at several scopes and deploys to an unexpected environment. The team selects this remedy: "Inspect scope precedence and remove ambiguous duplicate definitions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Centralization does not eliminate precedence rules
- **B.** Migration may require redesign rather than text conversion
- **C.** Reusable workflows have documented nesting and permission constraints

## L11-Q041

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which next change most directly satisfies the stated requirement?

- **A.** Translate repeated tasks into supported YAML templates
- **B.** Remove unnecessary dependencies while retaining required data ordering
- **C.** Inspect scope precedence and remove ambiguous duplicate definitions

## L11-Q042

Foundational · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which explanation best accounts for the behavior or constraint described?

- **A.** Classic UI definitions are not directly interchangeable with YAML
- **B.** Artificial edges prevent eligible parallel execution
- **C.** A narrower definition overrides the expected broader value

## L11-Q043

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Independent tests overlap without missing required outputs
- **B.** The resolved nonsecret target matches the reviewed configuration
- **C.** The YAML consumer expands and executes the shared steps

## L11-Q044

Applied · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. Which execution safeguard most directly addresses the risk in this case?

- **A.** Preserve task inputs and security controls during translation
- **B.** Keep publication and deployment dependent on required test results
- **C.** Use distinct names and explicit environment configuration

## L11-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.8](../../docs/objective-map.md)

Classic migration: A classic task group is copied verbatim into a YAML file and the service rejects the definition. The team selects this remedy: "Translate repeated tasks into supported YAML templates." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Migration may require redesign rather than text conversion
- **B.** More parallel jobs consume more execution capacity
- **C.** Centralization does not eliminate precedence rules

## L11-Q046

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which next change most directly satisfies the stated requirement?

- **A.** Remove unnecessary dependencies while retaining required data ordering
- **B.** Extract a governed reusable template
- **C.** Translate repeated tasks into supported YAML templates

## L11-Q047

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which explanation best accounts for the behavior or constraint described?

- **A.** Artificial edges prevent eligible parallel execution
- **B.** Copies have independent maintenance lifecycles
- **C.** Classic UI definitions are not directly interchangeable with YAML

## L11-Q048

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Independent tests overlap without missing required outputs
- **B.** Consumers execute the approved template revision
- **C.** The YAML consumer expands and executes the shared steps

## L11-Q049

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review central changes with representative consumers
- **B.** Preserve task inputs and security controls during translation
- **C.** Keep publication and deployment dependent on required test results

## L11-Q050

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md), [D3.3.8](../../docs/objective-map.md)

Accidental serialization: Independent test jobs inherit a chain of dependencies and run one after another despite available agents. The team selects this remedy: "Remove unnecessary dependencies while retaining required data ordering." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared templates create coordinated upgrade work
- **B.** Migration may require redesign rather than text conversion
- **C.** More parallel jobs consume more execution capacity
