# Lab 17 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L17-Q001

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A pull request changes a Bicep property and must fail before any Azure authentication. Which check fits?

```bicep
resource account 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: 'example'
  properties: { typoProperty: true }
}
```

- **A. Run production what-if only** What-if requires Azure context rather than purely offline validation.
- **B. Review resource names only** Name inspection cannot validate the declaration's property types or syntax.
- **C. Compile and lint locally** **Correct.** Local compilation catches source mistakes without contacting Azure services.
- **D. Deploy and read errors** Deployment can change resources before exposing the source mistake.

**Explanation:** What-if requires Azure context rather than purely offline validation. Name inspection cannot validate the declaration's property types or syntax. Local compilation catches source mistakes without contacting Azure services. Deployment can change resources before exposing the source mistake.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q002

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Three environments need the same resource declarations but different locations and account names. How should the team organize them?

- **A. Use a parameterized module** **Correct.** Modules share declarations while explicit parameters capture environment specific choices.
- **B. Copy all declarations three times** Duplicated declarations can drift when security changes reach fewer copies.
- **C. Hardcode production settings everywhere** Hardcoded values prevent callers selecting the intended environment configuration.
- **D. Patch generated JSON with regex** Text replacement obscures typed inputs and the intended source contract.

**Explanation:** Modules share declarations while explicit parameters capture environment specific choices. Duplicated declarations can drift when security changes reach fewer copies. Hardcoded values prevent callers selecting the intended environment configuration. Text replacement obscures typed inputs and the intended source contract.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q003

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A reviewer needs to see proposed changes to existing resources before approving this template. Which operation provides that evidence?

- **A. Compile without Azure context** Compilation checks source rather than comparing deployed resource configuration.
- **B. Run deployment before review** Applying changes first defeats review of the planned resource modifications.
- **C. Run scoped what-if** **Correct.** What-if predicts changes using the selected template, parameters and scope.
- **D. Read deployment history only** Historical records do not evaluate the newly proposed infrastructure declaration.

**Explanation:** Compilation checks source rather than comparing deployed resource configuration. Applying changes first defeats review of the planned resource modifications. What-if predicts changes using the selected template, parameters and scope. Historical records do not evaluate the newly proposed infrastructure declaration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q004

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A consumer module needs the exact resource ID created by another module. Which interface avoids duplicated naming logic?

- **A. Parse a deployment display name** An operation name is not the created resource's complete identifier.
- **B. Search every subscription by prefix** Prefix discovery can select unrelated resources outside the intended deployment scope.
- **C. Expose a resource ID output** **Correct.** Explicit outputs provide a stable reference between dependent infrastructure modules.
- **D. Duplicate its name algorithm** Duplicated naming logic couples consumers to the producer's implementation details.

**Explanation:** An operation name is not the created resource's complete identifier. Prefix discovery can select unrelated resources outside the intended deployment scope. Explicit outputs provide a stable reference between dependent infrastructure modules. Duplicated naming logic couples consumers to the producer's implementation details.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q005

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Approval covered test parameters, but the queued job changes both subscription and SKU. Which action preserves a meaningful production gate?

```powershell
az deployment group what-if --subscription $TestSub --resource-group $TestGroup --parameters sku=B1
# Later queued operation:
az deployment group create --subscription $ProdSub --resource-group $ProdGroup --parameters sku=S1
```

- **A. Review a fresh production preview** **Correct.** Approval must cover the actual artifact, target scope and parameter choices.
- **B. Reuse approval for identical source** Different parameters and scopes can materially change resources and spending.
- **C. Deploy then attach old approval** Earlier unrelated evidence cannot authorize newly selected production resource changes.
- **D. Approve changed parameters after a local compile only** Compilation checks syntax and types but does not evaluate target-specific provider changes or cost.

**Explanation:** Approval must cover the actual artifact, target scope and parameter choices. Different parameters and scopes can materially change resources and spending. Earlier unrelated evidence cannot authorize newly selected production resource changes. Compilation checks syntax and types but does not evaluate target-specific provider changes or cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q006

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The app module supports optional private networking, and development callers have no subnet. Which input contract best supports both topologies?

- **A. Hide a fixed subnet ID** A hidden environment dependency prevents safe reuse across deployment scopes.
- **B. Choose the first existing subnet** List order cannot identify the caller's intended network integration target.
- **C. Make subnet optional and conditional** **Correct.** An explicit optional input supports callers with and without integration infrastructure.
- **D. Require a placeholder production subnet** A placeholder introduces unnecessary dependencies and can select incorrect network context.

**Explanation:** A hidden environment dependency prevents safe reuse across deployment scopes. List order cannot identify the caller's intended network integration target. An explicit optional input supports callers with and without integration infrastructure. A placeholder introduces unnecessary dependencies and can select incorrect network context.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q007

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Refactoring left an unused Bicep parameter that no caller needs. Which change improves the public module contract?

```bicep
param obsoleteRegion string
param location string = resourceGroup().location
// All resources use location; none reference obsoleteRegion.
```

- **A. Mention it in a comment** Comments cannot make an unused parameter affect the deployed resources.
- **B. Pass different values per environment** Changing unused values still has no effect on resource declarations.
- **C. Remove the unused input** **Correct.** Removing obsolete inputs makes the intended deployment interface easier to understand.
- **D. Disable the complete analyzer** Global suppression hides unrelated warnings without improving the module contract.

**Explanation:** Comments cannot make an unused parameter affect the deployed resources. Changing unused values still has no effect on resource declarations. Removing obsolete inputs makes the intended deployment interface easier to understand. Global suppression hides unrelated warnings without improving the module contract.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q008

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Storage names must stay stable on retries but differ across resource groups. Which suffix input supports that requirement?

- **A. Use one fixed global name** A fixed name can collide across independently deployed resource groups.
- **B. Generate a random suffix each run** Random names prevent straightforward reconciliation with previously created owned resources.
- **C. Use the resource group ID** **Correct.** A scoped stable identifier supports repeatable names across deployment retries.
- **D. Use the current timestamp** Time changes on retries and creates additional resource identities instead.

**Explanation:** A fixed name can collide across independently deployed resource groups. Random names prevent straightforward reconciliation with previously created owned resources. A scoped stable identifier supports repeatable names across deployment retries. Time changes on retries and creates additional resource identities instead.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q009

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The team wants one Bicep linter finding to fail pull requests consistently. Where should its enforcement severity be set?

- **A. Only in an editor-local configuration** An editor-local preference does not enforce the same rule in shared CI builds.
- **B. In the deployment parameter file only** Deployment parameters select template inputs rather than the local analyzer rule severity used by repository compilation.
- **C. In repository bicepconfig.json** **Correct.** Repository configuration makes the selected analysis rule an enforceable build gate.
- **D. In a rule-specific inline suppression at each occurrence** Suppressing the finding removes that diagnostic rather than configuring the shared rule to reject future violations.

**Explanation:** An editor-local preference does not enforce the same rule in shared CI builds. Deployment parameters select template inputs rather than the local analyzer rule severity used by repository compilation. Repository configuration makes the selected analysis rule an enforceable build gate. Suppressing the finding removes that diagnostic rather than configuring the shared rule to reject future violations.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q010

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Compilation succeeds, but provider validation rejects the selected regional SKU. Which interpretation and action are both justified?

- **A. Review a supported region or SKU** **Correct.** Local compilation does not establish provider availability in the target region.
- **B. Trust compilation and force deployment** Source validity cannot make an unavailable provider configuration become deployable.
- **C. Wait for a linter warning** The reported issue concerns live availability rather than local source analysis.
- **D. Remove validation and retain SKU** Skipping the check does not resolve the provider's actual availability restriction.

**Explanation:** Local compilation does not establish provider availability in the target region. Source validity cannot make an unavailable provider configuration become deployable. The reported issue concerns live availability rather than local source analysis. Skipping the check does not resolve the provider's actual availability restriction.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q011

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The learner changed their default subscription after creating the journal-owned group. How should the preview command retain its intended scope?

- **A. Choose the first listed subscription** List ordering cannot establish the learner's intended resource ownership context.
- **B. Run only a local compiler** Local compilation does not validate an actual Azure deployment scope.
- **C. Pass subscription and group explicitly** **Correct.** Explicit scope prevents ambient account defaults redirecting the deployment preview.
- **D. Pass only the group name** Identically named groups can exist in different accessible Azure subscriptions.

**Explanation:** List ordering cannot establish the learner's intended resource ownership context. Local compilation does not validate an actual Azure deployment scope. Explicit scope prevents ambient account defaults redirecting the deployment preview. Identically named groups can exist in different accessible Azure subscriptions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q012

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A what-if Modify record contains an unresolved runtime reference expression. How should the reviewer interpret that result before approval?

- **A. Inspect the expression and live state** **Correct.** Runtime evaluation limitations can produce differences that need additional review.
- **B. Assume destructive replacement is certain** A modification record does not always mean a resource replacement occurs.
- **C. Delete the existing resource immediately** Deleting changes state without explaining the unresolved expression's actual meaning.
- **D. Suppress every future preview** Blanket suppression hides genuine changes unrelated to the evaluation limitation.

**Explanation:** Runtime evaluation limitations can produce differences that need additional review. A modification record does not always mean a resource replacement occurs. Deleting changes state without explaining the unresolved expression's actual meaning. Blanket suppression hides genuine changes unrelated to the evaluation limitation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q013

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Part of a large nested what-if expansion is marked Ignore. What does that mean for the deployment review?

```json
{"changeType":"Ignore","diagnostic":"Nested template expansion limit reached"}
```

- **A. Those resources can never change** An unanalyzed resource is not a verified promise of unchanged behavior.
- **B. Those resources are already deleted** Ignore describes preview evaluation rather than an executed resource deletion operation.
- **C. The deployment already succeeded there** Preview output does not mean resource deployment operations have been executed.
- **D. Some resources lack complete analysis** **Correct.** Expansion limitations can leave parts of the proposed deployment insufficiently evaluated.

**Explanation:** An unanalyzed resource is not a verified promise of unchanged behavior. Ignore describes preview evaluation rather than an executed resource deletion operation. Preview output does not mean resource deployment operations have been executed. Expansion limitations can leave parts of the proposed deployment insufficiently evaluated.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q014

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Auditors need machine-readable planned changes linked to the exact reviewed template and parameter revision. What should CI retain?

- **A. Only the mutable source filename** A filename cannot identify the exact version of its infrastructure contents.
- **B. Only command elapsed time** Duration provides no evidence about selected resources or proposed configuration changes.
- **C. Structured what-if and revision metadata** **Correct.** Structured changes plus revision linkage support reproducible review of deployment intent.
- **D. Only the summary change counts** Counts omit the specific property changes and their reviewed artifact and parameter linkage.

**Explanation:** A filename cannot identify the exact version of its infrastructure contents. Duration provides no evidence about selected resources or proposed configuration changes. Structured changes plus revision linkage support reproducible review of deployment intent. Counts omit the specific property changes and their reviewed artifact and parameter linkage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q015

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A current CLI reviewer needs provider checks without resource write permissions. Which mode supports that review while keeping deployment separately authorized?

- **A. Permanent subscription Owner for review** Broad permanent ownership exceeds the stated read-only provider review access requirement.
- **B. Skip validation and certify deployment rights** An omitted check cannot prove provider compatibility or effective deployment permissions.
- **C. ProviderNoRbac validation** **Correct.** This mode checks provider configuration while validating read rather than write permissions.
- **D. Template validation as full availability proof** Template validation omits provider preflight checks and live resource availability validation.

**Explanation:** Broad permanent ownership exceeds the stated read-only provider review access requirement. An omitted check cannot prove provider compatibility or effective deployment permissions. This mode checks provider configuration while validating read rather than write permissions. Template validation omits provider preflight checks and live resource availability validation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q016

Foundational · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

A secure deployment input is needed later by application configuration. Which output avoids exposing its secret value in deployment history?

- **A. A nonsensitive resource reference** **Correct.** References avoid copying secret contents into deployment outputs and downstream logs.
- **B. The secret as ordinary output** Ordinary outputs may expose sensitive values through deployment history and consumers.
- **C. The secret encoded as Base64** Base64 is reversible encoding and does not provide secret value protection.
- **D. The secret inside a resource name** Resource names are visible metadata unsuitable for transporting secret values.

**Explanation:** References avoid copying secret contents into deployment outputs and downstream logs. Ordinary outputs may expose sensitive values through deployment history and consumers. Base64 is reversible encoding and does not provide secret value protection. Resource names are visible metadata unsuitable for transporting secret values.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q017

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

What-if completed successfully and no create command ran afterward. Which status accurately describes the infrastructure's execution evidence?

- **A. Preview completed; deployment unexecuted** **Correct.** A successful preview evaluates intended changes without applying resource operations.
- **B. Deployment completed through preview** What-if deliberately does not create or update the declared Azure resources.
- **C. Cleanup completed through preview** Previewing changes does not audit or remove previously created owned resources.
- **D. Application readiness fully verified** Infrastructure preview cannot exercise application runtime identity and database dependencies.

**Explanation:** A successful preview evaluates intended changes without applying resource operations. What-if deliberately does not create or update the declared Azure resources. Previewing changes does not audit or remove previously created owned resources. Infrastructure preview cannot exercise application runtime identity and database dependencies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q018

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

A second run uses the same resource identities and desired settings. What should a declarative infrastructure deployment aim to do?

- **A. Create an additional copy** Repeated duplication indicates changing identities instead of desired-state resource convergence.
- **B. Skip property checks forever** Existing resources can drift and still require comparison with desired configuration.
- **C. Rename every existing resource** Renaming changes resource identities and obstructs straightforward idempotent configuration reconciliation.
- **D. Converge to the same state** **Correct.** Stable resource identities allow retries to reconcile intended configuration without duplication.

**Explanation:** Repeated duplication indicates changing identities instead of desired-state resource convergence. Existing resources can drift and still require comparison with desired configuration. Renaming changes resource identities and obstructs straightforward idempotent configuration reconciliation. Stable resource identities allow retries to reconcile intended configuration without duplication.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q019

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The selected group has a different run's ownership marker although the current identity can write there. What should execution do?

- **A. Deploy and repair ownership later** Postdeployment metadata changes cannot establish the original resource ownership authorization.
- **B. Change only the local run ID** Changing local metadata does not authorize adopting the existing resource group.
- **C. Refuse the mismatched context** **Correct.** Write authorization does not establish ownership under this run's lifecycle journal.
- **D. Overwrite the ownership marker** Replacing another run's evidence silently adopts resources outside this lifecycle's ownership.

**Explanation:** Postdeployment metadata changes cannot establish the original resource ownership authorization. Changing local metadata does not authorize adopting the existing resource group. Write authorization does not establish ownership under this run's lifecycle journal. Replacing another run's evidence silently adopts resources outside this lifecycle's ownership.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q020

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Module code changed after approval while the parameter file stayed unchanged. Which control binds execution to the reviewed infrastructure rather than current branch contents?

- **A. Reuse approval if module parameter types are unchanged** An unchanged interface can conceal changed resource declarations and does not preserve reviewed implementation contents.
- **B. Check parameter hashes and accept any compiled module version** Module implementation is part of the approved artifact even when parameter values are identical.
- **C. Deploy the immutable approved artifact** **Correct.** Both source and parameters determine the resource changes requiring explicit approval.
- **D. Approve the moving branch name** Branch names move and cannot identify an immutable reviewed infrastructure artifact.

**Explanation:** Both source and parameters determine the resource changes requiring explicit approval. An unchanged interface can conceal changed resource declarations and does not preserve reviewed implementation contents. Module implementation is part of the approved artifact even when parameter values are identical. Branch names move and cannot identify an immutable reviewed infrastructure artifact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q021

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The low-cost core has no SQL dependency, but the advanced workload requires existing SQL networking. Which default execution path is appropriate?

- **A. Deploy advanced and ignore readiness** Ignoring a required data dependency misrepresents the application as fully functional.
- **B. Create unplanned publicly accessible SQL** Unreviewed database provisioning adds cost and changes approved security requirements.
- **C. Call compilation successful SQL integration** Compilation cannot demonstrate remote identity, networking, schema or application connectivity.
- **D. Deploy core; gate advanced prerequisites** **Correct.** Independent core practice is runnable without claiming external SQL integration succeeded.

**Explanation:** Ignoring a required data dependency misrepresents the application as fully functional. Unreviewed database provisioning adds cost and changes approved security requirements. Compilation cannot demonstrate remote identity, networking, schema or application connectivity. Independent core practice is runnable without claiming external SQL integration succeeded.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q022

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

A deployment operation is renamed while resource type, name and scope remain unchanged. What primarily determines the actual Azure resource identity?

- **A. Pipeline run number alone** Pipeline execution identifiers do not automatically become resource identifiers in ARM.
- **B. Type, name and scope** **Correct.** ARM resource addressing follows these components rather than deployment operation labels.
- **C. Deployment operation name alone** Deployment history names identify operations rather than replacing resource address components.
- **D. Bicep source filename alone** Source filenames do not independently define the created Azure resource identities.

**Explanation:** Pipeline execution identifiers do not automatically become resource identifiers in ARM. ARM resource addressing follows these components rather than deployment operation labels. Deployment history names identify operations rather than replacing resource address components. Source filenames do not independently define the created Azure resource identities.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q023

Applied · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Deployment failed after storage creation but before another resource completed. What should a retry inspect before assuming no state remains?

- **A. Every subscription's storage accounts for deletion** Broad subscription discovery and deletion exceed the exact recorded ownership scope.
- **B. A new random naming prefix** Changing names can orphan existing resources and unnecessarily duplicate partial state.
- **C. Actual resources under recorded ownership** **Correct.** Overall failure does not imply rollback of every previously completed resource operation.
- **D. Only the final error string** An error alone cannot establish which preceding resources were successfully created.

**Explanation:** Broad subscription discovery and deletion exceed the exact recorded ownership scope. Changing names can orphan existing resources and unnecessarily duplicate partial state. Overall failure does not imply rollback of every previously completed resource operation. An error alone cannot establish which preceding resources were successfully created.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q024

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The module consumes an identity that already exists and must not create a replacement. Which declaration expresses the intended relationship?

- **A. String containing the deployment name** An operation display name is not the identity's Azure resource reference.
- **B. Existing resource with explicit scope** **Correct.** An existing declaration identifies a deployed resource without requesting its new creation.
- **C. New identity with timestamp name** A newly named identity creates a different principal from the intended existing one.
- **D. First identity returned by inventory** Implicit list selection does not preserve the caller's exact existing identity reference.

**Explanation:** An operation display name is not the identity's Azure resource reference. An existing declaration identifies a deployed resource without requesting its new creation. A newly named identity creates a different principal from the intended existing one. Implicit list selection does not preserve the caller's exact existing identity reference.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q025

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

Storage was created, but role assignment failed because the caller lacks assignment rights. How should recovery retain ownership while avoiding permanent broad privileges?

```text
storage/create: Succeeded
roleAssignments/write: AuthorizationFailed
Journal: storage account ID retained; run ownership marker matches
```

- **A. Discard the journal and rename everything** Discarding ownership evidence can orphan resources and obstruct safe partial recovery.
- **B. Grant every pipeline permanent Owner** Permanent subscription ownership exceeds the scoped role assignment recovery requirement.
- **C. Ignore the assignment and certify integration** Missing required authorization can prevent runtime access despite successful resource creation.
- **D. Inspect partial state and authorize narrowly** **Correct.** Keep exact recorded IDs and obtain only justified rights for the failed operation.

**Explanation:** Discarding ownership evidence can orphan resources and obstruct safe partial recovery. Permanent subscription ownership exceeds the scoped role assignment recovery requirement. Missing required authorization can prevent runtime access despite successful resource creation. Keep exact recorded IDs and obtain only justified rights for the failed operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q026

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

A team varies account SKU using parameters rather than editing shared Bicep declarations. What benefit does that design provide?

- **A. Prevent all expensive input choices** Only explicit allowed values and governance controls restrict those parameter choices.
- **B. Separate environment choices from reusable logic** **Correct.** Parameters support reviewed environment variation without duplicating the module's resource definitions.
- **C. Guarantee every regional SKU exists** Parameterization does not override provider availability or subscription quota restrictions.
- **D. Remove the need for previews** Parameter changes can affect resources and cost and still require review.

**Explanation:** Only explicit allowed values and governance controls restrict those parameter choices. Parameters support reviewed environment variation without duplicating the module's resource definitions. Parameterization does not override provider availability or subscription quota restrictions. Parameter changes can affect resources and cost and still require review.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q027

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Compilation reports a string argument where the module expects an integer parameter. Which correction directly addresses the reported defect?

- **A. Suppress every linter rule** Source analysis suppression does not resolve an invalid parameter type assignment.
- **B. Supply a quoted numeric string in the parameter file** A quoted numeric value remains a string and does not satisfy the declared integer parameter contract.
- **C. Change the module parameter to string without reviewing its numeric consumers** Changing the public type bypasses the existing contract and can break module expressions and other callers rather than supplying the required integer input.
- **D. Supply the declared integer type** **Correct.** Typed contracts let compilation reject incompatible values before any cloud execution.

**Explanation:** Source analysis suppression does not resolve an invalid parameter type assignment. A quoted numeric value remains a string and does not satisfy the declared integer parameter contract. Changing the public type bypasses the existing contract and can break module expressions and other callers rather than supplying the required integer input. Typed contracts let compilation reject incompatible values before any cloud execution.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q028

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

Validation needs the exact storage account created by a module without searching by naming prefix. Which output best supports that requirement?

- **A. The subscription's display name** Subscription display names do not identify the particular created storage account.
- **B. A count of created resources** A resource count does not identify which exact resource needs validation.
- **C. The complete storage ARM ID** **Correct.** A complete resource ID identifies the account across subscriptions and resource groups.
- **D. A wildcard training prefix** A wildcard can match unrelated resources and cannot prove exact identity.

**Explanation:** Subscription display names do not identify the particular created storage account. A resource count does not identify which exact resource needs validation. A complete resource ID identifies the account across subscriptions and resource groups. A wildcard can match unrelated resources and cannot prove exact identity.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q029

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

After successful deployment, a learner needs recorded output values without changing resources again. Which operation should the automation use?

- **A. Delete the deployment history entry** Removing history destroys evidence rather than returning its stored output values.
- **B. Substitute a new what-if preview** What-if predicts changes rather than retrieving the prior deployment's recorded outputs.
- **C. Read deployment properties.outputs** **Correct.** Deployment history exposes recorded outputs through a read-only management operation.
- **D. Create the group again elsewhere** A resource group mutation is unrelated to reading existing deployment outputs.

**Explanation:** Removing history destroys evidence rather than returning its stored output values. What-if predicts changes rather than retrieving the prior deployment's recorded outputs. Deployment history exposes recorded outputs through a read-only management operation. A resource group mutation is unrelated to reading existing deployment outputs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q030

Advanced · [CP3](README.md#task-3) · [D3.5.4](../../docs/objective-map.md)

One owned resource exists after failure, another is absent, and the same artifact is still approved. Which retry best avoids duplicate resources?

- **A. Skip the missing resource** The declared desired state remains incomplete when the required resource is absent.
- **B. Reuse identities and reconcile the declaration** **Correct.** Stable names preserve owned partial state while creating only the missing resources.
- **C. Randomize all resource names** New identities duplicate successful resources and abandon the previous partial state.
- **D. Delete all target-group resources and redeploy to simplify reconciliation** Deleting successful state can be unnecessary and requires its own ownership, impact and data-preservation review.

**Explanation:** Stable names preserve owned partial state while creating only the missing resources. The declared desired state remains incomplete when the required resource is absent. New identities duplicate successful resources and abandon the previous partial state. Deleting successful state can be unnecessary and requires its own ownership, impact and data-preservation review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q031

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Source declares HTTPS-only access and deployment reports success. Which observation most directly verifies the actual deployed security setting?

- **A. Search the Bicep source** Declared intent alone cannot prove the current deployed resource has that setting.
- **B. Inspect only the exit code** Operation success does not replace a targeted postdeployment property value assertion.
- **C. Read an HTTPS diagram label** A diagram cannot establish the current security property in the deployed service.
- **D. Read the exact live property** **Correct.** A service read observes applied configuration instead of merely repeating source intent.

**Explanation:** Declared intent alone cannot prove the current deployed resource has that setting. Operation success does not replace a targeted postdeployment property value assertion. A diagram cannot establish the current security property in the deployed service. A service read observes applied configuration instead of merely repeating source intent.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q032

Foundational · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

The deployment returns a managed identity resource ID. How should validation establish that Azure actually provisioned the intended identity?

- **A. Accept any tenant principal** An unrelated principal does not establish that the declared resource exists.
- **B. Check for identity in the string** String shape alone cannot prove that Azure provisioned the intended identity.
- **C. Check only that clientId is nonempty in a local plan** A planned client identifier does not prove the referenced identity was provisioned in Azure.
- **D. Read that ID and principalId** **Correct.** An exact service read validates the created identity without ambiguous name discovery.

**Explanation:** An unrelated principal does not establish that the declared resource exists. String shape alone cannot prove that Azure provisioned the intended identity. A planned client identifier does not prove the referenced identity was provisioned in Azure. An exact service read validates the created identity without ambiguous name discovery.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q033

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

A service read contradicts the secure public-access setting still present in source. Which result should validation report?

- **A. Pass because names match** Matching resource names does not establish that security settings remain correct.
- **B. Reset the whole subscription** A broad reset exceeds exact ownership and changes unrelated resource configuration.
- **C. A configuration mismatch requiring investigation** **Correct.** The observed property demonstrates drift from the declared resource security configuration.
- **D. Pass because source is secure** Source text cannot override a contradictory observation of current live configuration.

**Explanation:** Matching resource names does not establish that security settings remain correct. A broad reset exceeds exact ownership and changes unrelated resource configuration. The observed property demonstrates drift from the declared resource security configuration. Source text cannot override a contradictory observation of current live configuration.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q034

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Deployment outputs exist but the API's first request fails. Which extra evidence is needed before claiming application readiness?

- **A. Runtime readiness and dependency checks** **Correct.** Infrastructure success does not demonstrate application identity, schema and data connectivity.
- **B. Only nonempty output values** Outputs identify resource properties rather than proving the application's runtime behavior.
- **C. Another source formatter pass** Formatting cannot exercise deployed identity permissions or actual database connectivity.
- **D. Only the liveness endpoint returning success** Liveness can remain healthy while required schema or database readiness checks still fail.

**Explanation:** Infrastructure success does not demonstrate application identity, schema and data connectivity. Outputs identify resource properties rather than proving the application's runtime behavior. Formatting cannot exercise deployed identity permissions or actual database connectivity. Liveness can remain healthy while required schema or database readiness checks still fail.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q035

Advanced · [CP2](README.md#task-2) · [D3.5.4](../../docs/objective-map.md)

A security setting passed yesterday but today's what-if reports an unexplained modification. What should a reviewer do before approving reconciliation?

- **A. Compare actual state and expression evaluation** **Correct.** Review separates genuine configuration drift from unresolved preview expression evaluation effects.
- **B. Approve all modifications automatically** Yesterday's success cannot establish that today's changed security state is acceptable.
- **C. Delete the owned group first** Immediate deletion is unnecessary for investigating an isolated configuration state discrepancy.
- **D. Ignore unchanged source files** External changes can alter deployed resources without modifying the source declarations.

**Explanation:** Review separates genuine configuration drift from unresolved preview expression evaluation effects. Yesterday's success cannot establish that today's changed security state is acceptable. Immediate deletion is unnecessary for investigating an isolated configuration state discrepancy. External changes can alter deployed resources without modifying the source declarations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q036

Foundational · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The deployment must preserve group ownership metadata while adding exact lab-run tags. Which Bicep pattern expresses the intended tag policy?

- **A. Merge group and explicit run tags** **Correct.** An explicit merge retains inherited context while recording this deployment's run identity.
- **B. Replace tags with course only** A generic course marker loses the exact run identity required for ownership.
- **C. Keep run ID only locally** A terminal variable does not make ownership inspectable on deployed resources.
- **D. Remove tags after deployment** Removing metadata undermines ownership evidence without reducing the underlying resource charges.

**Explanation:** An explicit merge retains inherited context while recording this deployment's run identity. A generic course marker loses the exact run identity required for ownership. A terminal variable does not make ownership inspectable on deployed resources. Removing metadata undermines ownership evidence without reducing the underlying resource charges.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q037

Applied · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

Validation must establish that an output belongs to the expected subscription, owned group and resource name. Which assertion is strongest?

- **A. Compare the complete expected resource ID** **Correct.** A complete scoped ID prevents accepting similarly named resources in another context.
- **B. Compare three trailing name characters** Short name fragments cannot establish the subscription or resource group identity.
- **C. Accept any course-tagged resource** A shared course tag can include other learners' or runs' resources.
- **D. Accept any parseable JSON result** Successful JSON parsing cannot establish ownership or the expected target identity.

**Explanation:** A complete scoped ID prevents accepting similarly named resources in another context. Short name fragments cannot establish the subscription or resource group identity. A shared course tag can include other learners' or runs' resources. Successful JSON parsing cannot establish ownership or the expected target identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q038

Applied · [CP3](README.md#task-3) · [D3.5.3](../../docs/objective-map.md)

The core deploys a managed identity without assigning broad permissions. What is true immediately after that identity is created?

- **A. It needs no audience review** Authentication targets and authorization scopes still require explicit design and validation.
- **B. Authorization still requires scoped grants** **Correct.** Creating a principal establishes identity rather than automatically granting protected resource access.
- **C. It administers every subscription resource** Managed identity existence does not confer universal management or data-plane permissions.
- **D. It inherits the learner's access** A managed identity has its own principal and independently assigned effective permissions.

**Explanation:** Authentication targets and authorization scopes still require explicit design and validation. Creating a principal establishes identity rather than automatically granting protected resource access. Managed identity existence does not confer universal management or data-plane permissions. A managed identity has its own principal and independently assigned effective permissions.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q039

Applied · [CP4](README.md#task-4) · [D3.5.4](../../docs/objective-map.md)

A required security property is missing from an otherwise parseable Azure response. How should the validator classify its observation?

- **A. Replace null with expected value** Substituting desired state conceals an unverified or incompatible service response.
- **B. Pass because JSON parsed** Parsing establishes document syntax rather than the required property value's correctness.
- **C. Validate a similarly named account** Changing targets breaks the exact resource identity established by deployment outputs.
- **D. Fail or record incomplete evidence** **Correct.** A missing value cannot demonstrate that the required security property is configured.

**Explanation:** Substituting desired state conceals an unverified or incompatible service response. Parsing establishes document syntax rather than the required property value's correctness. Changing targets breaks the exact resource identity established by deployment outputs. A missing value cannot demonstrate that the required security property is configured.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q040

Advanced · [CP4](README.md#task-4) · [D3.5.3](../../docs/objective-map.md)

The resource ID is correct but the deployed artifact predates the approved policy change. Which missing control prevents accepting this evidence?

```json
{"approvedRevision":"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","appliedRevision":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","resourceScopeMatches":true}
```

- **A. Accept outputs whose names match the approved plan** Stable target names do not prove that the new approved security configuration was deployed.
- **B. Use another successful deployment from the same subscription as evidence** Another operation cannot establish the artifact revision applied to these exact resources.
- **C. Compare only the deployed and approved parameter files** The template implementation can change independently of parameters and must also match the approval.
- **D. Bind deployed artifact to approved revision** **Correct.** Correct target identity does not prove that approved infrastructure contents were applied.

**Explanation:** Correct target identity does not prove that approved infrastructure contents were applied. Stable target names do not prove that the new approved security configuration was deployed. Another operation cannot establish the artifact revision applied to these exact resources. The template implementation can change independently of parameters and must also match the approval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q041

Foundational · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

A postdeployment what-if reports no intended changes in the analyzed scope. What conclusion can the learner reasonably draw?

- **A. All application dependencies are healthy** Infrastructure comparison does not exercise all runtime behavior and authorization paths.
- **B. Future drift is impossible** External actions can introduce configuration changes after any point-in-time state observation.
- **C. Cleanup has deleted the resources** A no-change comparison describes convergence rather than deletion or cleanup completion.
- **D. The evaluated declaration currently appears converged** **Correct.** A no-change preview supports convergence while retaining documented what-if evaluation limitations.

**Explanation:** Infrastructure comparison does not exercise all runtime behavior and authorization paths. External actions can introduce configuration changes after any point-in-time state observation. A no-change comparison describes convergence rather than deletion or cleanup completion. A no-change preview supports convergence while retaining documented what-if evaluation limitations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q042

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

The top-level template references a module outside the staged learner repository. What must change before the package is self-contained?

- **A. Document only the missing filename** Naming a dependency does not supply its implementation to the learner.
- **B. Require guessing another repository** Implicit external discovery prevents a reproducible and independently usable package contract.
- **C. Package and reference the dependency** **Correct.** A portable learner repository must contain all referenced local module implementation files.
- **D. Keep the author's absolute path** Author-specific filesystem dependencies prevent independent compilation from a fresh learner workspace.

**Explanation:** Naming a dependency does not supply its implementation to the learner. Implicit external discovery prevents a reproducible and independently usable package contract. A portable learner repository must contain all referenced local module implementation files. Author-specific filesystem dependencies prevent independent compilation from a fresh learner workspace.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q043

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Production and development share infrastructure logic but need reviewed parameter differences. Which source-control arrangement supports reproducible deployment for both?

- **A. Hardcode production secrets in source** Embedding credentials exposes sensitive values and makes shared logic environment dependent.
- **B. Fetch arbitrary latest modules during release** Moving dependencies can change behavior after the consuming revision was approved.
- **C. Version modules and environment parameters** **Correct.** Reviewed versioned declarations and inputs expose changes without duplicating infrastructure logic.
- **D. Keep private edits on each agent** Untracked agent changes cannot provide reproducible reviewed definitions across deployment environments.

**Explanation:** Embedding credentials exposes sensitive values and makes shared logic environment dependent. Moving dependencies can change behavior after the consuming revision was approved. Reviewed versioned declarations and inputs expose changes without duplicating infrastructure logic. Untracked agent changes cannot provide reproducible reviewed definitions across deployment environments.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q044

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

One analyzer warning is a justified false positive in a specific declaration. Which exception is narrowest and maintainable?

- **A. Document a focused rule suppression** **Correct.** A local justified exception preserves useful analyzer checks across the remaining source.
- **B. Disable the complete analyzer** Global disabling hides unrelated findings without addressing the specific justified exception.
- **C. Remove CI compilation entirely** Removing compilation discards correctness checks beyond the individual analyzer rule finding.
- **D. Reduce all severities permanently** Blanket weakening affects independent findings unrelated to the documented local exception.

**Explanation:** A local justified exception preserves useful analyzer checks across the remaining source. Global disabling hides unrelated findings without addressing the specific justified exception. Removing compilation discards correctness checks beyond the individual analyzer rule finding. Blanket weakening affects independent findings unrelated to the documented local exception.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)

## L17-Q045

Advanced · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

Approval and cost acknowledgement covered B1 without slots. A queued parameter changes to S1 and creates staging, while the source revision stays identical. Which gate must change before execution?

```text
Approved: B1; no slot; low-cost acknowledgement attached
Queued: S1; staging slot newly created; same source revision
Policy: cost changes require a reviewed scoped preview
```

- **A. Review the exact S1 preview and acknowledge its changed cost** **Correct.** The source is unchanged but the selected SKU adds resources and spending beyond the original approval.
- **B. Accept any syntactically allowed SKU** Allowed values establish valid inputs rather than authorization for increased spending.
- **C. Deploy S1 under the old approval and review its cost afterward** Postdeployment review cannot authorize the increased spending before those additional resources exist.
- **D. Reuse the original B1 preview** The old preview does not describe the selected SKU or resulting resources.

**Explanation:** The source is unchanged but the selected SKU adds resources and spending beyond the original approval. Allowed values establish valid inputs rather than authorization for increased spending. Postdeployment review cannot authorize the increased spending before those additional resources exist. The old preview does not describe the selected SKU or resulting resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q046

Foundational · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

Reusable definitions belong in Git, but runtime journals contain learner-specific state. Which files should the shared course version-control by default?

- **A. Every build cache directory** Generated caches do not replace authoritative reviewed infrastructure source declarations.
- **B. Encrypted secrets beside their key** Storing ciphertext together with its decryption key defeats secret access separation.
- **C. Definitions and nonsensitive parameter examples** **Correct.** Portable declarations and examples preserve intent without exposing learner runtime identifiers.
- **D. All learner ownership journals** Runtime journals contain learner-specific state unsuitable for the shared training repository.

**Explanation:** Generated caches do not replace authoritative reviewed infrastructure source declarations. Storing ciphertext together with its decryption key defeats secret access separation. Portable declarations and examples preserve intent without exposing learner runtime identifiers. Runtime journals contain learner-specific state unsuitable for the shared training repository.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q047

Applied · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

Cleanup has a recorded resource ID, but its current ownership marker differs. Which lifecycle response preserves the exact deletion boundary?

- **A. Delete all matching prefix resources** Prefix deletion expands beyond the journal's exact managed resource ownership boundary.
- **B. Overwrite the marker before deleting** Rewriting evidence manufactures ownership instead of verifying actual deletion authorization context.
- **C. Refuse and report the mismatch** **Correct.** Exact identity alone cannot overcome a contradiction in current ownership evidence.
- **D. Delete using the old name** Historical naming cannot authorize deletion when current ownership assertions no longer match.

**Explanation:** Prefix deletion expands beyond the journal's exact managed resource ownership boundary. Rewriting evidence manufactures ownership instead of verifying actual deletion authorization context. Exact identity alone cannot overcome a contradiction in current ownership evidence. Historical naming cannot authorize deletion when current ownership assertions no longer match.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q048

Applied · [CP1](README.md#task-1) · [D3.5.3](../../docs/objective-map.md)

An additional module output is needed while existing consumers must keep working. Which change best preserves the output contract?

- **A. Change an existing output's meaning** Changing established semantics can redirect downstream operations toward unintended resource identities.
- **B. Return the entire secret environment** Bulk output exposes sensitive input values beyond what downstream consumers require.
- **C. Remove outputs and infer names** Implicit inference breaks declared interfaces and increases coupling to resource naming details.
- **D. Add a documented nonsensitive output** **Correct.** An additive contract allows adoption without silently reinterpreting existing consumer references.

**Explanation:** Changing established semantics can redirect downstream operations toward unintended resource identities. Bulk output exposes sensitive input values beyond what downstream consumers require. Implicit inference breaks declared interfaces and increases coupling to resource naming details. An additive contract allows adoption without silently reinterpreting existing consumer references.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)

## L17-Q049

Applied · [CP2](README.md#task-2) · [D3.5.3](../../docs/objective-map.md)

The learner only compiled locally because their Azure subscription prerequisite is unavailable. Which recorded validation status is accurate?

- **A. Cloud failure proven by missing account** An unavailable prerequisite does not establish an unexecuted deployment's eventual result.
- **B. Syntax verified; cloud execution unverified** **Correct.** Local source evidence does not prove provider responses, deployment or runtime integration.
- **C. Full deployment verified by compilation** A local compiler cannot create resources or inspect live provider responses.
- **D. All checkpoints passed through review** Review cannot substitute for checkpoints requiring actual Azure service configuration observations.

**Explanation:** An unavailable prerequisite does not establish an unexecuted deployment's eventual result. Local source evidence does not prove provider responses, deployment or runtime integration. A local compiler cannot create resources or inspect live provider responses. Review cannot substitute for checkpoints requiring actual Azure service configuration observations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if)

## L17-Q050

Advanced · [CP5](README.md#task-5) · [D3.5.4](../../docs/objective-map.md)

A retained baseline and a clean postdeployment preview exist. The declared output now resolves to shared-production, while the journal owns az400-owned-run. Which condition must block acceptance despite apparently converged infrastructure?

```json
{"preview":"NoChange","journalGroup":"az400-owned-run","outputGroup":"shared-production","baselineRetained":true}
```

- **A. Only whether the baseline and current parameter hashes match** Matching parameters cannot authorize an output that resolves outside the exact owned resource group.
- **B. Nothing after a clean preview** A clean comparison does not supersede exact target ownership and scope checks.
- **C. The output scope mismatch** **Correct.** Convergence evidence cannot override the explicitly required resource ownership and scope boundary.
- **D. Only whether the template compiler reported warnings** Compiler findings do not resolve the independently observed resource ownership scope mismatch.

**Explanation:** Matching parameters cannot authorize an output that resolves outside the exact owned resource group. A clean comparison does not supersede exact target ownership and scope checks. Convergence evidence cannot override the explicitly required resource ownership and scope boundary. Compiler findings do not resolve the independently observed resource ownership scope mismatch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if); [S3](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices)
