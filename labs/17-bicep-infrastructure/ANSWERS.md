# Lab 17 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L17-Q001

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which next change most directly satisfies the stated requirement?

- **A. Run validation and review the what-if result** **Correct.** Planned changes should be visible before applying them. This directly addresses the constraint stated in this case.
- **B. Use secure parameter handling and avoid secret outputs** Sensitive values need protection across input and output paths. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **C. Output a nonsensitive reference rather than the secret value** Downstream configuration should minimize secret transport. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Planned changes should be visible before applying them. The selected answer is run validation and review the what-if result.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q002

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which explanation best accounts for the behavior or constraint described?

- **A. Template validity does not establish an acceptable resource diff** **Correct.** A valid deployment can still weaken access. This directly addresses the constraint stated in this case.
- **B. Infrastructure metadata can expose plain configuration values** A parameter's purpose alone does not make it secure. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **C. Infrastructure output was used as an unrestricted secret channel** Artifact publication expands the exposure boundary. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** A valid deployment can still weaken access. The selected answer is template validity does not establish an acceptable resource diff.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q003

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Deployment records do not reveal the sensitive value** Verification must include logs and outputs. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **B. The public artifact contains only the permitted reference** The test must inspect the published content. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.
- **C. The reviewed plan identifies the intended access change** **Correct.** The evidence should show actual target impact. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should show actual target impact. The selected answer is the reviewed plan identifies the intended access change.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q004

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Prefer references to a secret store where appropriate** Reducing copied secret material lowers exposure. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **B. Restrict secret resolution to the task that actually needs it** A reference should not grant broad retrieval capability. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.
- **C. Verify subscription resource group and parameters before deployment** **Correct.** Correct code can affect an incorrect target. This directly addresses the constraint stated in this case.

**Explanation:** Correct code can affect an incorrect target. The selected answer is verify subscription resource group and parameters before deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q005

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Unreviewed infrastructure: A developer changes a public-access setting and proposes deploying the Bicep file without inspecting the planned changes. The team selects this remedy: "Run validation and review the what-if result." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. What-if is a planning aid with limitations** **Correct.** It does not guarantee every runtime outcome. This directly addresses the constraint stated in this case.
- **B. Secure parameters do not make every downstream use safe** Scripts and resource settings can still disclose values. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **C. Reference-based designs depend on runtime identity access** Consumers need scoped authorization to resolve protected values. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** It does not guarantee every runtime outcome. The selected answer is what-if is a planning aid with limitations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q006

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which next change most directly satisfies the stated requirement?

- **A. Use secure parameter handling and avoid secret outputs** **Correct.** Sensitive values need protection across input and output paths. This directly addresses the constraint stated in this case.
- **B. Make the required static validation enforce pipeline failure** A quality signal needs an execution gate. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **C. Run validation and review the what-if result** Planned changes should be visible before applying them. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** Sensitive values need protection across input and output paths. The selected answer is use secure parameter handling and avoid secret outputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q007

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which explanation best accounts for the behavior or constraint described?

- **A. Template validity does not establish an acceptable resource diff** A valid deployment can still weaken access. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.
- **B. Infrastructure metadata can expose plain configuration values** **Correct.** A parameter's purpose alone does not make it secure. This directly addresses the constraint stated in this case.
- **C. The wrapper ignores validation failure status** Visible findings do not prevent deployment by themselves. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.

**Explanation:** A parameter's purpose alone does not make it secure. The selected answer is infrastructure metadata can expose plain configuration values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q008

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known invalid fixture blocks the deployment path** A negative probe demonstrates the gate. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **B. The reviewed plan identifies the intended access change** The evidence should show actual target impact. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.
- **C. Deployment records do not reveal the sensitive value** **Correct.** Verification must include logs and outputs. This directly addresses the constraint stated in this case.

**Explanation:** Verification must include logs and outputs. The selected answer is deployment records do not reveal the sensitive value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q009

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. Which execution safeguard most directly addresses the risk in this case?

- **A. Prefer references to a secret store where appropriate** **Correct.** Reducing copied secret material lowers exposure. This directly addresses the constraint stated in this case.
- **B. Keep diagnostic output while preserving nonzero status** Failure visibility and enforcement should work together. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **C. Verify subscription resource group and parameters before deployment** Correct code can affect an incorrect target. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** Reducing copied secret material lowers exposure. The selected answer is prefer references to a secret store where appropriate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q010

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Secret parameter: A Bicep parameter carries a credential and appears in deployment output because it is treated as ordinary configuration. The team selects this remedy: "Use secure parameter handling and avoid secret outputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. What-if is a planning aid with limitations** It does not guarantee every runtime outcome. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.
- **B. Secure parameters do not make every downstream use safe** **Correct.** Scripts and resource settings can still disclose values. This directly addresses the constraint stated in this case.
- **C. Static checks cannot prove service behavior** Runtime validation still matters after a valid template. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.

**Explanation:** Scripts and resource settings can still disclose values. The selected answer is secure parameters do not make every downstream use safe.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q011

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which next change most directly satisfies the stated requirement?

- **A. Make the required static validation enforce pipeline failure** **Correct.** A quality signal needs an execution gate. This directly addresses the constraint stated in this case.
- **B. Express the resource relationship through declarative references** The deployment engine can order explicit dependencies. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.
- **C. Use secure parameter handling and avoid secret outputs** Sensitive values need protection across input and output paths. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.

**Explanation:** A quality signal needs an execution gate. The selected answer is make the required static validation enforce pipeline failure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q012

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which explanation best accounts for the behavior or constraint described?

- **A. Infrastructure metadata can expose plain configuration values** A parameter's purpose alone does not make it secure. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **B. The wrapper ignores validation failure status** **Correct.** Visible findings do not prevent deployment by themselves. This directly addresses the constraint stated in this case.
- **C. The script hides a required provisioning relationship** Parallel execution can access an unavailable resource. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Visible findings do not prevent deployment by themselves. The selected answer is the wrapper ignores validation failure status.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q013

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dependent resource deploys only after its prerequisite is ready** The verification must inspect the actual resource state. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.
- **B. Deployment records do not reveal the sensitive value** Verification must include logs and outputs. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **C. A known invalid fixture blocks the deployment path** **Correct.** A negative probe demonstrates the gate. This directly addresses the constraint stated in this case.

**Explanation:** A negative probe demonstrates the gate. The selected answer is a known invalid fixture blocks the deployment path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q014

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. Which execution safeguard most directly addresses the risk in this case?

- **A. Prefer references to a secret store where appropriate** Reducing copied secret material lowers exposure. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **B. Keep diagnostic output while preserving nonzero status** **Correct.** Failure visibility and enforcement should work together. This directly addresses the constraint stated in this case.
- **C. Avoid unnecessary dependencies that serialize independent resources** Correct ordering should not prevent safe parallelism. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Failure visibility and enforcement should work together. The selected answer is keep diagnostic output while preserving nonzero status.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q015

Advanced · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Lint ignored: A pipeline reports Bicep lint errors but continues deploying the same infrastructure files. The team selects this remedy: "Make the required static validation enforce pipeline failure." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Declared dependencies do not solve every readiness condition** Some services need additional application-level checks. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.
- **B. Secure parameters do not make every downstream use safe** Scripts and resource settings can still disclose values. That addresses a different requirement: Secret parameter. It does not directly resolve this case's stated constraint.
- **C. Static checks cannot prove service behavior** **Correct.** Runtime validation still matters after a valid template. This directly addresses the constraint stated in this case.

**Explanation:** Runtime validation still matters after a valid template. The selected answer is static checks cannot prove service behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q016

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which next change most directly satisfies the stated requirement?

- **A. Compare desired configuration and reconcile through a reviewed change** Source-controlled intent should govern intentional infrastructure updates. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **B. Make the required static validation enforce pipeline failure** A quality signal needs an execution gate. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **C. Express the resource relationship through declarative references** **Correct.** The deployment engine can order explicit dependencies. This directly addresses the constraint stated in this case.

**Explanation:** The deployment engine can order explicit dependencies. The selected answer is express the resource relationship through declarative references.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q017

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which explanation best accounts for the behavior or constraint described?

- **A. The script hides a required provisioning relationship** **Correct.** Parallel execution can access an unavailable resource. This directly addresses the constraint stated in this case.
- **B. Out-of-band changes bypassed the normal declaration workflow** Repository content no longer explains the deployed state. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **C. The wrapper ignores validation failure status** Visible findings do not prevent deployment by themselves. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.

**Explanation:** Parallel execution can access an unavailable resource. The selected answer is the script hides a required provisioning relationship.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q018

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployed configuration matches the approved desired state** The comparison should cover the changed property. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **B. A known invalid fixture blocks the deployment path** A negative probe demonstrates the gate. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **C. The dependent resource deploys only after its prerequisite is ready** **Correct.** The verification must inspect the actual resource state. This directly addresses the constraint stated in this case.

**Explanation:** The verification must inspect the actual resource state. The selected answer is the dependent resource deploys only after its prerequisite is ready.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q019

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep diagnostic output while preserving nonzero status** Failure visibility and enforcement should work together. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **B. Avoid unnecessary dependencies that serialize independent resources** **Correct.** Correct ordering should not prevent safe parallelism. This directly addresses the constraint stated in this case.
- **C. Determine whether the manual change was an emergency correction** Blindly reverting can undo a needed operational fix. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.

**Explanation:** Correct ordering should not prevent safe parallelism. The selected answer is avoid unnecessary dependencies that serialize independent resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q020

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Implicit dependency: Two resources reference each other's outputs, but a manual deployment script races their creation. The team selects this remedy: "Express the resource relationship through declarative references." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Strict reconciliation needs an exception and feedback process** Operational discoveries should return to source control. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **B. Static checks cannot prove service behavior** Runtime validation still matters after a valid template. That addresses a different requirement: Lint ignored. It does not directly resolve this case's stated constraint.
- **C. Declared dependencies do not solve every readiness condition** **Correct.** Some services need additional application-level checks. This directly addresses the constraint stated in this case.

**Explanation:** Some services need additional application-level checks. The selected answer is declared dependencies do not solve every readiness condition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q021

Foundational · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which next change most directly satisfies the stated requirement?

- **A. Compare desired configuration and reconcile through a reviewed change** **Correct.** Source-controlled intent should govern intentional infrastructure updates. This directly addresses the constraint stated in this case.
- **B. Extract a reusable versioned module with explicit parameters** Modules centralize reviewed infrastructure behavior. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **C. Express the resource relationship through declarative references** The deployment engine can order explicit dependencies. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Source-controlled intent should govern intentional infrastructure updates. The selected answer is compare desired configuration and reconcile through a reviewed change.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q022

Foundational · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which explanation best accounts for the behavior or constraint described?

- **A. Out-of-band changes bypassed the normal declaration workflow** **Correct.** Repository content no longer explains the deployed state. This directly addresses the constraint stated in this case.
- **B. Copies are maintained as independent implementations** Repeated text does not provide shared governance. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **C. The script hides a required provisioning relationship** Parallel execution can access an unavailable resource. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Repository content no longer explains the deployed state. The selected answer is out-of-band changes bypassed the normal declaration workflow.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q023

Applied · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The dependent resource deploys only after its prerequisite is ready** The verification must inspect the actual resource state. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.
- **B. The deployed configuration matches the approved desired state** **Correct.** The comparison should cover the changed property. This directly addresses the constraint stated in this case.
- **C. Each environment resolves the approved module version** The evidence should verify module adoption and parameters. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.

**Explanation:** The comparison should cover the changed property. The selected answer is the deployed configuration matches the approved desired state.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q024

Applied · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. Which execution safeguard most directly addresses the risk in this case?

- **A. Determine whether the manual change was an emergency correction** **Correct.** Blindly reverting can undo a needed operational fix. This directly addresses the constraint stated in this case.
- **B. Review module updates against representative environments** A central change can affect many deployments. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **C. Avoid unnecessary dependencies that serialize independent resources** Correct ordering should not prevent safe parallelism. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Blindly reverting can undo a needed operational fix. The selected answer is determine whether the manual change was an emergency correction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q025

Advanced · [CP5](README.md#task-5) · [D3.5.3](../../docs/objective-map.md)

Environment drift: Production was edited manually and now differs from the reviewed Bicep configuration. The team selects this remedy: "Compare desired configuration and reconcile through a reviewed change." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Strict reconciliation needs an exception and feedback process** **Correct.** Operational discoveries should return to source control. This directly addresses the constraint stated in this case.
- **B. Reusable modules need interface and version discipline** Overly generic modules can become hard to maintain. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **C. Declared dependencies do not solve every readiness condition** Some services need additional application-level checks. That addresses a different requirement: Implicit dependency. It does not directly resolve this case's stated constraint.

**Explanation:** Operational discoveries should return to source control. The selected answer is strict reconciliation needs an exception and feedback process.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q026

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which next change most directly satisfies the stated requirement?

- **A. Match deployment scope and identity permissions to the required operation** Resource scope determines the necessary authorization. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **B. Compare desired configuration and reconcile through a reviewed change** Source-controlled intent should govern intentional infrastructure updates. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **C. Extract a reusable versioned module with explicit parameters** **Correct.** Modules centralize reviewed infrastructure behavior. This directly addresses the constraint stated in this case.

**Explanation:** Modules centralize reviewed infrastructure behavior. The selected answer is extract a reusable versioned module with explicit parameters.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q027

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which explanation best accounts for the behavior or constraint described?

- **A. Resource-group rights do not grant all subscription operations** The failed action is outside the existing boundary. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **B. Out-of-band changes bypassed the normal declaration workflow** Repository content no longer explains the deployed state. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **C. Copies are maintained as independent implementations** **Correct.** Repeated text does not provide shared governance. This directly addresses the constraint stated in this case.

**Explanation:** Repeated text does not provide shared governance. The selected answer is copies are maintained as independent implementations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q028

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended scoped operation succeeds without unrelated elevation** The repair should not require blanket subscription access. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **B. The deployed configuration matches the approved desired state** The comparison should cover the changed property. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.
- **C. Each environment resolves the approved module version** **Correct.** The evidence should verify module adoption and parameters. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should verify module adoption and parameters. The selected answer is each environment resolves the approved module version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q029

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. Which execution safeguard most directly addresses the risk in this case?

- **A. Review module updates against representative environments** **Correct.** A central change can affect many deployments. This directly addresses the constraint stated in this case.
- **B. Separate privileged foundation changes from routine application deployment** Different risk levels need different execution identities. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **C. Determine whether the manual change was an emergency correction** Blindly reverting can undo a needed operational fix. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.

**Explanation:** A central change can affect many deployments. The selected answer is review module updates against representative environments.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q030

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Repeated network definitions: Several environments copy the same Bicep network resources and drift into different security configurations. The team selects this remedy: "Extract a reusable versioned module with explicit parameters." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reusable modules need interface and version discipline** **Correct.** Overly generic modules can become hard to maintain. This directly addresses the constraint stated in this case.
- **B. More scopes and identities add orchestration work** The separation limits routine deployment authority. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **C. Strict reconciliation needs an exception and feedback process** Operational discoveries should return to source control. That addresses a different requirement: Environment drift. It does not directly resolve this case's stated constraint.

**Explanation:** Overly generic modules can become hard to maintain. The selected answer is reusable modules need interface and version discipline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q031

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which next change most directly satisfies the stated requirement?

- **A. Match deployment scope and identity permissions to the required operation** **Correct.** Resource scope determines the necessary authorization. This directly addresses the constraint stated in this case.
- **B. Parameterize or deterministically derive collision-resistant names** Reusable infrastructure needs environment-specific identity. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **C. Extract a reusable versioned module with explicit parameters** Modules centralize reviewed infrastructure behavior. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.

**Explanation:** Resource scope determines the necessary authorization. The selected answer is match deployment scope and identity permissions to the required operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q032

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which explanation best accounts for the behavior or constraint described?

- **A. Copies are maintained as independent implementations** Repeated text does not provide shared governance. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **B. Resource-group rights do not grant all subscription operations** **Correct.** The failed action is outside the existing boundary. This directly addresses the constraint stated in this case.
- **C. A global namespace cannot accept duplicated fixed names** The template assumes a single deployment instance. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.

**Explanation:** The failed action is outside the existing boundary. The selected answer is resource-group rights do not grant all subscription operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q033

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Two isolated deployments produce distinct valid names** The test should demonstrate reuse across environments. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **B. Each environment resolves the approved module version** The evidence should verify module adoption and parameters. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **C. The intended scoped operation succeeds without unrelated elevation** **Correct.** The repair should not require blanket subscription access. This directly addresses the constraint stated in this case.

**Explanation:** The repair should not require blanket subscription access. The selected answer is the intended scoped operation succeeds without unrelated elevation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q034

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. Which execution safeguard most directly addresses the risk in this case?

- **A. Review module updates against representative environments** A central change can affect many deployments. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **B. Separate privileged foundation changes from routine application deployment** **Correct.** Different risk levels need different execution identities. This directly addresses the constraint stated in this case.
- **C. Keep naming deterministic enough for lifecycle management** Uncontrolled randomness can complicate updates and cleanup. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.

**Explanation:** Different risk levels need different execution identities. The selected answer is separate privileged foundation changes from routine application deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q035

Advanced · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Wrong-scope permission: A pipeline can deploy into its training resource group but attempts a subscription-level role change and fails. The team selects this remedy: "Match deployment scope and identity permissions to the required operation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Reusable modules need interface and version discipline** Overly generic modules can become hard to maintain. That addresses a different requirement: Repeated network definitions. It does not directly resolve this case's stated constraint.
- **B. More scopes and identities add orchestration work** **Correct.** The separation limits routine deployment authority. This directly addresses the constraint stated in this case.
- **C. Name constraints differ across Azure resource types** A universal naming expression may not fit every service. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.

**Explanation:** The separation limits routine deployment authority. The selected answer is more scopes and identities add orchestration work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q036

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which next change most directly satisfies the stated requirement?

- **A. Parameterize or deterministically derive collision-resistant names** **Correct.** Reusable infrastructure needs environment-specific identity. This directly addresses the constraint stated in this case.
- **B. Add scoped deployment and postdeployment verification** Planning output does not exercise the full runtime path. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **C. Match deployment scope and identity permissions to the required operation** Resource scope determines the necessary authorization. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.

**Explanation:** Reusable infrastructure needs environment-specific identity. The selected answer is parameterize or deterministically derive collision-resistant names.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q037

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which explanation best accounts for the behavior or constraint described?

- **A. A global namespace cannot accept duplicated fixed names** **Correct.** The template assumes a single deployment instance. This directly addresses the constraint stated in this case.
- **B. A preview cannot prove every execution and service condition** Authorization and live behavior can still differ. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **C. Resource-group rights do not grant all subscription operations** The failed action is outside the existing boundary. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.

**Explanation:** The template assumes a single deployment instance. The selected answer is a global namespace cannot accept duplicated fixed names.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q038

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended scoped operation succeeds without unrelated elevation** The repair should not require blanket subscription access. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **B. Two isolated deployments produce distinct valid names** **Correct.** The test should demonstrate reuse across environments. This directly addresses the constraint stated in this case.
- **C. A safe test deployment passes required functional probes** Actual behavior must support the planning conclusion. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.

**Explanation:** The test should demonstrate reuse across environments. The selected answer is two isolated deployments produce distinct valid names.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q039

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. Which execution safeguard most directly addresses the risk in this case?

- **A. Separate privileged foundation changes from routine application deployment** Different risk levels need different execution identities. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **B. Keep naming deterministic enough for lifecycle management** **Correct.** Uncontrolled randomness can complicate updates and cleanup. This directly addresses the constraint stated in this case.
- **C. Use a bounded training target and cleanup procedure** Validation should not accidentally modify unrelated resources. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.

**Explanation:** Uncontrolled randomness can complicate updates and cleanup. The selected answer is keep naming deterministic enough for lifecycle management.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q040

Advanced · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

Hardcoded resource name: A reusable template embeds a globally unique service name and the second learner's deployment collides. The team selects this remedy: "Parameterize or deterministically derive collision-resistant names." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Live verification can incur cost** Choose the smallest representative environment. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. More scopes and identities add orchestration work** The separation limits routine deployment authority. That addresses a different requirement: Wrong-scope permission. It does not directly resolve this case's stated constraint.
- **C. Name constraints differ across Azure resource types** **Correct.** A universal naming expression may not fit every service. This directly addresses the constraint stated in this case.

**Explanation:** A universal naming expression may not fit every service. The selected answer is name constraints differ across Azure resource types.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q041

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which next change most directly satisfies the stated requirement?

- **A. Output a nonsensitive reference rather than the secret value** Downstream configuration should minimize secret transport. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.
- **B. Parameterize or deterministically derive collision-resistant names** Reusable infrastructure needs environment-specific identity. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **C. Add scoped deployment and postdeployment verification** **Correct.** Planning output does not exercise the full runtime path. This directly addresses the constraint stated in this case.

**Explanation:** Planning output does not exercise the full runtime path. The selected answer is add scoped deployment and postdeployment verification.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q042

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which explanation best accounts for the behavior or constraint described?

- **A. A global namespace cannot accept duplicated fixed names** The template assumes a single deployment instance. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **B. A preview cannot prove every execution and service condition** **Correct.** Authorization and live behavior can still differ. This directly addresses the constraint stated in this case.
- **C. Infrastructure output was used as an unrestricted secret channel** Artifact publication expands the exposure boundary. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Authorization and live behavior can still differ. The selected answer is a preview cannot prove every execution and service condition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q043

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Two isolated deployments produce distinct valid names** The test should demonstrate reuse across environments. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **B. A safe test deployment passes required functional probes** **Correct.** Actual behavior must support the planning conclusion. This directly addresses the constraint stated in this case.
- **C. The public artifact contains only the permitted reference** The test must inspect the published content. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Actual behavior must support the planning conclusion. The selected answer is a safe test deployment passes required functional probes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q044

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. Which execution safeguard most directly addresses the risk in this case?

- **A. Restrict secret resolution to the task that actually needs it** A reference should not grant broad retrieval capability. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.
- **B. Keep naming deterministic enough for lifecycle management** Uncontrolled randomness can complicate updates and cleanup. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **C. Use a bounded training target and cleanup procedure** **Correct.** Validation should not accidentally modify unrelated resources. This directly addresses the constraint stated in this case.

**Explanation:** Validation should not accidentally modify unrelated resources. The selected answer is use a bounded training target and cleanup procedure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q045

Advanced · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Preview confusion: The team treats a successful what-if result as proof that deployment credentials and runtime networking are correct. The team selects this remedy: "Add scoped deployment and postdeployment verification." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Name constraints differ across Azure resource types** A universal naming expression may not fit every service. That addresses a different requirement: Hardcoded resource name. It does not directly resolve this case's stated constraint.
- **B. Live verification can incur cost** **Correct.** Choose the smallest representative environment. This directly addresses the constraint stated in this case.
- **C. Reference-based designs depend on runtime identity access** Consumers need scoped authorization to resolve protected values. That addresses a different requirement: Sensitive output reuse. It does not directly resolve this case's stated constraint.

**Explanation:** Choose the smallest representative environment. The selected answer is live verification can incur cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q046

Foundational · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which next change most directly satisfies the stated requirement?

- **A. Add scoped deployment and postdeployment verification** Planning output does not exercise the full runtime path. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. Output a nonsensitive reference rather than the secret value** **Correct.** Downstream configuration should minimize secret transport. This directly addresses the constraint stated in this case.
- **C. Run validation and review the what-if result** Planned changes should be visible before applying them. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** Downstream configuration should minimize secret transport. The selected answer is output a nonsensitive reference rather than the secret value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q047

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which explanation best accounts for the behavior or constraint described?

- **A. A preview cannot prove every execution and service condition** Authorization and live behavior can still differ. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. Infrastructure output was used as an unrestricted secret channel** **Correct.** Artifact publication expands the exposure boundary. This directly addresses the constraint stated in this case.
- **C. Template validity does not establish an acceptable resource diff** A valid deployment can still weaken access. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** Artifact publication expands the exposure boundary. The selected answer is infrastructure output was used as an unrestricted secret channel.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q048

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A safe test deployment passes required functional probes** Actual behavior must support the planning conclusion. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. The public artifact contains only the permitted reference** **Correct.** The test must inspect the published content. This directly addresses the constraint stated in this case.
- **C. The reviewed plan identifies the intended access change** The evidence should show actual target impact. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** The test must inspect the published content. The selected answer is the public artifact contains only the permitted reference.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q049

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a bounded training target and cleanup procedure** Validation should not accidentally modify unrelated resources. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. Restrict secret resolution to the task that actually needs it** **Correct.** A reference should not grant broad retrieval capability. This directly addresses the constraint stated in this case.
- **C. Verify subscription resource group and parameters before deployment** Correct code can affect an incorrect target. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** A reference should not grant broad retrieval capability. The selected answer is restrict secret resolution to the task that actually needs it.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q050

Advanced · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

Sensitive output reuse: A pipeline consumes a deployment output containing a connection secret and copies it into a public artifact. The team selects this remedy: "Output a nonsensitive reference rather than the secret value." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Live verification can incur cost** Choose the smallest representative environment. That addresses a different requirement: Preview confusion. It does not directly resolve this case's stated constraint.
- **B. Reference-based designs depend on runtime identity access** **Correct.** Consumers need scoped authorization to resolve protected values. This directly addresses the constraint stated in this case.
- **C. What-if is a planning aid with limitations** It does not guarantee every runtime outcome. That addresses a different requirement: Unreviewed infrastructure. It does not directly resolve this case's stated constraint.

**Explanation:** Consumers need scoped authorization to resolve protected values. The selected answer is reference-based designs depend on runtime identity access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)
