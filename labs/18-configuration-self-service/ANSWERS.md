# Lab 18 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L18-Q001

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which next change most directly satisfies the stated requirement?

- **A. Separate infrastructure deployment from guest configuration requirements** **Correct.** Provisioned resources and guest state are distinct layers. This directly addresses the constraint stated in this case.
- **B. Use a supported machine-configuration compliance policy** Ongoing assessment detects guest-state divergence. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **C. Define one authoritative desired-state owner for the setting** Competing writers cause oscillation rather than convergence. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.

**Explanation:** Provisioned resources and guest state are distinct layers. The selected answer is separate infrastructure deployment from guest configuration requirements.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q002

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which explanation best accounts for the behavior or constraint described?

- **A. Creating a VM does not establish continuing guest compliance** **Correct.** The desired state must be assessed inside the machine. This directly addresses the constraint stated in this case.
- **B. A one-time installation script does not provide continuing assessment** Later manual edits occur after initial provisioning. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **C. Two automation paths enforce incompatible configurations** Both tools can be working as individually configured. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.

**Explanation:** The desired state must be assessed inside the machine. The selected answer is creating a VM does not establish continuing guest compliance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q003

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The setting stabilizes under one agreed source of truth** Repeated evaluations should converge rather than fight. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **B. The design identifies both provisioning and guest-state controls** **Correct.** Each requirement needs an appropriate implementation mechanism. This directly addresses the constraint stated in this case.
- **C. The changed setting appears as noncompliant** The evidence should include deliberate drift. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.

**Explanation:** Each requirement needs an appropriate implementation mechanism. The selected answer is the design identifies both provisioning and guest-state controls.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q004

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. Which execution safeguard most directly addresses the risk in this case?

- **A. Test policy effects on an isolated machine first** Configuration enforcement can alter operational behavior. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **B. Map existing configuration ownership before adding enforcement** New policy can conflict with established operational automation. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **C. Choose supported technology for the actual operating system** **Correct.** Legacy tooling may not support the target. This directly addresses the constraint stated in this case.

**Explanation:** Legacy tooling may not support the target. The selected answer is choose supported technology for the actual operating system.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q005

Advanced · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Configuration choice: A team confuses resource provisioning with ongoing operating-system compliance on existing machines. The team selects this remedy: "Separate infrastructure deployment from guest configuration requirements." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Central ownership needs coordination across teams** Technical convergence depends on agreed responsibility. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **B. More than one tool may be necessary** **Correct.** A single product need not satisfy every configuration layer. This directly addresses the constraint stated in this case.
- **C. Assessment frequency affects detection delay** Drift is not always visible immediately. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.

**Explanation:** A single product need not satisfy every configuration layer. The selected answer is more than one tool may be necessary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q006

Foundational · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which next change most directly satisfies the stated requirement?

- **A. Separate infrastructure deployment from guest configuration requirements** Provisioned resources and guest state are distinct layers. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. Use a supported machine-configuration compliance policy** **Correct.** Ongoing assessment detects guest-state divergence. This directly addresses the constraint stated in this case.
- **C. Check whether the assignment audits or applies configuration** Detection and remediation are separate capabilities. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Ongoing assessment detects guest-state divergence. The selected answer is use a supported machine-configuration compliance policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q007

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which explanation best accounts for the behavior or constraint described?

- **A. A one-time installation script does not provide continuing assessment** **Correct.** Later manual edits occur after initial provisioning. This directly addresses the constraint stated in this case.
- **B. An audit policy does not imply automatic repair** Its purpose may be reporting rather than enforcement. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.
- **C. Creating a VM does not establish continuing guest compliance** The desired state must be assessed inside the machine. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.

**Explanation:** Later manual edits occur after initial provisioning. The selected answer is a one-time installation script does not provide continuing assessment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q008

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The design identifies both provisioning and guest-state controls** Each requirement needs an appropriate implementation mechanism. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. The changed setting appears as noncompliant** **Correct.** The evidence should include deliberate drift. This directly addresses the constraint stated in this case.
- **C. The configured assignment shows the intended remediation behavior** The test should verify the actual assignment type. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should include deliberate drift. The selected answer is the changed setting appears as noncompliant.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q009

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. Which execution safeguard most directly addresses the risk in this case?

- **A. Choose supported technology for the actual operating system** Legacy tooling may not support the target. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. Test policy effects on an isolated machine first** **Correct.** Configuration enforcement can alter operational behavior. This directly addresses the constraint stated in this case.
- **C. Confirm support and prerequisites before enabling enforcement** Not every policy supports the same action. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Configuration enforcement can alter operational behavior. The selected answer is test policy effects on an isolated machine first.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q010

Advanced · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

Guest drift: Administrators repeatedly change a required Windows setting after deployment, and the team needs ongoing visibility. The team selects this remedy: "Use a supported machine-configuration compliance policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Automatic enforcement can conflict with operational changes** Teams need a controlled exception process. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.
- **B. More than one tool may be necessary** A single product need not satisfy every configuration layer. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **C. Assessment frequency affects detection delay** **Correct.** Drift is not always visible immediately. This directly addresses the constraint stated in this case.

**Explanation:** Drift is not always visible immediately. The selected answer is assessment frequency affects detection delay.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q011

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which next change most directly satisfies the stated requirement?

- **A. Check whether the assignment audits or applies configuration** **Correct.** Detection and remediation are separate capabilities. This directly addresses the constraint stated in this case.
- **B. Verify machine identity extension and supported prerequisites** The service needs a functioning guest-assessment path. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **C. Use a supported machine-configuration compliance policy** Ongoing assessment detects guest-state divergence. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.

**Explanation:** Detection and remediation are separate capabilities. The selected answer is check whether the assignment audits or applies configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q012

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which explanation best accounts for the behavior or constraint described?

- **A. A one-time installation script does not provide continuing assessment** Later manual edits occur after initial provisioning. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **B. An audit policy does not imply automatic repair** **Correct.** Its purpose may be reporting rather than enforcement. This directly addresses the constraint stated in this case.
- **C. Policy assignment alone does not install every prerequisite** The machine must be able to participate. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.

**Explanation:** Its purpose may be reporting rather than enforcement. The selected answer is an audit policy does not imply automatic repair.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q013

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The changed setting appears as noncompliant** The evidence should include deliberate drift. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **B. The configured assignment shows the intended remediation behavior** **Correct.** The test should verify the actual assignment type. This directly addresses the constraint stated in this case.
- **C. The target reports a recent evaluated compliance result** A fresh result demonstrates an active assessment path. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.

**Explanation:** The test should verify the actual assignment type. The selected answer is the configured assignment shows the intended remediation behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q014

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. Which execution safeguard most directly addresses the risk in this case?

- **A. Confirm support and prerequisites before enabling enforcement** **Correct.** Not every policy supports the same action. This directly addresses the constraint stated in this case.
- **B. Scope prerequisite deployment to the intended machines** Broad automation can alter unrelated workloads. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **C. Test policy effects on an isolated machine first** Configuration enforcement can alter operational behavior. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.

**Explanation:** Not every policy supports the same action. The selected answer is confirm support and prerequisites before enabling enforcement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q015

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Audit assumption: A policy reports a machine as noncompliant, but the team expects the setting to repair itself automatically. The team selects this remedy: "Check whether the assignment audits or applies configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Assessment frequency affects detection delay** Drift is not always visible immediately. That addresses a different requirement: Guest drift. It does not directly resolve this case's stated constraint.
- **B. Automatic enforcement can conflict with operational changes** **Correct.** Teams need a controlled exception process. This directly addresses the constraint stated in this case.
- **C. Prerequisite management adds lifecycle work** Extensions and identities also need monitoring. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.

**Explanation:** Teams need a controlled exception process. The selected answer is automatic enforcement can conflict with operational changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q016

Foundational · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which next change most directly satisfies the stated requirement?

- **A. Verify machine identity extension and supported prerequisites** **Correct.** The service needs a functioning guest-assessment path. This directly addresses the constraint stated in this case.
- **B. Teach the legacy exam concept alongside Machine Configuration** Current guidance needs both scope accuracy and lifecycle context. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. Check whether the assignment audits or applies configuration** Detection and remediation are separate capabilities. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The service needs a functioning guest-assessment path. The selected answer is verify machine identity extension and supported prerequisites.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q017

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which explanation best accounts for the behavior or constraint described?

- **A. Policy assignment alone does not install every prerequisite** **Correct.** The machine must be able to participate. This directly addresses the constraint stated in this case.
- **B. Exam inclusion does not guarantee long-term service availability** The curriculum must distinguish assessed legacy capabilities. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. An audit policy does not imply automatic repair** Its purpose may be reporting rather than enforcement. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The machine must be able to participate. The selected answer is policy assignment alone does not install every prerequisite.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q018

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The configured assignment shows the intended remediation behavior** The test should verify the actual assignment type. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.
- **B. The target reports a recent evaluated compliance result** **Correct.** A fresh result demonstrates an active assessment path. This directly addresses the constraint stated in this case.
- **C. The lab states the retirement date and current supported direction** Readers need the explicit technology lifecycle boundary. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.

**Explanation:** A fresh result demonstrates an active assessment path. The selected answer is the target reports a recent evaluated compliance result.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q019

Applied · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. Which execution safeguard most directly addresses the risk in this case?

- **A. Scope prerequisite deployment to the intended machines** **Correct.** Broad automation can alter unrelated workloads. This directly addresses the constraint stated in this case.
- **B. Avoid presenting retired Linux Automation DSC as a new supported path** Legacy operating-system support differs from current alternatives. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. Confirm support and prerequisites before enabling enforcement** Not every policy supports the same action. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Broad automation can alter unrelated workloads. The selected answer is scope prerequisite deployment to the intended machines.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q020

Advanced · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

Missing prerequisite: A guest-configuration policy is assigned, but no useful machine result appears because required platform components are absent. The team selects this remedy: "Verify machine identity extension and supported prerequisites." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Prerequisite management adds lifecycle work** **Correct.** Extensions and identities also need monitoring. This directly addresses the constraint stated in this case.
- **B. Migration is not necessarily a direct settings copy** Equivalent intent may need a redesigned configuration package. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. Automatic enforcement can conflict with operational changes** Teams need a controlled exception process. That addresses a different requirement: Audit assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Extensions and identities also need monitoring. The selected answer is prerequisite management adds lifecycle work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q021

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which next change most directly satisfies the stated requirement?

- **A. Verify machine identity extension and supported prerequisites** The service needs a functioning guest-assessment path. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **B. Teach the legacy exam concept alongside Machine Configuration** **Correct.** Current guidance needs both scope accuracy and lifecycle context. This directly addresses the constraint stated in this case.
- **C. Document its February22 retirement and provide a pipeline alternative** A learning implementation must acknowledge the announced lifecycle. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.

**Explanation:** Current guidance needs both scope accuracy and lifecycle context. The selected answer is teach the legacy exam concept alongside Machine Configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q022

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which explanation best accounts for the behavior or constraint described?

- **A. Exam inclusion does not guarantee long-term service availability** **Correct.** The curriculum must distinguish assessed legacy capabilities. This directly addresses the constraint stated in this case.
- **B. The examined capability has a time-bounded service future** Exam relevance does not remove retirement constraints. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **C. Policy assignment alone does not install every prerequisite** The machine must be able to participate. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.

**Explanation:** The curriculum must distinguish assessed legacy capabilities. The selected answer is exam inclusion does not guarantee long-term service availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q023

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The learner can explain ADE and execute the supported alternative** Coverage and practical continuity need separate evidence. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **B. The target reports a recent evaluated compliance result** A fresh result demonstrates an active assessment path. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **C. The lab states the retirement date and current supported direction** **Correct.** Readers need the explicit technology lifecycle boundary. This directly addresses the constraint stated in this case.

**Explanation:** Readers need the explicit technology lifecycle boundary. The selected answer is the lab states the retirement date and current supported direction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q024

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. Which execution safeguard most directly addresses the risk in this case?

- **A. Scope prerequisite deployment to the intended machines** Broad automation can alter unrelated workloads. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **B. Avoid presenting retired Linux Automation DSC as a new supported path** **Correct.** Legacy operating-system support differs from current alternatives. This directly addresses the constraint stated in this case.
- **C. Keep ADE exercises bounded and avoid new long-lived dependencies** Training should not create an unmanaged retirement burden. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.

**Explanation:** Legacy operating-system support differs from current alternatives. The selected answer is avoid presenting retired Linux Automation DSC as a new supported path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q025

Advanced · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Legacy DSC curriculum: A proposed new lab relies exclusively on Automation State Configuration without mentioning its announced retirement. The team selects this remedy: "Teach the legacy exam concept alongside Machine Configuration." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Alternative self-service requires explicit governance design** There is no universal one-to-one replacement. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **B. Prerequisite management adds lifecycle work** Extensions and identities also need monitoring. That addresses a different requirement: Missing prerequisite. It does not directly resolve this case's stated constraint.
- **C. Migration is not necessarily a direct settings copy** **Correct.** Equivalent intent may need a redesigned configuration package. This directly addresses the constraint stated in this case.

**Explanation:** Equivalent intent may need a redesigned configuration package. The selected answer is migration is not necessarily a direct settings copy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q026

Foundational · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which next change most directly satisfies the stated requirement?

- **A. Document its February22 retirement and provide a pipeline alternative** **Correct.** A learning implementation must acknowledge the announced lifecycle. This directly addresses the constraint stated in this case.
- **B. Constrain approved templates scopes and parameter choices** Self-service should operate within a governed boundary. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **C. Teach the legacy exam concept alongside Machine Configuration** Current guidance needs both scope accuracy and lifecycle context. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.

**Explanation:** A learning implementation must acknowledge the announced lifecycle. The selected answer is document its February22 retirement and provide a pipeline alternative.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q027

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which explanation best accounts for the behavior or constraint described?

- **A. The examined capability has a time-bounded service future** **Correct.** Exam relevance does not remove retirement constraints. This directly addresses the constraint stated in this case.
- **B. A convenient portal does not itself establish guardrails** Unrestricted parameters can bypass platform intent. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **C. Exam inclusion does not guarantee long-term service availability** The curriculum must distinguish assessed legacy capabilities. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.

**Explanation:** Exam relevance does not remove retirement constraints. The selected answer is the examined capability has a time-bounded service future.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q028

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Unsupported targets are rejected while approved environments deploy** Both permitted and denied paths demonstrate governance. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **B. The lab states the retirement date and current supported direction** Readers need the explicit technology lifecycle boundary. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. The learner can explain ADE and execute the supported alternative** **Correct.** Coverage and practical continuity need separate evidence. This directly addresses the constraint stated in this case.

**Explanation:** Coverage and practical continuity need separate evidence. The selected answer is the learner can explain ADE and execute the supported alternative.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q029

Applied · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. Which execution safeguard most directly addresses the risk in this case?

- **A. Use scoped identities and validate policy effects** Parameter validation alone is not an authorization boundary. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **B. Avoid presenting retired Linux Automation DSC as a new supported path** Legacy operating-system support differs from current alternatives. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.
- **C. Keep ADE exercises bounded and avoid new long-lived dependencies** **Correct.** Training should not create an unmanaged retirement burden. This directly addresses the constraint stated in this case.

**Explanation:** Training should not create an unmanaged retirement burden. The selected answer is keep ADE exercises bounded and avoid new long-lived dependencies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q030

Advanced · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

ADE retirement: A self-service lab uses Azure Deployment Environments, but learners plan to rely on it after February 2027. The team selects this remedy: "Document its February22 retirement and provide a pipeline alternative." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Alternative self-service requires explicit governance design** **Correct.** There is no universal one-to-one replacement. This directly addresses the constraint stated in this case.
- **B. Guardrails reduce flexibility for unusual workloads** Exceptions need an accountable platform process. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **C. Migration is not necessarily a direct settings copy** Equivalent intent may need a redesigned configuration package. That addresses a different requirement: Legacy DSC curriculum. It does not directly resolve this case's stated constraint.

**Explanation:** There is no universal one-to-one replacement. The selected answer is alternative self-service requires explicit governance design.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which next change most directly satisfies the stated requirement?

- **A. Document its February22 retirement and provide a pipeline alternative** A learning implementation must acknowledge the announced lifecycle. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **B. Constrain approved templates scopes and parameter choices** **Correct.** Self-service should operate within a governed boundary. This directly addresses the constraint stated in this case.
- **C. Version and verify configuration package content** Assessment should depend on deliberate immutable inputs. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.

**Explanation:** Self-service should operate within a governed boundary. The selected answer is constrain approved templates scopes and parameter choices.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which explanation best accounts for the behavior or constraint described?

- **A. A convenient portal does not itself establish guardrails** **Correct.** Unrestricted parameters can bypass platform intent. This directly addresses the constraint stated in this case.
- **B. A mutable package location changes behavior without an assignment change** The recorded reference does not identify stable content. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **C. The examined capability has a time-bounded service future** Exam relevance does not remove retirement constraints. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.

**Explanation:** Unrestricted parameters can bypass platform intent. The selected answer is a convenient portal does not itself establish guardrails.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q033

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Machines evaluate the approved package identity** The proof should bind policy to expected content. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **B. The learner can explain ADE and execute the supported alternative** Coverage and practical continuity need separate evidence. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **C. Unsupported targets are rejected while approved environments deploy** **Correct.** Both permitted and denied paths demonstrate governance. This directly addresses the constraint stated in this case.

**Explanation:** Both permitted and denied paths demonstrate governance. The selected answer is unsupported targets are rejected while approved environments deploy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q034

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep ADE exercises bounded and avoid new long-lived dependencies** Training should not create an unmanaged retirement burden. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **B. Use scoped identities and validate policy effects** **Correct.** Parameter validation alone is not an authorization boundary. This directly addresses the constraint stated in this case.
- **C. Review and test new packages before broad assignment** Guest-level changes can affect many machines. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.

**Explanation:** Parameter validation alone is not an authorization boundary. The selected answer is use scoped identities and validate policy effects.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q035

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Uncontrolled self-service: Developers can run a provisioning template with arbitrary subscription and networking values. The team selects this remedy: "Constrain approved templates scopes and parameter choices." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Versioned packages create promotion and retention work** Controlled updates improve reproducibility and rollback planning. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **B. Alternative self-service requires explicit governance design** There is no universal one-to-one replacement. That addresses a different requirement: ADE retirement. It does not directly resolve this case's stated constraint.
- **C. Guardrails reduce flexibility for unusual workloads** **Correct.** Exceptions need an accountable platform process. This directly addresses the constraint stated in this case.

**Explanation:** Exceptions need an accountable platform process. The selected answer is guardrails reduce flexibility for unusual workloads.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q036

Foundational · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which next change most directly satisfies the stated requirement?

- **A. Version and verify configuration package content** **Correct.** Assessment should depend on deliberate immutable inputs. This directly addresses the constraint stated in this case.
- **B. Inventory and remove remaining owned training resources** Deleting metadata may not remove all deployed infrastructure. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **C. Constrain approved templates scopes and parameter choices** Self-service should operate within a governed boundary. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.

**Explanation:** Assessment should depend on deliberate immutable inputs. The selected answer is version and verify configuration package content.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q037

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which explanation best accounts for the behavior or constraint described?

- **A. Service metadata and customer-owned resources have different lifecycles** The provisioning boundary may span multiple resource groups. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **B. A convenient portal does not itself establish guardrails** Unrestricted parameters can bypass platform intent. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **C. A mutable package location changes behavior without an assignment change** **Correct.** The recorded reference does not identify stable content. This directly addresses the constraint stated in this case.

**Explanation:** The recorded reference does not identify stable content. The selected answer is a mutable package location changes behavior without an assignment change.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q038

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The inventory and cost view show only intentionally retained resources** Cleanup needs evidence beyond a deleted portal entry. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **B. Unsupported targets are rejected while approved environments deploy** Both permitted and denied paths demonstrate governance. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **C. Machines evaluate the approved package identity** **Correct.** The proof should bind policy to expected content. This directly addresses the constraint stated in this case.

**Explanation:** The proof should bind policy to expected content. The selected answer is machines evaluate the approved package identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q039

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. Which execution safeguard most directly addresses the risk in this case?

- **A. Review and test new packages before broad assignment** **Correct.** Guest-level changes can affect many machines. This directly addresses the constraint stated in this case.
- **B. Verify ownership and dependencies before deleting shared resources** Dev Center components may serve other workloads. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **C. Use scoped identities and validate policy effects** Parameter validation alone is not an authorization boundary. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.

**Explanation:** Guest-level changes can affect many machines. The selected answer is review and test new packages before broad assignment.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q040

Advanced · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

Custom package drift: A configuration package URL remains constant while its contents change, producing unexplained compliance differences. The team selects this remedy: "Version and verify configuration package content." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Guardrails reduce flexibility for unusual workloads** Exceptions need an accountable platform process. That addresses a different requirement: Uncontrolled self-service. It does not directly resolve this case's stated constraint.
- **B. Versioned packages create promotion and retention work** **Correct.** Controlled updates improve reproducibility and rollback planning. This directly addresses the constraint stated in this case.
- **C. Complete cleanup can require several control-plane operations** One delete button may not end every charge. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.

**Explanation:** Controlled updates improve reproducibility and rollback planning. The selected answer is versioned packages create promotion and retention work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q041

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which next change most directly satisfies the stated requirement?

- **A. Version and verify configuration package content** Assessment should depend on deliberate immutable inputs. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **B. Inventory and remove remaining owned training resources** **Correct.** Deleting metadata may not remove all deployed infrastructure. This directly addresses the constraint stated in this case.
- **C. Define one authoritative desired-state owner for the setting** Competing writers cause oscillation rather than convergence. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.

**Explanation:** Deleting metadata may not remove all deployed infrastructure. The selected answer is inventory and remove remaining owned training resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q042

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which explanation best accounts for the behavior or constraint described?

- **A. Two automation paths enforce incompatible configurations** Both tools can be working as individually configured. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **B. A mutable package location changes behavior without an assignment change** The recorded reference does not identify stable content. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **C. Service metadata and customer-owned resources have different lifecycles** **Correct.** The provisioning boundary may span multiple resource groups. This directly addresses the constraint stated in this case.

**Explanation:** The provisioning boundary may span multiple resource groups. The selected answer is service metadata and customer-owned resources have different lifecycles.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q043

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The inventory and cost view show only intentionally retained resources** **Correct.** Cleanup needs evidence beyond a deleted portal entry. This directly addresses the constraint stated in this case.
- **B. The setting stabilizes under one agreed source of truth** Repeated evaluations should converge rather than fight. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **C. Machines evaluate the approved package identity** The proof should bind policy to expected content. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.

**Explanation:** Cleanup needs evidence beyond a deleted portal entry. The selected answer is the inventory and cost view show only intentionally retained resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q044

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. Which execution safeguard most directly addresses the risk in this case?

- **A. Review and test new packages before broad assignment** Guest-level changes can affect many machines. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.
- **B. Verify ownership and dependencies before deleting shared resources** **Correct.** Dev Center components may serve other workloads. This directly addresses the constraint stated in this case.
- **C. Map existing configuration ownership before adding enforcement** New policy can conflict with established operational automation. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.

**Explanation:** Dev Center components may serve other workloads. The selected answer is verify ownership and dependencies before deleting shared resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q045

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Cleanup gap: A learner deletes an environment record but still sees charges from resources deployed outside its managed group. The team selects this remedy: "Inventory and remove remaining owned training resources." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Complete cleanup can require several control-plane operations** **Correct.** One delete button may not end every charge. This directly addresses the constraint stated in this case.
- **B. Central ownership needs coordination across teams** Technical convergence depends on agreed responsibility. That addresses a different requirement: Conflicting tools. It does not directly resolve this case's stated constraint.
- **C. Versioned packages create promotion and retention work** Controlled updates improve reproducibility and rollback planning. That addresses a different requirement: Custom package drift. It does not directly resolve this case's stated constraint.

**Explanation:** One delete button may not end every charge. The selected answer is complete cleanup can require several control-plane operations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q046

Foundational · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which next change most directly satisfies the stated requirement?

- **A. Define one authoritative desired-state owner for the setting** **Correct.** Competing writers cause oscillation rather than convergence. This directly addresses the constraint stated in this case.
- **B. Separate infrastructure deployment from guest configuration requirements** Provisioned resources and guest state are distinct layers. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **C. Inventory and remove remaining owned training resources** Deleting metadata may not remove all deployed infrastructure. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.

**Explanation:** Competing writers cause oscillation rather than convergence. The selected answer is define one authoritative desired-state owner for the setting.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q047

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which explanation best accounts for the behavior or constraint described?

- **A. Service metadata and customer-owned resources have different lifecycles** The provisioning boundary may span multiple resource groups. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **B. Two automation paths enforce incompatible configurations** **Correct.** Both tools can be working as individually configured. This directly addresses the constraint stated in this case.
- **C. Creating a VM does not establish continuing guest compliance** The desired state must be assessed inside the machine. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.

**Explanation:** Both tools can be working as individually configured. The selected answer is two automation paths enforce incompatible configurations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q048

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The design identifies both provisioning and guest-state controls** Each requirement needs an appropriate implementation mechanism. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. The inventory and cost view show only intentionally retained resources** Cleanup needs evidence beyond a deleted portal entry. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **C. The setting stabilizes under one agreed source of truth** **Correct.** Repeated evaluations should converge rather than fight. This directly addresses the constraint stated in this case.

**Explanation:** Repeated evaluations should converge rather than fight. The selected answer is the setting stabilizes under one agreed source of truth.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q049

Applied · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. Which execution safeguard most directly addresses the risk in this case?

- **A. Choose supported technology for the actual operating system** Legacy tooling may not support the target. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. Verify ownership and dependencies before deleting shared resources** Dev Center components may serve other workloads. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **C. Map existing configuration ownership before adding enforcement** **Correct.** New policy can conflict with established operational automation. This directly addresses the constraint stated in this case.

**Explanation:** New policy can conflict with established operational automation. The selected answer is map existing configuration ownership before adding enforcement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q050

Advanced · [CP3](README.md#task-3) · [D3.5.1](../../docs/objective-map.md), [D3.5.2](../../docs/objective-map.md)

Conflicting tools: A startup script and configuration enforcement repeatedly overwrite each other's operating-system settings. The team selects this remedy: "Define one authoritative desired-state owner for the setting." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. More than one tool may be necessary** A single product need not satisfy every configuration layer. That addresses a different requirement: Configuration choice. It does not directly resolve this case's stated constraint.
- **B. Complete cleanup can require several control-plane operations** One delete button may not end every charge. That addresses a different requirement: Cleanup gap. It does not directly resolve this case's stated constraint.
- **C. Central ownership needs coordination across teams** **Correct.** Technical convergence depends on agreed responsibility. This directly addresses the constraint stated in this case.

**Explanation:** Technical convergence depends on agreed responsibility. The selected answer is central ownership needs coordination across teams.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)
