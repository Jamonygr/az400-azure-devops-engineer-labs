# Lab 20 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L20-Q001

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

A contributor needs to read an organization repository and discuss changes without pushing code. Which repository role is the least privileged fit?

- **A.** Admin
- **B.** Read
- **C.** Write
- **D.** Maintain

## L20-Q002

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

An organization member must label and manage issues without permission to push source changes. Which repository role best fits?

- **A.** Write
- **B.** Admin
- **C.** Triage
- **D.** Read

## L20-Q003

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

A developer actively pushes application changes but should not administer repository access. Which standard organization repository role is appropriate?

- **A.** Write
- **B.** Read
- **C.** Triage
- **D.** Admin

## L20-Q004

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

The GitHub CLI is authenticated but a repository operation is denied. Which distinction should troubleshooting preserve?

- **A.** A login failure is proven automatically
- **B.** Authentication identity differs from resource authorization
- **C.** Authentication guarantees access to every repository
- **D.** Repository names determine token permissions

## L20-Q005

Advanced · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

An issue coordinator can triage but cannot push, while a temporary workaround proposes Admin. Which change meets the actual responsibility without granting unnecessary code or security control?

```text
Required: manage issues and labels
Not required: push source, change access, delete repository
Current role: Triage
Proposed workaround: Admin
```

- **A.** Grant Admin to eliminate every permission prompt
- **B.** Grant Write permanently for issue coordination
- **C.** Share another administrator's credentials
- **D.** Retain Triage and correct only missing issue-specific access

## L20-Q006

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

A local authorization review needs the current GitHub caller's effective permissions without modifying repository membership. Which operation is suitable?

- **A.** Add the caller as Admin
- **B.** Rotate every organization token
- **C.** Change the repository visibility
- **D.** Read repository viewer permission metadata

## L20-Q007

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

A maintainer wants to grant Admin to every contributor so automation never encounters authorization failures. What principle should guide the alternative design?

- **A.** Choose the highest role by default
- **B.** Share one administrator identity for all activity
- **C.** Remove access review records
- **D.** Grant roles matching specific responsibilities

## L20-Q008

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A cross-repository automation should act as a scoped installation rather than a developer's personal identity. Which credential type should be evaluated?

- **A.** One shared personal administrator token
- **B.** The originating job token without cross-repository installation
- **C.** A token for an app installation on another repository only
- **D.** GitHub App installation token

## L20-Q009

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A CLI status command shows a different GitHub account than the ownership journal records. What should managed operations do before continuing?

- **A.** Delete repositories now hidden from the new account
- **B.** Refuse the mismatched identity context
- **C.** Assume identical repository names prove identity
- **D.** Rewrite the journal account automatically

## L20-Q010

Advanced · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A job's GITHUB_TOKEN reads its own repository but cross-repository automation is denied. The organization forbids shared personal credentials. Which design resolves scope and identity requirements?

```text
Caller: originating repository GITHUB_TOKEN
Target: another private repository
Organization policy: no shared personal credentials
Required scope: read selected target contents
```

- **A.** Commit a personal access token as fallback
- **B.** Disable authorization checks on the target repository
- **C.** Use a narrowly permissioned installed GitHub App token
- **D.** Grant repository Admin without changing token scope

## L20-Q011

Foundational · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A user belongs to a project team but an operation is denied. Which evidence should be inspected before adding more permissions?

- **A.** Effective groups, inherited permissions and relevant denies
- **B.** Only the most recent direct Allow assignment
- **C.** Only the assigned Basic access level
- **D.** Only the team backlog area-path selection

## L20-Q012

Foundational · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Azure DevOps access levels and security permissions both affect feature use. Which statement correctly distinguishes these controls?

- **A.** Basic access automatically grants project administration
- **B.** A group permission always purchases every paid feature
- **C.** Stakeholder access makes every feature available
- **D.** Access levels expose features; permissions authorize operations

## L20-Q013

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Two teams share one project but need separate backlogs and iteration selections. Which organization model supports that requirement?

- **A.** Duplicate the entire organization immediately
- **B.** Rename one branch per team
- **C.** Separate teams with configured areas and iterations
- **D.** One global personal access token

## L20-Q014

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A project reader needs only to inspect the project, not administer its configuration. Which access-review action best preserves least privilege?

- **A.** Add Project Administrators preemptively
- **B.** Grant all collection-level permissions
- **C.** Share an organization owner's token
- **D.** Inspect effective read access before granting more

## L20-Q015

Advanced · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A user has Basic access and an Allow through one group, but another ordinary project group explicitly denies the same permission. Which investigation explains the denied operation?

```json
{"accessLevel":"Basic","groupA":{"operation":"Allow"},"groupB":{"operation":"Deny"},"effective":"Denied"}
```

- **A.** Upgrade every user to a paid testing tier
- **B.** Rename the group containing the deny
- **C.** Add another identical Allow without reviewing the deny
- **D.** Inspect the effective permission and conflicting group deny

## L20-Q016

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

A new Azure DevOps team is listed successfully through the project API. What does that observation establish by itself?

- **A.** The team exists and is visible to this caller
- **B.** Every member can administer the organization
- **C.** Every team member has all paid features
- **D.** The team owns every project resource

## L20-Q017

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A permission change should be limited to one disposable project rather than the organization. Which review question is most relevant?

- **A.** Whether another group explicitly denies the requested operation
- **B.** Whether inherited grants already provide the requested operation
- **C.** What is the exact assignment scope and inherited impact
- **D.** Only whether the role name is Reader

## L20-Q018

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

A stakeholder cannot use a feature required by a private project workflow. What should the team check before changing security groups?

- **A.** Only whether the user's password is long
- **B.** Only whether the user has a local clone
- **C.** Only whether the team has a new name
- **D.** The feature's access-level requirements

## L20-Q019

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

Removing a user from one team did not remove project access because another group still grants it. What should offboarding inspect?

- **A.** Only the removed team's member count
- **B.** Only the user's last commit date
- **C.** Only the user's product access level
- **D.** All relevant group and direct permission paths

## L20-Q020

Advanced · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

A Basic user needs one team's backlog, cannot access a restricted feature, and also has a project-level deny for an operation. Which review avoids conflating three independent controls?

```json
{"teamBacklog":"separate area needed","feature":"restricted by access level","operationPermission":"Deny","currentAccessLevel":"Basic"}
```

- **A.** Make the user an organization administrator
- **B.** Change only the iteration path
- **C.** Purchase every paid feature and ignore groups
- **D.** Check team settings, feature entitlement and effective permissions separately

## L20-Q021

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

An Azure-hosted application must authenticate without storing an application password. Which identity capability should be evaluated?

- **A.** Managed identity
- **B.** A stored service-principal client secret
- **C.** An interactive user session copied to the app host
- **D.** Shared administrator password in app settings

## L20-Q022

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

An identity should disappear with the Azure resource that owns it. Which managed identity type matches that lifecycle?

- **A.** One shared personal access token
- **B.** A GitHub repository role
- **C.** System-assigned managed identity
- **D.** User-assigned managed identity

## L20-Q023

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Several resources need the same managed identity whose lifecycle is independent of any one host. Which identity type fits?

- **A.** One local CLI login shared forever
- **B.** User-assigned managed identity
- **C.** System-assigned identity from one deleted host
- **D.** One random identity name in documentation

## L20-Q024

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

The learner creates a managed identity and receives clientId and principalId values. Which identifier is used as the role-assignment principal object?

- **A.** The clientId
- **B.** The identity's ARM resource ID
- **C.** The subscriptionId
- **D.** The principalId

## L20-Q025

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A shared user-assigned identity survives deletion of one host, while cleanup intends to remove only that host. Which deletion boundary is appropriate?

```json
{"identityType":"UserAssigned","attachedHosts":["host-a","host-b"],"cleanupTarget":"host-a","identityOwnedByHostRun":false}
```

- **A.** Delete every identity with the same prefix
- **B.** Assume deleting the host already removed it
- **C.** Keep the independently owned shared identity unless explicitly managed for deletion
- **D.** Delete the identity because one host disappeared

## L20-Q026

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity was created successfully but cannot read a protected vault secret. What separate requirement should troubleshooting verify?

- **A.** Whether the principal can list resource groups
- **B.** Whether the vault grants only management Reader
- **C.** Whether the identity exists without any vault role
- **D.** A scoped data-access role for the identity

## L20-Q027

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A resource exposes both system-assigned and several user-assigned identities. What should application authentication configuration make explicit?

- **A.** Only the shared resource group containing those identities
- **B.** A random identity on each request
- **C.** Only the identity with the first alphabetical display name
- **D.** Which supported managed identity the application intends to use

## L20-Q028

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity GET returns its ARM resource ID, client ID, principal ID and tenant ID. Which additional check is needed before claiming that the application can use this identity to read a protected service?

- **A.** Confirm the resource belongs to the tenant ID already returned
- **B.** Confirm that the ARM resource ID contains the intended subscription
- **C.** Confirm that the response includes a principal ID
- **D.** Acquire a token as the application identity and perform the required service read

## L20-Q029

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A team chooses managed identity to avoid rotating a long-lived application secret. What security responsibility still remains?

- **A.** Disable access reviews permanently
- **B.** Review its roles, scope and consuming resources
- **C.** Rotate a secret committed in every branch
- **D.** Give the identity subscription Owner by default

## L20-Q030

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity exists and has Reader on a sandbox group, but no token-based API call was tested. Which result is accurate while preserving the scope boundary?

```json
{"identityRead":true,"readerAssignmentScope":"owned-group","tokenAcquisitionTested":false,"protectedServiceCallTested":false}
```

- **A.** Federation and application data access fully verified
- **B.** The role should be expanded until no tests are needed
- **C.** Identity and assignment inspected; effective service access remains unverified
- **D.** Every data service is readable across the subscription

## L20-Q031

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

An identity needs to inspect management properties of every current and future resource in one disposable resource group. Which single Reader assignment scope meets that requirement with the least excess access?

- **A.** That exact resource group
- **B.** The management group containing the subscription
- **C.** The subscription containing the resource group
- **D.** One existing web app inside the resource group

## L20-Q032

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

An Azure RBAC role is assigned at resource-group scope. Which resources can receive its inherited permissions through that scope?

- **A.** Every tenant user account
- **B.** The sibling groups selected by similar naming prefixes
- **C.** Resources beneath that resource group
- **D.** All sibling resource groups automatically

## L20-Q033

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

The Reader role shows management Actions containing read operations and an empty DataActions list. What distinction should the learner preserve?

- **A.** Reader permits every resource write
- **B.** An empty DataActions list disables all Azure authentication
- **C.** Management reads do not grant arbitrary application data reads
- **D.** Reader grants universal database SELECT

## L20-Q034

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A read-only role assignment targets the right identity but the wrong resource group. Which correction addresses least privilege and task functionality?

- **A.** Grant Owner at subscription scope
- **B.** Rename the identity to match the group
- **C.** Add the group name to Git metadata
- **D.** Assign the required role at the intended exact scope

## L20-Q035

Advanced · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

Reader permits management inspection in the owned group, but reading blob contents fails and writes must remain forbidden. Which change addresses the actual plane and scope requirement?

```json
{"role":"Reader","Actions":["*/read"],"DataActions":[],"scope":"owned resource group","needed":"read blob contents; no management writes"}
```

- **A.** Treat the failed data read as proof authentication always failed
- **B.** Review a narrow required data-read role at the relevant storage scope
- **C.** Grant subscription Contributor and keep data requirements implicit
- **D.** Replace Reader with permanent subscription Owner

## L20-Q036

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

Cleanup needs to remove a role assignment created by this run. Which record should its ownership journal retain?

- **A.** Only the human-readable Reader role name
- **B.** Only the identity's display name
- **C.** Only the managed identity's clientId
- **D.** The exact role-assignment resource ID

## L20-Q037

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A local policy model permits in-scope read actions and rejects writes. What does its successful test actually prove?

- **A.** The model evaluates its declared rules as expected
- **B.** The identity's live effective access is fully proven
- **C.** Every service applies identical data-plane permissions
- **D.** The identity can read outside the sandbox

## L20-Q038

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A target begins with the same group-name prefix but belongs to a longer sibling name. How should a scope check avoid accepting it?

- **A.** Ignore resource-group segments entirely
- **B.** Compare only the resource's final name
- **C.** Compare the full scope or slash-delimited descendants
- **D.** Accept every string with the shared prefix

## L20-Q039

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A learner has Contributor on a resource group and can create an App Service, but creating a Reader role assignment returns AuthorizationFailed. Which missing permission should troubleshooting investigate first?

- **A.** Microsoft.Authorization/roleAssignments/write at the assignment scope
- **B.** A Microsoft Graph application permission to read directory users
- **C.** The application identity's Key Vault secrets/get permission
- **D.** Microsoft.Web/sites/write on the resource group

## L20-Q040

Advanced · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A model accepts targets using a raw prefix for group lab, accidentally allowing lab-production. Reader contains no DataActions. Which two corrections are required before reporting its result?

```text
Allowed scope: /subscriptions/sub/resourceGroups/lab
Candidate: /subscriptions/sub/resourceGroups/lab-production/providers/Microsoft.Storage/storageAccounts/shared
Model uses: candidate.StartsWith(allowedScope)
Reader DataActions: []
```

- **A.** Keep the prefix rule and add more JSON fields
- **B.** Treat Reader as universal data access
- **C.** Use delimiter-aware scope checks and label the result as model-only
- **D.** Grant Owner and mark live access verified

## L20-Q041

Foundational · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

An Azure Pipelines definition needs Azure deployment authentication without a stored client secret. Which connection approach should be evaluated?

- **A.** A plaintext service-principal password in YAML
- **B.** The Azure DevOps job token used directly as an Azure resource token
- **C.** A random personal token from another organization
- **D.** A scoped workload identity federation service connection

## L20-Q042

Foundational · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

A service connection is correctly configured, but an unrelated pipeline should not be able to use it. Which authorization choice supports that boundary?

- **A.** Grant access to all pipelines permanently
- **B.** Rename the connection to production
- **C.** Hide the connection name in a comment
- **D.** Authorize only the intended pipeline

## L20-Q043

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

A one-off bootstrap requires a personal token because federation has not been configured yet. Which fallback policy is least risky?

- **A.** Short-lived narrowly scoped token with deliberate removal
- **B.** Unrestricted token without expiration
- **C.** Shared personal Owner token committed to source
- **D.** Reuse any token found in build logs

## L20-Q044

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

Long-running organization automation must remain accountable when a developer leaves the team. Which identity choice reduces dependence on that person's account?

- **A.** An appropriately installed GitHub App
- **B.** That developer's unrestricted personal token
- **C.** A copy of the developer's browser cookie
- **D.** A local Git user.name value

## L20-Q045

Advanced · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

A WIF exchange succeeds, but deployment targets an outside group and should remain denied. Which action preserves the approved boundary while restoring the intended sandbox operation?

```text
Federation exchange: succeeded
Allowed scope: owned sandbox group
Requested target: shared production group
Resource write: AuthorizationFailed
```

- **A.** Correct the target to the authorized group and verify effective access
- **B.** Grant subscription Owner to suppress the denial
- **C.** Share the migration identity for every operation
- **D.** Treat token exchange success as deployment completion

## L20-Q046

Foundational · [CP5](README.md#task-5) · [D4.1.6](../../docs/objective-map.md)

A developer with Basic access is approved to push to one Azure Repos repository but lacks Contribute permission. There is no inherited Deny. Which change grants the required access with the narrowest scope?

- **A.** Upgrade the developer to Basic + Test Plans
- **B.** Grant Contribute on this repository through an approved security group
- **C.** Add the developer to Project Collection Administrators
- **D.** Remove the repository's pull-request approval policies

## L20-Q047

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

A GitHub automation token expires while the app installation remains authorized. Which recovery maintains the intended nonhuman identity model?

- **A.** Commit the expired token so future runs reuse it
- **B.** Grant anonymous write access to the repository
- **C.** Acquire a fresh installation token through the approved app flow
- **D.** Create a never-expiring shared administrator token

## L20-Q048

Applied · [CP5](README.md#task-5) · [D4.1.1](../../docs/objective-map.md)

A private group's identity assignment is visible, but the application still cannot obtain a token from its host. Which evidence should be examined next?

- **A.** Only whether the repository is public
- **B.** Only the management-plane Reader role definition
- **C.** The supported host identity attachment and token acquisition path
- **D.** Only the identity's existence in the directory

## L20-Q049

Applied · [CP5](README.md#task-5) · [D4.1.1](../../docs/objective-map.md)

The read-only local policy fixture passes, yet actual federation and protected-service calls were never executed. Which publication claim accurately preserves the verification boundary?

- **A.** Production deployment verified by Reader inspection
- **B.** Policy logic tested; live identity and service authorization unverified
- **C.** Federation fully verified through policy calculations
- **D.** All protected data paths proven readable

## L20-Q050

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

During cleanup the authenticated principal changes, and the new principal cannot see a recorded object. Ownership markers were not rechecked. Which response avoids treating invisibility as deletion?

```json
{"journalPrincipal":"original","currentPrincipal":"different","recordedObjectRead":"not visible","ownershipRechecked":false}
```

- **A.** Mark the hidden object deleted automatically
- **B.** Overwrite the journal with the new principal
- **C.** Search by prefix and delete all visible replacements
- **D.** Stop and verify identity plus exact owned-object state
