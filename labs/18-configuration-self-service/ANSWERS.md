# Lab 18 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L18-Q001

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

An engineer describes the required service settings instead of a sequence of manual edits. Which configuration-management concept does this illustrate?

- **A. A chronological command transcript** A transcript records actions rather than the required resulting configuration state.
- **B. A production incident timeline** An incident timeline describes events rather than the intended server configuration.
- **C. A release artifact retention policy** Retention governs stored evidence rather than the machine's declared operating settings.
- **D. A desired-state declaration** **Correct.** A desired-state document describes the condition that reconciliation should establish.

**Explanation:** A transcript records actions rather than the required resulting configuration state. An incident timeline describes events rather than the intended server configuration. Retention governs stored evidence rather than the machine's declared operating settings. A desired-state document describes the condition that reconciliation should establish.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q002

Foundational · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

The current configuration differs from the approved declaration, and the team wants a report before repair. Which operation fits?

- **A. Replace evidence with expected values** Expected values cannot substitute for observations of the actual current configuration.
- **B. Audit current against desired state** **Correct.** Audit identifies mismatches without requiring those settings to be changed immediately.
- **C. Apply every available configuration** Unreviewed application changes state before the requested audit report is produced.
- **D. Delete the desired-state document** Removing the declaration discards the reference needed to identify configuration drift.

**Explanation:** Expected values cannot substitute for observations of the actual current configuration. Audit identifies mismatches without requiring those settings to be changed immediately. Unreviewed application changes state before the requested audit report is produced. Removing the declaration discards the reference needed to identify configuration drift.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q003

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

The lab's declared JSON setting is correct but its actual file contains another value. Which comparison demonstrates drift?

- **A. Compare only file modification timestamps** A timestamp change cannot identify whether the declared setting value actually differs.
- **B. Check only the previous repair exit status** An earlier successful repair does not observe the current configuration value after later edits.
- **C. Compare observed and declared values** **Correct.** Drift is a discrepancy between the observed state and the declared target.
- **D. Compare two copies of the declaration** Matching desired documents does not inspect the actual configuration being managed.

**Explanation:** A timestamp change cannot identify whether the declared setting value actually differs. An earlier successful repair does not observe the current configuration value after later edits. Drift is a discrepancy between the observed state and the declared target. Matching desired documents does not inspect the actual configuration being managed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q004

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

A reconciliation script writes the desired value even when it already matches. What property should a well-designed repeated run preserve?

```json
{"desired":{"mode":"safe"},"firstRun":{"changed":true},"secondRun":{"changed":false,"mode":"safe"}}
```

- **A. A new ownership identity each run** Changing ownership context obstructs controlled management of the same declared resource.
- **B. The same intended final state** **Correct.** Repeated reconciliation should converge on desired settings without accumulating additional changes.
- **C. An increasing number of files** Accumulating copies suggests imperative repetition rather than stable desired-state convergence.
- **D. A fresh random setting every run** Random settings prevent convergence to the same approved configuration declaration.

**Explanation:** Changing ownership context obstructs controlled management of the same declared resource. Repeated reconciliation should converge on desired settings without accumulating additional changes. Accumulating copies suggests imperative repetition rather than stable desired-state convergence. Random settings prevent convergence to the same approved configuration declaration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q005

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

An audit-only policy reports drift on a production machine, but automatic repair would interrupt a service. Which mode and action match the restriction?

- **A. Keep audit mode and schedule approved remediation** **Correct.** Audit reports noncompliance while leaving the disruptive correction under explicit change control.
- **B. Enable autocorrection without review** Autocorrection can modify production state contrary to the stated interruption restriction.
- **C. Mark the drift compliant permanently** Ignoring a real mismatch conceals the configuration condition requiring planned remediation.
- **D. Delete the assignment to clear the result** Removing observation does not establish that the machine satisfies its desired configuration.

**Explanation:** Audit reports noncompliance while leaving the disruptive correction under explicit change control. Autocorrection can modify production state contrary to the stated interruption restriction. Ignoring a real mismatch conceals the configuration condition requiring planned remediation. Removing observation does not establish that the machine satisfies its desired configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q006

Foundational · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

A local configuration fixture uses a single declared file under its workspace. What should the reconciliation function modify?

- **A. The parent directory's entire contents** Replacing the parent directory changes unrelated state beyond the declared resource.
- **B. Only the exact declared owned file** **Correct.** A precise resource boundary limits correction to the fixture's intended managed state.
- **C. Every file sharing its extension** Extension matching can include unrelated files outside the declared configuration resource.
- **D. Any file whose name contains config** A broad naming pattern does not establish the managed file's ownership boundary.

**Explanation:** Replacing the parent directory changes unrelated state beyond the declared resource. A precise resource boundary limits correction to the fixture's intended managed state. Extension matching can include unrelated files outside the declared configuration resource. A broad naming pattern does not establish the managed file's ownership boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q007

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

The team needs to see what changed during a configuration repair and what remained unverified remotely. Which evidence is useful?

- **A. Only the desired value copied twice** Repeating desired intent does not prove the original or resulting observed state.
- **B. Only a successful JSON parsing result** Parsing verifies document syntax rather than configuration repair and managed execution scope.
- **C. Only the existence of a screenshot** A screenshot's existence does not establish which settings were actually changed.
- **D. Before and after values with execution scope** **Correct.** Scoped observations show local convergence while avoiding unsupported claims about provider execution.

**Explanation:** Repeating desired intent does not prove the original or resulting observed state. Parsing verifies document syntax rather than configuration repair and managed execution scope. A screenshot's existence does not establish which settings were actually changed. Scoped observations show local convergence while avoiding unsupported claims about provider execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q008

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

A local audit returns noncompliance and the learner has not run reconciliation. Which checkpoint status accurately reflects the managed configuration?

- **A. Cloud policy deployed by local audit** A local fixture cannot establish that Azure Policy assignments were created.
- **B. Drift detected; repair still pending** **Correct.** An audit result identifies a mismatch without proving that correction has executed.
- **C. Reconciliation passed because drift was visible** Detecting a defect does not mean the managed state has been repaired.
- **D. All settings compliant because declarations parse** Valid declarations can still differ from the actual observed configuration values.

**Explanation:** A local fixture cannot establish that Azure Policy assignments were created. An audit result identifies a mismatch without proving that correction has executed. Detecting a defect does not mean the managed state has been repaired. Valid declarations can still differ from the actual observed configuration values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q009

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

An approved desired-state document changes one property while other file properties are deliberately unmanaged. Which repair strategy avoids accidental expansion of scope?

- **A. Import any settings found on another machine** Unreviewed external settings do not represent this resource's approved desired state.
- **B. Reconcile only the declared properties** **Correct.** A constrained repair preserves unrelated settings outside the declared management contract.
- **C. Replace every property with defaults** Default replacement can overwrite intentionally unmanaged settings unrelated to this correction.
- **D. Delete the complete configuration directory** Directory deletion removes more state than the declared property discrepancy requires.

**Explanation:** Unreviewed external settings do not represent this resource's approved desired state. A constrained repair preserves unrelated settings outside the declared management contract. Default replacement can overwrite intentionally unmanaged settings unrelated to this correction. Directory deletion removes more state than the declared property discrepancy requires.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q010

Advanced · [CP3](README.md#task-3) · [D3.5.2](../../docs/objective-map.md)

A second reconciliation reports no changes, but the first run only simulated writes. Which evidence is still required before claiming repair?

```json
{"operation":"reconcile","preview":true,"wouldChange":true,"actualWritePerformed":false}
```

- **A. A real write followed by an observed-state audit** **Correct.** A simulated change does not establish that actual managed settings reached compliance.
- **B. A second simulation using identical inputs** Repeated simulations still do not inspect the state after an actual correction.
- **C. Accept a passing reconciliation-script syntax check as evidence of repair** A syntactically valid script can still have run only in preview and leave actual settings unchanged.
- **D. Use the desired-state file itself as the postrepair observation** Reading the desired value does not independently observe whether the managed resource was changed.

**Explanation:** A simulated change does not establish that actual managed settings reached compliance. Repeated simulations still do not inspect the state after an actual correction. A syntactically valid script can still have run only in preview and leave actual settings unchanged. Reading the desired value does not independently observe whether the managed resource was changed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q011

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A platform team wants machine configuration evaluated across many assigned machines using Azure governance. Which Azure capability fits this requirement?

- **A. An application package cache** Dependency caches accelerate builds rather than orchestrating guest configuration compliance policies.
- **B. Machine Configuration orchestrated through Azure Policy** **Correct.** Policy can assign machine configurations and expose per-setting compliance at scale.
- **C. Bicep formatting without policy assignment** Formatting infrastructure source cannot evaluate guest operating-system settings across assigned machines.
- **D. A single local JSON fixture** Local fixture calculations do not create fleet-wide policy assignments or compliance observations.

**Explanation:** Dependency caches accelerate builds rather than orchestrating guest configuration compliance policies. Policy can assign machine configurations and expose per-setting compliance at scale. Formatting infrastructure source cannot evaluate guest operating-system settings across assigned machines. Local fixture calculations do not create fleet-wide policy assignments or compliance observations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q012

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A machine requires reporting only, and its owner does not permit automatic configuration changes. Which Machine Configuration enforcement mode matches?

- **A. Unreviewed manual repair** Manual changes still alter configuration contrary to the reporting-only requirement.
- **B. Audit** **Correct.** Audit reports current state without applying corrective configuration to the managed machine.
- **C. Apply and Monitor** This mode applies configuration first, exceeding the stated reporting-only permission boundary.
- **D. Apply and Autocorrect** This mode applies and repairs drift rather than merely reporting observations.

**Explanation:** Manual changes still alter configuration contrary to the reporting-only requirement. Audit reports current state without applying corrective configuration to the managed machine. This mode applies configuration first, exceeding the stated reporting-only permission boundary. This mode applies and repairs drift rather than merely reporting observations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q013

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

The organization wants configuration applied once and future drift reported, with subsequent corrections controlled by change tickets. Which mode fits?

- **A. Audit only** Audit alone does not perform the requested initial configuration application.
- **B. Apply and Autocorrect** Automatic later correction conflicts with the requirement for ticket-controlled subsequent repairs.
- **C. Remove the assignment after deployment** Removing monitoring prevents the requested reporting of future configuration drift.
- **D. Apply and Monitor** **Correct.** This mode applies configuration and monitors later changes without continuous automatic correction.

**Explanation:** Audit alone does not perform the requested initial configuration application. Automatic later correction conflicts with the requirement for ticket-controlled subsequent repairs. Removing monitoring prevents the requested reporting of future configuration drift. This mode applies configuration and monitors later changes without continuous automatic correction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q014

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Machines must automatically return to their approved configuration after an unauthorized setting change. Which supported Machine Configuration mode provides that behavior?

- **A. Apply and Monitor** This mode monitors later drift rather than automatically restoring every mismatch.
- **B. One-time source compilation** Compiling a configuration does not continuously observe or repair a managed machine.
- **C. Apply and Autocorrect** **Correct.** This mode applies declared configuration and brings drifted machines back into conformance.
- **D. Audit only** Audit reports discrepancies without applying the requested corrective configuration changes.

**Explanation:** This mode monitors later drift rather than automatically restoring every mismatch. Compiling a configuration does not continuously observe or repair a managed machine. This mode applies declared configuration and brings drifted machines back into conformance. Audit reports discrepancies without applying the requested corrective configuration changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q015

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

The team selected autocorrection, but a critical setting causes repeated service disruption when repaired. What change addresses both governance and availability?

```text
Mode: Apply and Autocorrect
Repair: resets service setting and restarts process
Observed: configuration returns; active sessions are repeatedly interrupted
```

- **A. Declare every current value compliant automatically** Copying drift into desired state bypasses review of whether those settings are acceptable.
- **B. Keep autocorrection unchanged and suppress service alerts** Suppressing symptoms preserves the harmful correction cycle and obscures operational impact.
- **C. Review the desired setting and use controlled remediation while diagnosing** **Correct.** Automatic correction should not repeatedly apply a harmful declaration without operational review.
- **D. Remove all configuration reporting forever** Disabling observation hides risk and does not resolve the defective target setting.

**Explanation:** Copying drift into desired state bypasses review of whether those settings are acceptable. Suppressing symptoms preserves the harmful correction cycle and obscures operational impact. Automatic correction should not repeatedly apply a harmful declaration without operational review. Disabling observation hides risk and does not resolve the defective target setting.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q016

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A Linux host is outside its publisher's supported lifecycle. What must the team verify before adopting it into Machine Configuration management?

- **A. Only whether its configuration file parses** Source syntax cannot establish runtime support on an unsupported operating system.
- **B. Only whether another host reported compliance** Another host's result does not prove this machine's operating-system compatibility.
- **C. The current supported operating-system matrix** **Correct.** Machine Configuration support depends on compatible clients and supported operating-system versions.
- **D. Only whether the Azure Arc agent can connect successfully** Successful Arc connectivity does not establish that this operating-system release is supported by Machine Configuration.

**Explanation:** Source syntax cannot establish runtime support on an unsupported operating system. Another host's result does not prove this machine's operating-system compatibility. Machine Configuration support depends on compatible clients and supported operating-system versions. Successful Arc connectivity does not establish that this operating-system release is supported by Machine Configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q017

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A server runs outside Azure and must participate in the same guest-configuration governance model. Which onboarding direction should be evaluated?

- **A. Azure Arc-enabled machine integration** **Correct.** Machine Configuration includes hybrid governance for supported Arc-enabled server resources.
- **B. Create a similarly named Azure tag** A tag alone does not connect the machine to configuration governance services.
- **C. Target an Azure VM-only assignment without onboarding the hybrid host** The external server still needs supported hybrid connectivity rather than an unrelated Azure VM target.
- **D. Run the lab's local fixture once** A local fixture does not establish remote Azure configuration assignments or agent connectivity.

**Explanation:** Machine Configuration includes hybrid governance for supported Arc-enabled server resources. A tag alone does not connect the machine to configuration governance services. The external server still needs supported hybrid connectivity rather than an unrelated Azure VM target. A local fixture does not establish remote Azure configuration assignments or agent connectivity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q018

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A policy assignment exists, but no per-setting machine results are available. Which next investigation is most directly useful?

- **A. Check assignment targeting and machine evaluation prerequisites** **Correct.** An assignment declaration alone does not prove client connectivity or successful setting evaluation.
- **B. Assume every machine is compliant** Missing evaluation evidence cannot establish compliance with the declared configuration settings.
- **C. Delete the desired-state package immediately** Removing the package does not diagnose targeting or evaluation prerequisites.
- **D. Report local JSON results as remote evidence** Local fixture outputs do not describe the actual assigned machine's evaluated settings.

**Explanation:** An assignment declaration alone does not prove client connectivity or successful setting evaluation. Missing evaluation evidence cannot establish compliance with the declared configuration settings. Removing the package does not diagnose targeting or evaluation prerequisites. Local fixture outputs do not describe the actual assigned machine's evaluated settings.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q019

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A configuration package changes while operators keep the previous compliance screenshot. What evidence best establishes the new package's evaluated result?

- **A. The old screenshot renamed as latest** Renaming evidence does not evaluate a newly assigned configuration package revision.
- **B. The package file's current size** File size cannot establish which package version a machine actually evaluated.
- **C. A successful source commit alone** Committing configuration does not prove assignment or evaluation on managed target machines.
- **D. Fresh results linked to the assigned package revision** **Correct.** Compliance evidence must correspond to the configuration version actually assigned and evaluated.

**Explanation:** Renaming evidence does not evaluate a newly assigned configuration package revision. File size cannot establish which package version a machine actually evaluated. Committing configuration does not prove assignment or evaluation on managed target machines. Compliance evidence must correspond to the configuration version actually assigned and evaluated.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q020

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A machine shows noncompliance, while its policy assignment and package version are correct. Which investigation distinguishes a real setting discrepancy from execution failure?

- **A. Reassign the identical package without inspecting evaluation errors** Repeated assignment alone cannot distinguish a real setting mismatch from failed prerequisite evaluation.
- **B. Treat the compliance rollup as sufficient proof of a wrong setting** The aggregate noncompliant result does not distinguish resource mismatch from an unsuccessful detailed evaluation.
- **C. Inspect per-setting results and evaluation errors** **Correct.** Detailed observations reveal whether settings differ or evaluation prerequisites prevented reliable measurement.
- **D. Switch to autocorrection before checking evaluation prerequisites** Changing enforcement mode cannot repair missing evaluation prerequisites and may introduce unintended changes.

**Explanation:** Detailed observations reveal whether settings differ or evaluation prerequisites prevented reliable measurement. Repeated assignment alone cannot distinguish a real setting mismatch from failed prerequisite evaluation. The aggregate noncompliant result does not distinguish resource mismatch from an unsuccessful detailed evaluation. Changing enforcement mode cannot repair missing evaluation prerequisites and may introduce unintended changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q021

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

The desired state has converged locally and a retry should prove idempotence rather than simply rerun the script. Which observation is strongest?

- **A. No changes plus an independent observed-state match** **Correct.** Idempotence evidence combines stable repeated execution with verification of actual target values.
- **B. Only a zero exit code** Exit status alone may not expose unintended repeated writes or changed values.
- **C. Only an unchanged desired-state file** The declaration can stay unchanged while the managed resource still drifts.
- **D. Only a faster second run** Performance timing does not establish that the intended configuration remained correct.

**Explanation:** Idempotence evidence combines stable repeated execution with verification of actual target values. Exit status alone may not expose unintended repeated writes or changed values. The declaration can stay unchanged while the managed resource still drifts. Performance timing does not establish that the intended configuration remained correct.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q022

Foundational · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

A managed file was manually edited after successful repair. Which test demonstrates that the declaration can detect this new drift?

- **A. Rerun formatting on desired JSON** Formatting desired input does not introduce a mismatch in the actual managed state.
- **B. Change the declared property in the actual managed file, then rerun audit** **Correct.** Changing the observed managed setting creates the intended mismatch without editing the desired-state declaration that defines correctness.
- **C. Delete the audit output file only** Removing evidence does not change the managed configuration value under evaluation.
- **D. Rename an unrelated temporary directory** An unrelated filesystem change does not exercise the declared resource's drift detection.

**Explanation:** Formatting desired input does not introduce a mismatch in the actual managed state. Changing the observed managed setting creates the intended mismatch without editing the desired-state declaration that defines correctness. Removing evidence does not change the managed configuration value under evaluation. An unrelated filesystem change does not exercise the declared resource's drift detection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q023

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Reconciliation detects an unexpected symbolic-link boundary before writing the declared file. Which response preserves the local ownership boundary?

- **A. Delete every file beside the link** Broad deletion is unrelated to safely resolving the specific path ownership problem.
- **B. Replace evidence with a simulated pass** A simulated pass conceals that the actual target could not be safely managed.
- **C. Refuse the redirected write and report it** **Correct.** A link can redirect modification outside the intended exact managed workspace.
- **D. Follow the link and repair anyway** Following a redirected path can modify state outside the declared ownership scope.

**Explanation:** Broad deletion is unrelated to safely resolving the specific path ownership problem. A simulated pass conceals that the actual target could not be safely managed. A link can redirect modification outside the intended exact managed workspace. Following a redirected path can modify state outside the declared ownership scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q024

Applied · [CP3](README.md#task-3) · [D3.5.2](../../docs/objective-map.md)

A configuration run updates one setting and then fails before the next. What should recovery preserve before retrying reconciliation?

- **A. Recorded partial state and the same desired declaration** **Correct.** Partial evidence supports targeted retries without assuming every earlier change was rolled back.
- **B. A claim that no settings changed** Failure does not guarantee rollback of every previously completed configuration write.
- **C. New random target paths for both settings** Changing targets abandons the partially managed resources instead of reconciling them.
- **D. A deletion of every ownership record** Discarding state prevents reliable recovery and obscures which resources were modified.

**Explanation:** Partial evidence supports targeted retries without assuming every earlier change was rolled back. Failure does not guarantee rollback of every previously completed configuration write. Changing targets abandons the partially managed resources instead of reconciling them. Discarding state prevents reliable recovery and obscures which resources were modified.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q025

Advanced · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

A drift test changes an unrelated file, while the validator still passes. How should that break/fix exercise be corrected?

```text
Declared resource: workspace/appsettings.json, mode=safe
Injected defect: workspace/unrelated.txt
Audit: compliant
```

- **A. Force the validator to fail unconditionally** An unconditional error does not demonstrate detection of an actual configuration defect.
- **B. Accept the passing negative check** A passing negative check fails to prove the intended fault was detected.
- **C. Fail validation whenever any workspace file changes** Broad workspace drift includes intentionally unmanaged files and would not demonstrate the declared setting contract.
- **D. Inject a defect in the declared managed setting** **Correct.** The negative assertion must observe the same resource whose repair the checkpoint demonstrates.

**Explanation:** The negative assertion must observe the same resource whose repair the checkpoint demonstrates. An unconditional error does not demonstrate detection of an actual configuration defect. A passing negative check fails to prove the intended fault was detected. Broad workspace drift includes intentionally unmanaged files and would not demonstrate the declared setting contract.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)

## L18-Q026

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Developers request a disposable environment through an approved catalog instead of choosing arbitrary infrastructure. Which benefit should the catalog provide?

- **A. A governed reusable provisioning contract** **Correct.** A catalog exposes reviewed templates and constrained inputs through a consistent interface.
- **B. Unlimited subscription administration** Self-service does not require granting users unrestricted rights over every subscription resource.
- **C. A bypass around ownership tracking** Self-service still needs exact context, resource ownership and managed lifecycle evidence.
- **D. An automatic guarantee of zero cost** Approved resource templates can still create billable services requiring spending controls.

**Explanation:** A catalog exposes reviewed templates and constrained inputs through a consistent interface. Self-service does not require granting users unrestricted rights over every subscription resource. Self-service still needs exact context, resource ownership and managed lifecycle evidence. Approved resource templates can still create billable services requiring spending controls.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q027

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The catalog allows only Standard_LRS storage, but the request selects a premium SKU. What should request validation do before provisioning?

- **A. Reject the unapproved SKU** **Correct.** Input validation must enforce the catalog's declared allowed configuration choices.
- **B. Substitute a premium equivalent silently** Silent substitution changes reviewed cost and behavior outside the requested contract.
- **C. Provision first and report afterward** Postprovisioning reporting occurs after the forbidden configuration and associated cost exist.
- **D. Expand allowed values automatically** Expanding policy from an invalid request defeats the catalog's governance restriction.

**Explanation:** Input validation must enforce the catalog's declared allowed configuration choices. Silent substitution changes reviewed cost and behavior outside the requested contract. Postprovisioning reporting occurs after the forbidden configuration and associated cost exist. Expanding policy from an invalid request defeats the catalog's governance restriction.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q028

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog template points outside its repository and succeeds only on the author's workstation. Which correction makes independent self-service reproducible?

- **A. Package the template and local dependencies** **Correct.** A self-contained package provides resolvable reviewed infrastructure definitions to every consumer.
- **B. Document the author's username** Knowing an author does not provide missing template implementations or filesystem dependencies.
- **C. Skip template resolution validation** Skipping validation cannot make an absent dependency available during environment provisioning.
- **D. Require the author's build cache** A private mutable cache is not a portable versioned infrastructure dependency contract.

**Explanation:** A self-contained package provides resolvable reviewed infrastructure definitions to every consumer. Knowing an author does not provide missing template implementations or filesystem dependencies. Skipping validation cannot make an absent dependency available during environment provisioning. A private mutable cache is not a portable versioned infrastructure dependency contract.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q029

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A developer submits a valid catalog request but omits the subscription and owned resource-group context. Which response is appropriate?

- **A. Choose any group tagged training** A shared training tag cannot identify the exact request's owned resource group.
- **B. Generate a new local marker only** A local marker does not authorize an unspecified existing deployment target group.
- **C. Refuse provisioning until context is explicit** **Correct.** A valid resource shape does not identify the authorized deployment and ownership boundary.
- **D. Use the most recently selected subscription** Ambient defaults can redirect provisioning away from the developer's intended owned environment.

**Explanation:** A shared training tag cannot identify the exact request's owned resource group. A local marker does not authorize an unspecified existing deployment target group. A valid resource shape does not identify the authorized deployment and ownership boundary. Ambient defaults can redirect provisioning away from the developer's intended owned environment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q030

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog request is approved for one template revision, but its source branch moves before execution. How should self-service retain both reproducibility and review meaning?

```json
{"approvedTemplateCommit":"aaaa","executionTemplateRef":"main","mainNow":"bbbb","requestParametersUnchanged":true}
```

- **A. Fetch latest source after approval** Moving source can introduce resource changes outside the already reviewed request.
- **B. Approve parameters while allowing template updates until execution** The same parameters can produce different changes under an unreviewed template implementation.
- **C. Reuse any cached template with that filename** Cache filenames cannot prove correspondence to the reviewed environment request revision.
- **D. Resolve an immutable template revision and revalidate inputs** **Correct.** Review must bind the exact infrastructure implementation and approved configuration values together.

**Explanation:** Review must bind the exact infrastructure implementation and approved configuration values together. Moving source can introduce resource changes outside the already reviewed request. The same parameters can produce different changes under an unreviewed template implementation. Cache filenames cannot prove correspondence to the reviewed environment request revision.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Two users select the same catalog item while requiring separate disposable environments. What must the lifecycle distinguish to clean them safely?

- **A. Only the shared catalog title** A common title cannot distinguish resources created by separate users or runs.
- **B. Only the Azure region** Multiple unrelated environments can exist in the same Azure deployment region.
- **C. Only the date of course completion** A completion date does not identify the actual managed resource deletion boundary.
- **D. Exact context and resource ownership per run** **Correct.** Independent runs need separate managed IDs and ownership evidence for targeted cleanup.

**Explanation:** A common title cannot distinguish resources created by separate users or runs. Multiple unrelated environments can exist in the same Azure deployment region. A completion date does not identify the actual managed resource deletion boundary. Independent runs need separate managed IDs and ownership evidence for targeted cleanup.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The catalog exposes a preview operation and a separate execution flag. What should happen when a learner runs the default command?

- **A. Write a passed live-deployment result** A preview cannot demonstrate actual provider execution or deployed runtime observations.
- **B. Validate and preview without creating resources** **Correct.** Preview defaults let learners review intended changes before explicitly authorizing execution.
- **C. Create the smallest resource automatically** Even small resources are mutations and may incur costs without execution authorization.
- **D. Create resources and immediately delete them** Temporary provisioning still changes external state and may leave partial billable resources.

**Explanation:** A preview cannot demonstrate actual provider execution or deployed runtime observations. Preview defaults let learners review intended changes before explicitly authorizing execution. Even small resources are mutations and may incur costs without execution authorization. Temporary provisioning still changes external state and may leave partial billable resources.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q033

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A self-service environment request needs a cost acknowledgement because storage is billable. Which validation belongs before resource creation?

- **A. Only a successful local compiler result** Compilation provides source evidence rather than explicit authorization for billable external operations.
- **B. An explicit acknowledgement for the selected paid configuration** **Correct.** The gate must cover the actual requested resource configuration and its potential charges.
- **C. A generic acknowledgement from another lab** Unrelated consent does not identify this environment's selected resources or spending context.
- **D. Only a valid YAML document** Syntactic validity does not demonstrate that the learner accepted the resource costs.

**Explanation:** Compilation provides source evidence rather than explicit authorization for billable external operations. The gate must cover the actual requested resource configuration and its potential charges. Unrelated consent does not identify this environment's selected resources or spending context. Syntactic validity does not demonstrate that the learner accepted the resource costs.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q034

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The self-service deletion plan lists exact managed IDs and includes an unrelated preexisting resource. Which object should execution refuse to delete?

- **A. The resource without matching ownership evidence** **Correct.** Deletion authority is limited to recorded resources whose current ownership still matches.
- **B. The smallest owned storage account** Cost size does not invalidate an exact matching managed resource ownership record.
- **C. The newest owned identity** Creation time does not replace or contradict valid exact ownership evidence.
- **D. Every resource created by this request** Matching managed IDs remain eligible for cleanup under the explicit lifecycle context.

**Explanation:** Deletion authority is limited to recorded resources whose current ownership still matches. Cost size does not invalidate an exact matching managed resource ownership record. Creation time does not replace or contradict valid exact ownership evidence. Matching managed IDs remain eligible for cleanup under the explicit lifecycle context.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q035

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A request journals its exact resource name before creation, then receives a timeout. A service read finds the resource with the matching run marker, but final IDs were not saved. Which recovery avoids duplication and adoption?

```text
Journal intent saved: request-42, exact resource name and run marker
Provider create: client timeout
Provider read: resource exists with matching run marker
```

- **A. Journal intent, recover exact IDs and verify ownership before retry** **Correct.** Partial recovery must reconcile provider observations with the request's established ownership context.
- **B. Search every subscription and adopt matching names** Name similarity cannot establish exact resource ownership after a partial failure.
- **C. Discard state and create new random resources** New creation abandons successful partial resources and can increase unmanaged spending.
- **D. Report complete failure with no residual audit** An overall error does not prove that no managed resources were created.

**Explanation:** Partial recovery must reconcile provider observations with the request's established ownership context. Name similarity cannot establish exact resource ownership after a partial failure. New creation abandons successful partial resources and can increase unmanaged spending. An overall error does not prove that no managed resources were created.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q036

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog operator wants environment users to choose a feature flag but never supply long-lived deployment credentials. Which interface supports that separation?

- **A. Let requesters provide a permanent deployment password as a catalog parameter** Passing reusable credentials through requests fails the desired separation between settings and workload authentication.
- **B. Expose approved settings and use scoped workload identity** **Correct.** Developers can select configuration while deployment authentication remains a separately governed capability.
- **C. Accept an administrator password in catalog source** Committed administrator credentials unnecessarily expose authentication data to catalog readers.
- **D. Share a subscription Owner token with every requester** Broad shared tokens collapse identity accountability and exceed self-service provisioning needs.

**Explanation:** Passing reusable credentials through requests fails the desired separation between settings and workload authentication. Developers can select configuration while deployment authentication remains a separately governed capability. Committed administrator credentials unnecessarily expose authentication data to catalog readers. Broad shared tokens collapse identity accountability and exceed self-service provisioning needs.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q037

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The request validator emits parameters that match the approved small template. Which additional evidence is needed to claim the environment was deployed?

- **A. Actual provider execution and scoped resource validation** **Correct.** A parameter plan establishes intent rather than completed Azure resource provisioning.
- **B. A second identical parameter plan** Repeated planning still does not create or inspect the intended remote resources.
- **C. A local JSON schema pass** Schema validation checks document shape without observing external resource creation results.
- **D. The catalog README's example output** Illustrative output cannot prove this request's actual service execution and resource state.

**Explanation:** A parameter plan establishes intent rather than completed Azure resource provisioning. Repeated planning still does not create or inspect the intended remote resources. Schema validation checks document shape without observing external resource creation results. Illustrative output cannot prove this request's actual service execution and resource state.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q038

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A team migrates self-service provisioning to pipeline-triggered Bicep but removes its deletion journal. Which original capability is lost?

- **A. The ability to select an Azure region** A journal is not the mechanism defining the template's regional parameter choices.
- **B. The ability to compile template source** Local compilation can continue even when lifecycle ownership evidence is missing.
- **C. Reliable owned lifecycle cleanup and partial recovery** **Correct.** Provisioning needs exact ownership records to recover failures and remove managed resources safely.
- **D. The ability to parse catalog request JSON** Request parsing is separate from the deletion journal; removing ownership history does not inherently remove JSON parsing.

**Explanation:** A journal is not the mechanism defining the template's regional parameter choices. Local compilation can continue even when lifecycle ownership evidence is missing. Provisioning needs exact ownership records to recover failures and remove managed resources safely. Request parsing is separate from the deletion journal; removing ownership history does not inherently remove JSON parsing.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q039

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The same request identifier is retried after a transient failure. What should a reliable self-service orchestrator avoid?

- **A. Rechecking the selected subscription** Context verification is useful and does not itself create duplicate environment resources.
- **B. Reading current owned resource properties** Service reads support safe recovery by establishing what the previous attempt created.
- **C. Preserving the original review evidence** Retained approval evidence links retry behavior to the same intended environment request.
- **D. Creating duplicate environments for the same request** **Correct.** Stable request identity should reconcile partial state rather than multiplying managed environments.

**Explanation:** Context verification is useful and does not itself create duplicate environment resources. Service reads support safe recovery by establishing what the previous attempt created. Retained approval evidence links retry behavior to the same intended environment request. Stable request identity should reconcile partial state rather than multiplying managed environments.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q040

Advanced · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

A replacement workflow provisions correctly, but ADE metadata deletion left owned storage running and a shared dev center still hosts Dev Box. Which cleanup plan addresses residual costs without disrupting the surviving workload?

```text
Dev center: platform-shared
Retiring ADE project: training-ade
Remaining consumer: active Dev Box pool
Proposed cleanup: delete parent dev center
```

- **A. Inventory exact owned residuals, remove ADE-only permissions and preserve shared Dev Box parents** **Correct.** Verified ownership and dependency inventory support cleanup of obsolete resources without deleting active shared infrastructure.
- **B. Delete the dev center and all linked resource groups** Broad parent deletion can disrupt surviving Dev Box consumers and resources outside the exact owned cleanup scope.
- **C. Delete only ADE metadata and retain every role assignment** Metadata removal does not eliminate the remaining billable storage or obsolete elevated deployment permissions.
- **D. Keep all ADE resources and permissions indefinitely** Permanent retention leaves confirmed obsolete resources billable and unnecessary access grants active.

**Explanation:** Verified ownership and dependency inventory support cleanup of obsolete resources without deleting active shared infrastructure. Broad parent deletion can disrupt surviving Dev Box consumers and resources outside the exact owned cleanup scope. Metadata removal does not eliminate the remaining billable storage or obsolete elevated deployment permissions. Permanent retention leaves confirmed obsolete resources billable and unnecessary access grants active.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q041

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A team depends on Azure Deployment Environments and is planning new course exercises in late 2026. Which direction matches Microsoft's retirement guidance?

- **A. Replace it with Dev Box without evaluating requirements** Dev Box has different workload goals and a separate retirement timeline.
- **B. Delete all shared dev centers immediately** Shared parent resources can still have dependencies that require inventory before deletion.
- **C. Inventory dependencies and validate a governed replacement workflow** **Correct.** Retirement requires planned migration covering governance, identities, lifecycle and developer self-service behavior.
- **D. Assume ADE remains the permanent default** The published retirement notice requires an explicit replacement and migration plan.

**Explanation:** Dev Box has different workload goals and a separate retirement timeline. Shared parent resources can still have dependencies that require inventory before deletion. Retirement requires planned migration covering governance, identities, lifecycle and developer self-service behavior. The published retirement notice requires an explicit replacement and migration plan.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q042

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Which inventory is necessary before retiring ADE-specific automation that may share dev centers with other workloads?

- **A. Environment definitions, resources, identities and shared dependencies** **Correct.** Migration planning needs both provisioning objects and remaining consumers of shared parent resources.
- **B. Only the number of YAML files** File counts do not describe deployed environments, permissions or shared infrastructure dependencies.
- **C. Only ARM resource-group inventory without ADE instance inventory** ADE environment instances and control-plane dependencies require inventory beyond their deployed resource groups.
- **D. Only the deployment command's version** A tool version does not inventory environment instances or resource ownership relationships.

**Explanation:** Migration planning needs both provisioning objects and remaining consumers of shared parent resources. File counts do not describe deployed environments, permissions or shared infrastructure dependencies. ADE environment instances and control-plane dependencies require inventory beyond their deployed resource groups. A tool version does not inventory environment instances or resource ownership relationships.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q043

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A platform architect asks for ADE's single universal drop-in successor. Which answer accurately frames the replacement decision?

- **A. Only local JSON fixtures are a production replacement** A teaching fixture does not provide cloud environment governance or provisioning operations.
- **B. Deleting ADE metadata is the complete replacement strategy** Metadata removal does not establish a new developer self-service provisioning workflow.
- **C. Evaluate alternatives against each scenario's requirements** **Correct.** Microsoft guidance describes multiple approaches rather than one universal one-to-one replacement.
- **D. Every ADE environment maps directly to one identical service** Different environment requirements need evaluation of governance, lifecycle and infrastructure orchestration capabilities.

**Explanation:** A teaching fixture does not provide cloud environment governance or provisioning operations. Metadata removal does not establish a new developer self-service provisioning workflow. Microsoft guidance describes multiple approaches rather than one universal one-to-one replacement. Different environment requirements need evaluation of governance, lifecycle and infrastructure orchestration capabilities.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q044

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A retired environment's metadata is gone, but an Azure resource still incurs charges. Which follow-up action is needed?

- **A. Recreate the metadata to hide the charge** Metadata recreation does not remove or justify the remaining billable resource.
- **B. Delete every subscription resource without ownership review** Cost investigation does not authorize deleting resources outside the managed ownership boundary.
- **C. Audit remaining owned resources and cost data** **Correct.** Removing service metadata does not guarantee deletion of every deployed billable resource.
- **D. Mark cost cleanup complete automatically** Metadata disappearance alone cannot establish that ongoing customer-owned resource charges stopped.

**Explanation:** Metadata recreation does not remove or justify the remaining billable resource. Cost investigation does not authorize deleting resources outside the managed ownership boundary. Removing service metadata does not guarantee deletion of every deployed billable resource. Metadata disappearance alone cannot establish that ongoing customer-owned resource charges stopped.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q045

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

Resource Graph lists ADE host resources and deployment groups but no environment instances. Dev Box still uses a shared dev center. Which inventory action is required before deciding which ADE-only objects can be retired?

```text
ARM inventory: dev center, project, environment types, deployment groups
ADE instance ARM IDs: none
Known consumer: active Dev Box pool
Retirement scope: ADE-only resources and permissions
```

- **A. Treat absent ARM environment IDs as proof no ADE instances remain** ADE instances lack ARM resource IDs, so Resource Graph absence cannot establish that no environment instances exist.
- **B. Delete every dev center returned by Resource Graph** Host discovery does not establish that shared parents lack active Dev Box or other remaining consumers.
- **C. Inventory only the catalog Git files and ignore deployed instances** Source files cannot establish the actual environment instances, deployment resources and active shared dependencies requiring cleanup.
- **D. Supplement ARM inventory with ADE instance data and map deployment resources and shared consumers** **Correct.** ADE environment instances require separate inventory, and shared dependencies must remain protected during targeted retirement cleanup.

**Explanation:** ADE instances lack ARM resource IDs, so Resource Graph absence cannot establish that no environment instances exist. Host discovery does not establish that shared parents lack active Dev Box or other remaining consumers. Source files cannot establish the actual environment instances, deployment resources and active shared dependencies requiring cleanup. ADE environment instances require separate inventory, and shared dependencies must remain protected during targeted retirement cleanup.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide)

## L18-Q046

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

An organization uses Automation State Configuration today and needs a supported future guest-configuration strategy. Which direction should it evaluate?

- **A. Migration to Azure Machine Configuration** **Correct.** Microsoft's retirement guidance directs users toward Machine Configuration for future supported scenarios.
- **B. Permanent expansion of the retiring service** Expanding dependency increases later migration burden without resolving the published service retirement.
- **C. Migration to Azure Deployment Environments for guest settings** ADE provisions environments and itself has retirement guidance rather than replacing guest configuration management.
- **D. Using repository tags as machine compliance results** Repository metadata cannot evaluate or apply operating-system configuration on actual machines.

**Explanation:** Microsoft's retirement guidance directs users toward Machine Configuration for future supported scenarios. Expanding dependency increases later migration burden without resolving the published service retirement. ADE provisions environments and itself has retirement guidance rather than replacing guest configuration management. Repository metadata cannot evaluate or apply operating-system configuration on actual machines.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q047

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

The team migrates a DSC workload and assumes every legacy resource and correction mode behaves identically. What should acceptance require?

- **A. Rename the legacy package only** Renaming cannot establish resource compatibility or the replacement's actual enforcement behavior.
- **B. Declare compatibility from a passing JSON schema** Document shape does not prove supported guest resources or runtime correction behavior.
- **C. Skip failure and recovery cases** Migration confidence requires more than a single successful configuration application path.
- **D. Test package compatibility and representative configuration behavior** **Correct.** A replacement needs verified support and equivalent operational outcomes for the actual workload.

**Explanation:** Renaming cannot establish resource compatibility or the replacement's actual enforcement behavior. Document shape does not prove supported guest resources or runtime correction behavior. Migration confidence requires more than a single successful configuration application path. A replacement needs verified support and equivalent operational outcomes for the actual workload.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q048

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

The lesson preserves legacy DSC commands to explain an exam topic. How should their status be presented alongside the current exercise?

- **A. Label legacy context and provide the supported alternative** **Correct.** Historical learning should remain distinguishable from the recommended current execution and migration path.
- **B. Run retiring service creation by default** Default provisioning creates new dependency on a service with announced retirement guidance.
- **C. Remove all date and source information** Without dated sources learners cannot assess whether legacy guidance remains applicable.
- **D. Mark legacy commands executed after local review** Reviewing commands does not demonstrate that the remote service execution was performed.

**Explanation:** Historical learning should remain distinguishable from the recommended current execution and migration path. Default provisioning creates new dependency on a service with announced retirement guidance. Without dated sources learners cannot assess whether legacy guidance remains applicable. Reviewing commands does not demonstrate that the remote service execution was performed.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q049

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A migration candidate is an Arc-enabled hybrid server with custom guest settings. Which evaluation is necessary before assigning the new configuration package?

- **A. Assign broadly before checking the package** Broad unvalidated assignment can introduce incompatible configuration changes across managed machines.
- **B. Check supported OS, package compatibility and required connectivity** **Correct.** Hybrid support does not eliminate client, package and network prerequisites for reliable evaluation.
- **C. Check only whether Azure CLI is installed** CLI presence does not establish the target machine's runtime configuration prerequisites.
- **D. Copy an Azure VM compliance screenshot** Another machine's evidence cannot prove this hybrid target's actual package evaluation.

**Explanation:** Broad unvalidated assignment can introduce incompatible configuration changes across managed machines. Hybrid support does not eliminate client, package and network prerequisites for reliable evaluation. CLI presence does not establish the target machine's runtime configuration prerequisites. Another machine's evidence cannot prove this hybrid target's actual package evaluation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)

## L18-Q050

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A replacement passes local reconciliation and catalog validation but no cloud assignments, create/delete workflows or failure recovery were exercised. Which completion claim is justified?

- **A. Live identity and networking verified by schema validation** Document validation does not exercise authentication exchanges or remote network connectivity paths.
- **B. Offline contracts verified; provider migration acceptance remains pending** **Correct.** Local evidence does not establish remote assignment, provisioning, cleanup or recovery integration behavior.
- **C. Full service migration completed successfully** Untested provider operations and lifecycle behavior remain material acceptance requirements.
- **D. All retired-service resources safely removed** Local fixture results cannot prove that any actual service resource was deleted.

**Explanation:** Document validation does not exercise authentication exchanges or remote network connectivity paths. Local evidence does not establish remote assignment, provisioning, cleanup or recovery integration behavior. Untested provider operations and lifecycle behavior remain material acceptance requirements. Local fixture results cannot prove that any actual service resource was deleted.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview); [S2](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide); [S3](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)
