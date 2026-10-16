# Lab 15 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L15-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The standalone slot exercise needs staging and production on one App Service plan. What must the selected pricing tier support?

- **A.** Only an application artifact named staging
- **B.** Only the local development launch profile
- **C.** Only a storage account with the same prefix
- **D.** Deployment slots for the intended App Service configuration

## L15-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

Production and staging should run the same reviewed candidate. Which packaging practice preserves this requirement?

- **A.** Rename two unrelated packages to the same version
- **B.** Package only source comments for the second environment
- **C.** Build once and deploy the same identified archive
- **D.** Build staging from one branch and production from latest main

## L15-Q003

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A candidate should warm up before it serves ordinary production traffic. What deployment boundary supports that preparation?

- **A.** Only retain yesterday's build logs
- **B.** Deploy and probe a staging slot separately
- **C.** Overwrite production before inspecting readiness
- **D.** Only change the production app display name

## L15-Q004

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The candidate archive uploaded successfully, but /health/ready returns HTTP 503. What should happen before exposure increases?

- **A.** Stop promotion and diagnose readiness
- **B.** Promote immediately because upload is the only required gate
- **C.** Rename the slot to healthy
- **D.** Delete the failed response from evidence

## L15-Q005

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The exercise sets staging traffic to ten percent. What should a fresh provider read establish afterward?

```json
{"staging":10}
```

- **A.** Every single sequence of ten requests includes exactly one candidate hit
- **B.** The actual staging distribution equals the intended percentage
- **C.** The application passed every possible operational test
- **D.** The database automatically rolled back its schema

## L15-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A team exposes a candidate to a small cohort and expands only while monitored gates pass. What deployment strategy does this describe?

- **A.** An artifact retention-only strategy
- **B.** A canary or progressive exposure strategy
- **C.** A compulsory database Down migration strategy
- **D.** A source history cleanup strategy

## L15-Q007

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A product experiment compares two user experiences to measure conversion, rather than mainly limiting release risk. What distinction matters?

- **A.** A/B proves every user receives both versions in order
- **B.** A/B and rollback are the same observed operation
- **C.** A/B experimentation has an outcome-measurement objective
- **D.** A/B always requires dropping the current database

## L15-Q008

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The lab configures Development with SQLite under /tmp for an independent synthetic slot exercise. What limitation must learners retain?

- **A.** It proves workload federation and SQL authorization passed
- **B.** It proves every slot shares one transactional database automatically
- **C.** It provides a production backup and restore guarantee
- **D.** It is disposable training state rather than durable production SQL design

## L15-Q009

Foundational · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

Readiness returns HTTP 200, but the version endpoint reports an older revision than expected. Which acceptance condition is still unmet?

```text
Expected candidate revision: B
Staging /health/ready: 200
Staging /version: A
```

- **A.** The intended candidate bytes are not observed serving
- **B.** The artifact name automatically resolves the mismatch
- **C.** The source repository must have no default branch
- **D.** The slot must be deleted because every healthy response is invalid

## L15-Q010

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A new slot has a different runtime identity from production. What prerequisite must be reviewed before it reaches protected dependencies?

- **A.** Only whether the staging slot uses the same deployment package
- **B.** Review scoped grants required by the staging identity
- **C.** Only the number of successful local tests
- **D.** Only the archive filename matching production

## L15-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A hotfix must preserve tested provenance while returning the corrected binary to the supported release line. What process fits?

- **A.** Skip all tests because a hotfix is small
- **B.** Edit production files directly and omit the source change
- **C.** Reuse an unrelated successful artifact with a matching name
- **D.** Review, test and identify the hotfix artifact and reconcile branches

## L15-Q012

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The staging probe is healthy before traffic routing changes. What does that observation establish at this point?

- **A.** The production slot has been swapped automatically
- **B.** All real users already received the new version successfully
- **C.** The tested staging endpoint met that probe condition
- **D.** Every database migration is guaranteed backward-compatible

## L15-Q013

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The routing command completes, but a final query shows zero staging traffic. How should the ten-percent checkpoint respond?

- **A.** Delete the production app to remove the discrepancy
- **B.** Pass after changing the expected percentage in evidence
- **C.** Reject the actual routing mismatch
- **D.** Pass because no application tests failed locally

## L15-Q014

Foundational · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The package hash differs between staging and production uploads despite a shared version label. Which requirement failed?

- **A.** Both deployments must consume the same validated bytes
- **B.** The stage and production jobs must use identical runner names
- **C.** The two archive download timestamps must be identical
- **D.** Every new release must contain no database model

## L15-Q015

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The candidate canary fails its required service gate. What should progressive release do before increasing exposure further?

- **A.** Expand rapidly so more users can confirm the fault
- **B.** Mark the gate optional without reviewing that policy change
- **C.** Delete the measurements and rely only on package existence
- **D.** Halt expansion and use the reviewed recovery decision

## L15-Q016

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A script targets an app outside the journal-owned resource group. Which check should refuse the lab operation?

```text
Owned group: rg-az400-15-run42
Actual app ID: /subscriptions/.../resourceGroups/shared-prod/providers/Microsoft.Web/sites/app
```

- **A.** Check only whether the app name contains training
- **B.** Compare the exact ARM ID with the owned scope
- **C.** Check only whether a prior deployment succeeded
- **D.** Check only whether the learner can authenticate

## L15-Q017

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

The new slot starts but cannot access its external configuration store while production works. What should diagnosis compare?

- **A.** Only the archive display name
- **B.** Slot-specific settings, identities and dependency access
- **C.** Only whether the deployment operation reported success
- **D.** Only the production historical artifact count

## L15-Q018

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A learner tests only a few requests after configuring ten-percent routing and sees none reach staging. What interpretation is appropriate?

- **A.** Small samples and session routing can obscure the configured distribution
- **B.** The staged application must contain no files
- **C.** The provider configuration must always be zero percent
- **D.** Every configured percentage guarantees exact counts per ten requests

## L15-Q019

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Readiness passes quickly, but error rate under real candidate traffic is high. Which release gate should control promotion?

- **A.** Only the earlier readiness response
- **B.** Only the archive upload status
- **C.** Observed candidate behavior under the required traffic acceptance window
- **D.** Only the local package directory creation timestamp

## L15-Q020

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

The team patches the supported production branch but never merges the correction back into normal development. What risk remains?

- **A.** A future normal release can reintroduce the original defect
- **B.** The current hotfix artifact necessarily changes its bytes afterward
- **C.** The staging slot automatically receives every fix
- **D.** The database schema automatically contracts

## L15-Q021

Applied · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

The readiness endpoint checks only process liveness while release acceptance requires database readiness. What must the probe contract address?

- **A.** Only whether the source repository has a release tag
- **B.** The actual dependency readiness required to serve the workload
- **C.** Only the number of archive files
- **D.** Only the application display title in its HTML

## L15-Q022

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A swap changes serving roles, but the team assumes each slot identity also transfers its grants. What must be verified independently?

- **A.** Only whether the application archive source SHA remains unchanged
- **B.** Only whether both slot names are short
- **C.** The identities and sticky configuration associated with actual slots
- **D.** Only the local project build configuration

## L15-Q023

Applied · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The application archive includes untracked test results and local evidence alongside binaries. What packaging input boundary needs improvement?

- **A.** Reduce the number of environment reviewers
- **B.** Use an explicit intended output or tracked-source allowlist
- **C.** Grant deployment identity more permissions
- **D.** Rename the archive to include clean

## L15-Q024

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A preview helper proposes a staging swap but does not use Apply. Which claim is accurate afterward?

```powershell
./deploy-canary.ps1 -ResourceGroup $ResourceGroup -AppName $AppName
# No -Apply switch
```

- **A.** The baseline now necessarily serves all production traffic
- **B.** Both provider identity and environment approval were proved
- **C.** The database has completed schema recovery
- **D.** The plan was inspected; no swap is established

## L15-Q025

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

A warmup request succeeds before the new application finishes a required asynchronous initialization task. What acceptance issue should be reviewed?

- **A.** Only whether the deployed version endpoint matches the expected SHA
- **B.** Only whether the archive name contains warmup
- **C.** Whether the readiness signal truly represents required serving readiness
- **D.** Only whether the provider upload operation completed

## L15-Q026

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary runs at ten percent indefinitely with no owner, time bound or promotion criteria. What operational contract is missing?

- **A.** Only a successful archive upload
- **B.** Only an additional source-control branch
- **C.** Explicit ownership, observation gates and progression or rollback decisions
- **D.** Only a more attractive version label

## L15-Q027

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The training SQLite store is created under /tmp in each slot. What should data verification avoid assuming?

- **A.** Durable shared data across slot lifecycle and traffic transitions
- **B.** The protected SQL integration has separate prerequisites
- **C.** The configuration requires explicit training-only interpretation
- **D.** The app can still execute local synthetic behavior

## L15-Q028

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A hotfix uses a narrow supported branch, but publication replaces an existing artifact version with changed bytes. Which release property is broken?

- **A.** The app must remove every readiness check
- **B.** Stable immutable identity of the previously published candidate
- **C.** The current source branch can never contain a correction
- **D.** The deployment must use a different cloud provider

## L15-Q029

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A staging slot uses a different connection setting and points at production data. What must the release review assess before warming or testing it?

- **A.** Only whether production had passed tests last week
- **B.** Only whether the app plan supports slots
- **C.** Only whether staging has a unique URL
- **D.** The actual dependency target and permitted test data impact

## L15-Q030

Applied · [CP4](README.md#task-4) · [D3.4.7](../../docs/objective-map.md)

The provider reports success but the app returns errors because a dependency role is absent. What evidence should determine acceptance?

- **A.** The actual application behavior and required dependency checks
- **B.** Only the current archive filename
- **C.** Only the successful provider request status
- **D.** Only the existence of a production environment

## L15-Q031

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A team increases candidate exposure without comparing candidate-specific metrics to its stop conditions. What makes this progression incomplete?

- **A.** A new display name has not been chosen
- **B.** The package includes a content hash
- **C.** The source repository has only one default branch
- **D.** The measured gate for the candidate was not evaluated

## L15-Q032

Applied · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

The exact same archive was deployed twice, but its configuration changed between deployments. What should provenance reporting include?

- **A.** Both artifact identity and the effective deployment configuration
- **B.** Only the binary hash because configuration cannot affect behavior
- **C.** Only the friendly slot names
- **D.** Only the earlier successful build log

## L15-Q033

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

The candidate is healthy at low traffic but a required latency limit is exceeded when exposure rises. Which action follows the reviewed gate?

- **A.** Delete the higher-load measurements as outliers without analysis
- **B.** Stop further expansion and execute the defined recovery decision
- **C.** Increase the gate silently after each failure
- **D.** Continue because the earlier smaller cohort passed

## L15-Q034

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

The health probe targets production while the learner believes they are testing staging. What verification catches this acceptance mistake?

- **A.** Check only whether the request returned any success code
- **B.** Check the exact URL and observed candidate revision
- **C.** Check only whether both slots use the same app plan
- **D.** Check only whether the source package exists locally

## L15-Q035

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

An urgent patch passes targeted tests but bypasses required independent release approval. What should the completion report state?

- **A.** The authorization gate remains unmet despite passing quality
- **B.** The release passed every requirement because the defect was urgent
- **C.** The omitted gate can be recorded as passed retrospectively
- **D.** The successful package hash proves a human approved deployment

## L15-Q036

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

A candidate initializes in staging using a slot-specific setting that will differ after swap. Which review should precede promotion?

- **A.** Only compare the source author identity
- **B.** Only count source files in the package
- **C.** Assume every setting always swaps identically without checking
- **D.** Validate post-transition settings and dependencies for the serving role

## L15-Q037

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A release operator claims traffic routing passed because the CLI command returned zero. What independent evidence strengthens that claim?

- **A.** The application has many passing unit tests
- **B.** A local variable assigned ten
- **C.** The command copied into a Markdown file
- **D.** A fresh provider read of the intended slot percentage

## L15-Q038

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The advanced production-style lane needs external SQL and identity setup absent from the standalone exercise. How should the difference be reported?

- **A.** Describe the temporary store as production SQL verification
- **B.** Automatically adopt any reachable shared database
- **C.** Keep the synthetic core and protected integration prerequisites explicit
- **D.** Mark all advanced requirements passed because the app compiles

## L15-Q039

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

A version endpoint matches the candidate, but required operations fail intermittently during the observation window. What is the right acceptance interpretation?

- **A.** Revision identity passed while operational behavior failed
- **B.** The version evidence should be renamed to baseline
- **C.** The telemetry must be ignored because startup was healthy
- **D.** Exact version identity proves every request must succeed

## L15-Q040

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A product A/B experiment needs persistent cohorts, while random canary routing changes user assignment. Which design question must be resolved?

- **A.** Only whether both versions use the same build pipeline
- **B.** Only whether both variants have equal traffic percentages
- **C.** Only the local archive compression setting
- **D.** How users remain assigned to intended experiment cohorts

## L15-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Overall errors are 0.2%, but the ten-percent candidate cohort has 2% errors against its 1% limit. What should progression use?

```text
Candidate traffic: 10%
Aggregate errors: 0.2%
Candidate errors: 2%
Candidate limit: 1%
```

- **A.** The archive upload timestamp as an error proxy
- **B.** The candidate-specific failed gate rather than diluted aggregate success
- **C.** The source branch name because main implies release-ready
- **D.** The overall number alone because most traffic is baseline

## L15-Q042

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Candidate and baseline share a database, and candidate migration removes a baseline-required field before the canary. What safety assumption failed?

- **A.** Baseline compatibility during mixed-version progressive exposure
- **B.** More traffic should be sent to baseline immediately without checking compatibility
- **C.** The staging URL should become identical to production
- **D.** The artifact filename must be different for every request

## L15-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

A baseline upload reports success after rollback, but live version and telemetry still show the failed current revision. What should recovery report?

- **A.** The application database must always be dropped next
- **B.** Rollback passed because any upload operation succeeded
- **C.** Rollback remains unverified until the intended baseline behavior is observed
- **D.** The expected baseline SHA should be replaced silently

## L15-Q044

Advanced · [CP2](README.md#task-2) · [D3.4.7](../../docs/objective-map.md)

Two packages share the approved source SHA but were rebuilt with different floating dependencies. Which identity is necessary for exact promotion?

- **A.** Only the same archive filename
- **B.** Only the original code reviewer name
- **C.** Trusted content hashes and producing run for the selected artifact
- **D.** Only the shared moving branch name

## L15-Q045

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary has only three observed candidate requests and zero errors, while the gate requires meaningful minimum traffic. What decision is defensible?

```text
Minimum candidate requests: 10
Observed candidate requests: 3
Observed candidate failures: 0
```

- **A.** Wait for the required bounded evidence before increasing exposure
- **B.** Replace the actual request count with the expected percentage
- **C.** Treat zero observed errors as proof of zero possible risk
- **D.** Promote fully to avoid waiting for telemetry

## L15-Q046

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Production and staging use separate runtime identities; a swap succeeds but the serving slot cannot read configuration. What must diagnosis examine?

- **A.** Only the ZIP archive filename
- **B.** Only code coverage percentage from an earlier build
- **C.** Only whether the source has an annotated release tag
- **D.** Effective serving identity, sticky settings and its actual dependency grants

## L15-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

An emergency patch is applied directly to production and later normal CI deploys the unchanged branch. What failure mode is likely?

- **A.** The immutable old package changes its bytes automatically
- **B.** The untracked correction is overwritten and the original defect returns
- **C.** The database owner automatically approves all subsequent releases
- **D.** All source branches synchronize themselves after deployment

## L15-Q048

Advanced · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Readiness and revision pass but customer writes use a production dependency never exercised by synthetic reads. What acceptance gap remains?

- **A.** The gate does not cover a required representative workload path
- **B.** Only whether the readiness URL returns a successful read response
- **C.** The artifact should be renamed to representative
- **D.** A successful read proves every write authorization is correct

## L15-Q049

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A canary shares one dependency pool and overloads it, degrading baseline users too. What should risk analysis account for?

```text
Canary traffic: 10%
Both versions share one downstream connection pool
Candidate exhausts pool
```

- **A.** The configured ten percent guarantees a ten-percent total impact ceiling
- **B.** Only candidate request count can ever affect baseline performance
- **C.** Shared dependencies can extend blast radius beyond routed candidate traffic
- **D.** A healthy baseline binary prevents all dependency overload

## L15-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Rollback requires compatible retained bytes, but the baseline expired and the only old package needs removed schema. What response respects release and data ownership?

- **A.** Rebuild an old branch and claim it is the expired tested artifact
- **B.** Drop production schema to fit the available old package automatically
- **C.** Deploy the oldest available archive because age implies compatibility
- **D.** Stop automatic rollback and use the reviewed owner-led recovery plan
