# Lab 12 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L12-Q001

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A worker has Git but no .NET 10 SDK required by global.json. Which prerequisite should its capability check report?

- **A. The repository needs a different issue tracker** Work tracking provider choice does not install the required application compilation toolchain.
- **B. The application source must automatically be considered invalid** A missing worker tool is an environment prerequisite rather than demonstrated source failure.
- **C. The worker requires more concurrent job slots** Additional capacity does not supply the missing SDK required for actual application compilation.
- **D. The required build toolchain is missing** **Correct.** Source retrieval tools cannot substitute for the SDK required to compile the application.

**Explanation:** Source retrieval tools cannot substitute for the SDK required to compile the application. Work tracking provider choice does not install the required application compilation toolchain. Additional capacity does not supply the missing SDK required for actual application compilation. A missing worker tool is an environment prerequisite rather than demonstrated source failure.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q002

Foundational · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

GitHub runner inventory returns total_count zero for a new sandbox. What can the learner conclude from that read?

- **A. No GitHub-hosted runner can ever execute repository jobs** Repository self-hosted inventory does not enumerate the hosted service execution pool.
- **B. The application test suite has already failed** Runner registration state does not execute or evaluate any application assertions.
- **C. No repository self-hosted runners are registered in this inventory** **Correct.** The response describes registration state rather than every possible hosted execution option.
- **D. Organization billing has automatically been upgraded** A read-only inventory response does not change billing or product entitlement.

**Explanation:** The response describes registration state rather than every possible hosted execution option. Repository self-hosted inventory does not enumerate the hosted service execution pool. Runner registration state does not execute or evaluate any application assertions. A read-only inventory response does not change billing or product entitlement.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q003

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Azure DevOps lists two agent pools, but a queued build waits for capacity. Which distinction explains the observation?

```text
Readable pools: 2
Matching idle agents: 0
Permitted parallel jobs: 1
```

- **A. The build must have completed before it was queued** Queueing precedes execution and cannot itself establish a successful completed result.
- **B. Every visible pool guarantees unlimited simultaneous jobs** Registration and visibility do not establish available organization execution entitlement.
- **C. Changing artifact names allocates more parallel workers** Output labeling does not provide scheduler capacity or authorize additional workers.
- **D. Pool inventory differs from available authorized parallel execution capacity** **Correct.** A readable pool does not guarantee a matching idle worker and permitted parallel slot.

**Explanation:** A readable pool does not guarantee a matching idle worker and permitted parallel slot. Registration and visibility do not establish available organization execution entitlement. Queueing precedes execution and cannot itself establish a successful completed result. Output labeling does not provide scheduler capacity or authorize additional workers.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q004

Foundational · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A runner receives HTTPS responses from api.github.com and dev.azure.com. Which additional claim remains unproven by that check?

- **A. It can reach the private SQL endpoint** **Correct.** Public control-plane reachability does not establish routing or DNS for a private database.
- **B. It connected to the two tested HTTPS endpoints** Successful bounded responses do provide evidence for those explicitly tested public addresses.
- **C. The response arrived before the configured timeout** A successful bounded request establishes that observation for the tested endpoints.
- **D. The requests used the configured HTTPS service port** The tested HTTPS URLs do establish the selected protocol endpoint boundary.

**Explanation:** Public control-plane reachability does not establish routing or DNS for a private database. Successful bounded responses do provide evidence for those explicitly tested public addresses. The tested HTTPS URLs do establish the selected protocol endpoint boundary. A successful bounded request establishes that observation for the tested endpoints.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q005

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The local worker fixture removes its temporary directory after one successful job. What does that observation demonstrate?

- **A. Every previous credential has been revoked remotely** Removing local workspace files does not revoke external tokens or identity grants.
- **B. Hostile code could never access the underlying operating system** Temporary directory deletion is not an operating-system containment or privilege boundary.
- **C. The worker is registered ephemerally with GitHub** Local process cleanup does not create or verify a provider runner registration.
- **D. The fixture implemented its one-job workspace cleanup behavior** **Correct.** The measured process lifecycle does not establish full provider registration or security isolation.

**Explanation:** The measured process lifecycle does not establish full provider registration or security isolation. Local process cleanup does not create or verify a provider runner registration. Temporary directory deletion is not an operating-system containment or privilege boundary. Removing local workspace files does not revoke external tokens or identity grants.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q006

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture deliberately fails its job. Which final property must still hold for the cleanup requirement?

- **A. The failure must be hidden from the outer process** Failure propagation is part of observable lifecycle behavior and should remain visible.
- **B. Its temporary job workspace is removed despite failure** **Correct.** Cleanup should cover unsuccessful execution rather than only the healthy completion path.
- **C. Its evidence must claim the job succeeded** Preserving truthful failure is necessary even when cleanup itself completes correctly.
- **D. The failed workspace should become the next job workspace** Reusing failed state conflicts with the intended disposable single-job lifecycle.

**Explanation:** Cleanup should cover unsuccessful execution rather than only the healthy completion path. Preserving truthful failure is necessary even when cleanup itself completes correctly. Failure propagation is part of observable lifecycle behavior and should remain visible. Reusing failed state conflicts with the intended disposable single-job lifecycle.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q007

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A single-job design still passes deployment credentials into untrusted contribution code. Which boundary is violated despite using an ephemeral workspace?

- **A. The workspace cleanup needs to run sooner after completion** Faster post-job cleanup cannot prevent hostile code using an available credential while the job executes.
- **B. The generated artifact should use a different digest algorithm** Changing content identification does not remove deployment authority available to the contributor code.
- **C. The worker needs a different operating-system routing label** A routing label does not address privileged credentials already exposed to the untrusted executable workload.
- **D. The untrusted job received authority it should never possess** **Correct.** Short worker lifetime does not justify exposing privileged credentials to arbitrary contributor code.

**Explanation:** A routing label does not address privileged credentials already exposed to the untrusted executable workload. Changing content identification does not remove deployment authority available to the contributor code. Short worker lifetime does not justify exposing privileged credentials to arbitrary contributor code. Faster post-job cleanup cannot prevent hostile code using an available credential while the job executes.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q008

Foundational · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A Linux x64 application bundle is scheduled on a Windows ARM worker without a compatible toolchain. What selection should be corrected?

- **A. Runner operating system and architecture compatibility** **Correct.** The selected worker must support the executable and required build toolchain architecture.
- **B. Only the pipeline display number** A friendly run number does not change the worker execution environment compatibility.
- **C. Only the work-item state** Planning status does not provide an operating system or compatible executable runtime.
- **D. Only the worker parallel-job entitlement** Permitted concurrent capacity does not make an incompatible operating system and executable architecture work together.

**Explanation:** Planning status does not provide an operating system or compatible executable runtime. Permitted concurrent capacity does not make an incompatible operating system and executable architecture work together. The selected worker must support the executable and required build toolchain architecture. A friendly run number does not change the worker execution environment compatibility.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q009

Foundational · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A self-hosted runner appears offline in inventory. What is the appropriate interpretation before queueing work to its labels?

- **A. Registration exists but current execution availability is absent** **Correct.** An offline registered runner is not an available connected worker for immediate execution.
- **B. Its label grants cloud resource Owner automatically** A routing label does not confer unrelated Azure resource authorization.
- **C. Its last successful artifact proves it is currently connected** Historical output cannot establish present worker connectivity or scheduling availability.
- **D. The repository source must have a compilation error** Offline registration state does not evaluate the current application source.

**Explanation:** An offline registered runner is not an available connected worker for immediate execution. Historical output cannot establish present worker connectivity or scheduling availability. A routing label does not confer unrelated Azure resource authorization. Offline registration state does not evaluate the current application source.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q010

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pipeline names an agent pool that exists but is not authorized for that pipeline. What prerequisite is missing?

- **A. A different application test assertion** Test behavior is not evaluated until an authorized worker can execute the job.
- **B. Explicit resource access for the intended consuming pipeline** **Correct.** Pool existence does not establish the execution identity permission to use its agents.
- **C. A shorter YAML filename** Source naming does not grant permission to consume a protected execution pool.
- **D. A larger artifact compression buffer** Output compression cannot resolve a protected execution resource authorization denial.

**Explanation:** Pool existence does not establish the execution identity permission to use its agents. Source naming does not grant permission to consume a protected execution pool. Test behavior is not evaluated until an authorized worker can execute the job. Output compression cannot resolve a protected execution resource authorization denial.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q011

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The fixture reports credentialEnvironmentPresent false after filtering environment names. Which conclusion is justified from that result alone?

- **A. The operating system enforces perfect tenant isolation** Filtering selected process variables does not provide operating-system or hypervisor security isolation.
- **B. The host has no secrets anywhere** A limited environment check cannot inspect every file, process or credential source.
- **C. Those checked credential-like variables were not forwarded by this fixture** **Correct.** The test validates a particular local environment filtering behavior rather than universal secret absence.
- **D. The cloud provider revoked all previous credentials** A local process observation does not establish remote identity lifecycle operations.

**Explanation:** The test validates a particular local environment filtering behavior rather than universal secret absence. A limited environment check cannot inspect every file, process or credential source. Filtering selected process variables does not provide operating-system or hypervisor security isolation. A local process observation does not establish remote identity lifecycle operations.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q012

Foundational · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

The private worker can resolve SQL DNS but cannot establish the required TCP connection. What does DNS success prove?

- **A. The public hosted worker has the same private reachability** A result from one network does not establish another worker network path.
- **B. All database users have correct roles** DNS resolution does not inspect or change SQL identity permission grants.
- **C. Name resolution only; network access still needs validation** **Correct.** Resolving an address does not establish routing, firewall permission or service connectivity.
- **D. The full database migration path has passed** Migration requires network connectivity and database authorization beyond successful name resolution.

**Explanation:** Resolving an address does not establish routing, firewall permission or service connectivity. Migration requires network connectivity and database authorization beyond successful name resolution. DNS resolution does not inspect or change SQL identity permission grants. A result from one network does not establish another worker network path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q013

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture records a SHA256 of its produced artifact. Why is this useful lifecycle evidence?

```json
{"jobExitCode":0,"workspaceRemoved":true,"outputSha256":"64-hex-character-digest"}
```

- **A. It identifies the output content created during that job** **Correct.** A digest connects the observed fixture result with particular output bytes.
- **B. It registers the worker with both providers** Content hashing does not create GitHub runner or Azure agent registration state.
- **C. It proves every application test passed** Content identity does not encode a successful behavioral test execution result.
- **D. It grants the next job deployment permission** Hashing an artifact does not authorize any identity to modify cloud resources.

**Explanation:** A digest connects the observed fixture result with particular output bytes. Content identity does not encode a successful behavioral test execution result. Hashing an artifact does not authorize any identity to modify cloud resources. Content hashing does not create GitHub runner or Azure agent registration state.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q014

Foundational · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pool contains five agents but the organization allows one parallel job. How many jobs can its entitlement permit at once?

- **A. One permitted parallel job** **Correct.** Registered worker count does not override the organization parallel execution entitlement limit.
- **B. Zero permanently because more agents than slots is invalid** Additional registered agents can wait or provide selection without invalidating all execution.
- **C. Unlimited jobs if each has a unique name** Friendly names do not change the organization execution capacity or entitlement.
- **D. Five jobs because all agents are registered** Agent inventory does not itself grant a matching number of parallel service slots.

**Explanation:** Registered worker count does not override the organization parallel execution entitlement limit. Agent inventory does not itself grant a matching number of parallel service slots. Friendly names do not change the organization execution capacity or entitlement. Additional registered agents can wait or provide selection without invalidating all execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q015

Foundational · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A learner runs the local ephemeral fixture but never invokes GitHub registration APIs. How should the result be described?

- **A. A proof of private SQL network readiness** Local filesystem behavior does not test the required database network route.
- **B. Local lifecycle practice with provider registration unverified** **Correct.** The completion claim must stay within the process behavior actually exercised locally.
- **C. An Azure DevOps hosted agent deployment** The fixture does not provision or register a provider-managed execution worker.
- **D. A fully registered production GitHub runner** No registration request or provider response establishes that claimed remote state.

**Explanation:** The completion claim must stay within the process behavior actually exercised locally. No registration request or provider response establishes that claimed remote state. The fixture does not provision or register a provider-managed execution worker. Local filesystem behavior does not test the required database network route.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q016

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

An ephemeral runner handles one job but leaves its VM running with cached credentials. What further lifecycle boundary needs repair?

- **A. Only increase job retry count** More execution attempts can reuse the same unsafe retained machine state.
- **B. Destroy or sanitize the underlying worker and revoke residual access** **Correct.** Single-job registration alone does not remove machine state or persistent credential exposure.
- **C. Only remove a task comment from YAML** Comments do not control VM lifetime or retained execution credential material.
- **D. Only shorten the friendly runner display name** Presentation does not remove retained machine state or authorize its disposal.

**Explanation:** Single-job registration alone does not remove machine state or persistent credential exposure. Presentation does not remove retained machine state or authorize its disposal. Comments do not control VM lifetime or retained execution credential material. More execution attempts can reuse the same unsafe retained machine state.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q017

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A hosted build succeeds publicly but a SQL migration needs private DNS and routing. Which execution design fits the migration stage?

- **A. Any public worker with the same artifact filename** Output naming does not establish access to the private database network.
- **B. An approved isolated private-network worker with restricted job access** **Correct.** The migration needs a real authorized network path without exposing it to arbitrary code.
- **C. A longer SQL connection timeout on an unreachable public route** Waiting longer cannot create missing private routing or DNS connectivity.
- **D. A GitHub issue documenting the intended subnet** Documentation does not attach the executing worker to the required network boundary.

**Explanation:** The migration needs a real authorized network path without exposing it to arbitrary code. Output naming does not establish access to the private database network. Waiting longer cannot create missing private routing or DNS connectivity. Documentation does not attach the executing worker to the required network boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q018

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A GitHub workflow requests labels that no connected runner satisfies. Why does the job remain queued?

- **A. The application must have failed its tests already** Queued work has not established an application test execution outcome.
- **B. No available eligible worker matches the requested routing labels** **Correct.** Scheduling requires a connected worker satisfying the job requested runner characteristics.
- **C. The branch name always overrides the runs-on labels** A source reference does not automatically replace the requested worker routing configuration.
- **D. The selected runner has an incompatible version label but still matches all requested routing constraints** The stated queue problem is the absence of any connected worker satisfying the actual requested label set.

**Explanation:** Queued work has not established an application test execution outcome. The stated queue problem is the absence of any connected worker satisfying the actual requested label set. A source reference does not automatically replace the requested worker routing configuration. Scheduling requires a connected worker satisfying the job requested runner characteristics.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q019

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An Azure job demands a capability absent from every authorized agent. What is the safest capacity repair?

- **A. Skip the test job and claim capacity passed** Omitting execution cannot establish that a suitable authorized worker is available.
- **B. Advertise the capability without installing the required tool** A misleading label can schedule work that still cannot execute the required behavior.
- **C. Provide an approved matching agent or correct an unjustified demand** **Correct.** The execution request needs an eligible worker with the required actual tool capability.
- **D. Grant all agents subscription Owner** Azure authority does not install or supply a missing build capability.

**Explanation:** The execution request needs an eligible worker with the required actual tool capability. A misleading label can schedule work that still cannot execute the required behavior. Azure authority does not install or supply a missing build capability. Omitting execution cannot establish that a suitable authorized worker is available.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q020

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A temporary worker launches a child process, then deletes only the parent script. What cleanup gap remains?

- **A. The output hash automatically changes to zero** File cleanup does not imply a specific new value for a retained digest.
- **B. All remote runner registrations necessarily disappear** Local script deletion is not a provider deregistration operation.
- **C. The organization parallelism becomes unlimited** Machine process cleanup does not change provider execution entitlement or capacity.
- **D. The child process and its retained state may survive** **Correct.** Deleting one script does not establish termination of spawned execution or residual files.

**Explanation:** Deleting one script does not establish termination of spawned execution or residual files. File cleanup does not imply a specific new value for a retained digest. Local script deletion is not a provider deregistration operation. Machine process cleanup does not change provider execution entitlement or capacity.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q021

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A new hosted image removes a tool that the pipeline relied on implicitly. Which preparation reduces this hidden dependency?

- **A. Only add more required code reviewers** Review count does not directly establish the executing worker toolchain capabilities.
- **B. Only retain older test reports for longer** Historical evidence does not supply a required tool to the new worker.
- **C. Record and install the required pinned toolchain explicitly** **Correct.** An explicit capability contract avoids relying on incidental image contents remaining unchanged.
- **D. Only rename the selected hosted image label locally** Renaming does not restore a missing executable or establish compatibility.

**Explanation:** An explicit capability contract avoids relying on incidental image contents remaining unchanged. Renaming does not restore a missing executable or establish compatibility. Historical evidence does not supply a required tool to the new worker. Review count does not directly establish the executing worker toolchain capabilities.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q022

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A corporate proxy permits repository HTTPS but blocks artifact storage endpoints. Which result should the team expect?

```text
api.github.com: HTTPS allowed
repository checkout: passed
artifact storage endpoint: proxy denied
```

- **A. Checkout can pass while artifact transfer still fails** **Correct.** Separate service endpoints require their own allowed network paths and connectivity observations.
- **B. A larger worker disk creates the missing outbound route** Storage capacity does not authorize network access through the configured proxy.
- **C. Artifact naming automatically bypasses proxy enforcement** Friendly output labels do not change network firewall or proxy policy.
- **D. Checkout success proves every provider endpoint is reachable** One endpoint response cannot establish connectivity to independently filtered service addresses.

**Explanation:** Separate service endpoints require their own allowed network paths and connectivity observations. One endpoint response cannot establish connectivity to independently filtered service addresses. Friendly output labels do not change network firewall or proxy policy. Storage capacity does not authorize network access through the configured proxy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q023

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A healthy worker cleanup passes, but the failed-job fixture leaves its workspace. Which acceptance condition is unmet?

- **A. The output artifact should be renamed before deletion** Output naming cannot repair a missing failed-job workspace cleanup path.
- **B. Failure automatically revokes every host credential** A job result does not perform universal credential revocation on the underlying machine.
- **C. Cleanup must execute for both success and failure** **Correct.** Disposable execution requires residual-state removal across the actual job completion outcomes.
- **D. Only successful jobs need isolation or cleanup** Failed untrusted work can leave equally sensitive or dangerous residual execution state.

**Explanation:** Disposable execution requires residual-state removal across the actual job completion outcomes. Failed untrusted work can leave equally sensitive or dangerous residual execution state. A job result does not perform universal credential revocation on the underlying machine. Output naming cannot repair a missing failed-job workspace cleanup path.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q024

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

Two agents execute from one shared writable workspace and their tests interfere. What boundary should be changed?

- **A. Raise every test timeout indefinitely** More time does not remove conflicting concurrent writes to the same paths.
- **B. Give concurrent jobs separate owned workspaces or isolated workers** **Correct.** Independent execution needs filesystem boundaries that prevent accidental cross-job state collisions.
- **C. Share one deployment credential to keep their state consistent** Shared authority does not isolate their local mutable execution files.
- **D. Assign identical job display names to both agents** Display labels do not prevent shared writable filesystem interference.

**Explanation:** Independent execution needs filesystem boundaries that prevent accidental cross-job state collisions. Display labels do not prevent shared writable filesystem interference. More time does not remove conflicting concurrent writes to the same paths. Shared authority does not isolate their local mutable execution files.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q025

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A repository administrator wants runners restricted to approved repositories rather than any repository in the organization. Which provider control fits?

- **A. Use routing labels alone to identify approved repositories** Labels select worker characteristics but do not establish the requested repository access restriction.
- **B. Rely only on one-job workspace deletion** Filesystem cleanup does not decide which repositories may send workloads to the runner group.
- **C. Give all organization members the registration token** Broad token distribution expands rather than restricts access to worker infrastructure.
- **D. Use runner group access restrictions for intended consumers** **Correct.** Routing infrastructure should be exposed only to repositories authorized to execute its workloads.

**Explanation:** Routing infrastructure should be exposed only to repositories authorized to execute its workloads. Labels select worker characteristics but do not establish the requested repository access restriction. Filesystem cleanup does not decide which repositories may send workloads to the runner group. Broad token distribution expands rather than restricts access to worker infrastructure.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q026

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker filters token-like environment names but mounts a shared host directory containing credentials. What does this reveal?

- **A. A false environment flag guarantees no possible secret access** The limited fixture result cannot prove all mounted storage lacks sensitive values.
- **B. Environment filtering does not cover other credential sources** **Correct.** Secret isolation must address mounted files and machine context beyond selected process variables.
- **C. A SHA256 output digest revokes the mounted credentials** Content identification does not change access to sensitive host filesystem material.
- **D. The directory becomes safe when the job is ephemeral** Short lifetime does not prevent active code from reading exposed mounted credentials.

**Explanation:** Secret isolation must address mounted files and machine context beyond selected process variables. The limited fixture result cannot prove all mounted storage lacks sensitive values. Content identification does not change access to sensitive host filesystem material. Short lifetime does not prevent active code from reading exposed mounted credentials.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q027

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A private agent reaches the database IP but TLS hostname validation fails. Which prerequisite should be examined?

- **A. Only the number of agent capability labels** Scheduling labels do not change the TLS identity presented by the database endpoint.
- **B. The intended DNS name and valid service certificate chain** **Correct.** Network reachability alone does not establish authenticated encrypted connectivity to the intended service.
- **C. Only the artifact archive compression format** Packaging choices do not repair certificate identity or trust validation.
- **D. Only the work item acceptance text** Planning documentation does not make an invalid certificate trust path succeed.

**Explanation:** Network reachability alone does not establish authenticated encrypted connectivity to the intended service. Packaging choices do not repair certificate identity or trust validation. Scheduling labels do not change the TLS identity presented by the database endpoint. Planning documentation does not make an invalid certificate trust path succeed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q028

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

The runner advertises .NET 10 but global.json requests a missing exact feature band. What should the capability check use?

- **A. The actual SDK resolution under the repository contract** **Correct.** A broad advertised major version does not guarantee the requested SDK can be selected.
- **B. Only the application friendly display name** Naming does not determine installed SDK feature bands or resolution behavior.
- **C. Only a static label written months earlier** A historical label can drift from actual currently installed executable tooling.
- **D. Only the presence of a dotnet-named directory** A directory alone does not establish a functioning compatible installed SDK.

**Explanation:** A broad advertised major version does not guarantee the requested SDK can be selected. A historical label can drift from actual currently installed executable tooling. Naming does not determine installed SDK feature bands or resolution behavior. A directory alone does not establish a functioning compatible installed SDK.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q029

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker downloads a release artifact before receiving approval and exposes its privileged deployment credential to every step. Which improvement is most direct?

- **A. Retain all credentials after the job for faster retries** Persistent credential state expands exposure beyond the intended short authorized execution lifetime.
- **B. Mask all step names while retaining broad credential availability** Hiding labels does not prevent executable code from using an available credential.
- **C. Limit credential exposure to the authorized consuming execution boundary** **Correct.** Artifact availability does not justify exposing deployment authority before the intended approval gate.
- **D. Rename the runner to protected-production** A friendly name does not enforce approval or credential access boundaries.

**Explanation:** Artifact availability does not justify exposing deployment authority before the intended approval gate. Hiding labels does not prevent executable code from using an available credential. A friendly name does not enforce approval or credential access boundaries. Persistent credential state expands exposure beyond the intended short authorized execution lifetime.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q030

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An agent is online but already executing another job. How should capacity planning interpret its availability for a new request?

```text
Agent: online
Current job: active
Free worker slot: false
```

- **A. A different artifact name makes the busy agent idle** Output naming does not alter current worker occupancy or scheduling capacity.
- **B. Queueing guarantees the new job has already passed tests** Scheduling does not execute assertions or establish their successful outcome.
- **C. Assume online always means unlimited concurrent execution** A connected worker can still be busy or subject to execution slot limits.
- **D. Consider its current busy state and permitted parallel capacity** **Correct.** Connectivity does not imply an immediately available slot for another job.

**Explanation:** Connectivity does not imply an immediately available slot for another job. A connected worker can still be busy or subject to execution slot limits. Scheduling does not execute assertions or establish their successful outcome. Output naming does not alter current worker occupancy or scheduling capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q031

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The fixture reports jobExitCode seven but the outer script returns zero. What required lifecycle signal has been lost?

- **A. The actual source commit SHA automatically changes** Process termination does not rewrite repository source identity or commit history.
- **B. Failure propagation from job to invoking operation** **Correct.** A failed child result must remain observable to the caller and validation gate.
- **C. Provider billing information for the organization** An exit code wrapper does not establish organization pricing or entitlement state.
- **D. The output hash must now identify another algorithm** Failure propagation and digest algorithm selection are separate lifecycle properties.

**Explanation:** A failed child result must remain observable to the caller and validation gate. An exit code wrapper does not establish organization pricing or entitlement state. Process termination does not rewrite repository source identity or commit history. Failure propagation and digest algorithm selection are separate lifecycle properties.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q032

Applied · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A self-hosted runner executes public fork code because workflow labels match. What additional boundary is needed beyond labels?

- **A. Add only an artifact retention rule** Storage retention does not prevent untrusted code reaching a privileged execution machine.
- **B. Restrict which trusted workloads may use the privileged runner** **Correct.** Labels route jobs but do not by themselves establish acceptable contributor trust.
- **C. Make the runner label longer and harder to spell** Obscure labels are not a reliable authorization boundary for executable workflow content.
- **D. Allow secrets only after checkout has executed attacker code** The trust boundary may already be crossed before later credential exposure controls.

**Explanation:** Labels route jobs but do not by themselves establish acceptable contributor trust. Obscure labels are not a reliable authorization boundary for executable workflow content. Storage retention does not prevent untrusted code reaching a privileged execution machine. The trust boundary may already be crossed before later credential exposure controls.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q033

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

An ephemeral worker is disposed, but its provider registration remains online and points to a stale machine. What separate lifecycle action is needed?

- **A. Only delete the disposed machine local registration configuration** Removing local state does not verify that the provider registration record was actually removed or reconciled.
- **B. Only increase the provider job timeout** Longer waiting does not repair stale registration or prove the machine exists.
- **C. Only change the application version label** Application metadata does not deregister a provider execution worker.
- **D. Verify deregistration and reconcile the provider worker record** **Correct.** Machine disposal and provider registration cleanup are distinct state transitions needing evidence.

**Explanation:** Longer waiting does not repair stale registration or prove the machine exists. Machine disposal and provider registration cleanup are distinct state transitions needing evidence. Removing local state does not verify that the provider registration record was actually removed or reconciled. Application metadata does not deregister a provider execution worker.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q034

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

An approved worker must download packages, contact the provider and reach private SQL. How should connectivity evidence be scoped?

- **A. Use a successful browser session from the developer laptop** Another machine route does not establish the worker required service connectivity.
- **B. Use the number of registered workers as a network metric** Inventory counts do not measure actual endpoint reachability from any selected worker.
- **C. Test each required endpoint and protocol from that worker** **Correct.** Different network dependencies need observations from the actual executing network context.
- **D. Test only DNS then infer every service is authorized** Name resolution does not prove routing, TLS or application authorization.

**Explanation:** Different network dependencies need observations from the actual executing network context. Another machine route does not establish the worker required service connectivity. Name resolution does not prove routing, TLS or application authorization. Inventory counts do not measure actual endpoint reachability from any selected worker.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q035

Applied · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

A container job requires Docker access, but the selected agent lacks a functioning container runtime. What should preflight establish?

- **A. The actual required runtime and its executable capability** **Correct.** Job execution needs the working tool rather than a decorative capability label.
- **B. Only the operating-system marketing name** The OS label does not prove an installed functioning container runtime exists.
- **C. Only the repository branch review status** Code review cannot install or verify the selected worker required runtime.
- **D. Only the total artifact size from earlier builds** Previous output size does not establish present executable container engine readiness.

**Explanation:** Job execution needs the working tool rather than a decorative capability label. The OS label does not prove an installed functioning container runtime exists. Code review cannot install or verify the selected worker required runtime. Previous output size does not establish present executable container engine readiness.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q036

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A worker stores a package cache across jobs. What should the design distinguish from its disposable job workspace?

- **A. Every cached package is an approved production artifact** Cache presence does not establish source approval or immutable release validation.
- **B. Deleting one workspace necessarily deletes every shared cache** Separate storage lifetimes do not automatically follow the workspace cleanup operation.
- **C. Reusable cache trust from single-job workspace cleanup** **Correct.** Persistence for performance remains a separate input boundary even when workspaces are removed.
- **D. A cache key grants deployment authorization** Lookup identity does not confer permission to modify application resources.

**Explanation:** Persistence for performance remains a separate input boundary even when workspaces are removed. Cache presence does not establish source approval or immutable release validation. Separate storage lifetimes do not automatically follow the workspace cleanup operation. Lookup identity does not confer permission to modify application resources.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q037

Applied · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

An agent pool appears in an organization inventory but its network is unknown. What evidence is still needed before using it for migrations?

- **A. Only evidence that the agent has the required SDK installed** Tool readiness does not establish pipeline authorization or the private database network route.
- **B. Only an online status for the first listed agent** Connectivity to the provider does not demonstrate the required database route or pipeline resource authorization.
- **C. Authorized job access and observed private database connectivity** **Correct.** Pool visibility does not establish either execution permission or the required SQL route.
- **D. Only a successful compilation from the same agent pool** Compilation may require neither the SQL network path nor the permissions needed by a migration.

**Explanation:** Compilation may require neither the SQL network path nor the permissions needed by a migration. Connectivity to the provider does not demonstrate the required database route or pipeline resource authorization. Pool visibility does not establish either execution permission or the required SQL route. Tool readiness does not establish pipeline authorization or the private database network route.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q038

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A failed cleanup reports workspaceRemoved false but the job produced the expected artifact hash. What should lifecycle validation conclude?

```json
{"jobExitCode":0,"workspaceRemoved":false,"outputSha256":"expected"}
```

- **A. Ignore cleanup whenever a job has a nonempty output** Output existence does not reduce the risk from retained execution state.
- **B. Replace false with true in the evidence file** Changing the report conceals actual residual state rather than removing it.
- **C. Artifact production passed while disposable cleanup failed** **Correct.** Output identity and residual-state removal are separate required worker lifecycle observations.
- **D. Pass everything because output content was correct** A correct artifact does not satisfy the independent workspace removal requirement.

**Explanation:** Output identity and residual-state removal are separate required worker lifecycle observations. A correct artifact does not satisfy the independent workspace removal requirement. Changing the report conceals actual residual state rather than removing it. Output existence does not reduce the risk from retained execution state.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q039

Applied · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

A control-plane endpoint returns HTTP 403 promptly. What has the connectivity observation established without proving job authorization?

- **A. The workload has permission to perform every provider mutation** An access denial does not establish authorization for protected resource operations.
- **B. The private SQL identity has the right database role** A provider endpoint response does not inspect unrelated SQL permission grants.
- **C. The network route is necessarily unavailable** A received HTTP response demonstrates communication with a responding endpoint.
- **D. HTTPS reached a responding service but access was denied** **Correct.** An application denial differs from a missing route or unresponsive TCP connection.

**Explanation:** An application denial differs from a missing route or unresponsive TCP connection. A received HTTP response demonstrates communication with a responding endpoint. An access denial does not establish authorization for protected resource operations. A provider endpoint response does not inspect unrelated SQL permission grants.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops); [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q040

Applied · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A local process fixture passes both lifecycle paths, but no adversarial code or hypervisor boundary was tested. Which claim is appropriate?

- **A. Every host secret is guaranteed inaccessible forever** A bounded fixture cannot prove universal future absence of credential access paths.
- **B. Observed lifecycle behavior passed; hostile-code containment remains unproven** **Correct.** The exercised process assertions do not establish isolation against arbitrary malicious execution.
- **C. The fixture proves perfect multitenant operating-system isolation** No such boundary was exercised or established by the local lifecycle test.
- **D. Provider registration and production approvals also passed** Local process observations do not invoke those independent remote authorization mechanisms.

**Explanation:** The exercised process assertions do not establish isolation against arbitrary malicious execution. No such boundary was exercised or established by the local lifecycle test. Local process observations do not invoke those independent remote authorization mechanisms. A bounded fixture cannot prove universal future absence of credential access paths.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q041

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

Untrusted PR and SQL migration jobs share a persistent worker, caches and network route. Which redesign best preserves the migration trust boundary?

- **A. Mask SQL strings while letting every job retain the host** Masking does not stop earlier untrusted code from reading or intercepting available authority.
- **B. Separate disposable trusted private workers from untrusted contribution execution** **Correct.** Job lifetime alone cannot protect a shared privileged host from earlier hostile workloads.
- **C. Rely only on a successful contribution test result** Passing functional tests does not prove contributor code is safe for privileged execution.
- **D. Keep the shared machine but rename migration labels** Routing names do not isolate retained state or privileged network access.

**Explanation:** Job lifetime alone cannot protect a shared privileged host from earlier hostile workloads. Routing names do not isolate retained state or privileged network access. Masking does not stop earlier untrusted code from reading or intercepting available authority. Passing functional tests does not prove contributor code is safe for privileged execution.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q042

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A pool has six online agents, two allowed parallel jobs and three jobs waiting on an unavailable capability. Which intervention targets the real bottleneck?

```text
Online agents: 6
Parallel entitlement: 2
Required capability: absent
Queued jobs: 3
```

- **A. Register ten more agents with the same missing capability** Increasing ineligible inventory does not create a suitable executable worker.
- **B. Assume all queued jobs can run because six exceeds three** Agent count does not establish matching capability or allowed parallel capacity.
- **C. Reduce test execution duration without supplying the missing capability** Shorter requested work still cannot run on an agent lacking the actual required executable capability.
- **D. Supply eligible authorized capability within the permitted execution slots** **Correct.** Raw online counts do not solve a specific missing matching worker capability.

**Explanation:** Shorter requested work still cannot run on an agent lacking the actual required executable capability. Agent count does not establish matching capability or allowed parallel capacity. Raw online counts do not solve a specific missing matching worker capability. Increasing ineligible inventory does not create a suitable executable worker.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q043

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A one-job runner is removed after failure, but an external deployment token issued to it is still valid. What must recovery consider?

- **A. Credential revocation or expiry independently from machine cleanup** **Correct.** Disposing the worker does not itself revoke every token already issued externally.
- **B. A new runner name automatically invalidates all old tokens** Friendly machine identity does not perform remote token lifecycle revocation.
- **C. Deleting test reports proves the old token cannot be reused** Evidence removal does not control external credential authorization or expiry.
- **D. A SHA256 of the output automatically expires credentials** Content digests do not change identity provider token validity or grants.

**Explanation:** Disposing the worker does not itself revoke every token already issued externally. Friendly machine identity does not perform remote token lifecycle revocation. Content digests do not change identity provider token validity or grants. Evidence removal does not control external credential authorization or expiry.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.7](../../docs/objective-map.md)

Private SQL migration fails only on hosted workers; private agents pass, and the artifact is identical. What should diagnosis examine first?

- **A. The execution network, DNS, firewall and identity differences** **Correct.** Identical application bytes can behave differently across distinct network and authorization contexts.
- **B. Only the organization permitted parallel job count** Capacity controls when work runs rather than why an executing worker cannot reach or authenticate to SQL.
- **C. Only whether both workers use the same pipeline display name** A shared label does not equalize their private DNS, routes, firewall rules or effective database identities.
- **D. Only the source and artifact checksums shared by both workers** Identical bytes are already established and do not explain different network or identity access outcomes.

**Explanation:** Identical bytes are already established and do not explain different network or identity access outcomes. Capacity controls when work runs rather than why an executing worker cannot reach or authenticate to SQL. Identical application bytes can behave differently across distinct network and authorization contexts. A shared label does not equalize their private DNS, routes, firewall rules or effective database identities.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q045

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

A fixture must retain evidence while deleting its job workspace even when execution throws. Which implementation pattern fits both requirements?

- **A. Return success immediately whenever the child throws** Suppressing the failure conceals the actual job outcome and lifecycle problem.
- **B. Delete evidence before running the job to avoid failure records** Removing observations prevents rather than establishes truthful lifecycle validation.
- **C. Run cleanup only after a successful child exit** That leaves residual workspaces on the failure path the contract must handle.
- **D. Write bounded evidence and clean resources in finally paths** **Correct.** Guaranteed finalization preserves diagnostic results while handling both success and failure cleanup.

**Explanation:** Guaranteed finalization preserves diagnostic results while handling both success and failure cleanup. Removing observations prevents rather than establishes truthful lifecycle validation. That leaves residual workspaces on the failure path the contract must handle. Suppressing the failure conceals the actual job outcome and lifecycle problem.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q046

Advanced · [CP2](README.md#task-2) · [D3.3.2](../../docs/objective-map.md)

A repository has restricted runner groups, but a trusted workflow checks out untrusted PR code on the privileged group. What remains unsafe?

- **A. Workload code trust still crosses the privileged execution boundary** **Correct.** Repository-level access restrictions do not make every checked-out contribution safe to execute.
- **B. A successful checkout proves independent production approval** Source retrieval does not establish owner authorization for a privileged release transition.
- **C. The group restriction automatically sanitizes all source code** Access configuration cannot prove arbitrary contributor source lacks malicious behavior.
- **D. The runner label prevents code from opening network connections** Labels select workers rather than enforce process-level network security isolation.

**Explanation:** Repository-level access restrictions do not make every checked-out contribution safe to execute. Access configuration cannot prove arbitrary contributor source lacks malicious behavior. Labels select workers rather than enforce process-level network security isolation. Source retrieval does not establish owner authorization for a privileged release transition.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q047

Advanced · [CP1](README.md#task-1) · [D3.3.2](../../docs/objective-map.md)

An agent image update changes tool versions while a mutable capability label stays constant. How should repeatability be assessed?

- **A. Trust the label and delete previous version evidence** Removing actual observations hides the environment change rather than verifies compatibility.
- **B. Use artifact file size as the only environment fingerprint** Output size does not identify the actual installed compiler and execution toolchain.
- **C. Assume hosted worker updates cannot affect builds** Toolchain changes can alter restore, compilation and test behavior for unchanged source.
- **D. Record actual versions and validate against pinned repository requirements** **Correct.** A stable label cannot establish that executable tools remained compatible or unchanged.

**Explanation:** A stable label cannot establish that executable tools remained compatible or unchanged. Removing actual observations hides the environment change rather than verifies compatibility. Toolchain changes can alter restore, compilation and test behavior for unchanged source. Output size does not identify the actual installed compiler and execution toolchain.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q048

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The worker fixture claims no credential variables leaked, but its test never seeds a credential-like variable. What evidence improvement is needed?

```text
Filter test environment: no token-like names present
Observed result: credentialEnvironmentPresent=false
```

- **A. Seed a nonsecret credential-shaped sentinel and assert it is absent** **Correct.** A deliberate negative fixture proves the filtering behavior was exercised on relevant input.
- **B. Use a real production token as the sentinel** A clearly nonsecret marker can test filtering without exposing actual privileged credentials.
- **C. Remove the filtering assertion because the healthy job passed** Job success does not establish that sensitive environment propagation was prevented.
- **D. Infer filtering from workspaceRemoved true** Directory removal and process environment filtering are distinct lifecycle behaviors.

**Explanation:** A deliberate negative fixture proves the filtering behavior was exercised on relevant input. A clearly nonsecret marker can test filtering without exposing actual privileged credentials. Job success does not establish that sensitive environment propagation was prevented. Directory removal and process environment filtering are distinct lifecycle behaviors.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

## L12-Q049

Advanced · [CP3](README.md#task-3) · [D3.3.2](../../docs/objective-map.md)

A team autoscaling private agents can reach zero idle workers, but provisioning takes minutes. What tradeoff should capacity planning include?

- **A. Idle cost savings versus cold-start delay and bounded queue objectives** **Correct.** Reducing idle capacity can increase startup latency while preserving deliberate cost control.
- **B. Autoscaling automatically grants unlimited licensed parallelism** Machine count and provider parallel execution entitlement remain separate capacity constraints.
- **C. Zero idle workers guarantees instantaneous execution** No ready worker can require provisioning time before a queued job executes.
- **D. Larger workspace cleanup intervals remove provisioning latency** Filesystem cleanup timing does not establish how quickly a missing worker can be provisioned and registered.

**Explanation:** Reducing idle capacity can increase startup latency while preserving deliberate cost control. No ready worker can require provisioning time before a queued job executes. Machine count and provider parallel execution entitlement remain separate capacity constraints. Filesystem cleanup timing does not establish how quickly a missing worker can be provisioned and registered.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops)

## L12-Q050

Advanced · [CP5](README.md#task-5) · [D3.3.2](../../docs/objective-map.md)

The failed fixture removes its workspace but leaves an executable child alive with inherited credentials. Which final assertions are incomplete?

- **A. A successful parent exit proves all children terminated** Child process lifetime can outlast the parent without additional lifecycle control.
- **B. A shorter workspace pathname would have prevented execution** Naming cannot enforce process termination or revoke inherited credential access.
- **C. Process termination and credential lifetime need separate verification** **Correct.** Filesystem removal alone cannot establish that active execution and authority have ended.
- **D. The artifact digest is the only required cleanup proof** Output identity does not show that spawned processes or credentials stopped existing.

**Explanation:** Filesystem removal alone cannot establish that active execution and authority have ended. Output identity does not show that spawned processes or credentials stopped existing. Naming cannot enforce process termination or revoke inherited credential access. Child process lifetime can outlast the parent without additional lifecycle control.

**Sources:** [S2](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)
