# Lab 18 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L18-Q001

Foundational · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

An engineer describes the required service settings instead of a sequence of manual edits. Which configuration-management concept does this illustrate?

- **A.** A chronological command transcript
- **B.** A production incident timeline
- **C.** A release artifact retention policy
- **D.** A desired-state declaration

## L18-Q002

Foundational · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

The current configuration differs from the approved declaration, and the team wants a report before repair. Which operation fits?

- **A.** Replace evidence with expected values
- **B.** Audit current against desired state
- **C.** Apply every available configuration
- **D.** Delete the desired-state document

## L18-Q003

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

The lab's declared JSON setting is correct but its actual file contains another value. Which comparison demonstrates drift?

- **A.** Compare only file modification timestamps
- **B.** Check only the previous repair exit status
- **C.** Compare observed and declared values
- **D.** Compare two copies of the declaration

## L18-Q004

Applied · [CP1](README.md#task-1) · [D3.5.4](../../docs/objective-map.md)

A reconciliation script writes the desired value even when it already matches. What property should a well-designed repeated run preserve?

```json
{"desired":{"mode":"safe"},"firstRun":{"changed":true},"secondRun":{"changed":false,"mode":"safe"}}
```

- **A.** A new ownership identity each run
- **B.** The same intended final state
- **C.** An increasing number of files
- **D.** A fresh random setting every run

## L18-Q005

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

An audit-only policy reports drift on a production machine, but automatic repair would interrupt a service. Which mode and action match the restriction?

- **A.** Keep audit mode and schedule approved remediation
- **B.** Enable autocorrection without review
- **C.** Mark the drift compliant permanently
- **D.** Delete the assignment to clear the result

## L18-Q006

Foundational · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

A local configuration fixture uses a single declared file under its workspace. What should the reconciliation function modify?

- **A.** The parent directory's entire contents
- **B.** Only the exact declared owned file
- **C.** Every file sharing its extension
- **D.** Any file whose name contains config

## L18-Q007

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

The team needs to see what changed during a configuration repair and what remained unverified remotely. Which evidence is useful?

- **A.** Only the desired value copied twice
- **B.** Only a successful JSON parsing result
- **C.** Only the existence of a screenshot
- **D.** Before and after values with execution scope

## L18-Q008

Applied · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

A local audit returns noncompliance and the learner has not run reconciliation. Which checkpoint status accurately reflects the managed configuration?

- **A.** Cloud policy deployed by local audit
- **B.** Drift detected; repair still pending
- **C.** Reconciliation passed because drift was visible
- **D.** All settings compliant because declarations parse

## L18-Q009

Applied · [CP1](README.md#task-1) · [D3.5.2](../../docs/objective-map.md)

An approved desired-state document changes one property while other file properties are deliberately unmanaged. Which repair strategy avoids accidental expansion of scope?

- **A.** Import any settings found on another machine
- **B.** Reconcile only the declared properties
- **C.** Replace every property with defaults
- **D.** Delete the complete configuration directory

## L18-Q010

Advanced · [CP3](README.md#task-3) · [D3.5.2](../../docs/objective-map.md)

A second reconciliation reports no changes, but the first run only simulated writes. Which evidence is still required before claiming repair?

```json
{"operation":"reconcile","preview":true,"wouldChange":true,"actualWritePerformed":false}
```

- **A.** A real write followed by an observed-state audit
- **B.** A second simulation using identical inputs
- **C.** Accept a passing reconciliation-script syntax check as evidence of repair
- **D.** Use the desired-state file itself as the postrepair observation

## L18-Q011

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A platform team wants machine configuration evaluated across many assigned machines using Azure governance. Which Azure capability fits this requirement?

- **A.** An application package cache
- **B.** Machine Configuration orchestrated through Azure Policy
- **C.** Bicep formatting without policy assignment
- **D.** A single local JSON fixture

## L18-Q012

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A machine requires reporting only, and its owner does not permit automatic configuration changes. Which Machine Configuration enforcement mode matches?

- **A.** Unreviewed manual repair
- **B.** Audit
- **C.** Apply and Monitor
- **D.** Apply and Autocorrect

## L18-Q013

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

The organization wants configuration applied once and future drift reported, with subsequent corrections controlled by change tickets. Which mode fits?

- **A.** Audit only
- **B.** Apply and Autocorrect
- **C.** Remove the assignment after deployment
- **D.** Apply and Monitor

## L18-Q014

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Machines must automatically return to their approved configuration after an unauthorized setting change. Which supported Machine Configuration mode provides that behavior?

- **A.** Apply and Monitor
- **B.** One-time source compilation
- **C.** Apply and Autocorrect
- **D.** Audit only

## L18-Q015

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

The team selected autocorrection, but a critical setting causes repeated service disruption when repaired. What change addresses both governance and availability?

```text
Mode: Apply and Autocorrect
Repair: resets service setting and restarts process
Observed: configuration returns; active sessions are repeatedly interrupted
```

- **A.** Declare every current value compliant automatically
- **B.** Keep autocorrection unchanged and suppress service alerts
- **C.** Review the desired setting and use controlled remediation while diagnosing
- **D.** Remove all configuration reporting forever

## L18-Q016

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A Linux host is outside its publisher's supported lifecycle. What must the team verify before adopting it into Machine Configuration management?

- **A.** Only whether its configuration file parses
- **B.** Only whether another host reported compliance
- **C.** The current supported operating-system matrix
- **D.** Only whether the Azure Arc agent can connect successfully

## L18-Q017

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A server runs outside Azure and must participate in the same guest-configuration governance model. Which onboarding direction should be evaluated?

- **A.** Azure Arc-enabled machine integration
- **B.** Create a similarly named Azure tag
- **C.** Target an Azure VM-only assignment without onboarding the hybrid host
- **D.** Run the lab's local fixture once

## L18-Q018

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A policy assignment exists, but no per-setting machine results are available. Which next investigation is most directly useful?

- **A.** Check assignment targeting and machine evaluation prerequisites
- **B.** Assume every machine is compliant
- **C.** Delete the desired-state package immediately
- **D.** Report local JSON results as remote evidence

## L18-Q019

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A configuration package changes while operators keep the previous compliance screenshot. What evidence best establishes the new package's evaluated result?

- **A.** The old screenshot renamed as latest
- **B.** The package file's current size
- **C.** A successful source commit alone
- **D.** Fresh results linked to the assigned package revision

## L18-Q020

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A machine shows noncompliance, while its policy assignment and package version are correct. Which investigation distinguishes a real setting discrepancy from execution failure?

- **A.** Reassign the identical package without inspecting evaluation errors
- **B.** Treat the compliance rollup as sufficient proof of a wrong setting
- **C.** Inspect per-setting results and evaluation errors
- **D.** Switch to autocorrection before checking evaluation prerequisites

## L18-Q021

Foundational · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

The desired state has converged locally and a retry should prove idempotence rather than simply rerun the script. Which observation is strongest?

- **A.** No changes plus an independent observed-state match
- **B.** Only a zero exit code
- **C.** Only an unchanged desired-state file
- **D.** Only a faster second run

## L18-Q022

Foundational · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

A managed file was manually edited after successful repair. Which test demonstrates that the declaration can detect this new drift?

- **A.** Rerun formatting on desired JSON
- **B.** Change the declared property in the actual managed file, then rerun audit
- **C.** Delete the audit output file only
- **D.** Rename an unrelated temporary directory

## L18-Q023

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Reconciliation detects an unexpected symbolic-link boundary before writing the declared file. Which response preserves the local ownership boundary?

- **A.** Delete every file beside the link
- **B.** Replace evidence with a simulated pass
- **C.** Refuse the redirected write and report it
- **D.** Follow the link and repair anyway

## L18-Q024

Applied · [CP3](README.md#task-3) · [D3.5.2](../../docs/objective-map.md)

A configuration run updates one setting and then fails before the next. What should recovery preserve before retrying reconciliation?

- **A.** Recorded partial state and the same desired declaration
- **B.** A claim that no settings changed
- **C.** New random target paths for both settings
- **D.** A deletion of every ownership record

## L18-Q025

Advanced · [CP2](README.md#task-2) · [D3.5.2](../../docs/objective-map.md)

A drift test changes an unrelated file, while the validator still passes. How should that break/fix exercise be corrected?

```text
Declared resource: workspace/appsettings.json, mode=safe
Injected defect: workspace/unrelated.txt
Audit: compliant
```

- **A.** Force the validator to fail unconditionally
- **B.** Accept the passing negative check
- **C.** Fail validation whenever any workspace file changes
- **D.** Inject a defect in the declared managed setting

## L18-Q026

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Developers request a disposable environment through an approved catalog instead of choosing arbitrary infrastructure. Which benefit should the catalog provide?

- **A.** A governed reusable provisioning contract
- **B.** Unlimited subscription administration
- **C.** A bypass around ownership tracking
- **D.** An automatic guarantee of zero cost

## L18-Q027

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The catalog allows only Standard_LRS storage, but the request selects a premium SKU. What should request validation do before provisioning?

- **A.** Reject the unapproved SKU
- **B.** Substitute a premium equivalent silently
- **C.** Provision first and report afterward
- **D.** Expand allowed values automatically

## L18-Q028

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog template points outside its repository and succeeds only on the author's workstation. Which correction makes independent self-service reproducible?

- **A.** Package the template and local dependencies
- **B.** Document the author's username
- **C.** Skip template resolution validation
- **D.** Require the author's build cache

## L18-Q029

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A developer submits a valid catalog request but omits the subscription and owned resource-group context. Which response is appropriate?

- **A.** Choose any group tagged training
- **B.** Generate a new local marker only
- **C.** Refuse provisioning until context is explicit
- **D.** Use the most recently selected subscription

## L18-Q030

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog request is approved for one template revision, but its source branch moves before execution. How should self-service retain both reproducibility and review meaning?

```json
{"approvedTemplateCommit":"aaaa","executionTemplateRef":"main","mainNow":"bbbb","requestParametersUnchanged":true}
```

- **A.** Fetch latest source after approval
- **B.** Approve parameters while allowing template updates until execution
- **C.** Reuse any cached template with that filename
- **D.** Resolve an immutable template revision and revalidate inputs

## L18-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

Two users select the same catalog item while requiring separate disposable environments. What must the lifecycle distinguish to clean them safely?

- **A.** Only the shared catalog title
- **B.** Only the Azure region
- **C.** Only the date of course completion
- **D.** Exact context and resource ownership per run

## L18-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The catalog exposes a preview operation and a separate execution flag. What should happen when a learner runs the default command?

- **A.** Write a passed live-deployment result
- **B.** Validate and preview without creating resources
- **C.** Create the smallest resource automatically
- **D.** Create resources and immediately delete them

## L18-Q033

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A self-service environment request needs a cost acknowledgement because storage is billable. Which validation belongs before resource creation?

- **A.** Only a successful local compiler result
- **B.** An explicit acknowledgement for the selected paid configuration
- **C.** A generic acknowledgement from another lab
- **D.** Only a valid YAML document

## L18-Q034

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The self-service deletion plan lists exact managed IDs and includes an unrelated preexisting resource. Which object should execution refuse to delete?

- **A.** The resource without matching ownership evidence
- **B.** The smallest owned storage account
- **C.** The newest owned identity
- **D.** Every resource created by this request

## L18-Q035

Advanced · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A request journals its exact resource name before creation, then receives a timeout. A service read finds the resource with the matching run marker, but final IDs were not saved. Which recovery avoids duplication and adoption?

```text
Journal intent saved: request-42, exact resource name and run marker
Provider create: client timeout
Provider read: resource exists with matching run marker
```

- **A.** Journal intent, recover exact IDs and verify ownership before retry
- **B.** Search every subscription and adopt matching names
- **C.** Discard state and create new random resources
- **D.** Report complete failure with no residual audit

## L18-Q036

Foundational · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A catalog operator wants environment users to choose a feature flag but never supply long-lived deployment credentials. Which interface supports that separation?

- **A.** Let requesters provide a permanent deployment password as a catalog parameter
- **B.** Expose approved settings and use scoped workload identity
- **C.** Accept an administrator password in catalog source
- **D.** Share a subscription Owner token with every requester

## L18-Q037

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The request validator emits parameters that match the approved small template. Which additional evidence is needed to claim the environment was deployed?

- **A.** Actual provider execution and scoped resource validation
- **B.** A second identical parameter plan
- **C.** A local JSON schema pass
- **D.** The catalog README's example output

## L18-Q038

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

A team migrates self-service provisioning to pipeline-triggered Bicep but removes its deletion journal. Which original capability is lost?

- **A.** The ability to select an Azure region
- **B.** The ability to compile template source
- **C.** Reliable owned lifecycle cleanup and partial recovery
- **D.** The ability to parse catalog request JSON

## L18-Q039

Applied · [CP4](README.md#task-4) · [D3.5.5](../../docs/objective-map.md)

The same request identifier is retried after a transient failure. What should a reliable self-service orchestrator avoid?

- **A.** Rechecking the selected subscription
- **B.** Reading current owned resource properties
- **C.** Preserving the original review evidence
- **D.** Creating duplicate environments for the same request

## L18-Q040

Advanced · [CP5](README.md#task-5) · [D3.5.5](../../docs/objective-map.md)

A replacement workflow provisions correctly, but ADE metadata deletion left owned storage running and a shared dev center still hosts Dev Box. Which cleanup plan addresses residual costs without disrupting the surviving workload?

```text
Dev center: platform-shared
Retiring ADE project: training-ade
Remaining consumer: active Dev Box pool
Proposed cleanup: delete parent dev center
```

- **A.** Inventory exact owned residuals, remove ADE-only permissions and preserve shared Dev Box parents
- **B.** Delete the dev center and all linked resource groups
- **C.** Delete only ADE metadata and retain every role assignment
- **D.** Keep all ADE resources and permissions indefinitely

## L18-Q041

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A team depends on Azure Deployment Environments and is planning new course exercises in late 2026. Which direction matches Microsoft's retirement guidance?

- **A.** Replace it with Dev Box without evaluating requirements
- **B.** Delete all shared dev centers immediately
- **C.** Inventory dependencies and validate a governed replacement workflow
- **D.** Assume ADE remains the permanent default

## L18-Q042

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

Which inventory is necessary before retiring ADE-specific automation that may share dev centers with other workloads?

- **A.** Environment definitions, resources, identities and shared dependencies
- **B.** Only the number of YAML files
- **C.** Only ARM resource-group inventory without ADE instance inventory
- **D.** Only the deployment command's version

## L18-Q043

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A platform architect asks for ADE's single universal drop-in successor. Which answer accurately frames the replacement decision?

- **A.** Only local JSON fixtures are a production replacement
- **B.** Deleting ADE metadata is the complete replacement strategy
- **C.** Evaluate alternatives against each scenario's requirements
- **D.** Every ADE environment maps directly to one identical service

## L18-Q044

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A retired environment's metadata is gone, but an Azure resource still incurs charges. Which follow-up action is needed?

- **A.** Recreate the metadata to hide the charge
- **B.** Delete every subscription resource without ownership review
- **C.** Audit remaining owned resources and cost data
- **D.** Mark cost cleanup complete automatically

## L18-Q045

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

Resource Graph lists ADE host resources and deployment groups but no environment instances. Dev Box still uses a shared dev center. Which inventory action is required before deciding which ADE-only objects can be retired?

```text
ARM inventory: dev center, project, environment types, deployment groups
ADE instance ARM IDs: none
Known consumer: active Dev Box pool
Retirement scope: ADE-only resources and permissions
```

- **A.** Treat absent ARM environment IDs as proof no ADE instances remain
- **B.** Delete every dev center returned by Resource Graph
- **C.** Inventory only the catalog Git files and ignore deployed instances
- **D.** Supplement ARM inventory with ADE instance data and map deployment resources and shared consumers

## L18-Q046

Foundational · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

An organization uses Automation State Configuration today and needs a supported future guest-configuration strategy. Which direction should it evaluate?

- **A.** Migration to Azure Machine Configuration
- **B.** Permanent expansion of the retiring service
- **C.** Migration to Azure Deployment Environments for guest settings
- **D.** Using repository tags as machine compliance results

## L18-Q047

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

The team migrates a DSC workload and assumes every legacy resource and correction mode behaves identically. What should acceptance require?

- **A.** Rename the legacy package only
- **B.** Declare compatibility from a passing JSON schema
- **C.** Skip failure and recovery cases
- **D.** Test package compatibility and representative configuration behavior

## L18-Q048

Applied · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

The lesson preserves legacy DSC commands to explain an exam topic. How should their status be presented alongside the current exercise?

- **A.** Label legacy context and provide the supported alternative
- **B.** Run retiring service creation by default
- **C.** Remove all date and source information
- **D.** Mark legacy commands executed after local review

## L18-Q049

Applied · [CP5](README.md#task-5) · [D3.5.1](../../docs/objective-map.md)

A migration candidate is an Arc-enabled hybrid server with custom guest settings. Which evaluation is necessary before assigning the new configuration package?

- **A.** Assign broadly before checking the package
- **B.** Check supported OS, package compatibility and required connectivity
- **C.** Check only whether Azure CLI is installed
- **D.** Copy an Azure VM compliance screenshot

## L18-Q050

Advanced · [CP5](README.md#task-5) · [D3.5.2](../../docs/objective-map.md)

A replacement passes local reconciliation and catalog validation but no cloud assignments, create/delete workflows or failure recovery were exercised. Which completion claim is justified?

- **A.** Live identity and networking verified by schema validation
- **B.** Offline contracts verified; provider migration acceptance remains pending
- **C.** Full service migration completed successfully
- **D.** All retired-service resources safely removed
