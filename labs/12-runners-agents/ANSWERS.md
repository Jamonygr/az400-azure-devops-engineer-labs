# Lab 12 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L12-Q001

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which next change most directly satisfies the stated requirement?

- **A. Use an appropriately connected agent with restricted network access** **Correct.** Execution needs a route to the private target. This directly addresses the constraint stated in this case.
- **B. Check parallel-job entitlement and available execution slots** An online agent is not unlimited parallel capacity. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **C. Identify required endpoints and allow the minimum supported connectivity** Agent operation needs specific rather than unrestricted egress. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.

**Explanation:** Execution needs a route to the private target. The selected answer is use an appropriately connected agent with restricted network access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q002

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which explanation best accounts for the behavior or constraint described?

- **A. Scheduling is constrained by organization execution limits** Machine count and entitlement are different resources. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. A narrow download failure was generalized into unlimited access** Connectivity diagnosis should identify the actual dependency. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **C. The hosted worker lacks the required private connectivity** **Correct.** Credentials alone cannot establish a network route. This directly addresses the constraint stated in this case.

**Explanation:** Credentials alone cannot establish a network route. The selected answer is the hosted worker lacks the required private connectivity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q003

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Required job operations work while unrelated destinations remain restricted** Positive and negative network checks establish scope. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **B. The agent reaches only the intended private test endpoint** **Correct.** Connectivity must match the required network boundary. This directly addresses the constraint stated in this case.
- **C. Queued jobs start when an authorized slot becomes available** The evidence should distinguish capacity from agent health. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.

**Explanation:** Connectivity must match the required network boundary. The selected answer is the agent reaches only the intended private test endpoint.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q004

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which execution safeguard most directly addresses the risk in this case?

- **A. Measure demand before purchasing additional capacity** Long queues can also reflect inefficient job design. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. Maintain documented endpoint requirements and update procedures** Service dependencies can change over time. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **C. Avoid exposing the private service publicly as a shortcut** **Correct.** A network workaround should preserve the access design. This directly addresses the constraint stated in this case.

**Explanation:** A network workaround should preserve the access design. The selected answer is avoid exposing the private service publicly as a shortcut.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q005

Advanced · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. The team selects this remedy: "Use an appropriately connected agent with restricted network access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More parallel entitlement can increase cost** Capacity should follow justified workload demand. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. Tighter egress increases configuration maintenance** The restriction provides a clearer network trust boundary. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **C. Self-managed connectivity adds infrastructure operations** **Correct.** Agent placement introduces patching and capacity responsibilities. This directly addresses the constraint stated in this case.

**Explanation:** Agent placement introduces patching and capacity responsibilities. The selected answer is self-managed connectivity adds infrastructure operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q006

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which next change most directly satisfies the stated requirement?

- **A. Separate untrusted execution and use isolated ephemeral workers** Persistent state can bridge trust boundaries between jobs. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. Use an appropriately connected agent with restricted network access** Execution needs a route to the private target. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Check parallel-job entitlement and available execution slots** **Correct.** An online agent is not unlimited parallel capacity. This directly addresses the constraint stated in this case.

**Explanation:** An online agent is not unlimited parallel capacity. The selected answer is check parallel-job entitlement and available execution slots.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q007

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which explanation best accounts for the behavior or constraint described?

- **A. The runner can retain malicious changes after the job** Later privileged work inherits the compromised environment. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. The hosted worker lacks the required private connectivity** Credentials alone cannot establish a network route. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Scheduling is constrained by organization execution limits** **Correct.** Machine count and entitlement are different resources. This directly addresses the constraint stated in this case.

**Explanation:** Machine count and entitlement are different resources. The selected answer is scheduling is constrained by organization execution limits.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q008

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Untrusted jobs cannot affect the privileged runner pool** Isolation must hold across separate workflow runs. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. The agent reaches only the intended private test endpoint** Connectivity must match the required network boundary. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Queued jobs start when an authorized slot becomes available** **Correct.** The evidence should distinguish capacity from agent health. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should distinguish capacity from agent health. The selected answer is queued jobs start when an authorized slot becomes available.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q009

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid exposing the private service publicly as a shortcut** A network workaround should preserve the access design. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **B. Measure demand before purchasing additional capacity** **Correct.** Long queues can also reflect inefficient job design. This directly addresses the constraint stated in this case.
- **C. Do not assign deployment credentials to untrusted worker contexts** A clean workspace alone is not a credential boundary. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.

**Explanation:** Long queues can also reflect inefficient job design. The selected answer is measure demand before purchasing additional capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q010

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. The team selects this remedy: "Check parallel-job entitlement and available execution slots." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Ephemeral execution adds provisioning overhead** Isolation trades operational setup for reduced persistence risk. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. Self-managed connectivity adds infrastructure operations** Agent placement introduces patching and capacity responsibilities. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. More parallel entitlement can increase cost** **Correct.** Capacity should follow justified workload demand. This directly addresses the constraint stated in this case.

**Explanation:** Capacity should follow justified workload demand. The selected answer is more parallel entitlement can increase cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which next change most directly satisfies the stated requirement?

- **A. Check parallel-job entitlement and available execution slots** An online agent is not unlimited parallel capacity. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. Separate untrusted execution and use isolated ephemeral workers** **Correct.** Persistent state can bridge trust boundaries between jobs. This directly addresses the constraint stated in this case.
- **C. Use appropriate pool selection and agent demands or labels** Scheduling should match declared execution capabilities. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** Persistent state can bridge trust boundaries between jobs. The selected answer is separate untrusted execution and use isolated ephemeral workers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which explanation best accounts for the behavior or constraint described?

- **A. Scheduling is constrained by organization execution limits** Machine count and entitlement are different resources. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. The runner can retain malicious changes after the job** **Correct.** Later privileged work inherits the compromised environment. This directly addresses the constraint stated in this case.
- **C. The job's requirements are not represented in selection rules** An online worker may lack necessary tools. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** Later privileged work inherits the compromised environment. The selected answer is the runner can retain malicious changes after the job.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q013

Applied · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Queued jobs start when an authorized slot becomes available** The evidence should distinguish capacity from agent health. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. Untrusted jobs cannot affect the privileged runner pool** **Correct.** Isolation must hold across separate workflow runs. This directly addresses the constraint stated in this case.
- **C. The selected worker reports the required compiler version** The actual execution host must satisfy the requirement. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** Isolation must hold across separate workflow runs. The selected answer is untrusted jobs cannot affect the privileged runner pool.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q014

Applied · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which execution safeguard most directly addresses the risk in this case?

- **A. Measure demand before purchasing additional capacity** Long queues can also reflect inefficient job design. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.
- **B. Do not assign deployment credentials to untrusted worker contexts** **Correct.** A clean workspace alone is not a credential boundary. This directly addresses the constraint stated in this case.
- **C. Maintain capabilities and installation state deliberately** Stale labels can falsely advertise a usable toolchain. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** A clean workspace alone is not a credential boundary. The selected answer is do not assign deployment credentials to untrusted worker contexts.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. The team selects this remedy: "Separate untrusted execution and use isolated ephemeral workers." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Ephemeral execution adds provisioning overhead** **Correct.** Isolation trades operational setup for reduced persistence risk. This directly addresses the constraint stated in this case.
- **B. Specialized agents reduce scheduling flexibility** A narrow pool can become a capacity bottleneck. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.
- **C. More parallel entitlement can increase cost** Capacity should follow justified workload demand. That addresses a different requirement: No capacity. It does not directly resolve this case's stated constraint.

**Explanation:** Isolation trades operational setup for reduced persistence risk. The selected answer is ephemeral execution adds provisioning overhead.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q016

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which next change most directly satisfies the stated requirement?

- **A. Use appropriate pool selection and agent demands or labels** **Correct.** Scheduling should match declared execution capabilities. This directly addresses the constraint stated in this case.
- **B. Clean or recreate the workspace and declare all inputs** A reproducible job must not rely on leftovers. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **C. Separate untrusted execution and use isolated ephemeral workers** Persistent state can bridge trust boundaries between jobs. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.

**Explanation:** Scheduling should match declared execution capabilities. The selected answer is use appropriate pool selection and agent demands or labels.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q017

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which explanation best accounts for the behavior or constraint described?

- **A. The runner can retain malicious changes after the job** Later privileged work inherits the compromised environment. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. The job's requirements are not represented in selection rules** **Correct.** An online worker may lack necessary tools. This directly addresses the constraint stated in this case.
- **C. Persistent workspace state masks an undeclared dependency** The repository alone cannot reproduce the build. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.

**Explanation:** An online worker may lack necessary tools. The selected answer is the job's requirements are not represented in selection rules.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q018

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A fresh isolated worker builds the same source successfully** Clean execution reveals hidden state dependencies. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **B. Untrusted jobs cannot affect the privileged runner pool** Isolation must hold across separate workflow runs. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **C. The selected worker reports the required compiler version** **Correct.** The actual execution host must satisfy the requirement. This directly addresses the constraint stated in this case.

**Explanation:** The actual execution host must satisfy the requirement. The selected answer is the selected worker reports the required compiler version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q019

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not assign deployment credentials to untrusted worker contexts** A clean workspace alone is not a credential boundary. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **B. Maintain capabilities and installation state deliberately** **Correct.** Stale labels can falsely advertise a usable toolchain. This directly addresses the constraint stated in this case.
- **C. Keep caches separate from correctness-critical build outputs** Cached data should accelerate rather than define the result. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.

**Explanation:** Stale labels can falsely advertise a usable toolchain. The selected answer is maintain capabilities and installation state deliberately.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q020

Advanced · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. The team selects this remedy: "Use appropriate pool selection and agent demands or labels." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cleaning can increase build duration** Reproducibility may require trading some cache convenience. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **B. Ephemeral execution adds provisioning overhead** Isolation trades operational setup for reduced persistence risk. That addresses a different requirement: Persistent compromise. It does not directly resolve this case's stated constraint.
- **C. Specialized agents reduce scheduling flexibility** **Correct.** A narrow pool can become a capacity bottleneck. This directly addresses the constraint stated in this case.

**Explanation:** A narrow pool can become a capacity bottleneck. The selected answer is specialized agents reduce scheduling flexibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q021

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which next change most directly satisfies the stated requirement?

- **A. Clean or recreate the workspace and declare all inputs** **Correct.** A reproducible job must not rely on leftovers. This directly addresses the constraint stated in this case.
- **B. Run the agent under the least-privileged suitable identity** Build execution does not require broad administrative authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. Use appropriate pool selection and agent demands or labels** Scheduling should match declared execution capabilities. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** A reproducible job must not rely on leftovers. The selected answer is clean or recreate the workspace and declare all inputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q022

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which explanation best accounts for the behavior or constraint described?

- **A. The operating-system identity exceeds the task's needs** Any executed build code inherits that authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **B. The job's requirements are not represented in selection rules** An online worker may lack necessary tools. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.
- **C. Persistent workspace state masks an undeclared dependency** **Correct.** The repository alone cannot reproduce the build. This directly addresses the constraint stated in this case.

**Explanation:** The repository alone cannot reproduce the build. The selected answer is persistent workspace state masks an undeclared dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q023

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A fresh isolated worker builds the same source successfully** **Correct.** Clean execution reveals hidden state dependencies. This directly addresses the constraint stated in this case.
- **B. The build succeeds while prohibited administrative actions fail** Useful capability and denied excess demonstrate least privilege. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. The selected worker reports the required compiler version** The actual execution host must satisfy the requirement. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** Clean execution reveals hidden state dependencies. The selected answer is a fresh isolated worker builds the same source successfully.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q024

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which execution safeguard most directly addresses the risk in this case?

- **A. Inventory tool and filesystem access before changing the account** Hidden dependencies may rely on unnecessary elevation. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **B. Maintain capabilities and installation state deliberately** Stale labels can falsely advertise a usable toolchain. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.
- **C. Keep caches separate from correctness-critical build outputs** **Correct.** Cached data should accelerate rather than define the result. This directly addresses the constraint stated in this case.

**Explanation:** Cached data should accelerate rather than define the result. The selected answer is keep caches separate from correctness-critical build outputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q025

Advanced · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. The team selects this remedy: "Clean or recreate the workspace and declare all inputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cleaning can increase build duration** **Correct.** Reproducibility may require trading some cache convenience. This directly addresses the constraint stated in this case.
- **B. Some installations need a separate privileged preparation step** Routine jobs should not retain installation-level authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. Specialized agents reduce scheduling flexibility** A narrow pool can become a capacity bottleneck. That addresses a different requirement: Wrong agent selected. It does not directly resolve this case's stated constraint.

**Explanation:** Reproducibility may require trading some cache convenience. The selected answer is cleaning can increase build duration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q026

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which next change most directly satisfies the stated requirement?

- **A. Run the agent under the least-privileged suitable identity** **Correct.** Build execution does not require broad administrative authority. This directly addresses the constraint stated in this case.
- **B. Declare toolchain setup and select a supported image intentionally** Image contents are maintained service dependencies. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.
- **C. Clean or recreate the workspace and declare all inputs** A reproducible job must not rely on leftovers. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.

**Explanation:** Build execution does not require broad administrative authority. The selected answer is run the agent under the least-privileged suitable identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q027

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which explanation best accounts for the behavior or constraint described?

- **A. The operating-system identity exceeds the task's needs** **Correct.** Any executed build code inherits that authority. This directly addresses the constraint stated in this case.
- **B. The workflow assumed an unchanging preinstalled tool inventory** Hosted images evolve independently of repository changes. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.
- **C. Persistent workspace state masks an undeclared dependency** The repository alone cannot reproduce the build. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.

**Explanation:** Any executed build code inherits that authority. The selected answer is the operating-system identity exceeds the task's needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q028

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A clean selected image installs and reports required tools** The declared setup should reproduce the environment. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.
- **B. A fresh isolated worker builds the same source successfully** Clean execution reveals hidden state dependencies. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **C. The build succeeds while prohibited administrative actions fail** **Correct.** Useful capability and denied excess demonstrate least privilege. This directly addresses the constraint stated in this case.

**Explanation:** Useful capability and denied excess demonstrate least privilege. The selected answer is the build succeeds while prohibited administrative actions fail.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q029

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep caches separate from correctness-critical build outputs** Cached data should accelerate rather than define the result. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **B. Inventory tool and filesystem access before changing the account** **Correct.** Hidden dependencies may rely on unnecessary elevation. This directly addresses the constraint stated in this case.
- **C. Review image deprecation notices and test updates** Explicit labels still have a support lifecycle. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.

**Explanation:** Hidden dependencies may rely on unnecessary elevation. The selected answer is inventory tool and filesystem access before changing the account.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q030

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. The team selects this remedy: "Run the agent under the least-privileged suitable identity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cleaning can increase build duration** Reproducibility may require trading some cache convenience. That addresses a different requirement: Dirty workspace. It does not directly resolve this case's stated constraint.
- **B. Some installations need a separate privileged preparation step** **Correct.** Routine jobs should not retain installation-level authority. This directly addresses the constraint stated in this case.
- **C. Image control is less granular on hosted workers** Self-hosting offers more control with more maintenance. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.

**Explanation:** Routine jobs should not retain installation-level authority. The selected answer is some installations need a separate privileged preparation step.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q031

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which next change most directly satisfies the stated requirement?

- **A. Use host isolation and restricted trust-specific pools** Containers do not erase host-level execution risks. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **B. Run the agent under the least-privileged suitable identity** Build execution does not require broad administrative authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. Declare toolchain setup and select a supported image intentionally** **Correct.** Image contents are maintained service dependencies. This directly addresses the constraint stated in this case.

**Explanation:** Image contents are maintained service dependencies. The selected answer is declare toolchain setup and select a supported image intentionally.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q032

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which explanation best accounts for the behavior or constraint described?

- **A. The workflow assumed an unchanging preinstalled tool inventory** **Correct.** Hosted images evolve independently of repository changes. This directly addresses the constraint stated in this case.
- **B. Containerization was mistaken for a complete trust boundary** Shared hosts and mounted resources can remain exposed. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **C. The operating-system identity exceeds the task's needs** Any executed build code inherits that authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.

**Explanation:** Hosted images evolve independently of repository changes. The selected answer is the workflow assumed an unchanging preinstalled tool inventory.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q033

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Contributor execution cannot access privileged host resources** The proof must test the actual isolation boundary. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **B. The build succeeds while prohibited administrative actions fail** Useful capability and denied excess demonstrate least privilege. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. A clean selected image installs and reports required tools** **Correct.** The declared setup should reproduce the environment. This directly addresses the constraint stated in this case.

**Explanation:** The declared setup should reproduce the environment. The selected answer is a clean selected image installs and reports required tools.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q034

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid mounting sensitive host paths or privileged sockets** Such mounts can defeat intended container isolation. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **B. Inventory tool and filesystem access before changing the account** Hidden dependencies may rely on unnecessary elevation. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.
- **C. Review image deprecation notices and test updates** **Correct.** Explicit labels still have a support lifecycle. This directly addresses the constraint stated in this case.

**Explanation:** Explicit labels still have a support lifecycle. The selected answer is review image deprecation notices and test updates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q035

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. The team selects this remedy: "Declare toolchain setup and select a supported image intentionally." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Image control is less granular on hosted workers** **Correct.** Self-hosting offers more control with more maintenance. This directly addresses the constraint stated in this case.
- **B. Stronger isolation may require separate workers or virtual machines** Container convenience alone is not sufficient for hostile workloads. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **C. Some installations need a separate privileged preparation step** Routine jobs should not retain installation-level authority. That addresses a different requirement: Overpowered account. It does not directly resolve this case's stated constraint.

**Explanation:** Self-hosting offers more control with more maintenance. The selected answer is image control is less granular on hosted workers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q036

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which next change most directly satisfies the stated requirement?

- **A. Use host isolation and restricted trust-specific pools** **Correct.** Containers do not erase host-level execution risks. This directly addresses the constraint stated in this case.
- **B. Evaluate on-demand workers or a scheduled safe lifecycle** Capacity should follow actual execution demand. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.
- **C. Declare toolchain setup and select a supported image intentionally** Image contents are maintained service dependencies. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.

**Explanation:** Containers do not erase host-level execution risks. The selected answer is use host isolation and restricted trust-specific pools.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q037

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which explanation best accounts for the behavior or constraint described?

- **A. The workflow assumed an unchanging preinstalled tool inventory** Hosted images evolve independently of repository changes. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.
- **B. Containerization was mistaken for a complete trust boundary** **Correct.** Shared hosts and mounted resources can remain exposed. This directly addresses the constraint stated in this case.
- **C. Always-on provisioning wastes idle compute capacity** The resource remains billable between jobs. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.

**Explanation:** Shared hosts and mounted resources can remain exposed. The selected answer is containerization was mistaken for a complete trust boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q038

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Contributor execution cannot access privileged host resources** **Correct.** The proof must test the actual isolation boundary. This directly addresses the constraint stated in this case.
- **B. Builds still start within the agreed time with less idle runtime** Cost reduction must preserve service expectations. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.
- **C. A clean selected image installs and reports required tools** The declared setup should reproduce the environment. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.

**Explanation:** The proof must test the actual isolation boundary. The selected answer is contributor execution cannot access privileged host resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q039

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid mounting sensitive host paths or privileged sockets** **Correct.** Such mounts can defeat intended container isolation. This directly addresses the constraint stated in this case.
- **B. Drain active jobs before shutting down workers** Stopping an occupied host can corrupt execution. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.
- **C. Review image deprecation notices and test updates** Explicit labels still have a support lifecycle. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.

**Explanation:** Such mounts can defeat intended container isolation. The selected answer is avoid mounting sensitive host paths or privileged sockets.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q040

Advanced · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. The team selects this remedy: "Use host isolation and restricted trust-specific pools." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Image control is less granular on hosted workers** Self-hosting offers more control with more maintenance. That addresses a different requirement: Hosted image churn. It does not directly resolve this case's stated constraint.
- **B. Stronger isolation may require separate workers or virtual machines** **Correct.** Container convenience alone is not sufficient for hostile workloads. This directly addresses the constraint stated in this case.
- **C. On-demand capacity increases startup latency** Lower idle cost may mean longer initial queues. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.

**Explanation:** Container convenience alone is not sufficient for hostile workloads. The selected answer is stronger isolation may require separate workers or virtual machines.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q041

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which next change most directly satisfies the stated requirement?

- **A. Evaluate on-demand workers or a scheduled safe lifecycle** **Correct.** Capacity should follow actual execution demand. This directly addresses the constraint stated in this case.
- **B. Identify required endpoints and allow the minimum supported connectivity** Agent operation needs specific rather than unrestricted egress. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **C. Use host isolation and restricted trust-specific pools** Containers do not erase host-level execution risks. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Capacity should follow actual execution demand. The selected answer is evaluate on-demand workers or a scheduled safe lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q042

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which explanation best accounts for the behavior or constraint described?

- **A. Always-on provisioning wastes idle compute capacity** **Correct.** The resource remains billable between jobs. This directly addresses the constraint stated in this case.
- **B. A narrow download failure was generalized into unlimited access** Connectivity diagnosis should identify the actual dependency. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **C. Containerization was mistaken for a complete trust boundary** Shared hosts and mounted resources can remain exposed. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The resource remains billable between jobs. The selected answer is always-on provisioning wastes idle compute capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q043

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Required job operations work while unrelated destinations remain restricted** Positive and negative network checks establish scope. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **B. Contributor execution cannot access privileged host resources** The proof must test the actual isolation boundary. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **C. Builds still start within the agreed time with less idle runtime** **Correct.** Cost reduction must preserve service expectations. This directly addresses the constraint stated in this case.

**Explanation:** Cost reduction must preserve service expectations. The selected answer is builds still start within the agreed time with less idle runtime.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q044

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which execution safeguard most directly addresses the risk in this case?

- **A. Maintain documented endpoint requirements and update procedures** Service dependencies can change over time. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **B. Avoid mounting sensitive host paths or privileged sockets** Such mounts can defeat intended container isolation. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **C. Drain active jobs before shutting down workers** **Correct.** Stopping an occupied host can corrupt execution. This directly addresses the constraint stated in this case.

**Explanation:** Stopping an occupied host can corrupt execution. The selected answer is drain active jobs before shutting down workers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. The team selects this remedy: "Evaluate on-demand workers or a scheduled safe lifecycle." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Tighter egress increases configuration maintenance** The restriction provides a clearer network trust boundary. That addresses a different requirement: Network maintenance. It does not directly resolve this case's stated constraint.
- **B. Stronger isolation may require separate workers or virtual machines** Container convenience alone is not sufficient for hostile workloads. That addresses a different requirement: Container assumption. It does not directly resolve this case's stated constraint.
- **C. On-demand capacity increases startup latency** **Correct.** Lower idle cost may mean longer initial queues. This directly addresses the constraint stated in this case.

**Explanation:** Lower idle cost may mean longer initial queues. The selected answer is on-demand capacity increases startup latency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q046

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which next change most directly satisfies the stated requirement?

- **A. Identify required endpoints and allow the minimum supported connectivity** **Correct.** Agent operation needs specific rather than unrestricted egress. This directly addresses the constraint stated in this case.
- **B. Use an appropriately connected agent with restricted network access** Execution needs a route to the private target. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Evaluate on-demand workers or a scheduled safe lifecycle** Capacity should follow actual execution demand. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.

**Explanation:** Agent operation needs specific rather than unrestricted egress. The selected answer is identify required endpoints and allow the minimum supported connectivity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q047

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which explanation best accounts for the behavior or constraint described?

- **A. A narrow download failure was generalized into unlimited access** **Correct.** Connectivity diagnosis should identify the actual dependency. This directly addresses the constraint stated in this case.
- **B. The hosted worker lacks the required private connectivity** Credentials alone cannot establish a network route. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Always-on provisioning wastes idle compute capacity** The resource remains billable between jobs. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.

**Explanation:** Connectivity diagnosis should identify the actual dependency. The selected answer is a narrow download failure was generalized into unlimited access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q048

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Builds still start within the agreed time with less idle runtime** Cost reduction must preserve service expectations. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.
- **B. Required job operations work while unrelated destinations remain restricted** **Correct.** Positive and negative network checks establish scope. This directly addresses the constraint stated in this case.
- **C. The agent reaches only the intended private test endpoint** Connectivity must match the required network boundary. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.

**Explanation:** Positive and negative network checks establish scope. The selected answer is required job operations work while unrelated destinations remain restricted.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q049

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which execution safeguard most directly addresses the risk in this case?

- **A. Maintain documented endpoint requirements and update procedures** **Correct.** Service dependencies can change over time. This directly addresses the constraint stated in this case.
- **B. Avoid exposing the private service publicly as a shortcut** A network workaround should preserve the access design. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.
- **C. Drain active jobs before shutting down workers** Stopping an occupied host can corrupt execution. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.

**Explanation:** Service dependencies can change over time. The selected answer is maintain documented endpoint requirements and update procedures.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)

## L12-Q050

Advanced · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. The team selects this remedy: "Identify required endpoints and allow the minimum supported connectivity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. On-demand capacity increases startup latency** Lower idle cost may mean longer initial queues. That addresses a different requirement: Idle runner cost. It does not directly resolve this case's stated constraint.
- **B. Tighter egress increases configuration maintenance** **Correct.** The restriction provides a clearer network trust boundary. This directly addresses the constraint stated in this case.
- **C. Self-managed connectivity adds infrastructure operations** Agent placement introduces patching and capacity responsibilities. That addresses a different requirement: Private endpoint. It does not directly resolve this case's stated constraint.

**Explanation:** The restriction provides a clearer network trust boundary. The selected answer is tighter egress increases configuration maintenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops)
