# Lab 16 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L16-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The sample contains TodoWrites flag configuration but no deployment occurs when its value changes. What concept does this illustrate?

- **A. A flag grants Azure subscription permissions** Application behavior configuration does not authorize identity access to Azure resources.
- **B. Deployment and feature exposure are separate controls** **Correct.** Existing executable code can change allowed behavior without requiring a new binary deployment.
- **C. A feature flag is a database backup** Exposure control does not store or restore durable database data.
- **D. Every flag update recompiles the application automatically** Configuration changes do not inherently invoke the source compiler or build pipeline.

**Explanation:** Existing executable code can change allowed behavior without requiring a new binary deployment. Configuration changes do not inherently invoke the source compiler or build pipeline. Exposure control does not store or restore durable database data. Application behavior configuration does not authorize identity access to Azure resources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The disabled-flag test rejects writes while reads stay healthy. Which required behavior does that observation establish?

```text
TodoWrites=false
POST /todos: rejected
GET /todos: healthy
```

- **A. The write capability can be stopped without disabling reads** **Correct.** The test demonstrates the stated separation between risky mutations and retained read functionality.
- **B. The cloud App Configuration store was contacted successfully** A local application test does not prove remote configuration retrieval or authorization.
- **C. The entire application is unavailable whenever the flag is disabled** Successful reads contradict that claim of complete application unavailability.
- **D. Every database schema was rolled back** Feature exposure changes do not execute schema recovery or destructive migration reversal.

**Explanation:** The test demonstrates the stated separation between risky mutations and retained read functionality. Successful reads contradict that claim of complete application unavailability. A local application test does not prove remote configuration retrieval or authorization. Feature exposure changes do not execute schema recovery or destructive migration reversal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q003

Foundational · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The lab creates an Entra-only configuration store and needs to modify feature data through CLI. Which permission boundary matters?

- **A. The intended identity needs the scoped data-plane role** **Correct.** Management resource existence does not automatically authorize reading or changing feature key-values.
- **B. Only the number of local unit tests** Test counts cannot grant a principal remote store data-plane permissions.
- **C. Only the app store friendly display name** Naming does not grant the selected identity permission over configuration data.
- **D. Only the repository contents permission** GitHub source authority does not directly authorize Azure configuration data operations.

**Explanation:** Management resource existence does not automatically authorize reading or changing feature key-values. Naming does not grant the selected identity permission over configuration data. GitHub source authority does not directly authorize Azure configuration data operations. Test counts cannot grant a principal remote store data-plane permissions.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q004

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The learner enables TodoWrites in the owned store. Which independent read verifies that data-plane feature update outcome?

- **A. Read only the configured identity data-plane role assignment** Authorization enables a request but does not establish the actual stored feature value after mutation.
- **B. Read only a previously exported feature JSON file** A stale local snapshot does not establish that the remote provider accepted and retained the intended update.
- **C. Query that exact feature and inspect its actual enabled state** **Correct.** A fresh service read establishes stored feature state rather than only the submitted request.
- **D. Read only the original feature creation response** An earlier creation observation does not show the state after the newly requested enable operation.

**Explanation:** A fresh service read establishes stored feature state rather than only the submitted request. A stale local snapshot does not establish that the remote provider accepted and retained the intended update. Authorization enables a request but does not establish the actual stored feature value after mutation. An earlier creation observation does not show the state after the newly requested enable operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q005

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

The exercise ends by disabling TodoWrites as a kill switch. What state should the fault assertion expect?

- **A. The database was automatically dropped** A feature state update does not perform destructive database resource cleanup.
- **B. The application binary was removed from every slot** Disabling behavior does not require deleting deployed executable application content.
- **C. Any feature anywhere is enabled** An unrelated feature state cannot establish the expected scoped kill-switch setting.
- **D. The exact owned feature is off** **Correct.** The asserted state must match the intended final exposure boundary after the exercise.

**Explanation:** The asserted state must match the intended final exposure boundary after the exercise. An unrelated feature state cannot establish the expected scoped kill-switch setting. Disabling behavior does not require deleting deployed executable application content. A feature state update does not perform destructive database resource cleanup.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency has a brief transient interruption. Which resilience technique can repeat a safe operation with bounded delay?

- **A. A permanent database schema deletion** Destructive schema change does not address a transient dependency service interruption.
- **B. A bounded retry policy** **Correct.** Retries can address temporary failures when repetition is safe and time is limited.
- **C. A different artifact display label** Naming does not alter dependency request handling or bounded retry behavior.
- **D. An unlimited tight loop without delay** Unbounded repetition can amplify load and exceed the caller acceptable latency budget.

**Explanation:** Retries can address temporary failures when repetition is safe and time is limited. Unbounded repetition can amplify load and exceed the caller acceptable latency budget. Destructive schema change does not address a transient dependency service interruption. Naming does not alter dependency request handling or bounded retry behavior.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q007

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency fails persistently and repeated calls worsen its overload. What pattern can temporarily stop sending requests?

- **A. Infinite retries from every caller** Unbounded repeated traffic can amplify the underlying overload rather than relieve it.
- **B. A circuit breaker with defined recovery probes** **Correct.** The breaker limits repeated calls while the dependency remains in an unhealthy state.
- **C. A feature name containing reliable** A label does not implement request suppression or recovery state transitions.
- **D. A larger log retention duration** Keeping evidence longer does not reduce live calls to the failing dependency.

**Explanation:** The breaker limits repeated calls while the dependency remains in an unhealthy state. Unbounded repeated traffic can amplify the underlying overload rather than relieve it. A label does not implement request suppression or recovery state transitions. Keeping evidence longer does not reduce live calls to the failing dependency.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q008

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A temporary release flag has no owner or removal date. Which lifecycle control is missing?

- **A. Only a longer display description** More prose does not establish responsible ownership or an actual removal plan.
- **B. Only a different application archive name** Artifact labels do not manage the lifetime of application exposure conditions.
- **C. Only a new source branch for each user** Branch proliferation does not govern runtime flag ownership or expiry.
- **D. Ownership and expiry or cleanup planning** **Correct.** Exposure switches need accountable maintenance rather than accumulating permanent obsolete branching behavior.

**Explanation:** Exposure switches need accountable maintenance rather than accumulating permanent obsolete branching behavior. More prose does not establish responsible ownership or an actual removal plan. Branch proliferation does not govern runtime flag ownership or expiry. Artifact labels do not manage the lifetime of application exposure conditions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q009

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

A learner runs dotnet test with a filter matching no tests, then claims the kill-switch behavior passed. What must validation check?

- **A. Only that the command returned zero** Process success without discovered assertions does not prove application behavior was exercised.
- **B. Only that the filter contains the word Feature** A descriptive filter can still match no actual test cases.
- **C. At least one intended assertion executed and passed** **Correct.** A zero-test successful process cannot establish the actual required feature behavior.
- **D. Only the current store enabled state** Provider flag state does not demonstrate a local application behavioral test ran.

**Explanation:** A zero-test successful process cannot establish the actual required feature behavior. Process success without discovered assertions does not prove application behavior was exercised. A descriptive filter can still match no actual test cases. Provider flag state does not demonstrate a local application behavioral test ran.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q010

Foundational · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The identity can create a configuration store but cannot read its feature values. What distinction explains this result?

```text
Store creation: succeeded
Feature read with selected identity: authorization denied
```

- **A. A successful local test always grants remote read access** Test execution does not assign roles to the identity making a provider request.
- **B. Management-plane and data-plane permissions are separate** **Correct.** Resource provisioning authority does not automatically grant permission to consume configuration data.
- **C. Feature reads require repository administrator membership** Source-control roles do not directly confer Azure configuration data access.
- **D. Every created store must contain corrupt feature data** An authorization denial does not establish that the stored values are invalid.

**Explanation:** Resource provisioning authority does not automatically grant permission to consume configuration data. An authorization denial does not establish that the stored values are invalid. Source-control roles do not directly confer Azure configuration data access. Test execution does not assign roles to the identity making a provider request.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q011

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The CLI reports TodoWrites enabled in the store, but the sample has not been configured to consume that store. What remains unproven?

- **A. The provider returned an enabled feature** That observed state can be valid even while application integration remains absent.
- **B. The feature name can be queried explicitly** The query itself demonstrates inspectable provider feature data for that scoped name.
- **C. The running sample behavior follows the remote flag** **Correct.** Changing provider state does not establish that the application reads that configuration source.
- **D. Local and cloud observations need separate reporting** Distinct exercised boundaries should remain explicit instead of being conflated.

**Explanation:** Changing provider state does not establish that the application reads that configuration source. That observed state can be valid even while application integration remains absent. The query itself demonstrates inspectable provider feature data for that scoped name. Distinct exercised boundaries should remain explicit instead of being conflated.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A retry policy repeats a failed payment request without an idempotency contract. What risk should review highlight?

- **A. A feature label prevents duplicate transactions** Configuration naming does not implement a server-side idempotency boundary.
- **B. Every retry automatically rolls back the first operation** Request repetition does not inherently undo a previously committed side effect.
- **C. More retries always reduce total dependency load** Repeated operations increase attempts and can amplify load during a failure.
- **D. Repeated attempts can duplicate the side effect** **Correct.** An uncertain first result does not establish that repeating a mutation is safe.

**Explanation:** An uncertain first result does not establish that repeating a mutation is safe. Request repetition does not inherently undo a previously committed side effect. Repeated operations increase attempts and can amplify load during a failure. Configuration naming does not implement a server-side idempotency boundary.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q013

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A release flag allows enabling a new capability gradually for selected users. What targeting requirement supports a stable experience?

- **A. Consistent cohort assignment for the intended users** **Correct.** Gradual exposure should identify who receives the capability rather than change randomly per request.
- **B. Only the number of generated configuration files** File count cannot establish the actual runtime targeting decision logic.
- **C. Only a source branch named canary** Branch labels do not implement runtime user targeting or stable cohort assignment.
- **D. Only the application package creation date** Artifact age does not determine which users receive feature behavior.

**Explanation:** Gradual exposure should identify who receives the capability rather than change randomly per request. Branch labels do not implement runtime user targeting or stable cohort assignment. Artifact age does not determine which users receive feature behavior. File count cannot establish the actual runtime targeting decision logic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q014

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The caller has a short response budget, but retry delays can exceed it. Which bound should the policy respect?

- **A. The overall operation latency and cancellation budget** **Correct.** Retries must fit the caller actual acceptable execution window rather than grow indefinitely.
- **B. Only the maximum number of simultaneous requests** Concurrency limits do not by themselves bound the total duration of one retrying logical operation.
- **C. Only a maximum retry count without considering delays** Even a finite attempt count can exceed the caller deadline when delays and individual timeouts accumulate.
- **D. Only a separate timeout for each individual attempt** Per-attempt limits do not necessarily bound cumulative delays and execution within the caller overall deadline.

**Explanation:** Per-attempt limits do not necessarily bound cumulative delays and execution within the caller overall deadline. Concurrency limits do not by themselves bound the total duration of one retrying logical operation. Even a finite attempt count can exceed the caller deadline when delays and individual timeouts accumulate. Retries must fit the caller actual acceptable execution window rather than grow indefinitely.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q015

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

Writes are rejected with TodoWrites disabled, but the test never checks reads. What required behavior is still missing evidence?

- **A. The Azure subscription has no residual resources** An application assertion does not establish remote cleanup or inventory absence.
- **B. Reads remain healthy while writes are disabled** **Correct.** The exercise requires both denied mutations and preserved read behavior under the flag.
- **C. The store has an independent reviewer configured** Local feature behavior does not prove any provider resource approval policy.
- **D. The application must have been recompiled** Changing exposure does not require a rebuild unless the implementation explicitly does so.

**Explanation:** The exercise requires both denied mutations and preserved read behavior under the flag. Changing exposure does not require a rebuild unless the implementation explicitly does so. An application assertion does not establish remote cleanup or inventory absence. Local feature behavior does not prove any provider resource approval policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q016

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Every client retries immediately after a shared outage and the dependency receives a synchronized burst. What delay technique can reduce that synchronization?

```text
1000 clients
Failure at same instant
Retry delay: zero for every attempt
```

- **A. The same fixed zero delay for every client** Immediate synchronized repetition can amplify the dependency load after the outage.
- **B. Renaming the dependency connection string** A friendly configuration label does not change request timing or retry synchronization.
- **C. Infinite retry count with no deadline** Removing bounds extends load and can exceed acceptable user latency indefinitely.
- **D. Backoff with jitter and bounded attempts** **Correct.** Varying delayed retries can reduce synchronized pressure while keeping recovery attempts limited.

**Explanation:** Varying delayed retries can reduce synchronized pressure while keeping recovery attempts limited. Immediate synchronized repetition can amplify the dependency load after the outage. Removing bounds extends load and can exceed acceptable user latency indefinitely. A friendly configuration label does not change request timing or retry synchronization.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q017

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The feature name is correct but the command targets another configuration store. What must the validation compare?

- **A. The exact run-owned store and feature identity** **Correct.** Matching a key name alone cannot establish that the authorized scoped resource was changed.
- **B. Only the application local directory name** Filesystem naming does not establish the provider store boundary used by the request.
- **C. Only the learner login display name** Available identity does not identify which resource the operation actually targeted.
- **D. Only whether any TodoWrites key exists** The same key can legitimately exist in multiple unrelated stores.

**Explanation:** Matching a key name alone cannot establish that the authorized scoped resource was changed. The same key can legitimately exist in multiple unrelated stores. Available identity does not identify which resource the operation actually targeted. Filesystem naming does not establish the provider store boundary used by the request.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q018

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A newly granted narrow data role is not yet effective. What retry approach preserves least privilege?

- **A. Treat the failed read as successful because assignment was requested** Submitted intent does not establish effective provider data access.
- **B. Copy a personal administrator access key into source** Stored broad credentials introduce unnecessary exposure and abandon the intended identity design.
- **C. Immediately assign subscription Owner to every identity** Broadening permissions exceeds the data operation and can hide the actual prerequisite issue.
- **D. Bounded read retries with the exact identity and scope verified** **Correct.** Propagation delay should be diagnosed without reflexively broadening the intended authorization boundary.

**Explanation:** Propagation delay should be diagnosed without reflexively broadening the intended authorization boundary. Broadening permissions exceeds the data operation and can hide the actual prerequisite issue. Stored broad credentials introduce unnecessary exposure and abandon the intended identity design. Submitted intent does not establish effective provider data access.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q019

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The breaker is open after persistent failures. What should normal calls do until its recovery policy allows a probe?

- **A. Send all normal requests concurrently to test recovery** That bypasses the intended suppression and can recreate dependency overload immediately.
- **B. Fail fast or use a deliberately defined fallback** **Correct.** An open breaker limits repeated dependency pressure rather than continuing every normal request.
- **C. Delete the application artifact before each request** Package deletion is unrelated to controlled dependency request suppression.
- **D. Declare every skipped dependency call successful without a contract** Suppressing requests does not establish successful completion of required business behavior.

**Explanation:** An open breaker limits repeated dependency pressure rather than continuing every normal request. That bypasses the intended suppression and can recreate dependency overload immediately. Suppressing requests does not establish successful completion of required business behavior. Package deletion is unrelated to controlled dependency request suppression.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q020

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A flag defaults to enabled if configuration cannot load, but the capability performs risky writes. What design review is required?

- **A. Use the flag display name as authorization** Friendly naming does not establish permission to expose a risky capability.
- **B. Assume every flag must always default enabled** Default choice depends on capability risk and required service continuity behavior.
- **C. Assume every missing value means deployment succeeded** Configuration absence is not evidence of successful source-to-runtime promotion.
- **D. Choose an explicit risk-appropriate fallback behavior** **Correct.** An unavailable configuration source needs deliberate behavior rather than an accidental exposure default.

**Explanation:** An unavailable configuration source needs deliberate behavior rather than an accidental exposure default. Default choice depends on capability risk and required service continuity behavior. Configuration absence is not evidence of successful source-to-runtime promotion. Friendly naming does not establish permission to expose a risky capability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q021

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The local test changes one flag value but the application's test configuration overrides it elsewhere. What should diagnosis inspect?

- **A. The effective configuration precedence used by the application** **Correct.** A declared file value may not be the actual value consumed at runtime.
- **B. Only the JSON file modification timestamp** Recency does not establish precedence across environment and other configuration providers.
- **C. Only the number of retained build artifacts** Output inventory does not explain how the application resolves its configuration sources.
- **D. Only whether the file configuration value is syntactically valid** Valid JSON can be overridden by a higher-priority environment or configuration provider value.

**Explanation:** A declared file value may not be the actual value consumed at runtime. Recency does not establish precedence across environment and other configuration providers. Valid JSON can be overridden by a higher-priority environment or configuration provider value. Output inventory does not explain how the application resolves its configuration sources.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q022

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency returns a permanent validation error for malformed input. Which retry classification is appropriate?

- **A. Delete the test report to avoid classifying the error** Removing evidence does not change the actual dependency response semantics.
- **B. Retry forever because every non-success must be transient** That can amplify load without changing the invalid request or its cause.
- **C. Do not blindly retry the unchanged invalid request** **Correct.** Permanent input failure is not a transient condition repetition can normally repair.
- **D. Use progressively broader database privileges per retry** Authorization expansion cannot repair malformed business input and adds unnecessary risk.

**Explanation:** Permanent input failure is not a transient condition repetition can normally repair. That can amplify load without changing the invalid request or its cause. Authorization expansion cannot repair malformed business input and adds unnecessary risk. Removing evidence does not change the actual dependency response semantics.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q023

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

A flag update succeeds but the application caches configuration for several minutes. What should kill-switch expectations include?

- **A. Only the current enabled state shown in the store** Stored state does not show when running consumers refresh or stop using cached configuration.
- **B. The actual refresh and propagation latency** **Correct.** Stored configuration state can differ temporarily from the value used by running instances.
- **C. An assumption that every instance changes instantaneously** A provider write does not guarantee immediate refresh of all application caches.
- **D. Only the last source commit timestamp** Source timing does not establish runtime configuration refresh behavior.

**Explanation:** Stored state does not show when running consumers refresh or stop using cached configuration. Stored configuration state can differ temporarily from the value used by running instances. A provider write does not guarantee immediate refresh of all application caches. Source timing does not establish runtime configuration refresh behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q024

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The breaker permits a limited request after an open period to check recovery. Which state behavior does this describe?

- **A. A half-open recovery probe** **Correct.** Limited trial traffic tests dependency recovery before normal call volume resumes.
- **B. Unlimited closed-state traffic with no limits** A bounded probe is different from restoring unrestricted ordinary calls immediately.
- **C. A feature deletion operation in the store** Dependency call state transitions do not require deleting application feature definitions.
- **D. An automatic database migration rollback** Breaker recovery does not perform schema reversal or data restoration.

**Explanation:** Limited trial traffic tests dependency recovery before normal call volume resumes. A bounded probe is different from restoring unrestricted ordinary calls immediately. Breaker recovery does not perform schema reversal or data restoration. Dependency call state transitions do not require deleting application feature definitions.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q025

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The capability is fully adopted but the old release flag still branches production code. What maintenance action should the owner consider?

- **A. Delete all current configuration without checking consumers** Broad removal can break unrelated active features and violates a scoped cleanup approach.
- **B. Remove obsolete flag paths through a reviewed cleanup change** **Correct.** Permanent stale switches increase complexity after their exposure-control purpose has ended.
- **C. Replace the flag with an unrestricted administrator token** Runtime exposure control is unrelated to granting broad resource mutation authority.
- **D. Keep every temporary flag forever without review** Unbounded accumulation leaves obsolete behavior branches and unclear ownership in production code.

**Explanation:** Permanent stale switches increase complexity after their exposure-control purpose has ended. Unbounded accumulation leaves obsolete behavior branches and unclear ownership in production code. Broad removal can break unrelated active features and violates a scoped cleanup approach. Runtime exposure control is unrelated to granting broad resource mutation authority.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q026

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The lab uses Entra authentication instead of store access keys. What operational benefit does this support while still needing role review?

- **A. Automatically granting write authority to every tenant user** Entra identity does not imply unrestricted configuration store access for all users.
- **B. Eliminating every need for access control** Authentication method does not establish that all callers should receive data mutation rights.
- **C. Guaranteeing application reads the store without configuration** Authentication capability does not wire the application to a remote provider automatically.
- **D. Avoiding a stored shared secret for the intended data operation** **Correct.** Identity-based access reduces shared key handling without eliminating resource authorization requirements.

**Explanation:** Identity-based access reduces shared key handling without eliminating resource authorization requirements. Authentication method does not establish that all callers should receive data mutation rights. Entra identity does not imply unrestricted configuration store access for all users. Authentication capability does not wire the application to a remote provider automatically.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q027

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

An operation retries five times in each of three nested layers. What should resilience review examine?

```text
Outer layer: up to 5 attempts
Middle layer: up to 5 attempts
Inner dependency: up to 5 attempts
```

- **A. Assume nested retries always cancel each other out** Independent retry policies can compound rather than eliminate repeated downstream operations.
- **B. Only whether the outer retry uses exponential backoff** The inner layers can still multiply downstream calls independently of the outer delay strategy.
- **C. Multiplicative attempts and the combined downstream load** **Correct.** Nested policies can multiply calls far beyond the apparent retry count at one layer.
- **D. Only the outer layer configured retry count** Nested downstream policies can multiply attempts beyond the limit visible in one caller layer.

**Explanation:** Nested policies can multiply calls far beyond the apparent retry count at one layer. Nested downstream policies can multiply attempts beyond the limit visible in one caller layer. The inner layers can still multiply downstream calls independently of the outer delay strategy. Independent retry policies can compound rather than eliminate repeated downstream operations.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q028

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The feature-disabled test proves rejected writes, but no enabled test exists. What additional behavioral case improves the contract?

- **A. Verify intended writes succeed when the feature is enabled** **Correct.** Both accepted and denied exposure states need observable behavior rather than one negative path alone.
- **B. Verify only that the provider reports the flag enabled** Stored configuration does not execute the application enabled write path or prove the test consumes it.
- **C. Verify only the local workspace has been deleted** Cleanup evidence does not establish the allowed application operation succeeds.
- **D. Verify only that the JSON contains the feature name** A declaration cannot establish actual enabled application behavior during execution.

**Explanation:** Both accepted and denied exposure states need observable behavior rather than one negative path alone. A declaration cannot establish actual enabled application behavior during execution. Stored configuration does not execute the application enabled write path or prove the test consumes it. Cleanup evidence does not establish the allowed application operation succeeds.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q029

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

An operator enables TodoWrites in a development label while production consumes another label. What must the acceptance check establish?

- **A. Only whether the source branch is called production** A branch label does not establish the store variant actually read by the app.
- **B. Only whether the CLI process produced JSON** Output existence does not identify the effective environment configuration variant.
- **C. Only whether any feature with the name is on** Unrelated variants can differ without affecting the intended consumer configuration.
- **D. The exact feature variant consumed by the intended environment** **Correct.** A matching key in another configuration variant does not control the target runtime behavior.

**Explanation:** A matching key in another configuration variant does not control the target runtime behavior. Unrelated variants can differ without affecting the intended consumer configuration. A branch label does not establish the store variant actually read by the app. Output existence does not identify the effective environment configuration variant.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q030

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A breaker opens on any error including caller validation failures. What unintended behavior can result?

- **A. The artifact digest loses cryptographic integrity** Runtime error classification does not mutate a previously recorded package checksum.
- **B. The feature store must revoke all identities** A breaker decision does not itself change cloud identity assignments or grants.
- **C. Valid traffic can be blocked because failures were misclassified** **Correct.** The breaker should reflect dependency health rather than unrelated bad client input.
- **D. The database schema automatically becomes compatible** Failure classification does not repair application database model compatibility.

**Explanation:** The breaker should reflect dependency health rather than unrelated bad client input. Failure classification does not repair application database model compatibility. A breaker decision does not itself change cloud identity assignments or grants. Runtime error classification does not mutate a previously recorded package checksum.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q031

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The flag controls writes but a privileged background worker bypasses its check. What exposure contract should review address?

- **A. All intended risky write paths honor the selected control** **Correct.** A kill switch is incomplete when another required mutation path ignores it.
- **B. Only whether the background worker has a narrower deployment role** Deployment authority does not establish that runtime business mutation checks actually consult the feature decision.
- **C. Only whether the public API unit test rejects writes** A passing API test leaves the separate background mutation path unexercised under the kill switch.
- **D. Only the public API response formatting** Presentation of one endpoint does not control background execution mutations.

**Explanation:** A passing API test leaves the separate background mutation path unexercised under the kill switch. Deployment authority does not establish that runtime business mutation checks actually consult the feature decision. A kill switch is incomplete when another required mutation path ignores it. Presentation of one endpoint does not control background execution mutations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q032

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A retry policy fits each individual timeout but total attempts exceed the caller deadline. What bound is missing?

- **A. Only a unique name for each retry attempt** Naming does not enforce cumulative execution time or cancellation of later attempts.
- **B. Only a source branch protection rule** Code review policy does not itself bound runtime dependency request latency.
- **C. Only a maximum application artifact size** Output storage size does not constrain live request retry duration.
- **D. A combined retry and timeout budget for the whole operation** **Correct.** Per-attempt limits do not automatically satisfy the end-to-end acceptable response deadline.

**Explanation:** Per-attempt limits do not automatically satisfy the end-to-end acceptable response deadline. Output storage size does not constrain live request retry duration. Naming does not enforce cumulative execution time or cancellation of later attempts. Code review policy does not itself bound runtime dependency request latency.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q033

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A learner can read flags but needs to change only the owned training store. Which permission request is most appropriate?

- **A. A shared production access key committed into YAML** Persisting broad secret material in source abandons the intended scoped identity-based access.
- **B. Collection administrator in Azure DevOps** A DevOps collection role does not directly authorize Azure configuration data writes.
- **C. The necessary data role scoped to that exact store** **Correct.** The authority should match the required feature mutation and authorized disposable boundary.
- **D. Subscription-wide Owner for every participant** That grants unrelated administrative operations beyond the limited configuration exercise requirement.

**Explanation:** The authority should match the required feature mutation and authorized disposable boundary. That grants unrelated administrative operations beyond the limited configuration exercise requirement. A DevOps collection role does not directly authorize Azure configuration data writes. Persisting broad secret material in source abandons the intended scoped identity-based access.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q034

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The command updates the provider flag, while local test configuration stays unchanged. What should the result report distinguish?

- **A. A database migration completed implicitly** Feature operations do not apply database schema programs or recovery procedures.
- **B. A failed source build necessarily** Different configuration sources do not establish that application compilation failed.
- **C. Actual provider control from separately tested local application behavior** **Correct.** Both observations can be valid without establishing that the runtime consumes the remote value.
- **D. A complete live feature integration automatically** A provider value change cannot prove unconfigured application ingestion and refresh behavior.

**Explanation:** Both observations can be valid without establishing that the runtime consumes the remote value. A provider value change cannot prove unconfigured application ingestion and refresh behavior. Feature operations do not apply database schema programs or recovery procedures. Different configuration sources do not establish that application compilation failed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q035

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A request times out after the server may have committed its mutation. What must safe retry design consider?

```text
Client: timeout
Server: mutation may have committed
Retry: same operation
```

- **A. The second request is automatically a database rollback** Repeating an operation does not inherently reverse the first committed mutation.
- **B. A timeout guarantees nothing was applied remotely** The server can commit before the response is lost or delayed.
- **C. The unknown outcome and an idempotency mechanism** **Correct.** A missing response does not prove the first operation had no lasting side effect.
- **D. The caller should remove all request identifiers** Stable correlation or idempotency keys can help distinguish repeated attempts safely.

**Explanation:** A missing response does not prove the first operation had no lasting side effect. The server can commit before the response is lost or delayed. Repeating an operation does not inherently reverse the first committed mutation. Stable correlation or idempotency keys can help distinguish repeated attempts safely.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q036

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The dependency recovers, but the breaker never allows any probe after opening. What availability defect remains?

- **A. The policy cannot observe recovery and resume legitimate traffic** **Correct.** A breaker needs a reviewed recovery mechanism rather than permanent suppression without reassessment.
- **B. Force the breaker closed immediately after any timeout** An unconditional reset can resume full pressure without establishing that the failing dependency recovered.
- **C. Every request should be counted as successful while blocked** Suppressing dependency execution does not prove business operations actually completed.
- **D. The artifact version must be decremented automatically** Runtime recovery policy does not require changing application package identity.

**Explanation:** A breaker needs a reviewed recovery mechanism rather than permanent suppression without reassessment. Runtime recovery policy does not require changing application package identity. Suppressing dependency execution does not prove business operations actually completed. An unconditional reset can resume full pressure without establishing that the failing dependency recovered.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q037

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A flag decision uses raw user email in retained telemetry to identify cohorts. What design improvement preserves useful exposure evidence?

- **A. Log every authentication token beside the email** Sensitive credentials are unnecessary for recording a feature exposure decision.
- **B. Use artifact size as the user identity** Package metadata does not provide a meaningful stable feature targeting identity.
- **C. Delete all decision outcomes and retain only the email** That removes useful behavior evidence while preserving unnecessary identifying material.
- **D. Use appropriate minimized identifiers under the evidence policy** **Correct.** Targeting analysis should not unnecessarily retain personal values beyond the operational need.

**Explanation:** Targeting analysis should not unnecessarily retain personal values beyond the operational need. Sensitive credentials are unnecessary for recording a feature exposure decision. That removes useful behavior evidence while preserving unnecessary identifying material. Package metadata does not provide a meaningful stable feature targeting identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q038

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The test named DisabledFlagRejectsWritesWhileReadsRemainHealthy passes. Which claim should remain outside that observation unless separately tested?

- **A. The remote configuration store exported live values to the deployed app** **Correct.** An in-process behavioral test does not establish remote ingestion or hosted configuration integration.
- **B. The tested read path stayed healthy** That is another asserted property of the named local execution case.
- **C. The selected local configuration produced a passing result** The actual test report can support its observed local outcome.
- **D. The disabled test case rejected the write path** That is part of the explicitly exercised behavioral case and assertions.

**Explanation:** An in-process behavioral test does not establish remote ingestion or hosted configuration integration. That is part of the explicitly exercised behavioral case and assertions. That is another asserted property of the named local execution case. The actual test report can support its observed local outcome.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q039

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The application service uses both dependency retries and a circuit breaker during outages. What relationship should their composition preserve?

- **A. Retries should ignore every open breaker state** Bypassing suppression can recreate the dependency overload the breaker was designed to reduce.
- **B. The breaker should grant broader resource permissions on failure** Dependency resilience does not authorize privilege escalation as an error response.
- **C. Bounded safe retries without defeating dependency failure suppression** **Correct.** Combined policies should avoid uncontrolled calls when the breaker intends to limit pressure.
- **D. Every retry must rebuild the application package** Runtime request handling does not require generating new deployment binaries for each attempt.

**Explanation:** Combined policies should avoid uncontrolled calls when the breaker intends to limit pressure. Bypassing suppression can recreate the dependency overload the breaker was designed to reduce. Dependency resilience does not authorize privilege escalation as an error response. Runtime request handling does not require generating new deployment binaries for each attempt.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry); [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q040

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The feature is disabled after a failed release, but instances continue accepting writes because refresh is stale. What acceptance evidence matters?

- **A. Only the successful provider disable request** A control operation can succeed while running consumers still use cached configuration.
- **B. Only the JSON file creation date** Local source metadata does not show current deployed request acceptance behavior.
- **C. Only an earlier healthy read response** A read probe cannot establish that the write capability is now disabled.
- **D. Observed denied writes after the actual runtime refresh boundary** **Correct.** Stored flag state alone does not establish the behavior currently serving requests.

**Explanation:** Stored flag state alone does not establish the behavior currently serving requests. A control operation can succeed while running consumers still use cached configuration. Local source metadata does not show current deployed request acceptance behavior. A read probe cannot establish that the write capability is now disabled.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Three layers each make up to three total attempts for one logical write. What risk must the combined policy bound?

```text
Layer A: max 3 total attempts
Layer B: max 3 total attempts per A
Layer C: max 3 total attempts per B
```

- **A. A guaranteed reduction to zero calls on every failure** Retry composition does not automatically supply a circuit breaker or universal suppression.
- **B. Only three total attempts regardless of layer composition** That ignores multiplication when each layer independently repeats its downstream operation.
- **C. Up to twenty-seven downstream attempts and repeated side effects** **Correct.** Independent nested attempts can multiply rather than remain limited to one layer count.
- **D. Automatic schema rollback after the ninth attempt** Repeated calls do not imply a safe database reversal mechanism.

**Explanation:** Independent nested attempts can multiply rather than remain limited to one layer count. That ignores multiplication when each layer independently repeats its downstream operation. Retry composition does not automatically supply a circuit breaker or universal suppression. Repeated calls do not imply a safe database reversal mechanism.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q042

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A risky write flag defaults off, but a missing value is interpreted as enabled by one client library. What must the rollout contract verify?

- **A. Only a successful provider list operation** Inventory does not execute each application's fallback path when configuration is unavailable.
- **B. Consistent explicit fallback semantics across actual consumers** **Correct.** A configuration declaration is insufficient when different clients interpret missing values differently.
- **C. Only identical friendly flag names in documentation** Shared spelling does not guarantee equivalent missing-value behavior in executable consumers.
- **D. Only the maximum number of active source branches** Branch count does not determine runtime feature decision semantics.

**Explanation:** A configuration declaration is insufficient when different clients interpret missing values differently. Shared spelling does not guarantee equivalent missing-value behavior in executable consumers. Inventory does not execute each application's fallback path when configuration is unavailable. Branch count does not determine runtime feature decision semantics.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A payment request times out after commit and a retry uses a new idempotency key. What safety property has been lost?

- **A. The timeout proves the first attempt never committed** A missing response cannot establish that remote side effects did not occur.
- **B. The server cannot recognize the attempts as one logical operation** **Correct.** Changing the deduplication identity can allow the repeated request to create another side effect.
- **C. The retry becomes read-only because it has a key** A request identifier does not alter the business mutation semantics.
- **D. Every new key automatically reverses the previous committed payment** Idempotency identity does not perform compensating financial operations or database reversal.

**Explanation:** Changing the deduplication identity can allow the repeated request to create another side effect. Idempotency identity does not perform compensating financial operations or database reversal. A request identifier does not alter the business mutation semantics. A missing response cannot establish that remote side effects did not occur.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q044

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A breaker probes recovery with a full production burst immediately after the open period. What should its recovery policy constrain?

- **A. Only whether a single successful probe response can be logged** A logged response without defined concurrency and transition rules does not bound the recovery traffic burst.
- **B. Limited half-open trial traffic and clear success/failure transitions** **Correct.** Recovery needs controlled observation rather than immediately recreating the original overload pressure.
- **C. Only whether the open-state timer has expired** Time passage permits a controlled probe but does not establish that full production traffic is safe.
- **D. Only whether the breaker has a nonzero wait duration** Waiting alone does not constrain how much trial traffic is sent when the recovery period begins.

**Explanation:** Time passage permits a controlled probe but does not establish that full production traffic is safe. Recovery needs controlled observation rather than immediately recreating the original overload pressure. Waiting alone does not constrain how much trial traffic is sent when the recovery period begins. A logged response without defined concurrency and transition rules does not bound the recovery traffic burst.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)

## L16-Q045

Advanced · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Production instances refresh flags at different times, and a kill switch must stop writes within a defined window. Which acceptance plan fits?

```text
Kill-switch objective: all instances stop writes within window
Instance A: refreshed
Instance B: stale enabled cache
```

- **A. Declare immediate global success from one stored disabled value** One service value does not establish every actual consumer stopped risky behavior.
- **B. Remove instance identity from all evidence and infer consistency** Losing correlation prevents checking the required per-instance propagation boundary.
- **C. Increase the allowed window silently whenever an instance is stale** Changing the objective to fit failure abandons the reviewed operational requirement.
- **D. Measure per-instance effective behavior within the bounded propagation objective** **Correct.** A provider update is only one part of the complete runtime exposure transition.

**Explanation:** A provider update is only one part of the complete runtime exposure transition. One service value does not establish every actual consumer stopped risky behavior. Losing correlation prevents checking the required per-instance propagation boundary. Changing the objective to fit failure abandons the reviewed operational requirement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q046

Advanced · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A temporary role assignment is requested at store scope, but the resulting grant is subscription-wide. What should validation do despite successful feature writes?

```text
Requested scope: exact App Configuration store
Actual role assignment scope: subscription
```

- **A. Retain the grant indefinitely to avoid propagation delays** Convenience does not justify broader persistent authority than the approved exercise requires.
- **B. Change the ownership journal to claim the whole subscription** Editing ownership evidence cannot authorize adopting unrelated existing resource boundaries.
- **C. Reject the overbroad scope and reconcile the intended assignment** **Correct.** Operational success does not satisfy the separate least-privilege authorization boundary.
- **D. Pass because the feature write worked** Successful execution does not establish that its effective permissions are appropriately limited.

**Explanation:** Operational success does not satisfy the separate least-privilege authorization boundary. Successful execution does not establish that its effective permissions are appropriately limited. Editing ownership evidence cannot authorize adopting unrelated existing resource boundaries. Convenience does not justify broader persistent authority than the approved exercise requires.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-enable-rbac)

## L16-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A transient dependency outage triggers retries while requests continue arriving faster than recovery capacity. Which combined concern needs review?

- **A. Retry amplification, backoff, load limits and the end-to-end deadline** **Correct.** Resilience must control added pressure rather than merely increase per-request attempt counts.
- **B. Only the last successful package version** Artifact history does not quantify current retry pressure and dependency recovery capacity.
- **C. Only whether a local policy file says reliable:true** A declaration does not implement measured safe behavior under accumulating live load.
- **D. Only the maximum attempts configured in one selected retry layer** One layer count does not establish aggregate retry pressure or the total caller deadline across the system.

**Explanation:** Resilience must control added pressure rather than merely increase per-request attempt counts. One layer count does not establish aggregate retry pressure or the total caller deadline across the system. Artifact history does not quantify current retry pressure and dependency recovery capacity. A declaration does not implement measured safe behavior under accumulating live load.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q048

Advanced · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The disabled-feature test mocks the entire request handler to always reject writes. What evidence would better establish the actual capability boundary?

- **A. Exercise the real handler under enabled and disabled configurations** **Correct.** A predetermined substitute response cannot prove the actual application feature logic controls behavior.
- **B. Rename the mock to production-handler** A friendly label cannot make a test double establish real application behavior.
- **C. Infer success from remote store role assignments** Data authorization does not execute or verify the local handler feature decision.
- **D. Add more identical mocked rejected responses** Repeating a fixed substitute does not exercise the actual intended implementation path.

**Explanation:** A predetermined substitute response cannot prove the actual application feature logic controls behavior. Repeating a fixed substitute does not exercise the actual intended implementation path. A friendly label cannot make a test double establish real application behavior. Data authorization does not execute or verify the local handler feature decision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q049

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A long-lived flag interacts with a second flag to create four behavior combinations, but only one is tested. What maintenance risk should review address?

- **A. Only the fact that each switch passed its standalone unit test** Individually healthy flags do not establish behavior when their conditional execution paths interact.
- **B. Untested interaction states and accumulated conditional complexity** **Correct.** Independent switches can combine into behavior paths beyond a single healthy test case.
- **C. Flags automatically remove all possible regression paths** Runtime configuration can introduce additional combinations rather than eliminate testing obligations.
- **D. Only the count of YAML comment lines** Documentation size does not establish executable interaction coverage across configuration combinations.

**Explanation:** Individually healthy flags do not establish behavior when their conditional execution paths interact. Independent switches can combine into behavior paths beyond a single healthy test case. Runtime configuration can introduce additional combinations rather than eliminate testing obligations. Documentation size does not establish executable interaction coverage across configuration combinations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management)

## L16-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A release disables risky writes while dependency retries continue in background tasks, and telemetry still shows mutations. What must incident recovery verify?

- **A. Only that a breaker configuration file exists** A declaration does not prove the running tasks actually suppress unsafe operations.
- **B. Every relevant mutation path and effective runtime policy stopped the risk** **Correct.** One flag value cannot prove all background work and retry behavior honor the containment boundary.
- **C. Only the latest successful source build** Compilation evidence does not establish current runtime containment of ongoing side effects.
- **D. Only the stored disabled value because background behavior is unrelated** Background mutation can continue the very impact the operational kill switch should contain.

**Explanation:** One flag value cannot prove all background work and retry behavior honor the containment boundary. Background mutation can continue the very impact the operational kill switch should contain. Compilation evidence does not establish current runtime containment of ongoing side effects. A declaration does not prove the running tasks actually suppress unsafe operations.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry); [S4](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker)
