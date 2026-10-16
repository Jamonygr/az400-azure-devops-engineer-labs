# Lab 16 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L16-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The sample contains TodoWrites flag configuration but no deployment occurs when its value changes. What concept does this illustrate?

- **A.** A flag grants Azure subscription permissions
- **B.** Deployment and feature exposure are separate controls
- **C.** A feature flag is a database backup
- **D.** Every flag update recompiles the application automatically

## L16-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The disabled-flag test rejects writes while reads stay healthy. Which required behavior does that observation establish?

```text
TodoWrites=false
POST /todos: rejected
GET /todos: healthy
```

- **A.** The write capability can be stopped without disabling reads
- **B.** The cloud App Configuration store was contacted successfully
- **C.** The entire application is unavailable whenever the flag is disabled
- **D.** Every database schema was rolled back

## L16-Q003

Foundational · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The lab creates an Entra-only configuration store and needs to modify feature data through CLI. Which permission boundary matters?

- **A.** The intended identity needs the scoped data-plane role
- **B.** Only the number of local unit tests
- **C.** Only the app store friendly display name
- **D.** Only the repository contents permission

## L16-Q004

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The learner enables TodoWrites in the owned store. Which independent read verifies that data-plane feature update outcome?

- **A.** Read only the configured identity data-plane role assignment
- **B.** Read only a previously exported feature JSON file
- **C.** Query that exact feature and inspect its actual enabled state
- **D.** Read only the original feature creation response

## L16-Q005

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

The exercise ends by disabling TodoWrites as a kill switch. What state should the fault assertion expect?

- **A.** The database was automatically dropped
- **B.** The application binary was removed from every slot
- **C.** Any feature anywhere is enabled
- **D.** The exact owned feature is off

## L16-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency has a brief transient interruption. Which resilience technique can repeat a safe operation with bounded delay?

- **A.** A permanent database schema deletion
- **B.** A bounded retry policy
- **C.** A different artifact display label
- **D.** An unlimited tight loop without delay

## L16-Q007

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency fails persistently and repeated calls worsen its overload. What pattern can temporarily stop sending requests?

- **A.** Infinite retries from every caller
- **B.** A circuit breaker with defined recovery probes
- **C.** A feature name containing reliable
- **D.** A larger log retention duration

## L16-Q008

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A temporary release flag has no owner or removal date. Which lifecycle control is missing?

- **A.** Only a longer display description
- **B.** Only a different application archive name
- **C.** Only a new source branch for each user
- **D.** Ownership and expiry or cleanup planning

## L16-Q009

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

A learner runs dotnet test with a filter matching no tests, then claims the kill-switch behavior passed. What must validation check?

- **A.** Only that the command returned zero
- **B.** Only that the filter contains the word Feature
- **C.** At least one intended assertion executed and passed
- **D.** Only the current store enabled state

## L16-Q010

Foundational · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The identity can create a configuration store but cannot read its feature values. What distinction explains this result?

```text
Store creation: succeeded
Feature read with selected identity: authorization denied
```

- **A.** A successful local test always grants remote read access
- **B.** Management-plane and data-plane permissions are separate
- **C.** Feature reads require repository administrator membership
- **D.** Every created store must contain corrupt feature data

## L16-Q011

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The CLI reports TodoWrites enabled in the store, but the sample has not been configured to consume that store. What remains unproven?

- **A.** The provider returned an enabled feature
- **B.** The feature name can be queried explicitly
- **C.** The running sample behavior follows the remote flag
- **D.** Local and cloud observations need separate reporting

## L16-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A retry policy repeats a failed payment request without an idempotency contract. What risk should review highlight?

- **A.** A feature label prevents duplicate transactions
- **B.** Every retry automatically rolls back the first operation
- **C.** More retries always reduce total dependency load
- **D.** Repeated attempts can duplicate the side effect

## L16-Q013

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A release flag allows enabling a new capability gradually for selected users. What targeting requirement supports a stable experience?

- **A.** Consistent cohort assignment for the intended users
- **B.** Only the number of generated configuration files
- **C.** Only a source branch named canary
- **D.** Only the application package creation date

## L16-Q014

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The caller has a short response budget, but retry delays can exceed it. Which bound should the policy respect?

- **A.** The overall operation latency and cancellation budget
- **B.** Only the maximum number of simultaneous requests
- **C.** Only a maximum retry count without considering delays
- **D.** Only a separate timeout for each individual attempt

## L16-Q015

Foundational · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

Writes are rejected with TodoWrites disabled, but the test never checks reads. What required behavior is still missing evidence?

- **A.** The Azure subscription has no residual resources
- **B.** Reads remain healthy while writes are disabled
- **C.** The store has an independent reviewer configured
- **D.** The application must have been recompiled

## L16-Q016

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Every client retries immediately after a shared outage and the dependency receives a synchronized burst. What delay technique can reduce that synchronization?

```text
1000 clients
Failure at same instant
Retry delay: zero for every attempt
```

- **A.** The same fixed zero delay for every client
- **B.** Renaming the dependency connection string
- **C.** Infinite retry count with no deadline
- **D.** Backoff with jitter and bounded attempts

## L16-Q017

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The feature name is correct but the command targets another configuration store. What must the validation compare?

- **A.** The exact run-owned store and feature identity
- **B.** Only the application local directory name
- **C.** Only the learner login display name
- **D.** Only whether any TodoWrites key exists

## L16-Q018

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A newly granted narrow data role is not yet effective. What retry approach preserves least privilege?

- **A.** Treat the failed read as successful because assignment was requested
- **B.** Copy a personal administrator access key into source
- **C.** Immediately assign subscription Owner to every identity
- **D.** Bounded read retries with the exact identity and scope verified

## L16-Q019

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The breaker is open after persistent failures. What should normal calls do until its recovery policy allows a probe?

- **A.** Send all normal requests concurrently to test recovery
- **B.** Fail fast or use a deliberately defined fallback
- **C.** Delete the application artifact before each request
- **D.** Declare every skipped dependency call successful without a contract

## L16-Q020

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A flag defaults to enabled if configuration cannot load, but the capability performs risky writes. What design review is required?

- **A.** Use the flag display name as authorization
- **B.** Assume every flag must always default enabled
- **C.** Assume every missing value means deployment succeeded
- **D.** Choose an explicit risk-appropriate fallback behavior

## L16-Q021

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The local test changes one flag value but the application's test configuration overrides it elsewhere. What should diagnosis inspect?

- **A.** The effective configuration precedence used by the application
- **B.** Only the JSON file modification timestamp
- **C.** Only the number of retained build artifacts
- **D.** Only whether the file configuration value is syntactically valid

## L16-Q022

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A dependency returns a permanent validation error for malformed input. Which retry classification is appropriate?

- **A.** Delete the test report to avoid classifying the error
- **B.** Retry forever because every non-success must be transient
- **C.** Do not blindly retry the unchanged invalid request
- **D.** Use progressively broader database privileges per retry

## L16-Q023

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

A flag update succeeds but the application caches configuration for several minutes. What should kill-switch expectations include?

- **A.** Only the current enabled state shown in the store
- **B.** The actual refresh and propagation latency
- **C.** An assumption that every instance changes instantaneously
- **D.** Only the last source commit timestamp

## L16-Q024

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The breaker permits a limited request after an open period to check recovery. Which state behavior does this describe?

- **A.** A half-open recovery probe
- **B.** Unlimited closed-state traffic with no limits
- **C.** A feature deletion operation in the store
- **D.** An automatic database migration rollback

## L16-Q025

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The capability is fully adopted but the old release flag still branches production code. What maintenance action should the owner consider?

- **A.** Delete all current configuration without checking consumers
- **B.** Remove obsolete flag paths through a reviewed cleanup change
- **C.** Replace the flag with an unrestricted administrator token
- **D.** Keep every temporary flag forever without review

## L16-Q026

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

The lab uses Entra authentication instead of store access keys. What operational benefit does this support while still needing role review?

- **A.** Automatically granting write authority to every tenant user
- **B.** Eliminating every need for access control
- **C.** Guaranteeing application reads the store without configuration
- **D.** Avoiding a stored shared secret for the intended data operation

## L16-Q027

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

An operation retries five times in each of three nested layers. What should resilience review examine?

```text
Outer layer: up to 5 attempts
Middle layer: up to 5 attempts
Inner dependency: up to 5 attempts
```

- **A.** Assume nested retries always cancel each other out
- **B.** Only whether the outer retry uses exponential backoff
- **C.** Multiplicative attempts and the combined downstream load
- **D.** Only the outer layer configured retry count

## L16-Q028

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The feature-disabled test proves rejected writes, but no enabled test exists. What additional behavioral case improves the contract?

- **A.** Verify intended writes succeed when the feature is enabled
- **B.** Verify only that the provider reports the flag enabled
- **C.** Verify only the local workspace has been deleted
- **D.** Verify only that the JSON contains the feature name

## L16-Q029

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

An operator enables TodoWrites in a development label while production consumes another label. What must the acceptance check establish?

- **A.** Only whether the source branch is called production
- **B.** Only whether the CLI process produced JSON
- **C.** Only whether any feature with the name is on
- **D.** The exact feature variant consumed by the intended environment

## L16-Q030

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A breaker opens on any error including caller validation failures. What unintended behavior can result?

- **A.** The artifact digest loses cryptographic integrity
- **B.** The feature store must revoke all identities
- **C.** Valid traffic can be blocked because failures were misclassified
- **D.** The database schema automatically becomes compatible

## L16-Q031

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

The flag controls writes but a privileged background worker bypasses its check. What exposure contract should review address?

- **A.** All intended risky write paths honor the selected control
- **B.** Only whether the background worker has a narrower deployment role
- **C.** Only whether the public API unit test rejects writes
- **D.** Only the public API response formatting

## L16-Q032

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A retry policy fits each individual timeout but total attempts exceed the caller deadline. What bound is missing?

- **A.** Only a unique name for each retry attempt
- **B.** Only a source branch protection rule
- **C.** Only a maximum application artifact size
- **D.** A combined retry and timeout budget for the whole operation

## L16-Q033

Applied · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A learner can read flags but needs to change only the owned training store. Which permission request is most appropriate?

- **A.** A shared production access key committed into YAML
- **B.** Collection administrator in Azure DevOps
- **C.** The necessary data role scoped to that exact store
- **D.** Subscription-wide Owner for every participant

## L16-Q034

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The command updates the provider flag, while local test configuration stays unchanged. What should the result report distinguish?

- **A.** A database migration completed implicitly
- **B.** A failed source build necessarily
- **C.** Actual provider control from separately tested local application behavior
- **D.** A complete live feature integration automatically

## L16-Q035

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A request times out after the server may have committed its mutation. What must safe retry design consider?

```text
Client: timeout
Server: mutation may have committed
Retry: same operation
```

- **A.** The second request is automatically a database rollback
- **B.** A timeout guarantees nothing was applied remotely
- **C.** The unknown outcome and an idempotency mechanism
- **D.** The caller should remove all request identifiers

## L16-Q036

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The dependency recovers, but the breaker never allows any probe after opening. What availability defect remains?

- **A.** The policy cannot observe recovery and resume legitimate traffic
- **B.** Force the breaker closed immediately after any timeout
- **C.** Every request should be counted as successful while blocked
- **D.** The artifact version must be decremented automatically

## L16-Q037

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A flag decision uses raw user email in retained telemetry to identify cohorts. What design improvement preserves useful exposure evidence?

- **A.** Log every authentication token beside the email
- **B.** Use artifact size as the user identity
- **C.** Delete all decision outcomes and retain only the email
- **D.** Use appropriate minimized identifiers under the evidence policy

## L16-Q038

Applied · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The test named DisabledFlagRejectsWritesWhileReadsRemainHealthy passes. Which claim should remain outside that observation unless separately tested?

- **A.** The remote configuration store exported live values to the deployed app
- **B.** The tested read path stayed healthy
- **C.** The selected local configuration produced a passing result
- **D.** The disabled test case rejected the write path

## L16-Q039

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

The application service uses both dependency retries and a circuit breaker during outages. What relationship should their composition preserve?

- **A.** Retries should ignore every open breaker state
- **B.** The breaker should grant broader resource permissions on failure
- **C.** Bounded safe retries without defeating dependency failure suppression
- **D.** Every retry must rebuild the application package

## L16-Q040

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

The feature is disabled after a failed release, but instances continue accepting writes because refresh is stale. What acceptance evidence matters?

- **A.** Only the successful provider disable request
- **B.** Only the JSON file creation date
- **C.** Only an earlier healthy read response
- **D.** Observed denied writes after the actual runtime refresh boundary

## L16-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Three layers each make up to three total attempts for one logical write. What risk must the combined policy bound?

```text
Layer A: max 3 total attempts
Layer B: max 3 total attempts per A
Layer C: max 3 total attempts per B
```

- **A.** A guaranteed reduction to zero calls on every failure
- **B.** Only three total attempts regardless of layer composition
- **C.** Up to twenty-seven downstream attempts and repeated side effects
- **D.** Automatic schema rollback after the ninth attempt

## L16-Q042

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A risky write flag defaults off, but a missing value is interpreted as enabled by one client library. What must the rollout contract verify?

- **A.** Only a successful provider list operation
- **B.** Consistent explicit fallback semantics across actual consumers
- **C.** Only identical friendly flag names in documentation
- **D.** Only the maximum number of active source branches

## L16-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A payment request times out after commit and a retry uses a new idempotency key. What safety property has been lost?

- **A.** The timeout proves the first attempt never committed
- **B.** The server cannot recognize the attempts as one logical operation
- **C.** The retry becomes read-only because it has a key
- **D.** Every new key automatically reverses the previous committed payment

## L16-Q044

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A breaker probes recovery with a full production burst immediately after the open period. What should its recovery policy constrain?

- **A.** Only whether a single successful probe response can be logged
- **B.** Limited half-open trial traffic and clear success/failure transitions
- **C.** Only whether the open-state timer has expired
- **D.** Only whether the breaker has a nonzero wait duration

## L16-Q045

Advanced · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Production instances refresh flags at different times, and a kill switch must stop writes within a defined window. Which acceptance plan fits?

```text
Kill-switch objective: all instances stop writes within window
Instance A: refreshed
Instance B: stale enabled cache
```

- **A.** Declare immediate global success from one stored disabled value
- **B.** Remove instance identity from all evidence and infer consistency
- **C.** Increase the allowed window silently whenever an instance is stale
- **D.** Measure per-instance effective behavior within the bounded propagation objective

## L16-Q046

Advanced · [CP3](README.md#task-3) · [D3.4.6](../../docs/objective-map.md)

A temporary role assignment is requested at store scope, but the resulting grant is subscription-wide. What should validation do despite successful feature writes?

```text
Requested scope: exact App Configuration store
Actual role assignment scope: subscription
```

- **A.** Retain the grant indefinitely to avoid propagation delays
- **B.** Change the ownership journal to claim the whole subscription
- **C.** Reject the overbroad scope and reconcile the intended assignment
- **D.** Pass because the feature write worked

## L16-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A transient dependency outage triggers retries while requests continue arriving faster than recovery capacity. Which combined concern needs review?

- **A.** Retry amplification, backoff, load limits and the end-to-end deadline
- **B.** Only the last successful package version
- **C.** Only whether a local policy file says reliable:true
- **D.** Only the maximum attempts configured in one selected retry layer

## L16-Q048

Advanced · [CP2](README.md#task-2) · [D3.4.6](../../docs/objective-map.md)

The disabled-feature test mocks the entire request handler to always reject writes. What evidence would better establish the actual capability boundary?

- **A.** Exercise the real handler under enabled and disabled configurations
- **B.** Rename the mock to production-handler
- **C.** Infer success from remote store role assignments
- **D.** Add more identical mocked rejected responses

## L16-Q049

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

A long-lived flag interacts with a second flag to create four behavior combinations, but only one is tested. What maintenance risk should review address?

- **A.** Only the fact that each switch passed its standalone unit test
- **B.** Untested interaction states and accumulated conditional complexity
- **C.** Flags automatically remove all possible regression paths
- **D.** Only the count of YAML comment lines

## L16-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

A release disables risky writes while dependency retries continue in background tasks, and telemetry still shows mutations. What must incident recovery verify?

- **A.** Only that a breaker configuration file exists
- **B.** Every relevant mutation path and effective runtime policy stopped the risk
- **C.** Only the latest successful source build
- **D.** Only the stored disabled value because background behavior is unrelated
