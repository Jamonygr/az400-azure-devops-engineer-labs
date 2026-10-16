# Lab 12 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L12-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A worker has Git but no .NET 10 SDK required by global.json. Which prerequisite should its capability check report?

- **A.** The repository needs a different issue tracker
- **B.** The application source must automatically be considered invalid
- **C.** The worker requires more concurrent job slots
- **D.** The required build toolchain is missing

## L12-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

GitHub runner inventory returns total_count zero for a new sandbox. What can the learner conclude from that read?

- **A.** No GitHub-hosted runner can ever execute repository jobs
- **B.** The application test suite has already failed
- **C.** No repository self-hosted runners are registered in this inventory
- **D.** Organization billing has automatically been upgraded

## L12-Q003

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Azure DevOps lists two agent pools, but a queued build waits for capacity. Which distinction explains the observation?

```text
Readable pools: 2
Matching idle agents: 0
Permitted parallel jobs: 1
```

- **A.** The build must have completed before it was queued
- **B.** Every visible pool guarantees unlimited simultaneous jobs
- **C.** Changing artifact names allocates more parallel workers
- **D.** Pool inventory differs from available authorized parallel execution capacity

## L12-Q004

Foundational · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A runner receives HTTPS responses from api.github.com and dev.azure.com. Which additional claim remains unproven by that check?

- **A.** It can reach the private SQL endpoint
- **B.** It connected to the two tested HTTPS endpoints
- **C.** The response arrived before the configured timeout
- **D.** The requests used the configured HTTPS service port

## L12-Q005

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The local worker fixture removes its temporary directory after one successful job. What does that observation demonstrate?

- **A.** Every previous credential has been revoked remotely
- **B.** Hostile code could never access the underlying operating system
- **C.** The worker is registered ephemerally with GitHub
- **D.** The fixture implemented its one-job workspace cleanup behavior

## L12-Q006

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture deliberately fails its job. Which final property must still hold for the cleanup requirement?

- **A.** The failure must be hidden from the outer process
- **B.** Its temporary job workspace is removed despite failure
- **C.** Its evidence must claim the job succeeded
- **D.** The failed workspace should become the next job workspace

## L12-Q007

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A single-job design still passes deployment credentials into untrusted contribution code. Which boundary is violated despite using an ephemeral workspace?

- **A.** The workspace cleanup needs to run sooner after completion
- **B.** The generated artifact should use a different digest algorithm
- **C.** The worker needs a different operating-system routing label
- **D.** The untrusted job received authority it should never possess

## L12-Q008

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A Linux x64 application bundle is scheduled on a Windows ARM worker without a compatible toolchain. What selection should be corrected?

- **A.** Runner operating system and architecture compatibility
- **B.** Only the pipeline display number
- **C.** Only the work-item state
- **D.** Only the worker parallel-job entitlement

## L12-Q009

Foundational · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A self-hosted runner appears offline in inventory. What is the appropriate interpretation before queueing work to its labels?

- **A.** Registration exists but current execution availability is absent
- **B.** Its label grants cloud resource Owner automatically
- **C.** Its last successful artifact proves it is currently connected
- **D.** The repository source must have a compilation error

## L12-Q010

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pipeline names an agent pool that exists but is not authorized for that pipeline. What prerequisite is missing?

- **A.** A different application test assertion
- **B.** Explicit resource access for the intended consuming pipeline
- **C.** A shorter YAML filename
- **D.** A larger artifact compression buffer

## L12-Q011

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The fixture reports credentialEnvironmentPresent false after filtering environment names. Which conclusion is justified from that result alone?

- **A.** The operating system enforces perfect tenant isolation
- **B.** The host has no secrets anywhere
- **C.** Those checked credential-like variables were not forwarded by this fixture
- **D.** The cloud provider revoked all previous credentials

## L12-Q012

Foundational · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

The private worker can resolve SQL DNS but cannot establish the required TCP connection. What does DNS success prove?

- **A.** The public hosted worker has the same private reachability
- **B.** All database users have correct roles
- **C.** Name resolution only; network access still needs validation
- **D.** The full database migration path has passed

## L12-Q013

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture records a SHA256 of its produced artifact. Why is this useful lifecycle evidence?

```json
{"jobExitCode":0,"workspaceRemoved":true,"outputSha256":"64-hex-character-digest"}
```

- **A.** It identifies the output content created during that job
- **B.** It registers the worker with both providers
- **C.** It proves every application test passed
- **D.** It grants the next job deployment permission

## L12-Q014

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pool contains five agents but the organization allows one parallel job. How many jobs can its entitlement permit at once?

- **A.** One permitted parallel job
- **B.** Zero permanently because more agents than slots is invalid
- **C.** Unlimited jobs if each has a unique name
- **D.** Five jobs because all agents are registered

## L12-Q015

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A learner runs the local ephemeral fixture but never invokes GitHub registration APIs. How should the result be described?

- **A.** A proof of private SQL network readiness
- **B.** Local lifecycle practice with provider registration unverified
- **C.** An Azure DevOps hosted agent deployment
- **D.** A fully registered production GitHub runner

## L12-Q016

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

An ephemeral runner handles one job but leaves its VM running with cached credentials. What further lifecycle boundary needs repair?

- **A.** Only increase job retry count
- **B.** Destroy or sanitize the underlying worker and revoke residual access
- **C.** Only remove a task comment from YAML
- **D.** Only shorten the friendly runner display name

## L12-Q017

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A hosted build succeeds publicly but a SQL migration needs private DNS and routing. Which execution design fits the migration stage?

- **A.** Any public worker with the same artifact filename
- **B.** An approved isolated private-network worker with restricted job access
- **C.** A longer SQL connection timeout on an unreachable public route
- **D.** A GitHub issue documenting the intended subnet

## L12-Q018

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A GitHub workflow requests labels that no connected runner satisfies. Why does the job remain queued?

- **A.** The application must have failed its tests already
- **B.** No available eligible worker matches the requested routing labels
- **C.** The branch name always overrides the runs-on labels
- **D.** The selected runner has an incompatible version label but still matches all requested routing constraints

## L12-Q019

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An Azure job demands a capability absent from every authorized agent. What is the safest capacity repair?

- **A.** Skip the test job and claim capacity passed
- **B.** Advertise the capability without installing the required tool
- **C.** Provide an approved matching agent or correct an unjustified demand
- **D.** Grant all agents subscription Owner

## L12-Q020

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A temporary worker launches a child process, then deletes only the parent script. What cleanup gap remains?

- **A.** The output hash automatically changes to zero
- **B.** All remote runner registrations necessarily disappear
- **C.** The organization parallelism becomes unlimited
- **D.** The child process and its retained state may survive

## L12-Q021

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A new hosted image removes a tool that the pipeline relied on implicitly. Which preparation reduces this hidden dependency?

- **A.** Only add more required code reviewers
- **B.** Only retain older test reports for longer
- **C.** Record and install the required pinned toolchain explicitly
- **D.** Only rename the selected hosted image label locally

## L12-Q022

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A corporate proxy permits repository HTTPS but blocks artifact storage endpoints. Which result should the team expect?

```text
api.github.com: HTTPS allowed
repository checkout: passed
artifact storage endpoint: proxy denied
```

- **A.** Checkout can pass while artifact transfer still fails
- **B.** A larger worker disk creates the missing outbound route
- **C.** Artifact naming automatically bypasses proxy enforcement
- **D.** Checkout success proves every provider endpoint is reachable

## L12-Q023

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A healthy worker cleanup passes, but the failed-job fixture leaves its workspace. Which acceptance condition is unmet?

- **A.** The output artifact should be renamed before deletion
- **B.** Failure automatically revokes every host credential
- **C.** Cleanup must execute for both success and failure
- **D.** Only successful jobs need isolation or cleanup

## L12-Q024

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Two agents execute from one shared writable workspace and their tests interfere. What boundary should be changed?

- **A.** Raise every test timeout indefinitely
- **B.** Give concurrent jobs separate owned workspaces or isolated workers
- **C.** Share one deployment credential to keep their state consistent
- **D.** Assign identical job display names to both agents

## L12-Q025

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A repository administrator wants runners restricted to approved repositories rather than any repository in the organization. Which provider control fits?

- **A.** Use routing labels alone to identify approved repositories
- **B.** Rely only on one-job workspace deletion
- **C.** Give all organization members the registration token
- **D.** Use runner group access restrictions for intended consumers

## L12-Q026

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker filters token-like environment names but mounts a shared host directory containing credentials. What does this reveal?

- **A.** A false environment flag guarantees no possible secret access
- **B.** Environment filtering does not cover other credential sources
- **C.** A SHA256 output digest revokes the mounted credentials
- **D.** The directory becomes safe when the job is ephemeral

## L12-Q027

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A private agent reaches the database IP but TLS hostname validation fails. Which prerequisite should be examined?

- **A.** Only the number of agent capability labels
- **B.** The intended DNS name and valid service certificate chain
- **C.** Only the artifact archive compression format
- **D.** Only the work item acceptance text

## L12-Q028

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

The runner advertises .NET 10 but global.json requests a missing exact feature band. What should the capability check use?

- **A.** The actual SDK resolution under the repository contract
- **B.** Only the application friendly display name
- **C.** Only a static label written months earlier
- **D.** Only the presence of a dotnet-named directory

## L12-Q029

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker downloads a release artifact before receiving approval and exposes its privileged deployment credential to every step. Which improvement is most direct?

- **A.** Retain all credentials after the job for faster retries
- **B.** Mask all step names while retaining broad credential availability
- **C.** Limit credential exposure to the authorized consuming execution boundary
- **D.** Rename the runner to protected-production

## L12-Q030

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An agent is online but already executing another job. How should capacity planning interpret its availability for a new request?

```text
Agent: online
Current job: active
Free worker slot: false
```

- **A.** A different artifact name makes the busy agent idle
- **B.** Queueing guarantees the new job has already passed tests
- **C.** Assume online always means unlimited concurrent execution
- **D.** Consider its current busy state and permitted parallel capacity

## L12-Q031

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The fixture reports jobExitCode seven but the outer script returns zero. What required lifecycle signal has been lost?

- **A.** The actual source commit SHA automatically changes
- **B.** Failure propagation from job to invoking operation
- **C.** Provider billing information for the organization
- **D.** The output hash must now identify another algorithm

## L12-Q032

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A self-hosted runner executes public fork code because workflow labels match. What additional boundary is needed beyond labels?

- **A.** Add only an artifact retention rule
- **B.** Restrict which trusted workloads may use the privileged runner
- **C.** Make the runner label longer and harder to spell
- **D.** Allow secrets only after checkout has executed attacker code

## L12-Q033

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

An ephemeral worker is disposed, but its provider registration remains online and points to a stale machine. What separate lifecycle action is needed?

- **A.** Only delete the disposed machine local registration configuration
- **B.** Only increase the provider job timeout
- **C.** Only change the application version label
- **D.** Verify deregistration and reconcile the provider worker record

## L12-Q034

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

An approved worker must download packages, contact the provider and reach private SQL. How should connectivity evidence be scoped?

- **A.** Use a successful browser session from the developer laptop
- **B.** Use the number of registered workers as a network metric
- **C.** Test each required endpoint and protocol from that worker
- **D.** Test only DNS then infer every service is authorized

## L12-Q035

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A container job requires Docker access, but the selected agent lacks a functioning container runtime. What should preflight establish?

- **A.** The actual required runtime and its executable capability
- **B.** Only the operating-system marketing name
- **C.** Only the repository branch review status
- **D.** Only the total artifact size from earlier builds

## L12-Q036

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker stores a package cache across jobs. What should the design distinguish from its disposable job workspace?

- **A.** Every cached package is an approved production artifact
- **B.** Deleting one workspace necessarily deletes every shared cache
- **C.** Reusable cache trust from single-job workspace cleanup
- **D.** A cache key grants deployment authorization

## L12-Q037

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An agent pool appears in an organization inventory but its network is unknown. What evidence is still needed before using it for migrations?

- **A.** Only evidence that the agent has the required SDK installed
- **B.** Only an online status for the first listed agent
- **C.** Authorized job access and observed private database connectivity
- **D.** Only a successful compilation from the same agent pool

## L12-Q038

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A failed cleanup reports workspaceRemoved false but the job produced the expected artifact hash. What should lifecycle validation conclude?

```json
{"jobExitCode":0,"workspaceRemoved":false,"outputSha256":"expected"}
```

- **A.** Ignore cleanup whenever a job has a nonempty output
- **B.** Replace false with true in the evidence file
- **C.** Artifact production passed while disposable cleanup failed
- **D.** Pass everything because output content was correct

## L12-Q039

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A control-plane endpoint returns HTTP 403 promptly. What has the connectivity observation established without proving job authorization?

- **A.** The workload has permission to perform every provider mutation
- **B.** The private SQL identity has the right database role
- **C.** The network route is necessarily unavailable
- **D.** HTTPS reached a responding service but access was denied

## L12-Q040

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A local process fixture passes both lifecycle paths, but no adversarial code or hypervisor boundary was tested. Which claim is appropriate?

- **A.** Every host secret is guaranteed inaccessible forever
- **B.** Observed lifecycle behavior passed; hostile-code containment remains unproven
- **C.** The fixture proves perfect multitenant operating-system isolation
- **D.** Provider registration and production approvals also passed

## L12-Q041

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Untrusted PR and SQL migration jobs share a persistent worker, caches and network route. Which redesign best preserves the migration trust boundary?

- **A.** Mask SQL strings while letting every job retain the host
- **B.** Separate disposable trusted private workers from untrusted contribution execution
- **C.** Rely only on a successful contribution test result
- **D.** Keep the shared machine but rename migration labels

## L12-Q042

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pool has six online agents, two allowed parallel jobs and three jobs waiting on an unavailable capability. Which intervention targets the real bottleneck?

```text
Online agents: 6
Parallel entitlement: 2
Required capability: absent
Queued jobs: 3
```

- **A.** Register ten more agents with the same missing capability
- **B.** Assume all queued jobs can run because six exceeds three
- **C.** Reduce test execution duration without supplying the missing capability
- **D.** Supply eligible authorized capability within the permitted execution slots

## L12-Q043

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A one-job runner is removed after failure, but an external deployment token issued to it is still valid. What must recovery consider?

- **A.** Credential revocation or expiry independently from machine cleanup
- **B.** A new runner name automatically invalidates all old tokens
- **C.** Deleting test reports proves the old token cannot be reused
- **D.** A SHA256 of the output automatically expires credentials

## L12-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

Private SQL migration fails only on hosted workers; private agents pass, and the artifact is identical. What should diagnosis examine first?

- **A.** The execution network, DNS, firewall and identity differences
- **B.** Only the organization permitted parallel job count
- **C.** Only whether both workers use the same pipeline display name
- **D.** Only the source and artifact checksums shared by both workers

## L12-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A fixture must retain evidence while deleting its job workspace even when execution throws. Which implementation pattern fits both requirements?

- **A.** Return success immediately whenever the child throws
- **B.** Delete evidence before running the job to avoid failure records
- **C.** Run cleanup only after a successful child exit
- **D.** Write bounded evidence and clean resources in finally paths

## L12-Q046

Advanced · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A repository has restricted runner groups, but a trusted workflow checks out untrusted PR code on the privileged group. What remains unsafe?

- **A.** Workload code trust still crosses the privileged execution boundary
- **B.** A successful checkout proves independent production approval
- **C.** The group restriction automatically sanitizes all source code
- **D.** The runner label prevents code from opening network connections

## L12-Q047

Advanced · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

An agent image update changes tool versions while a mutable capability label stays constant. How should repeatability be assessed?

- **A.** Trust the label and delete previous version evidence
- **B.** Use artifact file size as the only environment fingerprint
- **C.** Assume hosted worker updates cannot affect builds
- **D.** Record actual versions and validate against pinned repository requirements

## L12-Q048

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture claims no credential variables leaked, but its test never seeds a credential-like variable. What evidence improvement is needed?

```text
Filter test environment: no token-like names present
Observed result: credentialEnvironmentPresent=false
```

- **A.** Seed a nonsecret credential-shaped sentinel and assert it is absent
- **B.** Use a real production token as the sentinel
- **C.** Remove the filtering assertion because the healthy job passed
- **D.** Infer filtering from workspaceRemoved true

## L12-Q049

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A team autoscaling private agents can reach zero idle workers, but provisioning takes minutes. What tradeoff should capacity planning include?

- **A.** Idle cost savings versus cold-start delay and bounded queue objectives
- **B.** Autoscaling automatically grants unlimited licensed parallelism
- **C.** Zero idle workers guarantees instantaneous execution
- **D.** Larger workspace cleanup intervals remove provisioning latency

## L12-Q050

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The failed fixture removes its workspace but leaves an executable child alive with inherited credentials. Which final assertions are incomplete?

- **A.** A successful parent exit proves all children terminated
- **B.** A shorter workspace pathname would have prevented execution
- **C.** Process termination and credential lifetime need separate verification
- **D.** The artifact digest is the only required cleanup proof
