# Lab 13 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L13-Q001

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which next change most directly satisfies the stated requirement?

- **A. Configure protected environment checks outside author-controlled YAML** **Correct.** The gate needs an independent administrative boundary. This directly addresses the constraint stated in this case.
- **B. Require an eligible independent approver** The release requires separation between requester and reviewer. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **C. Choose the gate whose trust boundary matches the requirement** Similar pauses can have different administrative controls. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.

**Explanation:** The gate needs an independent administrative boundary. The selected answer is configure protected environment checks outside author-controlled YAML.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q002

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which explanation best accounts for the behavior or constraint described?

- **A. Execution pause and independent resource protection are different mechanisms** The author may control one but not the other. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **B. The author controls both deployment and its approval rule** **Correct.** An editable check cannot enforce independent review. This directly addresses the constraint stated in this case.
- **C. Approval identity is not independent of the request** A nominal approval can still be self-authorization. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.

**Explanation:** An editable check cannot enforce independent review. The selected answer is the author controls both deployment and its approval rule.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q003

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The requester cannot approve their own protected deployment** The negative test verifies reviewer independence. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **B. An author cannot edit away the required independent protection** The test should target bypass capability rather than the UI. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **C. Removing YAML steps does not bypass the environment approval** **Correct.** The protection must survive an untrusted pipeline edit. This directly addresses the constraint stated in this case.

**Explanation:** The protection must survive an untrusted pipeline edit. The selected answer is removing YAML steps does not bypass the environment approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q004

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. Which execution safeguard most directly addresses the risk in this case?

- **A. Review who can modify each gate and pipeline definition** Permission boundaries determine actual enforcement strength. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **B. Limit environment administration to accountable owners** **Correct.** Broad administration rights can still bypass intended governance. This directly addresses the constraint stated in this case.
- **C. Keep an available backup approver group** A single absent reviewer can block necessary releases. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.

**Explanation:** Broad administration rights can still bypass intended governance. The selected answer is limit environment administration to accountable owners.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q005

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Self-modifying gate: A deployment author can remove an approval from the same YAML change being approved. The team selects this remedy: "Configure protected environment checks outside author-controlled YAML." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Porting gates across platforms may require redesign** Equivalent intent does not imply identical configuration features. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **B. External checks need separate configuration management** **Correct.** Repository review alone cannot reproduce every resource policy. This directly addresses the constraint stated in this case.
- **C. Independent approval adds coordination latency** The assurance benefit should match deployment risk. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.

**Explanation:** Repository review alone cannot reproduce every resource policy. The selected answer is external checks need separate configuration management.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q006

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which next change most directly satisfies the stated requirement?

- **A. Add a protected branch-control check for the environment** The target must verify the source provenance policy. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **B. Configure protected environment checks outside author-controlled YAML** The gate needs an independent administrative boundary. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **C. Require an eligible independent approver** **Correct.** The release requires separation between requester and reviewer. This directly addresses the constraint stated in this case.

**Explanation:** The release requires separation between requester and reviewer. The selected answer is require an eligible independent approver.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q007

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which explanation best accounts for the behavior or constraint described?

- **A. The author controls both deployment and its approval rule** An editable check cannot enforce independent review. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **B. Approval identity is not independent of the request** **Correct.** A nominal approval can still be self-authorization. This directly addresses the constraint stated in this case.
- **C. The gate checks success but not authorized source branch** A green feature build is not an approved release source. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.

**Explanation:** A nominal approval can still be self-authorization. The selected answer is approval identity is not independent of the request.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q008

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Removing YAML steps does not bypass the environment approval** The protection must survive an untrusted pipeline edit. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **B. The requester cannot approve their own protected deployment** **Correct.** The negative test verifies reviewer independence. This directly addresses the constraint stated in this case.
- **C. A feature-branch run is rejected while main is accepted** Both branches test the intended provenance restriction. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.

**Explanation:** The negative test verifies reviewer independence. The selected answer is the requester cannot approve their own protected deployment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q009

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep an available backup approver group** **Correct.** A single absent reviewer can block necessary releases. This directly addresses the constraint stated in this case.
- **B. Protect the permitted branch and its required validations** A permitted branch can still be unsafe if unprotected. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **C. Limit environment administration to accountable owners** Broad administration rights can still bypass intended governance. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.

**Explanation:** A single absent reviewer can block necessary releases. The selected answer is keep an available backup approver group.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q010

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Self-approval risk: The engineer who requests a production deployment also satisfies its only approval requirement. The team selects this remedy: "Require an eligible independent approver." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Branch controls depend on accurate linked-resource provenance** Complex multi-repository pipelines need careful policy review. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **B. External checks need separate configuration management** Repository review alone cannot reproduce every resource policy. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **C. Independent approval adds coordination latency** **Correct.** The assurance benefit should match deployment risk. This directly addresses the constraint stated in this case.

**Explanation:** The assurance benefit should match deployment risk. The selected answer is independent approval adds coordination latency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q011

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which next change most directly satisfies the stated requirement?

- **A. Require an eligible independent approver** The release requires separation between requester and reviewer. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **B. Add a protected branch-control check for the environment** **Correct.** The target must verify the source provenance policy. This directly addresses the constraint stated in this case.
- **C. Use an exclusive lock with an intentional queue policy** Shared mutable targets need coordinated deployment ownership. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.

**Explanation:** The target must verify the source provenance policy. The selected answer is add a protected branch-control check for the environment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q012

Foundational · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which explanation best accounts for the behavior or constraint described?

- **A. Approval identity is not independent of the request** A nominal approval can still be self-authorization. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **B. The gate checks success but not authorized source branch** **Correct.** A green feature build is not an approved release source. This directly addresses the constraint stated in this case.
- **C. Approval does not serialize concurrent execution** Two independently authorized changes can still collide. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.

**Explanation:** A green feature build is not an approved release source. The selected answer is the gate checks success but not authorized source branch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q013

Applied · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Only one protected deployment changes the environment at a time** The test must include competing eligible runs. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **B. The requester cannot approve their own protected deployment** The negative test verifies reviewer independence. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **C. A feature-branch run is rejected while main is accepted** **Correct.** Both branches test the intended provenance restriction. This directly addresses the constraint stated in this case.

**Explanation:** Both branches test the intended provenance restriction. The selected answer is a feature-branch run is rejected while main is accepted.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q014

Applied · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. Which execution safeguard most directly addresses the risk in this case?

- **A. Choose cancellation or sequential behavior based on recovery safety** An interrupted deployment may leave partial work. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **B. Keep an available backup approver group** A single absent reviewer can block necessary releases. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **C. Protect the permitted branch and its required validations** **Correct.** A permitted branch can still be unsafe if unprotected. This directly addresses the constraint stated in this case.

**Explanation:** A permitted branch can still be unsafe if unprotected. The selected answer is protect the permitted branch and its required validations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q015

Advanced · [CP5](README.md#task-5) · [D3.3.9](../../docs/objective-map.md)

Wrong branch release: A valid pipeline run from a feature branch reaches the production environment despite main-only release policy. The team selects this remedy: "Add a protected branch-control check for the environment." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Independent approval adds coordination latency** The assurance benefit should match deployment risk. That addresses a different requirement: Self-approval risk. It does not directly resolve this case's stated constraint.
- **B. Branch controls depend on accurate linked-resource provenance** **Correct.** Complex multi-repository pipelines need careful policy review. This directly addresses the constraint stated in this case.
- **C. Serialization increases queue time** Consistency may be more valuable than maximum throughput. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.

**Explanation:** Complex multi-repository pipelines need careful policy review. The selected answer is branch controls depend on accurate linked-resource provenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q016

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which next change most directly satisfies the stated requirement?

- **A. Add a protected branch-control check for the environment** The target must verify the source provenance policy. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **B. Use an exclusive lock with an intentional queue policy** **Correct.** Shared mutable targets need coordinated deployment ownership. This directly addresses the constraint stated in this case.
- **C. Gate promotion on relevant runtime health evidence** Static and predeployment tests cannot establish live service health. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.

**Explanation:** Shared mutable targets need coordinated deployment ownership. The selected answer is use an exclusive lock with an intentional queue policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q017

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which explanation best accounts for the behavior or constraint described?

- **A. The gate checks success but not authorized source branch** A green feature build is not an approved release source. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **B. Approval does not serialize concurrent execution** **Correct.** Two independently authorized changes can still collide. This directly addresses the constraint stated in this case.
- **C. The release gate omits the failing operational signal** A healthy build can create an unhealthy deployment. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.

**Explanation:** Two independently authorized changes can still collide. The selected answer is approval does not serialize concurrent execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q018

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A failed health probe prevents traffic promotion** The negative outcome demonstrates the quality boundary. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **B. A feature-branch run is rejected while main is accepted** Both branches test the intended provenance restriction. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **C. Only one protected deployment changes the environment at a time** **Correct.** The test must include competing eligible runs. This directly addresses the constraint stated in this case.

**Explanation:** The test must include competing eligible runs. The selected answer is only one protected deployment changes the environment at a time.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q019

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. Which execution safeguard most directly addresses the risk in this case?

- **A. Use bounded observation periods and a defined recovery action** An indefinite wait is not a safe release strategy. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **B. Protect the permitted branch and its required validations** A permitted branch can still be unsafe if unprotected. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **C. Choose cancellation or sequential behavior based on recovery safety** **Correct.** An interrupted deployment may leave partial work. This directly addresses the constraint stated in this case.

**Explanation:** An interrupted deployment may leave partial work. The selected answer is choose cancellation or sequential behavior based on recovery safety.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q020

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Overlapping deployments: Two approved runs update one environment simultaneously and interfere with each other's resource changes. The team selects this remedy: "Use an exclusive lock with an intentional queue policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Branch controls depend on accurate linked-resource provenance** Complex multi-repository pipelines need careful policy review. That addresses a different requirement: Wrong branch release. It does not directly resolve this case's stated constraint.
- **B. Serialization increases queue time** **Correct.** Consistency may be more valuable than maximum throughput. This directly addresses the constraint stated in this case.
- **C. Health gates can produce false positives** Thresholds should reflect meaningful service behavior. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.

**Explanation:** Consistency may be more valuable than maximum throughput. The selected answer is serialization increases queue time.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q021

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which next change most directly satisfies the stated requirement?

- **A. Set an explicit approval timeout and communicate the outcome** Waiting should have a bounded operational result. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **B. Use an exclusive lock with an intentional queue policy** Shared mutable targets need coordinated deployment ownership. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **C. Gate promotion on relevant runtime health evidence** **Correct.** Static and predeployment tests cannot establish live service health. This directly addresses the constraint stated in this case.

**Explanation:** Static and predeployment tests cannot establish live service health. The selected answer is gate promotion on relevant runtime health evidence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q022

Foundational · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which explanation best accounts for the behavior or constraint described?

- **A. Approval does not serialize concurrent execution** Two independently authorized changes can still collide. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **B. The release gate omits the failing operational signal** **Correct.** A healthy build can create an unhealthy deployment. This directly addresses the constraint stated in this case.
- **C. The workflow lacks a defined expired-approval path** Silence cannot be treated as authorization. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.

**Explanation:** A healthy build can create an unhealthy deployment. The selected answer is the release gate omits the failing operational signal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q023

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A failed health probe prevents traffic promotion** **Correct.** The negative outcome demonstrates the quality boundary. This directly addresses the constraint stated in this case.
- **B. An unanswered request expires with a visible failed or skipped outcome** The process should not silently deploy after timeout. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **C. Only one protected deployment changes the environment at a time** The test must include competing eligible runs. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.

**Explanation:** The negative outcome demonstrates the quality boundary. The selected answer is a failed health probe prevents traffic promotion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q024

Applied · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. Which execution safeguard most directly addresses the risk in this case?

- **A. Document how to retry after renewed authorization** A later release still needs valid approval evidence. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **B. Choose cancellation or sequential behavior based on recovery safety** An interrupted deployment may leave partial work. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **C. Use bounded observation periods and a defined recovery action** **Correct.** An indefinite wait is not a safe release strategy. This directly addresses the constraint stated in this case.

**Explanation:** An indefinite wait is not a safe release strategy. The selected answer is use bounded observation periods and a defined recovery action.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q025

Advanced · [CP5](README.md#task-5) · [D3.2.1](../../docs/objective-map.md)

Unhealthy release: Required unit tests pass, but a postdeployment health probe fails and traffic promotion continues. The team selects this remedy: "Gate promotion on relevant runtime health evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Short timeouts may reject otherwise valid releases** Choose a window compatible with reviewer availability. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **B. Serialization increases queue time** Consistency may be more valuable than maximum throughput. That addresses a different requirement: Overlapping deployments. It does not directly resolve this case's stated constraint.
- **C. Health gates can produce false positives** **Correct.** Thresholds should reflect meaningful service behavior. This directly addresses the constraint stated in this case.

**Explanation:** Thresholds should reflect meaningful service behavior. The selected answer is health gates can produce false positives.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q026

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which next change most directly satisfies the stated requirement?

- **A. Gate promotion on relevant runtime health evidence** Static and predeployment tests cannot establish live service health. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **B. Set an explicit approval timeout and communicate the outcome** **Correct.** Waiting should have a bounded operational result. This directly addresses the constraint stated in this case.
- **C. Use a schedule or business-hours check appropriate to the platform** Approval and allowed execution time are separate constraints. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.

**Explanation:** Waiting should have a bounded operational result. The selected answer is set an explicit approval timeout and communicate the outcome.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q027

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which explanation best accounts for the behavior or constraint described?

- **A. The release gate omits the failing operational signal** A healthy build can create an unhealthy deployment. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **B. The workflow lacks a defined expired-approval path** **Correct.** Silence cannot be treated as authorization. This directly addresses the constraint stated in this case.
- **C. An approval alone does not enforce the calendar boundary** An early decision can precede a safe execution period. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.

**Explanation:** Silence cannot be treated as authorization. The selected answer is the workflow lacks a defined expired-approval path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q028

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployment waits until the permitted window** Timing evidence must match the organization's stated rule. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **B. A failed health probe prevents traffic promotion** The negative outcome demonstrates the quality boundary. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **C. An unanswered request expires with a visible failed or skipped outcome** **Correct.** The process should not silently deploy after timeout. This directly addresses the constraint stated in this case.

**Explanation:** The process should not silently deploy after timeout. The selected answer is an unanswered request expires with a visible failed or skipped outcome.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q029

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. Which execution safeguard most directly addresses the risk in this case?

- **A. Check timezone and window duration explicitly** Incorrect timezone assumptions can cause off-hours changes. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **B. Use bounded observation periods and a defined recovery action** An indefinite wait is not a safe release strategy. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **C. Document how to retry after renewed authorization** **Correct.** A later release still needs valid approval evidence. This directly addresses the constraint stated in this case.

**Explanation:** A later release still needs valid approval evidence. The selected answer is document how to retry after renewed authorization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q030

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Approval timeout: A deployment waits for a reviewer who never responds, leaving the release indefinitely unclear. The team selects this remedy: "Set an explicit approval timeout and communicate the outcome." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Health gates can produce false positives** Thresholds should reflect meaningful service behavior. That addresses a different requirement: Unhealthy release. It does not directly resolve this case's stated constraint.
- **B. Short timeouts may reject otherwise valid releases** **Correct.** Choose a window compatible with reviewer availability. This directly addresses the constraint stated in this case.
- **C. Calendar gates can delay urgent remediations** A controlled exception process may be necessary. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.

**Explanation:** Choose a window compatible with reviewer availability. The selected answer is short timeouts may reject otherwise valid releases.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q031

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which next change most directly satisfies the stated requirement?

- **A. Set an explicit approval timeout and communicate the outcome** Waiting should have a bounded operational result. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **B. Use a schedule or business-hours check appropriate to the platform** **Correct.** Approval and allowed execution time are separate constraints. This directly addresses the constraint stated in this case.
- **C. Present the immutable release identity and validation evidence** An informed decision requires relevant trustworthy context. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.

**Explanation:** Approval and allowed execution time are separate constraints. The selected answer is use a schedule or business-hours check appropriate to the platform.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q032

Foundational · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which explanation best accounts for the behavior or constraint described?

- **A. Approval is being treated as a ceremonial click** The reviewer cannot assess the actual candidate. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **B. The workflow lacks a defined expired-approval path** Silence cannot be treated as authorization. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **C. An approval alone does not enforce the calendar boundary** **Correct.** An early decision can precede a safe execution period. This directly addresses the constraint stated in this case.

**Explanation:** An early decision can precede a safe execution period. The selected answer is an approval alone does not enforce the calendar boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q033

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployment waits until the permitted window** **Correct.** Timing evidence must match the organization's stated rule. This directly addresses the constraint stated in this case.
- **B. The request links to the exact artifact and its checks** Evidence must identify the candidate being approved. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **C. An unanswered request expires with a visible failed or skipped outcome** The process should not silently deploy after timeout. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.

**Explanation:** Timing evidence must match the organization's stated rule. The selected answer is the deployment waits until the permitted window.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q034

Applied · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. Which execution safeguard most directly addresses the risk in this case?

- **A. Check timezone and window duration explicitly** **Correct.** Incorrect timezone assumptions can cause off-hours changes. This directly addresses the constraint stated in this case.
- **B. Prevent substitution of the artifact after approval** Changing the input would invalidate the review decision. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **C. Document how to retry after renewed authorization** A later release still needs valid approval evidence. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.

**Explanation:** Incorrect timezone assumptions can cause off-hours changes. The selected answer is check timezone and window duration explicitly.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q035

Advanced · [CP1](README.md#task-1) · [D3.3.9](../../docs/objective-map.md)

Calendar constraint: A risky migration must execute only during an agreed maintenance window despite being approved earlier. The team selects this remedy: "Use a schedule or business-hours check appropriate to the platform." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Rich evidence takes effort to collect and maintain** Automation can reduce reviewer burden without replacing judgment. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **B. Short timeouts may reject otherwise valid releases** Choose a window compatible with reviewer availability. That addresses a different requirement: Approval timeout. It does not directly resolve this case's stated constraint.
- **C. Calendar gates can delay urgent remediations** **Correct.** A controlled exception process may be necessary. This directly addresses the constraint stated in this case.

**Explanation:** A controlled exception process may be necessary. The selected answer is calendar gates can delay urgent remediations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q036

Foundational · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which next change most directly satisfies the stated requirement?

- **A. Restrict and audit exceptional bypass use** Bypass is a powerful administrative exception. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.
- **B. Use a schedule or business-hours check appropriate to the platform** Approval and allowed execution time are separate constraints. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **C. Present the immutable release identity and validation evidence** **Correct.** An informed decision requires relevant trustworthy context. This directly addresses the constraint stated in this case.

**Explanation:** An informed decision requires relevant trustworthy context. The selected answer is present the immutable release identity and validation evidence.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q037

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which explanation best accounts for the behavior or constraint described?

- **A. An approval alone does not enforce the calendar boundary** An early decision can precede a safe execution period. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **B. Approval is being treated as a ceremonial click** **Correct.** The reviewer cannot assess the actual candidate. This directly addresses the constraint stated in this case.
- **C. Normal delivery is avoiding the required control** Frequent unexplained exceptions defeat the policy. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.

**Explanation:** The reviewer cannot assess the actual candidate. The selected answer is approval is being treated as a ceremonial click.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q038

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployment waits until the permitted window** Timing evidence must match the organization's stated rule. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **B. The request links to the exact artifact and its checks** **Correct.** Evidence must identify the candidate being approved. This directly addresses the constraint stated in this case.
- **C. Bypass events identify an owner reason and reviewed incident** The evidence should make exceptions accountable. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.

**Explanation:** Evidence must identify the candidate being approved. The selected answer is the request links to the exact artifact and its checks.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q039

Applied · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. Which execution safeguard most directly addresses the risk in this case?

- **A. Check timezone and window duration explicitly** Incorrect timezone assumptions can cause off-hours changes. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **B. Prevent substitution of the artifact after approval** **Correct.** Changing the input would invalidate the review decision. This directly addresses the constraint stated in this case.
- **C. Use a narrowly defined emergency access process** Routine broad bypass should not be the release path. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.

**Explanation:** Changing the input would invalidate the review decision. The selected answer is prevent substitution of the artifact after approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q040

Advanced · [CP3](README.md#task-3) · [D3.2.1](../../docs/objective-map.md)

Evidence-free approval: Reviewers are asked to approve a release without test results, source identity, or a change summary. The team selects this remedy: "Present the immutable release identity and validation evidence." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Emergency access remains a residual risk** Audit and review reduce misuse rather than eliminate authority. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.
- **B. Calendar gates can delay urgent remediations** A controlled exception process may be necessary. That addresses a different requirement: Calendar constraint. It does not directly resolve this case's stated constraint.
- **C. Rich evidence takes effort to collect and maintain** **Correct.** Automation can reduce reviewer burden without replacing judgment. This directly addresses the constraint stated in this case.

**Explanation:** Automation can reduce reviewer burden without replacing judgment. The selected answer is rich evidence takes effort to collect and maintain.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q041

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which next change most directly satisfies the stated requirement?

- **A. Present the immutable release identity and validation evidence** An informed decision requires relevant trustworthy context. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **B. Restrict and audit exceptional bypass use** **Correct.** Bypass is a powerful administrative exception. This directly addresses the constraint stated in this case.
- **C. Choose the gate whose trust boundary matches the requirement** Similar pauses can have different administrative controls. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.

**Explanation:** Bypass is a powerful administrative exception. The selected answer is restrict and audit exceptional bypass use.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q042

Foundational · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which explanation best accounts for the behavior or constraint described?

- **A. Approval is being treated as a ceremonial click** The reviewer cannot assess the actual candidate. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.
- **B. Normal delivery is avoiding the required control** **Correct.** Frequent unexplained exceptions defeat the policy. This directly addresses the constraint stated in this case.
- **C. Execution pause and independent resource protection are different mechanisms** The author may control one but not the other. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.

**Explanation:** Frequent unexplained exceptions defeat the policy. The selected answer is normal delivery is avoiding the required control.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q043

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Bypass events identify an owner reason and reviewed incident** **Correct.** The evidence should make exceptions accountable. This directly addresses the constraint stated in this case.
- **B. An author cannot edit away the required independent protection** The test should target bypass capability rather than the UI. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **C. The request links to the exact artifact and its checks** Evidence must identify the candidate being approved. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should make exceptions accountable. The selected answer is bypass events identify an owner reason and reviewed incident.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q044

Applied · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a narrowly defined emergency access process** **Correct.** Routine broad bypass should not be the release path. This directly addresses the constraint stated in this case.
- **B. Review who can modify each gate and pipeline definition** Permission boundaries determine actual enforcement strength. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **C. Prevent substitution of the artifact after approval** Changing the input would invalidate the review decision. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.

**Explanation:** Routine broad bypass should not be the release path. The selected answer is use a narrowly defined emergency access process.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q045

Advanced · [CP4](README.md#task-4) · [D3.3.9](../../docs/objective-map.md)

Bypass misuse: An administrator routinely bypasses failed environment checks for convenience and no reason is recorded. The team selects this remedy: "Restrict and audit exceptional bypass use." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Emergency access remains a residual risk** **Correct.** Audit and review reduce misuse rather than eliminate authority. This directly addresses the constraint stated in this case.
- **B. Porting gates across platforms may require redesign** Equivalent intent does not imply identical configuration features. That addresses a different requirement: Platform confusion. It does not directly resolve this case's stated constraint.
- **C. Rich evidence takes effort to collect and maintain** Automation can reduce reviewer burden without replacing judgment. That addresses a different requirement: Evidence-free approval. It does not directly resolve this case's stated constraint.

**Explanation:** Audit and review reduce misuse rather than eliminate authority. The selected answer is emergency access remains a residual risk.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q046

Foundational · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which next change most directly satisfies the stated requirement?

- **A. Restrict and audit exceptional bypass use** Bypass is a powerful administrative exception. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.
- **B. Choose the gate whose trust boundary matches the requirement** **Correct.** Similar pauses can have different administrative controls. This directly addresses the constraint stated in this case.
- **C. Configure protected environment checks outside author-controlled YAML** The gate needs an independent administrative boundary. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.

**Explanation:** Similar pauses can have different administrative controls. The selected answer is choose the gate whose trust boundary matches the requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q047

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which explanation best accounts for the behavior or constraint described?

- **A. Execution pause and independent resource protection are different mechanisms** **Correct.** The author may control one but not the other. This directly addresses the constraint stated in this case.
- **B. The author controls both deployment and its approval rule** An editable check cannot enforce independent review. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **C. Normal delivery is avoiding the required control** Frequent unexplained exceptions defeat the policy. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.

**Explanation:** The author may control one but not the other. The selected answer is execution pause and independent resource protection are different mechanisms.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q048

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which observation provides the strongest evidence that the requested result was achieved?

- **A. An author cannot edit away the required independent protection** **Correct.** The test should target bypass capability rather than the UI. This directly addresses the constraint stated in this case.
- **B. Removing YAML steps does not bypass the environment approval** The protection must survive an untrusted pipeline edit. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **C. Bypass events identify an owner reason and reviewed incident** The evidence should make exceptions accountable. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.

**Explanation:** The test should target bypass capability rather than the UI. The selected answer is an author cannot edit away the required independent protection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q049

Applied · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a narrowly defined emergency access process** Routine broad bypass should not be the release path. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.
- **B. Review who can modify each gate and pipeline definition** **Correct.** Permission boundaries determine actual enforcement strength. This directly addresses the constraint stated in this case.
- **C. Limit environment administration to accountable owners** Broad administration rights can still bypass intended governance. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.

**Explanation:** Permission boundaries determine actual enforcement strength. The selected answer is review who can modify each gate and pipeline definition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)

## L13-Q050

Advanced · [CP2](README.md#task-2) · [D3.2.1](../../docs/objective-map.md), [D3.3.9](../../docs/objective-map.md)

Platform confusion: A YAML manual-validation task is assumed to provide exactly the same protection as an independently administered environment check. The team selects this remedy: "Choose the gate whose trust boundary matches the requirement." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. External checks need separate configuration management** Repository review alone cannot reproduce every resource policy. That addresses a different requirement: Self-modifying gate. It does not directly resolve this case's stated constraint.
- **B. Emergency access remains a residual risk** Audit and review reduce misuse rather than eliminate authority. That addresses a different requirement: Bypass misuse. It does not directly resolve this case's stated constraint.
- **C. Porting gates across platforms may require redesign** **Correct.** Equivalent intent does not imply identical configuration features. This directly addresses the constraint stated in this case.

**Explanation:** Equivalent intent does not imply identical configuration features. The selected answer is porting gates across platforms may require redesign.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops); [S2](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment)
