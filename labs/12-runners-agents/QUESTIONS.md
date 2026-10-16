# Lab 12 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L12-Q001

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which next change most directly satisfies the stated requirement?

- **A.** Use an appropriately connected agent with restricted network access
- **B.** Check parallel-job entitlement and available execution slots
- **C.** Identify required endpoints and allow the minimum supported connectivity

## L12-Q002

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which explanation best accounts for the behavior or constraint described?

- **A.** Scheduling is constrained by organization execution limits
- **B.** A narrow download failure was generalized into unlimited access
- **C.** The hosted worker lacks the required private connectivity

## L12-Q003

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Required job operations work while unrelated destinations remain restricted
- **B.** The agent reaches only the intended private test endpoint
- **C.** Queued jobs start when an authorized slot becomes available

## L12-Q004

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. Which execution safeguard most directly addresses the risk in this case?

- **A.** Measure demand before purchasing additional capacity
- **B.** Maintain documented endpoint requirements and update procedures
- **C.** Avoid exposing the private service publicly as a shortcut

## L12-Q005

Advanced · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md)

Private endpoint: A hosted agent cannot reach a service exposed only inside the training virtual network. The team selects this remedy: "Use an appropriately connected agent with restricted network access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More parallel entitlement can increase cost
- **B.** Tighter egress increases configuration maintenance
- **C.** Self-managed connectivity adds infrastructure operations

## L12-Q006

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which next change most directly satisfies the stated requirement?

- **A.** Separate untrusted execution and use isolated ephemeral workers
- **B.** Use an appropriately connected agent with restricted network access
- **C.** Check parallel-job entitlement and available execution slots

## L12-Q007

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which explanation best accounts for the behavior or constraint described?

- **A.** The runner can retain malicious changes after the job
- **B.** The hosted worker lacks the required private connectivity
- **C.** Scheduling is constrained by organization execution limits

## L12-Q008

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Untrusted jobs cannot affect the privileged runner pool
- **B.** The agent reaches only the intended private test endpoint
- **C.** Queued jobs start when an authorized slot becomes available

## L12-Q009

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid exposing the private service publicly as a shortcut
- **B.** Measure demand before purchasing additional capacity
- **C.** Do not assign deployment credentials to untrusted worker contexts

## L12-Q010

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

No capacity: Eligible jobs wait in queue even though the organization's agent machines appear healthy and online. The team selects this remedy: "Check parallel-job entitlement and available execution slots." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Ephemeral execution adds provisioning overhead
- **B.** Self-managed connectivity adds infrastructure operations
- **C.** More parallel entitlement can increase cost

## L12-Q011

Foundational · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which next change most directly satisfies the stated requirement?

- **A.** Check parallel-job entitlement and available execution slots
- **B.** Separate untrusted execution and use isolated ephemeral workers
- **C.** Use appropriate pool selection and agent demands or labels

## L12-Q012

Foundational · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which explanation best accounts for the behavior or constraint described?

- **A.** Scheduling is constrained by organization execution limits
- **B.** The runner can retain malicious changes after the job
- **C.** The job's requirements are not represented in selection rules

## L12-Q013

Applied · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Queued jobs start when an authorized slot becomes available
- **B.** Untrusted jobs cannot affect the privileged runner pool
- **C.** The selected worker reports the required compiler version

## L12-Q014

Applied · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. Which execution safeguard most directly addresses the risk in this case?

- **A.** Measure demand before purchasing additional capacity
- **B.** Do not assign deployment credentials to untrusted worker contexts
- **C.** Maintain capabilities and installation state deliberately

## L12-Q015

Advanced · [CP2](README.md#task-2) · [D3.3.7](../../docs/objective-map.md)

Persistent compromise: An untrusted pull request runs on a privileged persistent self-hosted runner used later for releases. The team selects this remedy: "Separate untrusted execution and use isolated ephemeral workers." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Ephemeral execution adds provisioning overhead
- **B.** Specialized agents reduce scheduling flexibility
- **C.** More parallel entitlement can increase cost

## L12-Q016

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which next change most directly satisfies the stated requirement?

- **A.** Use appropriate pool selection and agent demands or labels
- **B.** Clean or recreate the workspace and declare all inputs
- **C.** Separate untrusted execution and use isolated ephemeral workers

## L12-Q017

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which explanation best accounts for the behavior or constraint described?

- **A.** The runner can retain malicious changes after the job
- **B.** The job's requirements are not represented in selection rules
- **C.** Persistent workspace state masks an undeclared dependency

## L12-Q018

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A fresh isolated worker builds the same source successfully
- **B.** Untrusted jobs cannot affect the privileged runner pool
- **C.** The selected worker reports the required compiler version

## L12-Q019

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not assign deployment credentials to untrusted worker contexts
- **B.** Maintain capabilities and installation state deliberately
- **C.** Keep caches separate from correctness-critical build outputs

## L12-Q020

Advanced · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

Wrong agent selected: A job requires a proprietary compiler, but the scheduler chooses agents without that installed tool. The team selects this remedy: "Use appropriate pool selection and agent demands or labels." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Cleaning can increase build duration
- **B.** Ephemeral execution adds provisioning overhead
- **C.** Specialized agents reduce scheduling flexibility

## L12-Q021

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which next change most directly satisfies the stated requirement?

- **A.** Clean or recreate the workspace and declare all inputs
- **B.** Run the agent under the least-privileged suitable identity
- **C.** Use appropriate pool selection and agent demands or labels

## L12-Q022

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which explanation best accounts for the behavior or constraint described?

- **A.** The operating-system identity exceeds the task's needs
- **B.** The job's requirements are not represented in selection rules
- **C.** Persistent workspace state masks an undeclared dependency

## L12-Q023

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A fresh isolated worker builds the same source successfully
- **B.** The build succeeds while prohibited administrative actions fail
- **C.** The selected worker reports the required compiler version

## L12-Q024

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inventory tool and filesystem access before changing the account
- **B.** Maintain capabilities and installation state deliberately
- **C.** Keep caches separate from correctness-critical build outputs

## L12-Q025

Advanced · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Dirty workspace: A build succeeds only on one persistent worker because files from an earlier run satisfy a missing input. The team selects this remedy: "Clean or recreate the workspace and declare all inputs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Cleaning can increase build duration
- **B.** Some installations need a separate privileged preparation step
- **C.** Specialized agents reduce scheduling flexibility

## L12-Q026

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which next change most directly satisfies the stated requirement?

- **A.** Run the agent under the least-privileged suitable identity
- **B.** Declare toolchain setup and select a supported image intentionally
- **C.** Clean or recreate the workspace and declare all inputs

## L12-Q027

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which explanation best accounts for the behavior or constraint described?

- **A.** The operating-system identity exceeds the task's needs
- **B.** The workflow assumed an unchanging preinstalled tool inventory
- **C.** Persistent workspace state masks an undeclared dependency

## L12-Q028

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A clean selected image installs and reports required tools
- **B.** A fresh isolated worker builds the same source successfully
- **C.** The build succeeds while prohibited administrative actions fail

## L12-Q029

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep caches separate from correctness-critical build outputs
- **B.** Inventory tool and filesystem access before changing the account
- **C.** Review image deprecation notices and test updates

## L12-Q030

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Overpowered account: A self-hosted agent runs as a domain administrator although it only compiles source and uploads reports. The team selects this remedy: "Run the agent under the least-privileged suitable identity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Cleaning can increase build duration
- **B.** Some installations need a separate privileged preparation step
- **C.** Image control is less granular on hosted workers

## L12-Q031

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which next change most directly satisfies the stated requirement?

- **A.** Use host isolation and restricted trust-specific pools
- **B.** Run the agent under the least-privileged suitable identity
- **C.** Declare toolchain setup and select a supported image intentionally

## L12-Q032

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which explanation best accounts for the behavior or constraint described?

- **A.** The workflow assumed an unchanging preinstalled tool inventory
- **B.** Containerization was mistaken for a complete trust boundary
- **C.** The operating-system identity exceeds the task's needs

## L12-Q033

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Contributor execution cannot access privileged host resources
- **B.** The build succeeds while prohibited administrative actions fail
- **C.** A clean selected image installs and reports required tools

## L12-Q034

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid mounting sensitive host paths or privileged sockets
- **B.** Inventory tool and filesystem access before changing the account
- **C.** Review image deprecation notices and test updates

## L12-Q035

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Hosted image churn: A pipeline relies on software implicitly installed on a moving hosted image and fails after an image refresh. The team selects this remedy: "Declare toolchain setup and select a supported image intentionally." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Image control is less granular on hosted workers
- **B.** Stronger isolation may require separate workers or virtual machines
- **C.** Some installations need a separate privileged preparation step

## L12-Q036

Foundational · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which next change most directly satisfies the stated requirement?

- **A.** Use host isolation and restricted trust-specific pools
- **B.** Evaluate on-demand workers or a scheduled safe lifecycle
- **C.** Declare toolchain setup and select a supported image intentionally

## L12-Q037

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which explanation best accounts for the behavior or constraint described?

- **A.** The workflow assumed an unchanging preinstalled tool inventory
- **B.** Containerization was mistaken for a complete trust boundary
- **C.** Always-on provisioning wastes idle compute capacity

## L12-Q038

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Contributor execution cannot access privileged host resources
- **B.** Builds still start within the agreed time with less idle runtime
- **C.** A clean selected image installs and reports required tools

## L12-Q039

Applied · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid mounting sensitive host paths or privileged sockets
- **B.** Drain active jobs before shutting down workers
- **C.** Review image deprecation notices and test updates

## L12-Q040

Advanced · [CP5](README.md#task-5) · [D3.3.7](../../docs/objective-map.md)

Container assumption: A job container is expected to remove every security risk from executing arbitrary contributor code on a privileged host. The team selects this remedy: "Use host isolation and restricted trust-specific pools." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Image control is less granular on hosted workers
- **B.** Stronger isolation may require separate workers or virtual machines
- **C.** On-demand capacity increases startup latency

## L12-Q041

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which next change most directly satisfies the stated requirement?

- **A.** Evaluate on-demand workers or a scheduled safe lifecycle
- **B.** Identify required endpoints and allow the minimum supported connectivity
- **C.** Use host isolation and restricted trust-specific pools

## L12-Q042

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which explanation best accounts for the behavior or constraint described?

- **A.** Always-on provisioning wastes idle compute capacity
- **B.** A narrow download failure was generalized into unlimited access
- **C.** Containerization was mistaken for a complete trust boundary

## L12-Q043

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Required job operations work while unrelated destinations remain restricted
- **B.** Contributor execution cannot access privileged host resources
- **C.** Builds still start within the agreed time with less idle runtime

## L12-Q044

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. Which execution safeguard most directly addresses the risk in this case?

- **A.** Maintain documented endpoint requirements and update procedures
- **B.** Avoid mounting sensitive host paths or privileged sockets
- **C.** Drain active jobs before shutting down workers

## L12-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Idle runner cost: A dedicated lab VM runs continuously even though builds occur only twice each week. The team selects this remedy: "Evaluate on-demand workers or a scheduled safe lifecycle." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Tighter egress increases configuration maintenance
- **B.** Stronger isolation may require separate workers or virtual machines
- **C.** On-demand capacity increases startup latency

## L12-Q046

Foundational · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which next change most directly satisfies the stated requirement?

- **A.** Identify required endpoints and allow the minimum supported connectivity
- **B.** Use an appropriately connected agent with restricted network access
- **C.** Evaluate on-demand workers or a scheduled safe lifecycle

## L12-Q047

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which explanation best accounts for the behavior or constraint described?

- **A.** A narrow download failure was generalized into unlimited access
- **B.** The hosted worker lacks the required private connectivity
- **C.** Always-on provisioning wastes idle compute capacity

## L12-Q048

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Builds still start within the agreed time with less idle runtime
- **B.** Required job operations work while unrelated destinations remain restricted
- **C.** The agent reaches only the intended private test endpoint

## L12-Q049

Applied · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. Which execution safeguard most directly addresses the risk in this case?

- **A.** Maintain documented endpoint requirements and update procedures
- **B.** Avoid exposing the private service publicly as a shortcut
- **C.** Drain active jobs before shutting down workers

## L12-Q050

Advanced · [CP4](README.md#task-4) · [D3.3.2](../../docs/objective-map.md), [D3.3.7](../../docs/objective-map.md)

Network maintenance: Security proposes broad outbound internet access for every self-hosted runner because one tool download fails. The team selects this remedy: "Identify required endpoints and allow the minimum supported connectivity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** On-demand capacity increases startup latency
- **B.** Tighter egress increases configuration maintenance
- **C.** Self-managed connectivity adds infrastructure operations
