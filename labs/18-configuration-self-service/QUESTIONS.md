# Lab 18 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L18-Q001

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which next change most directly satisfies the stated requirement?

- **A.** Separate infrastructure deployment from guest configuration requirements
- **B.** Use a supported machine-configuration compliance policy
- **C.** Define one authoritative desired-state owner for the setting

## L18-Q002

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which explanation best accounts for the behavior or constraint described?

- **A.** Creating a VM does not establish continuing guest compliance
- **B.** A one-time installation script does not provide continuing assessment
- **C.** Two automation paths enforce incompatible configurations

## L18-Q003

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The setting stabilizes under one agreed source of truth
- **B.** The design identifies both provisioning and guest-state controls
- **C.** The changed setting appears as noncompliant

## L18-Q004

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which execution safeguard most directly addresses the risk in this case?

- **A.** Test policy effects on an isolated machine first
- **B.** Map existing configuration ownership before adding enforcement
- **C.** Choose supported technology for the actual operating system

## L18-Q005

Advanced · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. The team selects this remedy: "Separate infrastructure deployment from guest configuration requirements." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Central ownership needs coordination across teams
- **B.** More than one tool may be necessary
- **C.** Assessment frequency affects detection delay

## L18-Q006

Foundational · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which next change most directly satisfies the stated requirement?

- **A.** Separate infrastructure deployment from guest configuration requirements
- **B.** Use a supported machine-configuration compliance policy
- **C.** Check whether the assignment audits or applies configuration

## L18-Q007

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which explanation best accounts for the behavior or constraint described?

- **A.** A one-time installation script does not provide continuing assessment
- **B.** An audit policy does not imply automatic repair
- **C.** Creating a VM does not establish continuing guest compliance

## L18-Q008

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The design identifies both provisioning and guest-state controls
- **B.** The changed setting appears as noncompliant
- **C.** The configured assignment shows the intended remediation behavior

## L18-Q009

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which execution safeguard most directly addresses the risk in this case?

- **A.** Choose supported technology for the actual operating system
- **B.** Test policy effects on an isolated machine first
- **C.** Confirm support and prerequisites before enabling enforcement

## L18-Q010

Advanced · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. The team selects this remedy: "Use a supported machine-configuration compliance policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Automatic enforcement can conflict with operational changes
- **B.** More than one tool may be necessary
- **C.** Assessment frequency affects detection delay

## L18-Q011

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which next change most directly satisfies the stated requirement?

- **A.** Check whether the assignment audits or applies configuration
- **B.** Verify machine identity extension and supported prerequisites
- **C.** Use a supported machine-configuration compliance policy

## L18-Q012

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which explanation best accounts for the behavior or constraint described?

- **A.** A one-time installation script does not provide continuing assessment
- **B.** An audit policy does not imply automatic repair
- **C.** Policy assignment alone does not install every prerequisite

## L18-Q013

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The changed setting appears as noncompliant
- **B.** The configured assignment shows the intended remediation behavior
- **C.** The target reports a recent evaluated compliance result

## L18-Q014

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which execution safeguard most directly addresses the risk in this case?

- **A.** Confirm support and prerequisites before enabling enforcement
- **B.** Scope prerequisite deployment to the intended machines
- **C.** Test policy effects on an isolated machine first

## L18-Q015

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. The team selects this remedy: "Check whether the assignment audits or applies configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Assessment frequency affects detection delay
- **B.** Automatic enforcement can conflict with operational changes
- **C.** Prerequisite management adds lifecycle work

## L18-Q016

Foundational · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which next change most directly satisfies the stated requirement?

- **A.** Verify machine identity extension and supported prerequisites
- **B.** Teach the legacy exam concept alongside Machine Configuration
- **C.** Check whether the assignment audits or applies configuration

## L18-Q017

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which explanation best accounts for the behavior or constraint described?

- **A.** Policy assignment alone does not install every prerequisite
- **B.** Exam inclusion does not guarantee long-term service availability
- **C.** An audit policy does not imply automatic repair

## L18-Q018

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The configured assignment shows the intended remediation behavior
- **B.** The target reports a recent evaluated compliance result
- **C.** The lab states the retirement date and current supported direction

## L18-Q019

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which execution safeguard most directly addresses the risk in this case?

- **A.** Scope prerequisite deployment to the intended machines
- **B.** Avoid presenting retired Linux Automation DSC as a new supported path
- **C.** Confirm support and prerequisites before enabling enforcement

## L18-Q020

Advanced · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. The team selects this remedy: "Verify machine identity extension and supported prerequisites." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Prerequisite management adds lifecycle work
- **B.** Migration is not necessarily a direct settings copy
- **C.** Automatic enforcement can conflict with operational changes

## L18-Q021

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which next change most directly satisfies the stated requirement?

- **A.** Verify machine identity extension and supported prerequisites
- **B.** Teach the legacy exam concept alongside Machine Configuration
- **C.** Document its February22 retirement and provide a pipeline alternative

## L18-Q022

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which explanation best accounts for the behavior or constraint described?

- **A.** Exam inclusion does not guarantee long-term service availability
- **B.** The examined capability has a time-bounded service future
- **C.** Policy assignment alone does not install every prerequisite

## L18-Q023

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The learner can explain ADE and execute the supported alternative
- **B.** The target reports a recent evaluated compliance result
- **C.** The lab states the retirement date and current supported direction

## L18-Q024

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which execution safeguard most directly addresses the risk in this case?

- **A.** Scope prerequisite deployment to the intended machines
- **B.** Avoid presenting retired Linux Automation DSC as a new supported path
- **C.** Keep ADE exercises bounded and avoid new long-lived dependencies

## L18-Q025

Advanced · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. The team selects this remedy: "Teach the legacy exam concept alongside Machine Configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Alternative self-service requires explicit governance design
- **B.** Prerequisite management adds lifecycle work
- **C.** Migration is not necessarily a direct settings copy

## L18-Q026

Foundational · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which next change most directly satisfies the stated requirement?

- **A.** Document its February22 retirement and provide a pipeline alternative
- **B.** Constrain approved templates scopes and parameter choices
- **C.** Teach the legacy exam concept alongside Machine Configuration

## L18-Q027

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which explanation best accounts for the behavior or constraint described?

- **A.** The examined capability has a time-bounded service future
- **B.** A convenient portal does not itself establish guardrails
- **C.** Exam inclusion does not guarantee long-term service availability

## L18-Q028

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Unsupported targets are rejected while approved environments deploy
- **B.** The lab states the retirement date and current supported direction
- **C.** The learner can explain ADE and execute the supported alternative

## L18-Q029

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use scoped identities and validate policy effects
- **B.** Avoid presenting retired Linux Automation DSC as a new supported path
- **C.** Keep ADE exercises bounded and avoid new long-lived dependencies

## L18-Q030

Advanced · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. The team selects this remedy: "Document its February22 retirement and provide a pipeline alternative." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Alternative self-service requires explicit governance design
- **B.** Guardrails reduce flexibility for unusual workloads
- **C.** Migration is not necessarily a direct settings copy

## L18-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which next change most directly satisfies the stated requirement?

- **A.** Document its February22 retirement and provide a pipeline alternative
- **B.** Constrain approved templates scopes and parameter choices
- **C.** Version and verify configuration package content

## L18-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which explanation best accounts for the behavior or constraint described?

- **A.** A convenient portal does not itself establish guardrails
- **B.** A mutable package location changes behavior without an assignment change
- **C.** The examined capability has a time-bounded service future

## L18-Q033

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Machines evaluate the approved package identity
- **B.** The learner can explain ADE and execute the supported alternative
- **C.** Unsupported targets are rejected while approved environments deploy

## L18-Q034

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep ADE exercises bounded and avoid new long-lived dependencies
- **B.** Use scoped identities and validate policy effects
- **C.** Review and test new packages before broad assignment

## L18-Q035

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. The team selects this remedy: "Constrain approved templates scopes and parameter choices." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Versioned packages create promotion and retention work
- **B.** Alternative self-service requires explicit governance design
- **C.** Guardrails reduce flexibility for unusual workloads

## L18-Q036

Foundational · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which next change most directly satisfies the stated requirement?

- **A.** Version and verify configuration package content
- **B.** Inventory and remove remaining owned training resources
- **C.** Constrain approved templates scopes and parameter choices

## L18-Q037

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which explanation best accounts for the behavior or constraint described?

- **A.** Service metadata and customer-owned resources have different lifecycles
- **B.** A convenient portal does not itself establish guardrails
- **C.** A mutable package location changes behavior without an assignment change

## L18-Q038

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The inventory and cost view show only intentionally retained resources
- **B.** Unsupported targets are rejected while approved environments deploy
- **C.** Machines evaluate the approved package identity

## L18-Q039

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review and test new packages before broad assignment
- **B.** Verify ownership and dependencies before deleting shared resources
- **C.** Use scoped identities and validate policy effects

## L18-Q040

Advanced · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. The team selects this remedy: "Version and verify configuration package content." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Guardrails reduce flexibility for unusual workloads
- **B.** Versioned packages create promotion and retention work
- **C.** Complete cleanup can require several control-plane operations

## L18-Q041

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which next change most directly satisfies the stated requirement?

- **A.** Version and verify configuration package content
- **B.** Inventory and remove remaining owned training resources
- **C.** Define one authoritative desired-state owner for the setting

## L18-Q042

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which explanation best accounts for the behavior or constraint described?

- **A.** Two automation paths enforce incompatible configurations
- **B.** A mutable package location changes behavior without an assignment change
- **C.** Service metadata and customer-owned resources have different lifecycles

## L18-Q043

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The inventory and cost view show only intentionally retained resources
- **B.** The setting stabilizes under one agreed source of truth
- **C.** Machines evaluate the approved package identity

## L18-Q044

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review and test new packages before broad assignment
- **B.** Verify ownership and dependencies before deleting shared resources
- **C.** Map existing configuration ownership before adding enforcement

## L18-Q045

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. The team selects this remedy: "Inventory and remove remaining owned training resources." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Complete cleanup can require several control-plane operations
- **B.** Central ownership needs coordination across teams
- **C.** Versioned packages create promotion and retention work

## L18-Q046

Foundational · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which next change most directly satisfies the stated requirement?

- **A.** Define one authoritative desired-state owner for the setting
- **B.** Separate infrastructure deployment from guest configuration requirements
- **C.** Inventory and remove remaining owned training resources

## L18-Q047

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which explanation best accounts for the behavior or constraint described?

- **A.** Service metadata and customer-owned resources have different lifecycles
- **B.** Two automation paths enforce incompatible configurations
- **C.** Creating a VM does not establish continuing guest compliance

## L18-Q048

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The design identifies both provisioning and guest-state controls
- **B.** The inventory and cost view show only intentionally retained resources
- **C.** The setting stabilizes under one agreed source of truth

## L18-Q049

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which execution safeguard most directly addresses the risk in this case?

- **A.** Choose supported technology for the actual operating system
- **B.** Verify ownership and dependencies before deleting shared resources
- **C.** Map existing configuration ownership before adding enforcement

## L18-Q050

Advanced · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. The team selects this remedy: "Define one authoritative desired-state owner for the setting." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More than one tool may be necessary
- **B.** Complete cleanup can require several control-plane operations
- **C.** Central ownership needs coordination across teams
