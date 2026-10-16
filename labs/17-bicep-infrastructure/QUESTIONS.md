# Lab 17 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L17-Q001

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A pull request changes a Bicep property and must fail before any Azure authentication. Which check fits?

```bicep
resource account 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: 'example'
  properties: { typoProperty: true }
}
```

- **A.** Run production what-if only
- **B.** Review resource names only
- **C.** Compile and lint locally
- **D.** Deploy and read errors

## L17-Q002

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Three environments need the same resource declarations but different locations and account names. How should the team organize them?

- **A.** Use a parameterized module
- **B.** Copy all declarations three times
- **C.** Hardcode production settings everywhere
- **D.** Patch generated JSON with regex

## L17-Q003

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A reviewer needs to see proposed changes to existing resources before approving this template. Which operation provides that evidence?

- **A.** Compile without Azure context
- **B.** Run deployment before review
- **C.** Run scoped what-if
- **D.** Read deployment history only

## L17-Q004

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A consumer module needs the exact resource ID created by another module. Which interface avoids duplicated naming logic?

- **A.** Parse a deployment display name
- **B.** Search every subscription by prefix
- **C.** Expose a resource ID output
- **D.** Duplicate its name algorithm

## L17-Q005

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Approval covered test parameters, but the queued job changes both subscription and SKU. Which action preserves a meaningful production gate?

```powershell
az deployment group what-if --subscription $TestSub --resource-group $TestGroup --parameters sku=B1
# Later queued operation:
az deployment group create --subscription $ProdSub --resource-group $ProdGroup --parameters sku=S1
```

- **A.** Review a fresh production preview
- **B.** Reuse approval for identical source
- **C.** Deploy then attach old approval
- **D.** Approve changed parameters after a local compile only

## L17-Q006

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The app module supports optional private networking, and development callers have no subnet. Which input contract best supports both topologies?

- **A.** Hide a fixed subnet ID
- **B.** Choose the first existing subnet
- **C.** Make subnet optional and conditional
- **D.** Require a placeholder production subnet

## L17-Q007

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Refactoring left an unused Bicep parameter that no caller needs. Which change improves the public module contract?

```bicep
param obsoleteRegion string
param location string = resourceGroup().location
// All resources use location; none reference obsoleteRegion.
```

- **A.** Mention it in a comment
- **B.** Pass different values per environment
- **C.** Remove the unused input
- **D.** Disable the complete analyzer

## L17-Q008

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Storage names must stay stable on retries but differ across resource groups. Which suffix input supports that requirement?

- **A.** Use one fixed global name
- **B.** Generate a random suffix each run
- **C.** Use the resource group ID
- **D.** Use the current timestamp

## L17-Q009

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The team wants one Bicep linter finding to fail pull requests consistently. Where should its enforcement severity be set?

- **A.** Only in an editor-local configuration
- **B.** In the deployment parameter file only
- **C.** In repository bicepconfig.json
- **D.** In a rule-specific inline suppression at each occurrence

## L17-Q010

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Compilation succeeds, but provider validation rejects the selected regional SKU. Which interpretation and action are both justified?

- **A.** Review a supported region or SKU
- **B.** Trust compilation and force deployment
- **C.** Wait for a linter warning
- **D.** Remove validation and retain SKU

## L17-Q011

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The learner changed their default subscription after creating the journal-owned group. How should the preview command retain its intended scope?

- **A.** Choose the first listed subscription
- **B.** Run only a local compiler
- **C.** Pass subscription and group explicitly
- **D.** Pass only the group name

## L17-Q012

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A what-if Modify record contains an unresolved runtime reference expression. How should the reviewer interpret that result before approval?

- **A.** Inspect the expression and live state
- **B.** Assume destructive replacement is certain
- **C.** Delete the existing resource immediately
- **D.** Suppress every future preview

## L17-Q013

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Part of a large nested what-if expansion is marked Ignore. What does that mean for the deployment review?

```json
{"changeType":"Ignore","diagnostic":"Nested template expansion limit reached"}
```

- **A.** Those resources can never change
- **B.** Those resources are already deleted
- **C.** The deployment already succeeded there
- **D.** Some resources lack complete analysis

## L17-Q014

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Auditors need machine-readable planned changes linked to the exact reviewed template and parameter revision. What should CI retain?

- **A.** Only the mutable source filename
- **B.** Only command elapsed time
- **C.** Structured what-if and revision metadata
- **D.** Only the summary change counts

## L17-Q015

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A current CLI reviewer needs provider checks without resource write permissions. Which mode supports that review while keeping deployment separately authorized?

- **A.** Permanent subscription Owner for review
- **B.** Skip validation and certify deployment rights
- **C.** ProviderNoRbac validation
- **D.** Template validation as full availability proof

## L17-Q016

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A secure deployment input is needed later by application configuration. Which output avoids exposing its secret value in deployment history?

- **A.** A nonsensitive resource reference
- **B.** The secret as ordinary output
- **C.** The secret encoded as Base64
- **D.** The secret inside a resource name

## L17-Q017

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

What-if completed successfully and no create command ran afterward. Which status accurately describes the infrastructure's execution evidence?

- **A.** Preview completed; deployment unexecuted
- **B.** Deployment completed through preview
- **C.** Cleanup completed through preview
- **D.** Application readiness fully verified

## L17-Q018

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

A second run uses the same resource identities and desired settings. What should a declarative infrastructure deployment aim to do?

- **A.** Create an additional copy
- **B.** Skip property checks forever
- **C.** Rename every existing resource
- **D.** Converge to the same state

## L17-Q019

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The selected group has a different run's ownership marker although the current identity can write there. What should execution do?

- **A.** Deploy and repair ownership later
- **B.** Change only the local run ID
- **C.** Refuse the mismatched context
- **D.** Overwrite the ownership marker

## L17-Q020

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Module code changed after approval while the parameter file stayed unchanged. Which control binds execution to the reviewed infrastructure rather than current branch contents?

- **A.** Reuse approval if module parameter types are unchanged
- **B.** Check parameter hashes and accept any compiled module version
- **C.** Deploy the immutable approved artifact
- **D.** Approve the moving branch name

## L17-Q021

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The low-cost core has no SQL dependency, but the advanced workload requires existing SQL networking. Which default execution path is appropriate?

- **A.** Deploy advanced and ignore readiness
- **B.** Create unplanned publicly accessible SQL
- **C.** Call compilation successful SQL integration
- **D.** Deploy core; gate advanced prerequisites

## L17-Q022

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

A deployment operation is renamed while resource type, name and scope remain unchanged. What primarily determines the actual Azure resource identity?

- **A.** Pipeline run number alone
- **B.** Type, name and scope
- **C.** Deployment operation name alone
- **D.** Bicep source filename alone

## L17-Q023

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Deployment failed after storage creation but before another resource completed. What should a retry inspect before assuming no state remains?

- **A.** Every subscription's storage accounts for deletion
- **B.** A new random naming prefix
- **C.** Actual resources under recorded ownership
- **D.** Only the final error string

## L17-Q024

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The module consumes an identity that already exists and must not create a replacement. Which declaration expresses the intended relationship?

- **A.** String containing the deployment name
- **B.** Existing resource with explicit scope
- **C.** New identity with timestamp name
- **D.** First identity returned by inventory

## L17-Q025

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Storage was created, but role assignment failed because the caller lacks assignment rights. How should recovery retain ownership while avoiding permanent broad privileges?

```text
storage/create: Succeeded
roleAssignments/write: AuthorizationFailed
Journal: storage account ID retained; run ownership marker matches
```

- **A.** Discard the journal and rename everything
- **B.** Grant every pipeline permanent Owner
- **C.** Ignore the assignment and certify integration
- **D.** Inspect partial state and authorize narrowly

## L17-Q026

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A team varies account SKU using parameters rather than editing shared Bicep declarations. What benefit does that design provide?

- **A.** Prevent all expensive input choices
- **B.** Separate environment choices from reusable logic
- **C.** Guarantee every regional SKU exists
- **D.** Remove the need for previews

## L17-Q027

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Compilation reports a string argument where the module expects an integer parameter. Which correction directly addresses the reported defect?

- **A.** Suppress every linter rule
- **B.** Supply a quoted numeric string in the parameter file
- **C.** Change the module parameter to string without reviewing its numeric consumers
- **D.** Supply the declared integer type

## L17-Q028

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Validation needs the exact storage account created by a module without searching by naming prefix. Which output best supports that requirement?

- **A.** The subscription's display name
- **B.** A count of created resources
- **C.** The complete storage ARM ID
- **D.** A wildcard training prefix

## L17-Q029

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

After successful deployment, a learner needs recorded output values without changing resources again. Which operation should the automation use?

- **A.** Delete the deployment history entry
- **B.** Substitute a new what-if preview
- **C.** Read deployment properties.outputs
- **D.** Create the group again elsewhere

## L17-Q030

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

One owned resource exists after failure, another is absent, and the same artifact is still approved. Which retry best avoids duplicate resources?

- **A.** Skip the missing resource
- **B.** Reuse identities and reconcile the declaration
- **C.** Randomize all resource names
- **D.** Delete all target-group resources and redeploy to simplify reconciliation

## L17-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Source declares HTTPS-only access and deployment reports success. Which observation most directly verifies the actual deployed security setting?

- **A.** Search the Bicep source
- **B.** Inspect only the exit code
- **C.** Read an HTTPS diagram label
- **D.** Read the exact live property

## L17-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

The deployment returns a managed identity resource ID. How should validation establish that Azure actually provisioned the intended identity?

- **A.** Accept any tenant principal
- **B.** Check for identity in the string
- **C.** Check only that clientId is nonempty in a local plan
- **D.** Read that ID and principalId

## L17-Q033

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

A service read contradicts the secure public-access setting still present in source. Which result should validation report?

- **A.** Pass because names match
- **B.** Reset the whole subscription
- **C.** A configuration mismatch requiring investigation
- **D.** Pass because source is secure

## L17-Q034

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Deployment outputs exist but the API's first request fails. Which extra evidence is needed before claiming application readiness?

- **A.** Runtime readiness and dependency checks
- **B.** Only nonempty output values
- **C.** Another source formatter pass
- **D.** Only the liveness endpoint returning success

## L17-Q035

Advanced · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

A security setting passed yesterday but today's what-if reports an unexplained modification. What should a reviewer do before approving reconciliation?

- **A.** Compare actual state and expression evaluation
- **B.** Approve all modifications automatically
- **C.** Delete the owned group first
- **D.** Ignore unchanged source files

## L17-Q036

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The deployment must preserve group ownership metadata while adding exact lab-run tags. Which Bicep pattern expresses the intended tag policy?

- **A.** Merge group and explicit run tags
- **B.** Replace tags with course only
- **C.** Keep run ID only locally
- **D.** Remove tags after deployment

## L17-Q037

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Validation must establish that an output belongs to the expected subscription, owned group and resource name. Which assertion is strongest?

- **A.** Compare the complete expected resource ID
- **B.** Compare three trailing name characters
- **C.** Accept any course-tagged resource
- **D.** Accept any parseable JSON result

## L17-Q038

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The core deploys a managed identity without assigning broad permissions. What is true immediately after that identity is created?

- **A.** It needs no audience review
- **B.** Authorization still requires scoped grants
- **C.** It administers every subscription resource
- **D.** It inherits the learner's access

## L17-Q039

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

A required security property is missing from an otherwise parseable Azure response. How should the validator classify its observation?

- **A.** Replace null with expected value
- **B.** Pass because JSON parsed
- **C.** Validate a similarly named account
- **D.** Fail or record incomplete evidence

## L17-Q040

Advanced · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

The resource ID is correct but the deployed artifact predates the approved policy change. Which missing control prevents accepting this evidence?

```json
{"approvedRevision":"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","appliedRevision":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","resourceScopeMatches":true}
```

- **A.** Accept outputs whose names match the approved plan
- **B.** Use another successful deployment from the same subscription as evidence
- **C.** Compare only the deployed and approved parameter files
- **D.** Bind deployed artifact to approved revision

## L17-Q041

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

A postdeployment what-if reports no intended changes in the analyzed scope. What conclusion can the learner reasonably draw?

- **A.** All application dependencies are healthy
- **B.** Future drift is impossible
- **C.** Cleanup has deleted the resources
- **D.** The evaluated declaration currently appears converged

## L17-Q042

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The top-level template references a module outside the staged learner repository. What must change before the package is self-contained?

- **A.** Document only the missing filename
- **B.** Require guessing another repository
- **C.** Package and reference the dependency
- **D.** Keep the author's absolute path

## L17-Q043

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Production and development share infrastructure logic but need reviewed parameter differences. Which source-control arrangement supports reproducible deployment for both?

- **A.** Hardcode production secrets in source
- **B.** Fetch arbitrary latest modules during release
- **C.** Version modules and environment parameters
- **D.** Keep private edits on each agent

## L17-Q044

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

One analyzer warning is a justified false positive in a specific declaration. Which exception is narrowest and maintainable?

- **A.** Document a focused rule suppression
- **B.** Disable the complete analyzer
- **C.** Remove CI compilation entirely
- **D.** Reduce all severities permanently

## L17-Q045

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Approval and cost acknowledgement covered B1 without slots. A queued parameter changes to S1 and creates staging, while the source revision stays identical. Which gate must change before execution?

```text
Approved: B1; no slot; low-cost acknowledgement attached
Queued: S1; staging slot newly created; same source revision
Policy: cost changes require a reviewed scoped preview
```

- **A.** Review the exact S1 preview and acknowledge its changed cost
- **B.** Accept any syntactically allowed SKU
- **C.** Deploy S1 under the old approval and review its cost afterward
- **D.** Reuse the original B1 preview

## L17-Q046

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Reusable definitions belong in Git, but runtime journals contain learner-specific state. Which files should the shared course version-control by default?

- **A.** Every build cache directory
- **B.** Encrypted secrets beside their key
- **C.** Definitions and nonsensitive parameter examples
- **D.** All learner ownership journals

## L17-Q047

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Cleanup has a recorded resource ID, but its current ownership marker differs. Which lifecycle response preserves the exact deletion boundary?

- **A.** Delete all matching prefix resources
- **B.** Overwrite the marker before deleting
- **C.** Refuse and report the mismatch
- **D.** Delete using the old name

## L17-Q048

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

An additional module output is needed while existing consumers must keep working. Which change best preserves the output contract?

- **A.** Change an existing output's meaning
- **B.** Return the entire secret environment
- **C.** Remove outputs and infer names
- **D.** Add a documented nonsensitive output

## L17-Q049

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The learner only compiled locally because their Azure subscription prerequisite is unavailable. Which recorded validation status is accurate?

- **A.** Cloud failure proven by missing account
- **B.** Syntax verified; cloud execution unverified
- **C.** Full deployment verified by compilation
- **D.** All checkpoints passed through review

## L17-Q050

Advanced · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

A retained baseline and a clean postdeployment preview exist. The declared output now resolves to shared-production, while the journal owns az400-owned-run. Which condition must block acceptance despite apparently converged infrastructure?

```json
{"preview":"NoChange","journalGroup":"az400-owned-run","outputGroup":"shared-production","baselineRetained":true}
```

- **A.** Only whether the baseline and current parameter hashes match
- **B.** Nothing after a clean preview
- **C.** The output scope mismatch
- **D.** Only whether the template compiler reported warnings
