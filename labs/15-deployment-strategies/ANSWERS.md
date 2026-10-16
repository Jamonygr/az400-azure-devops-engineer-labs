# Lab 15 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L15-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The standalone slot exercise needs staging and production on one App Service plan. What must the selected pricing tier support?

- **A. Only an application artifact named staging** Output naming does not create the required provider deployment slot capability.
- **B. Only the local development launch profile** A local process profile does not establish hosted App Service plan features.
- **C. Only a storage account with the same prefix** Storage naming does not grant deployment slot functionality to the web app plan.
- **D. Deployment slots for the intended App Service configuration** **Correct.** A plan must provide the slot capability required by the actual exercise.

**Explanation:** A plan must provide the slot capability required by the actual exercise. Storage naming does not grant deployment slot functionality to the web app plan. Output naming does not create the required provider deployment slot capability. A local process profile does not establish hosted App Service plan features.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

Production and staging should run the same reviewed candidate. Which packaging practice preserves this requirement?

- **A. Rename two unrelated packages to the same version** Friendly labels do not make independently produced executable content identical.
- **B. Package only source comments for the second environment** Documentation cannot supply the actual application binary required for equivalent deployment.
- **C. Build once and deploy the same identified archive** **Correct.** A single validated package avoids independently rebuilt outputs differing across the two environments.
- **D. Build staging from one branch and production from latest main** Different build inputs do not establish that both deployments contain the same reviewed bytes.

**Explanation:** A single validated package avoids independently rebuilt outputs differing across the two environments. Different build inputs do not establish that both deployments contain the same reviewed bytes. Friendly labels do not make independently produced executable content identical. Documentation cannot supply the actual application binary required for equivalent deployment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q003

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A candidate should warm up before it serves ordinary production traffic. What deployment boundary supports that preparation?

- **A. Only retain yesterday's build logs** Historical logs do not initialize or validate the newly deployed application candidate.
- **B. Deploy and probe a staging slot separately** **Correct.** A separate slot lets the candidate initialize and be checked before broad traffic promotion.
- **C. Overwrite production before inspecting readiness** That exposes ordinary traffic before the requested candidate warmup and validation.
- **D. Only change the production app display name** Presentation does not provide a separate warmed execution environment for the candidate.

**Explanation:** A separate slot lets the candidate initialize and be checked before broad traffic promotion. That exposes ordinary traffic before the requested candidate warmup and validation. Presentation does not provide a separate warmed execution environment for the candidate. Historical logs do not initialize or validate the newly deployed application candidate.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q004

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The candidate archive uploaded successfully, but /health/ready returns HTTP 503. What should happen before exposure increases?

- **A. Stop promotion and diagnose readiness** **Correct.** Transfer success does not establish that the deployed service can handle its required work.
- **B. Promote immediately because upload is the only required gate** An accepted archive can still produce an unready application or missing dependency.
- **C. Rename the slot to healthy** Friendly naming does not change the actual observed readiness response.
- **D. Delete the failed response from evidence** Removing a contradictory observation cannot establish the candidate is ready.

**Explanation:** Transfer success does not establish that the deployed service can handle its required work. An accepted archive can still produce an unready application or missing dependency. Friendly naming does not change the actual observed readiness response. Removing a contradictory observation cannot establish the candidate is ready.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q005

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The exercise sets staging traffic to ten percent. What should a fresh provider read establish afterward?

```json
{"staging":10}
```

- **A. Every single sequence of ten requests includes exactly one candidate hit** Probabilistic routing and session behavior do not guarantee that exact short sequence distribution.
- **B. The actual staging distribution equals the intended percentage** **Correct.** Read-back verifies stored routing rather than assuming the submitted command took effect.
- **C. The application passed every possible operational test** Traffic configuration alone does not establish all behavioral or performance acceptance results.
- **D. The database automatically rolled back its schema** Routing percentages do not perform database schema recovery or reversal.

**Explanation:** Read-back verifies stored routing rather than assuming the submitted command took effect. Traffic configuration alone does not establish all behavioral or performance acceptance results. Routing percentages do not perform database schema recovery or reversal. Probabilistic routing and session behavior do not guarantee that exact short sequence distribution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A team exposes a candidate to a small cohort and expands only while monitored gates pass. What deployment strategy does this describe?

- **A. An artifact retention-only strategy** Keeping package bytes does not itself move or measure application traffic exposure.
- **B. A canary or progressive exposure strategy** **Correct.** Limited initial exposure and evidence-based expansion manage deployment risk incrementally.
- **C. A compulsory database Down migration strategy** Progressive traffic exposure does not imply destructive reversal of database schema.
- **D. A source history cleanup strategy** Changing serving traffic is distinct from removing historical Git repository content.

**Explanation:** Limited initial exposure and evidence-based expansion manage deployment risk incrementally. Progressive traffic exposure does not imply destructive reversal of database schema. Changing serving traffic is distinct from removing historical Git repository content. Keeping package bytes does not itself move or measure application traffic exposure.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q007

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A product experiment compares two user experiences to measure conversion, rather than mainly limiting release risk. What distinction matters?

- **A. A/B proves every user receives both versions in order** Experiment designs can assign distinct cohorts rather than alternate each user universally.
- **B. A/B and rollback are the same observed operation** Comparing experiences differs from restoring a retained compatible application baseline.
- **C. A/B experimentation has an outcome-measurement objective** **Correct.** An experiment compares product results rather than merely reducing the initial deployment blast radius.
- **D. A/B always requires dropping the current database** Product experimentation does not inherently require any destructive database schema operation.

**Explanation:** An experiment compares product results rather than merely reducing the initial deployment blast radius. Product experimentation does not inherently require any destructive database schema operation. Comparing experiences differs from restoring a retained compatible application baseline. Experiment designs can assign distinct cohorts rather than alternate each user universally.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q008

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The lab configures Development with SQLite under /tmp for an independent synthetic slot exercise. What limitation must learners retain?

- **A. It proves workload federation and SQL authorization passed** Local SQLite execution does not exchange a cloud database identity token.
- **B. It proves every slot shares one transactional database automatically** Per-slot local state does not establish a shared external transactional data store.
- **C. It provides a production backup and restore guarantee** A temporary local database does not implement an external durable recovery service.
- **D. It is disposable training state rather than durable production SQL design** **Correct.** Temporary per-slot storage avoids a prerequisite while not establishing durable shared production data behavior.

**Explanation:** Temporary per-slot storage avoids a prerequisite while not establishing durable shared production data behavior. A temporary local database does not implement an external durable recovery service. Per-slot local state does not establish a shared external transactional data store. Local SQLite execution does not exchange a cloud database identity token.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q009

Foundational · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

Readiness returns HTTP 200, but the version endpoint reports an older revision than expected. Which acceptance condition is still unmet?

```text
Expected candidate revision: B
Staging /health/ready: 200
Staging /version: A
```

- **A. The intended candidate bytes are not observed serving** **Correct.** Health and exact revision are separate properties of the deployed application acceptance contract.
- **B. The artifact name automatically resolves the mismatch** Friendly naming does not change which executable revision currently handles the probe.
- **C. The source repository must have no default branch** A source branch setting does not explain or repair the observed deployed version mismatch.
- **D. The slot must be deleted because every healthy response is invalid** A healthy old revision can identify a deployment or routing mismatch without requiring destruction.

**Explanation:** Health and exact revision are separate properties of the deployed application acceptance contract. A healthy old revision can identify a deployment or routing mismatch without requiring destruction. Friendly naming does not change which executable revision currently handles the probe. A source branch setting does not explain or repair the observed deployed version mismatch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q010

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A new slot has a different runtime identity from production. What prerequisite must be reviewed before it reaches protected dependencies?

- **A. Only whether the staging slot uses the same deployment package** Identical executable bytes do not grant a distinct slot principal access to downstream protected services.
- **B. Review scoped grants required by the staging identity** **Correct.** A slot execution principal needs its own reviewed effective permissions to downstream services.
- **C. Only the number of successful local tests** Local assertions do not grant a hosted runtime identity database or configuration access.
- **D. Only the archive filename matching production** Output naming does not authorize a distinct runtime identity to access protected resources.

**Explanation:** Output naming does not authorize a distinct runtime identity to access protected resources. Identical executable bytes do not grant a distinct slot principal access to downstream protected services. Local assertions do not grant a hosted runtime identity database or configuration access. A slot execution principal needs its own reviewed effective permissions to downstream services.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A hotfix must preserve tested provenance while returning the corrected binary to the supported release line. What process fits?

- **A. Skip all tests because a hotfix is small** Change size does not prove the corrected behavior or absence of regressions.
- **B. Edit production files directly and omit the source change** An untracked patch loses reproducibility and can be overwritten by later normal releases.
- **C. Reuse an unrelated successful artifact with a matching name** Friendly naming does not establish that the package contains the required correction.
- **D. Review, test and identify the hotfix artifact and reconcile branches** **Correct.** Urgency does not remove validation or the need to retain the fix in supported source history.

**Explanation:** Urgency does not remove validation or the need to retain the fix in supported source history. An untracked patch loses reproducibility and can be overwritten by later normal releases. Friendly naming does not establish that the package contains the required correction. Change size does not prove the corrected behavior or absence of regressions.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q012

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The staging probe is healthy before traffic routing changes. What does that observation establish at this point?

- **A. The production slot has been swapped automatically** Reading an endpoint does not perform a slot swap or routing mutation.
- **B. All real users already received the new version successfully** A pre-exposure staging probe does not observe ordinary production user outcomes.
- **C. The tested staging endpoint met that probe condition** **Correct.** A bounded probe supports its actual observation without proving full production traffic performance.
- **D. Every database migration is guaranteed backward-compatible** A health response cannot establish all schema and data semantic compatibility.

**Explanation:** A bounded probe supports its actual observation without proving full production traffic performance. A pre-exposure staging probe does not observe ordinary production user outcomes. A health response cannot establish all schema and data semantic compatibility. Reading an endpoint does not perform a slot swap or routing mutation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q013

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The routing command completes, but a final query shows zero staging traffic. How should the ten-percent checkpoint respond?

- **A. Delete the production app to remove the discrepancy** A routing mismatch does not authorize unnecessary destruction as a validation shortcut.
- **B. Pass after changing the expected percentage in evidence** Moving the requirement conceals the unmet intended exposure configuration.
- **C. Reject the actual routing mismatch** **Correct.** The required provider state must match intended exposure rather than only command exit success.
- **D. Pass because no application tests failed locally** Local behavior does not establish the actual remote traffic distribution setting.

**Explanation:** The required provider state must match intended exposure rather than only command exit success. Local behavior does not establish the actual remote traffic distribution setting. Moving the requirement conceals the unmet intended exposure configuration. A routing mismatch does not authorize unnecessary destruction as a validation shortcut.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q014

Foundational · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The package hash differs between staging and production uploads despite a shared version label. Which requirement failed?

- **A. Both deployments must consume the same validated bytes** **Correct.** A reused friendly version label cannot override differing actual package content identity.
- **B. The stage and production jobs must use identical runner names** A shared execution label does not reconcile differing package content consumed by the two deployments.
- **C. The two archive download timestamps must be identical** Transfer timing does not establish that the independently selected executable package bytes are the same.
- **D. Every new release must contain no database model** Application package identity does not impose that unrelated universal implementation restriction.

**Explanation:** A reused friendly version label cannot override differing actual package content identity. Transfer timing does not establish that the independently selected executable package bytes are the same. Application package identity does not impose that unrelated universal implementation restriction. A shared execution label does not reconcile differing package content consumed by the two deployments.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q015

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The candidate canary fails its required service gate. What should progressive release do before increasing exposure further?

- **A. Expand rapidly so more users can confirm the fault** Increasing risk after a failed required gate conflicts with controlled progressive exposure.
- **B. Mark the gate optional without reviewing that policy change** Reclassifying the condition to avoid failure abandons the stated release requirement.
- **C. Delete the measurements and rely only on package existence** Artifact availability cannot replace observed application performance or correctness evidence.
- **D. Halt expansion and use the reviewed recovery decision** **Correct.** A failed stop condition defeats the basis for deliberately increasing deployment blast radius.

**Explanation:** A failed stop condition defeats the basis for deliberately increasing deployment blast radius. Increasing risk after a failed required gate conflicts with controlled progressive exposure. Reclassifying the condition to avoid failure abandons the stated release requirement. Artifact availability cannot replace observed application performance or correctness evidence.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q016

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A script targets an app outside the journal-owned resource group. Which check should refuse the lab operation?

```text
Owned group: rg-az400-15-run42
Actual app ID: /subscriptions/.../resourceGroups/shared-prod/providers/Microsoft.Web/sites/app
```

- **A. Check only whether the app name contains training** A substring can appear in unrelated resources and does not prove ownership.
- **B. Compare the exact ARM ID with the owned scope** **Correct.** Friendly names alone do not establish authorized ownership of the target application resource.
- **C. Check only whether a prior deployment succeeded** Historical execution does not authorize mutation of an unrelated resource.
- **D. Check only whether the learner can authenticate** Available account authority does not establish authorization for this particular lab boundary.

**Explanation:** Friendly names alone do not establish authorized ownership of the target application resource. A substring can appear in unrelated resources and does not prove ownership. Available account authority does not establish authorization for this particular lab boundary. Historical execution does not authorize mutation of an unrelated resource.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q017

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

The new slot starts but cannot access its external configuration store while production works. What should diagnosis compare?

- **A. Only the archive display name** Naming does not establish the runtime configuration or identity required for access.
- **B. Slot-specific settings, identities and dependency access** **Correct.** Separate execution environments can differ in configuration and downstream effective permissions.
- **C. Only whether the deployment operation reported success** Successful package transfer does not establish effective runtime configuration or downstream authorization for the slot.
- **D. Only the production historical artifact count** Storage inventory does not diagnose the staging runtime dependency authorization boundary.

**Explanation:** Naming does not establish the runtime configuration or identity required for access. Successful package transfer does not establish effective runtime configuration or downstream authorization for the slot. Storage inventory does not diagnose the staging runtime dependency authorization boundary. Separate execution environments can differ in configuration and downstream effective permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q018

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A learner tests only a few requests after configuring ten-percent routing and sees none reach staging. What interpretation is appropriate?

- **A. Small samples and session routing can obscure the configured distribution** **Correct.** A short observation is not guaranteed to show an exact percentage of probabilistically routed requests.
- **B. The staged application must contain no files** Observed route selection does not establish application archive content or deployment completeness.
- **C. The provider configuration must always be zero percent** A short sequence alone cannot establish the actual stored traffic percentage setting.
- **D. Every configured percentage guarantees exact counts per ten requests** Percentage routing does not guarantee that deterministic distribution in every small sample.

**Explanation:** A short observation is not guaranteed to show an exact percentage of probabilistically routed requests. A short sequence alone cannot establish the actual stored traffic percentage setting. Percentage routing does not guarantee that deterministic distribution in every small sample. Observed route selection does not establish application archive content or deployment completeness.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q019

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Readiness passes quickly, but error rate under real candidate traffic is high. Which release gate should control promotion?

- **A. Only the earlier readiness response** A successful initial probe does not override a later failed required operational gate.
- **B. Only the archive upload status** File transfer does not establish application correctness or latency during execution.
- **C. Observed candidate behavior under the required traffic acceptance window** **Correct.** A startup probe cannot replace measured service behavior after meaningful exposure.
- **D. Only the local package directory creation timestamp** Local filesystem metadata cannot establish live candidate user outcome measurements.

**Explanation:** A startup probe cannot replace measured service behavior after meaningful exposure. A successful initial probe does not override a later failed required operational gate. File transfer does not establish application correctness or latency during execution. Local filesystem metadata cannot establish live candidate user outcome measurements.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q020

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

The team patches the supported production branch but never merges the correction back into normal development. What risk remains?

- **A. A future normal release can reintroduce the original defect** **Correct.** Unreconciled source lines can lose a production correction when subsequent work is promoted.
- **B. The current hotfix artifact necessarily changes its bytes afterward** Future branch history does not mutate an already retained immutable package.
- **C. The staging slot automatically receives every fix** A source change does not deploy itself without the defined publication and release path.
- **D. The database schema automatically contracts** Source branch divergence does not itself execute database schema operations.

**Explanation:** Unreconciled source lines can lose a production correction when subsequent work is promoted. Future branch history does not mutate an already retained immutable package. Source branch divergence does not itself execute database schema operations. A source change does not deploy itself without the defined publication and release path.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q021

Applied · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

The readiness endpoint checks only process liveness while release acceptance requires database readiness. What must the probe contract address?

- **A. Only whether the source repository has a release tag** Source labels do not show that the running service can reach required dependencies.
- **B. The actual dependency readiness required to serve the workload** **Correct.** A running process can be unable to perform its necessary database-backed behavior.
- **C. Only the number of archive files** Package file count cannot establish the running service actual dependency readiness.
- **D. Only the application display title in its HTML** Presentation does not establish dependency availability or readiness for required operations.

**Explanation:** A running process can be unable to perform its necessary database-backed behavior. Source labels do not show that the running service can reach required dependencies. Presentation does not establish dependency availability or readiness for required operations. Package file count cannot establish the running service actual dependency readiness.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q022

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A swap changes serving roles, but the team assumes each slot identity also transfers its grants. What must be verified independently?

- **A. Only whether the application archive source SHA remains unchanged** Stable executable identity does not establish which runtime slot principal retains effective downstream permissions.
- **B. Only whether both slot names are short** Friendly naming does not establish effective identity or dependency grant behavior.
- **C. The identities and sticky configuration associated with actual slots** **Correct.** Traffic movement does not justify assuming runtime principal permissions moved with executable content.
- **D. Only the local project build configuration** Compilation options do not prove runtime principal grants after a traffic transition.

**Explanation:** Compilation options do not prove runtime principal grants after a traffic transition. Stable executable identity does not establish which runtime slot principal retains effective downstream permissions. Traffic movement does not justify assuming runtime principal permissions moved with executable content. Friendly naming does not establish effective identity or dependency grant behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q023

Applied · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The application archive includes untracked test results and local evidence alongside binaries. What packaging input boundary needs improvement?

- **A. Reduce the number of environment reviewers** Approval count does not repair unintended content in a deployment archive.
- **B. Use an explicit intended output or tracked-source allowlist** **Correct.** Generated learner state should not leak into the reviewed deployable package accidentally.
- **C. Grant deployment identity more permissions** Broader authority does not classify or filter local package inputs.
- **D. Rename the archive to include clean** A label does not remove unintended files or establish package contents.

**Explanation:** Generated learner state should not leak into the reviewed deployable package accidentally. A label does not remove unintended files or establish package contents. Broader authority does not classify or filter local package inputs. Approval count does not repair unintended content in a deployment archive.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q024

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A preview helper proposes a staging swap but does not use Apply. Which claim is accurate afterward?

```powershell
./deploy-canary.ps1 -ResourceGroup $ResourceGroup -AppName $AppName
# No -Apply switch
```

- **A. The baseline now necessarily serves all production traffic** No applied operation or live read establishes that serving state.
- **B. Both provider identity and environment approval were proved** Displaying planned commands does not establish actual authentication or protected release authorization.
- **C. The database has completed schema recovery** A traffic preview does not execute any database restoration or schema change.
- **D. The plan was inspected; no swap is established** **Correct.** Preview source intent is separate from an actual provider routing mutation and its evidence.

**Explanation:** Preview source intent is separate from an actual provider routing mutation and its evidence. No applied operation or live read establishes that serving state. A traffic preview does not execute any database restoration or schema change. Displaying planned commands does not establish actual authentication or protected release authorization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q025

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

A warmup request succeeds before the new application finishes a required asynchronous initialization task. What acceptance issue should be reviewed?

- **A. Only whether the deployed version endpoint matches the expected SHA** Correct binary identity does not prove its asynchronous initialization reached the required operational readiness state.
- **B. Only whether the archive name contains warmup** Naming does not connect the probe response with completed application initialization.
- **C. Whether the readiness signal truly represents required serving readiness** **Correct.** A shallow probe can pass before the service can perform its actual intended work.
- **D. Only whether the provider upload operation completed** A successful transfer can finish before the application completes its required asynchronous initialization.

**Explanation:** Correct binary identity does not prove its asynchronous initialization reached the required operational readiness state. A successful transfer can finish before the application completes its required asynchronous initialization. A shallow probe can pass before the service can perform its actual intended work. Naming does not connect the probe response with completed application initialization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q026

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary runs at ten percent indefinitely with no owner, time bound or promotion criteria. What operational contract is missing?

- **A. Only a successful archive upload** Transfer success does not establish an observed progressive release decision process.
- **B. Only an additional source-control branch** Another branch does not define service acceptance criteria or responsible operators.
- **C. Explicit ownership, observation gates and progression or rollback decisions** **Correct.** Limited exposure alone does not define who decides when the release should move or stop.
- **D. Only a more attractive version label** Presentation cannot establish operational accountability or measurable release decisions.

**Explanation:** Limited exposure alone does not define who decides when the release should move or stop. Presentation cannot establish operational accountability or measurable release decisions. Another branch does not define service acceptance criteria or responsible operators. Transfer success does not establish an observed progressive release decision process.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q027

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The training SQLite store is created under /tmp in each slot. What should data verification avoid assuming?

- **A. Durable shared data across slot lifecycle and traffic transitions** **Correct.** Temporary local per-slot stores do not establish an external shared persistent database.
- **B. The protected SQL integration has separate prerequisites** An independent local-data exercise does not remove the real SQL identity/network gates.
- **C. The configuration requires explicit training-only interpretation** The architecture has known storage limitations that should remain visible to learners.
- **D. The app can still execute local synthetic behavior** A temporary database can support intentionally limited training requests and tests.

**Explanation:** Temporary local per-slot stores do not establish an external shared persistent database. A temporary database can support intentionally limited training requests and tests. The architecture has known storage limitations that should remain visible to learners. An independent local-data exercise does not remove the real SQL identity/network gates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q028

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A hotfix uses a narrow supported branch, but publication replaces an existing artifact version with changed bytes. Which release property is broken?

- **A. The app must remove every readiness check** Health verification remains necessary and is unrelated to overwriting package content.
- **B. Stable immutable identity of the previously published candidate** **Correct.** A changed output needs a distinguishable identity rather than overwriting approved release bytes.
- **C. The current source branch can never contain a correction** Supported source lines can legitimately carry reviewed and tested fixes.
- **D. The deployment must use a different cloud provider** Artifact immutability does not require changing the application hosting platform.

**Explanation:** A changed output needs a distinguishable identity rather than overwriting approved release bytes. Supported source lines can legitimately carry reviewed and tested fixes. Artifact immutability does not require changing the application hosting platform. Health verification remains necessary and is unrelated to overwriting package content.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q029

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A staging slot uses a different connection setting and points at production data. What must the release review assess before warming or testing it?

- **A. Only whether production had passed tests last week** Historical tests do not authorize current candidate writes into protected production data.
- **B. Only whether the app plan supports slots** Hosting capability does not establish safe data targets for the actual runtime configuration.
- **C. Only whether staging has a unique URL** A distinct address does not establish isolated database or storage dependencies.
- **D. The actual dependency target and permitted test data impact** **Correct.** A separate application slot does not guarantee isolated downstream state or harmless synthetic writes.

**Explanation:** A separate application slot does not guarantee isolated downstream state or harmless synthetic writes. A distinct address does not establish isolated database or storage dependencies. Hosting capability does not establish safe data targets for the actual runtime configuration. Historical tests do not authorize current candidate writes into protected production data.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q030

Applied · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

The provider reports success but the app returns errors because a dependency role is absent. What evidence should determine acceptance?

- **A. The actual application behavior and required dependency checks** **Correct.** An infrastructure operation result does not prove the deployed service can fulfill its workload.
- **B. Only the current archive filename** A friendly package label cannot establish effective running identity permissions.
- **C. Only the successful provider request status** Transfer completion does not establish downstream authorization or behavioral readiness.
- **D. Only the existence of a production environment** Environment presence does not show actual application operations succeed after deployment.

**Explanation:** An infrastructure operation result does not prove the deployed service can fulfill its workload. Transfer completion does not establish downstream authorization or behavioral readiness. A friendly package label cannot establish effective running identity permissions. Environment presence does not show actual application operations succeed after deployment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q031

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A team increases candidate exposure without comparing candidate-specific metrics to its stop conditions. What makes this progression incomplete?

- **A. A new display name has not been chosen** Presentation is not the missing operational acceptance evidence for release progression.
- **B. The package includes a content hash** Integrity evidence does not replace candidate-specific operational acceptance measurements.
- **C. The source repository has only one default branch** Branch count does not determine whether candidate service metrics meet policy.
- **D. The measured gate for the candidate was not evaluated** **Correct.** Progressive risk control needs observations of the exposed version before broadening its reach.

**Explanation:** Progressive risk control needs observations of the exposed version before broadening its reach. Presentation is not the missing operational acceptance evidence for release progression. Branch count does not determine whether candidate service metrics meet policy. Integrity evidence does not replace candidate-specific operational acceptance measurements.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q032

Applied · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The exact same archive was deployed twice, but its configuration changed between deployments. What should provenance reporting include?

- **A. Both artifact identity and the effective deployment configuration** **Correct.** Identical bytes can behave differently under different runtime settings and dependency targets.
- **B. Only the binary hash because configuration cannot affect behavior** Runtime inputs can materially alter application behavior even when executable bytes match.
- **C. Only the friendly slot names** Names do not record actual runtime settings or identity permissions.
- **D. Only the earlier successful build log** Build evidence does not establish the effective configuration applied to each environment.

**Explanation:** Identical bytes can behave differently under different runtime settings and dependency targets. Runtime inputs can materially alter application behavior even when executable bytes match. Names do not record actual runtime settings or identity permissions. Build evidence does not establish the effective configuration applied to each environment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q033

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The candidate is healthy at low traffic but a required latency limit is exceeded when exposure rises. Which action follows the reviewed gate?

- **A. Delete the higher-load measurements as outliers without analysis** Discarding inconvenient evidence does not establish acceptable current candidate behavior.
- **B. Stop further expansion and execute the defined recovery decision** **Correct.** Measured failure at a larger exposure level invalidates continued automatic progression.
- **C. Increase the gate silently after each failure** Changing policy to avoid failure abandons the reviewed release stop condition.
- **D. Continue because the earlier smaller cohort passed** Earlier observations do not override a failed required current service acceptance gate.

**Explanation:** Measured failure at a larger exposure level invalidates continued automatic progression. Earlier observations do not override a failed required current service acceptance gate. Discarding inconvenient evidence does not establish acceptable current candidate behavior. Changing policy to avoid failure abandons the reviewed release stop condition.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q034

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The health probe targets production while the learner believes they are testing staging. What verification catches this acceptance mistake?

- **A. Check only whether the request returned any success code** A healthy different service can satisfy that shallow condition without testing the candidate.
- **B. Check the exact URL and observed candidate revision** **Correct.** A valid response from the wrong endpoint cannot establish staging candidate readiness.
- **C. Check only whether both slots use the same app plan** Shared hosting does not identify which endpoint handled the actual probe.
- **D. Check only whether the source package exists locally** Local output does not establish the remote address or deployed revision being exercised.

**Explanation:** A valid response from the wrong endpoint cannot establish staging candidate readiness. A healthy different service can satisfy that shallow condition without testing the candidate. Shared hosting does not identify which endpoint handled the actual probe. Local output does not establish the remote address or deployed revision being exercised.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q035

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

An urgent patch passes targeted tests but bypasses required independent release approval. What should the completion report state?

- **A. The authorization gate remains unmet despite passing quality** **Correct.** Urgency and successful assertions do not themselves grant the required promotion permission.
- **B. The release passed every requirement because the defect was urgent** Business urgency does not establish an independent authorized environment transition.
- **C. The omitted gate can be recorded as passed retrospectively** Fabricating evidence does not establish the required authorization before the transition.
- **D. The successful package hash proves a human approved deployment** A content identity record does not encode an actual reviewer decision.

**Explanation:** Urgency and successful assertions do not themselves grant the required promotion permission. Business urgency does not establish an independent authorized environment transition. A content identity record does not encode an actual reviewer decision. Fabricating evidence does not establish the required authorization before the transition.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q036

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A candidate initializes in staging using a slot-specific setting that will differ after swap. Which review should precede promotion?

- **A. Only compare the source author identity** Authorship does not validate the target slot setting or dependency state.
- **B. Only count source files in the package** File inventory does not establish effective post-swap runtime configuration.
- **C. Assume every setting always swaps identically without checking** Slot-specific configuration can make effective runtime behavior differ across the transition.
- **D. Validate post-transition settings and dependencies for the serving role** **Correct.** Warmup under one configuration may not prove behavior under the eventual serving configuration.

**Explanation:** Warmup under one configuration may not prove behavior under the eventual serving configuration. Slot-specific configuration can make effective runtime behavior differ across the transition. File inventory does not establish effective post-swap runtime configuration. Authorship does not validate the target slot setting or dependency state.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q037

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A release operator claims traffic routing passed because the CLI command returned zero. What independent evidence strengthens that claim?

- **A. The application has many passing unit tests** Local correctness does not prove the remote traffic routing configuration was changed.
- **B. A local variable assigned ten** A local declaration cannot establish the current service traffic distribution.
- **C. The command copied into a Markdown file** Recorded intent does not demonstrate the remote provider applied the desired state.
- **D. A fresh provider read of the intended slot percentage** **Correct.** Read-back establishes stored actual routing rather than relying only on request exit status.

**Explanation:** Read-back establishes stored actual routing rather than relying only on request exit status. Recorded intent does not demonstrate the remote provider applied the desired state. A local declaration cannot establish the current service traffic distribution. Local correctness does not prove the remote traffic routing configuration was changed.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q038

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The advanced production-style lane needs external SQL and identity setup absent from the standalone exercise. How should the difference be reported?

- **A. Describe the temporary store as production SQL verification** Local SQLite behavior cannot demonstrate external SQL networking or cloud identity authorization.
- **B. Automatically adopt any reachable shared database** Reachability does not authorize modifying or deleting independently owned data resources.
- **C. Keep the synthetic core and protected integration prerequisites explicit** **Correct.** The independent training architecture does not prove the omitted live SQL and federation boundaries.
- **D. Mark all advanced requirements passed because the app compiles** Compilation does not establish protected database or identity integration behavior.

**Explanation:** The independent training architecture does not prove the omitted live SQL and federation boundaries. Local SQLite behavior cannot demonstrate external SQL networking or cloud identity authorization. Reachability does not authorize modifying or deleting independently owned data resources. Compilation does not establish protected database or identity integration behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q039

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

A version endpoint matches the candidate, but required operations fail intermittently during the observation window. What is the right acceptance interpretation?

- **A. Revision identity passed while operational behavior failed** **Correct.** The correct bytes serving traffic do not guarantee the required error or latency gate.
- **B. The version evidence should be renamed to baseline** Changing a label does not correct the observed candidate failure.
- **C. The telemetry must be ignored because startup was healthy** An initial probe does not override required measured behavior during exposure.
- **D. Exact version identity proves every request must succeed** Source provenance does not establish universal runtime behavior or dependency availability.

**Explanation:** The correct bytes serving traffic do not guarantee the required error or latency gate. Source provenance does not establish universal runtime behavior or dependency availability. Changing a label does not correct the observed candidate failure. An initial probe does not override required measured behavior during exposure.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q040

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A product A/B experiment needs persistent cohorts, while random canary routing changes user assignment. Which design question must be resolved?

- **A. Only whether both versions use the same build pipeline** A common producing pipeline does not implement consistent runtime user assignment to experimental cohorts.
- **B. Only whether both variants have equal traffic percentages** Equal traffic share does not establish that individual users remain in the intended stable cohort.
- **C. Only the local archive compression setting** Packaging does not define which users see each experimental version over time.
- **D. How users remain assigned to intended experiment cohorts** **Correct.** A risk-limiting traffic split does not automatically provide valid longitudinal experiment assignment.

**Explanation:** A common producing pipeline does not implement consistent runtime user assignment to experimental cohorts. Packaging does not define which users see each experimental version over time. Equal traffic share does not establish that individual users remain in the intended stable cohort. A risk-limiting traffic split does not automatically provide valid longitudinal experiment assignment.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Overall errors are 0.2%, but the ten-percent candidate cohort has 2% errors against its 1% limit. What should progression use?

```text
Candidate traffic: 10%
Aggregate errors: 0.2%
Candidate errors: 2%
Candidate limit: 1%
```

- **A. The archive upload timestamp as an error proxy** Transfer timing does not measure actual candidate request failures.
- **B. The candidate-specific failed gate rather than diluted aggregate success** **Correct.** Global metrics can hide a failure concentrated in the newly exposed version.
- **C. The source branch name because main implies release-ready** Branch identity does not override measured failure of a required service gate.
- **D. The overall number alone because most traffic is baseline** A healthy majority does not establish that the candidate cohort meets its required limit.

**Explanation:** Global metrics can hide a failure concentrated in the newly exposed version. A healthy majority does not establish that the candidate cohort meets its required limit. Transfer timing does not measure actual candidate request failures. Branch identity does not override measured failure of a required service gate.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q042

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Candidate and baseline share a database, and candidate migration removes a baseline-required field before the canary. What safety assumption failed?

- **A. Baseline compatibility during mixed-version progressive exposure** **Correct.** Serving two binaries requires a schema and data contract that supports both during transition.
- **B. More traffic should be sent to baseline immediately without checking compatibility** Routing cannot make a binary function against a schema it no longer supports.
- **C. The staging URL should become identical to production** Address naming cannot restore the removed database field needed by the baseline.
- **D. The artifact filename must be different for every request** Request routing does not require per-request artifact renaming to preserve compatibility.

**Explanation:** Serving two binaries requires a schema and data contract that supports both during transition. Request routing does not require per-request artifact renaming to preserve compatibility. Address naming cannot restore the removed database field needed by the baseline. Routing cannot make a binary function against a schema it no longer supports.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A baseline upload reports success after rollback, but live version and telemetry still show the failed current revision. What should recovery report?

- **A. The application database must always be dropped next** Destructive data recovery is a separate authorized decision rather than an automatic response.
- **B. Rollback passed because any upload operation succeeded** A successful transfer does not prove traffic reaches the selected recovered binary.
- **C. Rollback remains unverified until the intended baseline behavior is observed** **Correct.** Provider request success must agree with actual serving revision and required acceptance measurements.
- **D. The expected baseline SHA should be replaced silently** Changing expectations hides failure to restore the reviewed recovery candidate.

**Explanation:** Provider request success must agree with actual serving revision and required acceptance measurements. A successful transfer does not prove traffic reaches the selected recovered binary. Changing expectations hides failure to restore the reviewed recovery candidate. Destructive data recovery is a separate authorized decision rather than an automatic response.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q044

Advanced · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

Two packages share the approved source SHA but were rebuilt with different floating dependencies. Which identity is necessary for exact promotion?

- **A. Only the same archive filename** A reused filename can contain materially different executable dependency content.
- **B. Only the original code reviewer name** Human identity does not establish the content of independently rebuilt application archives.
- **C. Trusted content hashes and producing run for the selected artifact** **Correct.** Source correlation alone does not prove two independently built outputs contain identical dependencies.
- **D. Only the shared moving branch name** A branch label is weaker than the already insufficient source-only identity comparison.

**Explanation:** Source correlation alone does not prove two independently built outputs contain identical dependencies. A branch label is weaker than the already insufficient source-only identity comparison. A reused filename can contain materially different executable dependency content. Human identity does not establish the content of independently rebuilt application archives.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q045

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary has only three observed candidate requests and zero errors, while the gate requires meaningful minimum traffic. What decision is defensible?

```text
Minimum candidate requests: 10
Observed candidate requests: 3
Observed candidate failures: 0
```

- **A. Wait for the required bounded evidence before increasing exposure** **Correct.** A tiny clean sample does not establish the explicitly required observation threshold.
- **B. Replace the actual request count with the expected percentage** Configured routing is not a substitute for observed candidate request evidence.
- **C. Treat zero observed errors as proof of zero possible risk** Limited samples cannot establish universal future behavior or satisfy missing traffic requirements.
- **D. Promote fully to avoid waiting for telemetry** Broad exposure abandons the required gate instead of satisfying its evidence requirement.

**Explanation:** A tiny clean sample does not establish the explicitly required observation threshold. Limited samples cannot establish universal future behavior or satisfy missing traffic requirements. Configured routing is not a substitute for observed candidate request evidence. Broad exposure abandons the required gate instead of satisfying its evidence requirement.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q046

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Production and staging use separate runtime identities; a swap succeeds but the serving slot cannot read configuration. What must diagnosis examine?

- **A. Only the ZIP archive filename** A friendly package name cannot establish identity grants or effective slot settings.
- **B. Only code coverage percentage from an earlier build** Test coverage does not prove production runtime configuration authorization.
- **C. Only whether the source has an annotated release tag** Source labeling does not assign downstream permissions to the serving application principal.
- **D. Effective serving identity, sticky settings and its actual dependency grants** **Correct.** Moving content or traffic does not justify assuming principal permissions follow the expected role.

**Explanation:** Moving content or traffic does not justify assuming principal permissions follow the expected role. A friendly package name cannot establish identity grants or effective slot settings. Test coverage does not prove production runtime configuration authorization. Source labeling does not assign downstream permissions to the serving application principal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots)

## L15-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

An emergency patch is applied directly to production and later normal CI deploys the unchanged branch. What failure mode is likely?

- **A. The immutable old package changes its bytes automatically** A future deployment does not retroactively mutate already retained artifact content.
- **B. The untracked correction is overwritten and the original defect returns** **Correct.** A fix absent from supported source history is not preserved by later normal delivery.
- **C. The database owner automatically approves all subsequent releases** An emergency action does not grant universal future protected transition authority.
- **D. All source branches synchronize themselves after deployment** Runtime edits do not automatically create or reconcile reviewed source-control changes.

**Explanation:** A fix absent from supported source history is not preserved by later normal delivery. A future deployment does not retroactively mutate already retained artifact content. An emergency action does not grant universal future protected transition authority. Runtime edits do not automatically create or reconcile reviewed source-control changes.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q048

Advanced · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Readiness and revision pass but customer writes use a production dependency never exercised by synthetic reads. What acceptance gap remains?

- **A. The gate does not cover a required representative workload path** **Correct.** A limited probe cannot establish behavior of a critical operation it never exercised.
- **B. Only whether the readiness URL returns a successful read response** A healthy read path does not exercise the required write dependency or its effective authorization.
- **C. The artifact should be renamed to representative** Changing labels does not execute the omitted required workload path.
- **D. A successful read proves every write authorization is correct** Read and write permissions can differ on the same protected dependency.

**Explanation:** Changing labels does not execute the omitted required workload path. A limited probe cannot establish behavior of a critical operation it never exercised. Read and write permissions can differ on the same protected dependency. A healthy read path does not exercise the required write dependency or its effective authorization.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q049

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary shares one dependency pool and overloads it, degrading baseline users too. What should risk analysis account for?

```text
Canary traffic: 10%
Both versions share one downstream connection pool
Candidate exhausts pool
```

- **A. The configured ten percent guarantees a ten-percent total impact ceiling** Routing fraction does not bound every indirect shared-resource effect on the wider service.
- **B. Only candidate request count can ever affect baseline performance** Shared dependency saturation can impact workloads outside the initially exposed version cohort.
- **C. Shared dependencies can extend blast radius beyond routed candidate traffic** **Correct.** A small serving percentage does not isolate all downstream resource consumption and failure effects.
- **D. A healthy baseline binary prevents all dependency overload** Correct baseline code still depends on finite shared downstream service capacity.

**Explanation:** A small serving percentage does not isolate all downstream resource consumption and failure effects. Shared dependency saturation can impact workloads outside the initially exposed version cohort. Routing fraction does not bound every indirect shared-resource effect on the wider service. Correct baseline code still depends on finite shared downstream service capacity.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)

## L15-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Rollback requires compatible retained bytes, but the baseline expired and the only old package needs removed schema. What response respects release and data ownership?

- **A. Rebuild an old branch and claim it is the expired tested artifact** Reconstruction creates new bytes requiring fresh provenance and compatibility validation.
- **B. Drop production schema to fit the available old package automatically** Destructive recovery requires explicit database owner authorization and a validated restoration strategy.
- **C. Deploy the oldest available archive because age implies compatibility** Chronology does not establish that its schema and data assumptions remain supported.
- **D. Stop automatic rollback and use the reviewed owner-led recovery plan** **Correct.** Unavailable qualified output cannot be replaced safely by an incompatible historical package or destructive shortcut.

**Explanation:** Unavailable qualified output cannot be replaced safely by an incompatible historical package or destructive shortcut. Chronology does not establish that its schema and data assumptions remain supported. Destructive recovery requires explicit database owner authorization and a validated restoration strategy. Reconstruction creates new bytes requiring fresh provenance and compatibility validation.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments)
