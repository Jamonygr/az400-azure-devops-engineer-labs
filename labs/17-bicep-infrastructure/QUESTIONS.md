# Lab 17 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L17-Q001

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which next change most directly satisfies the stated requirement?

- **A.** Run validation and review the what-if result
- **B.** Use secure parameter handling and avoid secret outputs
- **C.** Output a nonsensitive reference rather than the secret value

## L17-Q002

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which explanation best accounts for the behavior or constraint described?

- **A.** Template validity does not establish an acceptable resource diff
- **B.** Infrastructure metadata can expose plain configuration values
- **C.** Infrastructure output was used as an unrestricted secret channel

## L17-Q003

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Deployment records do not reveal the sensitive value
- **B.** The public artifact contains only the permitted reference
- **C.** The reviewed plan identifies the intended access change

## L17-Q004

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which execution safeguard most directly addresses the risk in this case?

- **A.** Prefer references to a secret store where appropriate
- **B.** Restrict secret resolution to the task that actually needs it
- **C.** Verify subscription resource group and parameters before deployment

## L17-Q005

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. The team selects this remedy: "Run validation and review the what-if result." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** What-if is a planning aid with limitations
- **B.** Secure parameters do not make every downstream use safe
- **C.** Reference-based designs depend on runtime identity access

## L17-Q006

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which next change most directly satisfies the stated requirement?

- **A.** Use secure parameter handling and avoid secret outputs
- **B.** Make the required static validation enforce pipeline failure
- **C.** Run validation and review the what-if result

## L17-Q007

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which explanation best accounts for the behavior or constraint described?

- **A.** Template validity does not establish an acceptable resource diff
- **B.** Infrastructure metadata can expose plain configuration values
- **C.** The wrapper ignores validation failure status

## L17-Q008

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A known invalid fixture blocks the deployment path
- **B.** The reviewed plan identifies the intended access change
- **C.** Deployment records do not reveal the sensitive value

## L17-Q009

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which execution safeguard most directly addresses the risk in this case?

- **A.** Prefer references to a secret store where appropriate
- **B.** Keep diagnostic output while preserving nonzero status
- **C.** Verify subscription resource group and parameters before deployment

## L17-Q010

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. The team selects this remedy: "Use secure parameter handling and avoid secret outputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** What-if is a planning aid with limitations
- **B.** Secure parameters do not make every downstream use safe
- **C.** Static checks cannot prove service behavior

## L17-Q011

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which next change most directly satisfies the stated requirement?

- **A.** Make the required static validation enforce pipeline failure
- **B.** Express the resource relationship through declarative references
- **C.** Use secure parameter handling and avoid secret outputs

## L17-Q012

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which explanation best accounts for the behavior or constraint described?

- **A.** Infrastructure metadata can expose plain configuration values
- **B.** The wrapper ignores validation failure status
- **C.** The script hides a required provisioning relationship

## L17-Q013

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dependent resource deploys only after its prerequisite is ready
- **B.** Deployment records do not reveal the sensitive value
- **C.** A known invalid fixture blocks the deployment path

## L17-Q014

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which execution safeguard most directly addresses the risk in this case?

- **A.** Prefer references to a secret store where appropriate
- **B.** Keep diagnostic output while preserving nonzero status
- **C.** Avoid unnecessary dependencies that serialize independent resources

## L17-Q015

Advanced · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. The team selects this remedy: "Make the required static validation enforce pipeline failure." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Declared dependencies do not solve every readiness condition
- **B.** Secure parameters do not make every downstream use safe
- **C.** Static checks cannot prove service behavior

## L17-Q016

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which next change most directly satisfies the stated requirement?

- **A.** Compare desired configuration and reconcile through a reviewed change
- **B.** Make the required static validation enforce pipeline failure
- **C.** Express the resource relationship through declarative references

## L17-Q017

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which explanation best accounts for the behavior or constraint described?

- **A.** The script hides a required provisioning relationship
- **B.** Out-of-band changes bypassed the normal declaration workflow
- **C.** The wrapper ignores validation failure status

## L17-Q018

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployed configuration matches the approved desired state
- **B.** A known invalid fixture blocks the deployment path
- **C.** The dependent resource deploys only after its prerequisite is ready

## L17-Q019

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep diagnostic output while preserving nonzero status
- **B.** Avoid unnecessary dependencies that serialize independent resources
- **C.** Determine whether the manual change was an emergency correction

## L17-Q020

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. The team selects this remedy: "Express the resource relationship through declarative references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Strict reconciliation needs an exception and feedback process
- **B.** Static checks cannot prove service behavior
- **C.** Declared dependencies do not solve every readiness condition

## L17-Q021

Foundational · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which next change most directly satisfies the stated requirement?

- **A.** Compare desired configuration and reconcile through a reviewed change
- **B.** Extract a reusable versioned module with explicit parameters
- **C.** Express the resource relationship through declarative references

## L17-Q022

Foundational · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which explanation best accounts for the behavior or constraint described?

- **A.** Out-of-band changes bypassed the normal declaration workflow
- **B.** Copies are maintained as independent implementations
- **C.** The script hides a required provisioning relationship

## L17-Q023

Applied · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The dependent resource deploys only after its prerequisite is ready
- **B.** The deployed configuration matches the approved desired state
- **C.** Each environment resolves the approved module version

## L17-Q024

Applied · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which execution safeguard most directly addresses the risk in this case?

- **A.** Determine whether the manual change was an emergency correction
- **B.** Review module updates against representative environments
- **C.** Avoid unnecessary dependencies that serialize independent resources

## L17-Q025

Advanced · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. The team selects this remedy: "Compare desired configuration and reconcile through a reviewed change." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Strict reconciliation needs an exception and feedback process
- **B.** Reusable modules need interface and version discipline
- **C.** Declared dependencies do not solve every readiness condition

## L17-Q026

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which next change most directly satisfies the stated requirement?

- **A.** Match deployment scope and identity permissions to the required operation
- **B.** Compare desired configuration and reconcile through a reviewed change
- **C.** Extract a reusable versioned module with explicit parameters

## L17-Q027

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which explanation best accounts for the behavior or constraint described?

- **A.** Resource-group rights do not grant all subscription operations
- **B.** Out-of-band changes bypassed the normal declaration workflow
- **C.** Copies are maintained as independent implementations

## L17-Q028

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended scoped operation succeeds without unrelated elevation
- **B.** The deployed configuration matches the approved desired state
- **C.** Each environment resolves the approved module version

## L17-Q029

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review module updates against representative environments
- **B.** Separate privileged foundation changes from routine application deployment
- **C.** Determine whether the manual change was an emergency correction

## L17-Q030

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. The team selects this remedy: "Extract a reusable versioned module with explicit parameters." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reusable modules need interface and version discipline
- **B.** More scopes and identities add orchestration work
- **C.** Strict reconciliation needs an exception and feedback process

## L17-Q031

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which next change most directly satisfies the stated requirement?

- **A.** Match deployment scope and identity permissions to the required operation
- **B.** Parameterize or deterministically derive collision-resistant names
- **C.** Extract a reusable versioned module with explicit parameters

## L17-Q032

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which explanation best accounts for the behavior or constraint described?

- **A.** Copies are maintained as independent implementations
- **B.** Resource-group rights do not grant all subscription operations
- **C.** A global namespace cannot accept duplicated fixed names

## L17-Q033

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Two isolated deployments produce distinct valid names
- **B.** Each environment resolves the approved module version
- **C.** The intended scoped operation succeeds without unrelated elevation

## L17-Q034

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review module updates against representative environments
- **B.** Separate privileged foundation changes from routine application deployment
- **C.** Keep naming deterministic enough for lifecycle management

## L17-Q035

Advanced · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. The team selects this remedy: "Match deployment scope and identity permissions to the required operation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Reusable modules need interface and version discipline
- **B.** More scopes and identities add orchestration work
- **C.** Name constraints differ across Azure resource types

## L17-Q036

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which next change most directly satisfies the stated requirement?

- **A.** Parameterize or deterministically derive collision-resistant names
- **B.** Add scoped deployment and postdeployment verification
- **C.** Match deployment scope and identity permissions to the required operation

## L17-Q037

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which explanation best accounts for the behavior or constraint described?

- **A.** A global namespace cannot accept duplicated fixed names
- **B.** A preview cannot prove every execution and service condition
- **C.** Resource-group rights do not grant all subscription operations

## L17-Q038

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended scoped operation succeeds without unrelated elevation
- **B.** Two isolated deployments produce distinct valid names
- **C.** A safe test deployment passes required functional probes

## L17-Q039

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which execution safeguard most directly addresses the risk in this case?

- **A.** Separate privileged foundation changes from routine application deployment
- **B.** Keep naming deterministic enough for lifecycle management
- **C.** Use a bounded training target and cleanup procedure

## L17-Q040

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. The team selects this remedy: "Parameterize or deterministically derive collision-resistant names." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Live verification can incur cost
- **B.** More scopes and identities add orchestration work
- **C.** Name constraints differ across Azure resource types

## L17-Q041

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which next change most directly satisfies the stated requirement?

- **A.** Output a nonsensitive reference rather than the secret value
- **B.** Parameterize or deterministically derive collision-resistant names
- **C.** Add scoped deployment and postdeployment verification

## L17-Q042

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which explanation best accounts for the behavior or constraint described?

- **A.** A global namespace cannot accept duplicated fixed names
- **B.** A preview cannot prove every execution and service condition
- **C.** Infrastructure output was used as an unrestricted secret channel

## L17-Q043

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Two isolated deployments produce distinct valid names
- **B.** A safe test deployment passes required functional probes
- **C.** The public artifact contains only the permitted reference

## L17-Q044

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which execution safeguard most directly addresses the risk in this case?

- **A.** Restrict secret resolution to the task that actually needs it
- **B.** Keep naming deterministic enough for lifecycle management
- **C.** Use a bounded training target and cleanup procedure

## L17-Q045

Advanced · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. The team selects this remedy: "Add scoped deployment and postdeployment verification." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Name constraints differ across Azure resource types
- **B.** Live verification can incur cost
- **C.** Reference-based designs depend on runtime identity access

## L17-Q046

Foundational · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which next change most directly satisfies the stated requirement?

- **A.** Add scoped deployment and postdeployment verification
- **B.** Output a nonsensitive reference rather than the secret value
- **C.** Run validation and review the what-if result

## L17-Q047

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which explanation best accounts for the behavior or constraint described?

- **A.** A preview cannot prove every execution and service condition
- **B.** Infrastructure output was used as an unrestricted secret channel
- **C.** Template validity does not establish an acceptable resource diff

## L17-Q048

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A safe test deployment passes required functional probes
- **B.** The public artifact contains only the permitted reference
- **C.** The reviewed plan identifies the intended access change

## L17-Q049

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use a bounded training target and cleanup procedure
- **B.** Restrict secret resolution to the task that actually needs it
- **C.** Verify subscription resource group and parameters before deployment

## L17-Q050

Advanced · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. The team selects this remedy: "Output a nonsensitive reference rather than the secret value." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Live verification can incur cost
- **B.** Reference-based designs depend on runtime identity access
- **C.** What-if is a planning aid with limitations
