# Lab 20 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L20-Q001

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

A contributor needs to read an organization repository and discuss changes without pushing code. Which repository role is the least privileged fit?

- **A. Admin** Admin grants sensitive repository administration rights far beyond the stated contributor requirement.
- **B. Read** **Correct.** Read supports viewing and discussion without granting direct repository code push privileges.
- **C. Write** Write grants direct code contribution capabilities beyond the stated read and discussion need.
- **D. Maintain** Maintain includes repository management capabilities unnecessary for viewing and discussing project changes.

**Explanation:** Admin grants sensitive repository administration rights far beyond the stated contributor requirement. Read supports viewing and discussion without granting direct repository code push privileges. Write grants direct code contribution capabilities beyond the stated read and discussion need. Maintain includes repository management capabilities unnecessary for viewing and discussing project changes.

**Sources:** [S4](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L20-Q002

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

An organization member must label and manage issues without permission to push source changes. Which repository role best fits?

- **A. Write** Write grants source modification privileges unnecessary for the stated issue-management responsibility.
- **B. Admin** Admin adds sensitive administrative capabilities far beyond the requested issue-management task.
- **C. Triage** **Correct.** Triage supports proactive issue and pull-request management without granting source write access.
- **D. Read** Read supports viewing and discussion but lacks the requested broader issue management capabilities.

**Explanation:** Write grants source modification privileges unnecessary for the stated issue-management responsibility. Admin adds sensitive administrative capabilities far beyond the requested issue-management task. Triage supports proactive issue and pull-request management without granting source write access. Read supports viewing and discussion but lacks the requested broader issue management capabilities.

**Sources:** [S4](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L20-Q003

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

A developer actively pushes application changes but should not administer repository access. Which standard organization repository role is appropriate?

- **A. Write** **Correct.** Write enables code contribution without automatically requiring repository administration permissions.
- **B. Read** Read does not provide the required direct push capability for active code development.
- **C. Triage** Triage focuses on issue and pull-request management rather than direct source pushes.
- **D. Admin** Admin grants unnecessary access-management and destructive administration capabilities for the developer's task.

**Explanation:** Write enables code contribution without automatically requiring repository administration permissions. Read does not provide the required direct push capability for active code development. Triage focuses on issue and pull-request management rather than direct source pushes. Admin grants unnecessary access-management and destructive administration capabilities for the developer's task.

**Sources:** [S4](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L20-Q004

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

The GitHub CLI is authenticated but a repository operation is denied. Which distinction should troubleshooting preserve?

- **A. A login failure is proven automatically** A resource authorization denial does not necessarily mean authentication itself failed.
- **B. Authentication identity differs from resource authorization** **Correct.** Successful login identifies a caller without guaranteeing permission for every requested operation.
- **C. Authentication guarantees access to every repository** A valid identity can still lack the role or token permission an operation requires.
- **D. Repository names determine token permissions** Naming a target does not grant the authenticated caller authority to access it.

**Explanation:** A resource authorization denial does not necessarily mean authentication itself failed. Successful login identifies a caller without guaranteeing permission for every requested operation. A valid identity can still lack the role or token permission an operation requires. Naming a target does not grant the authenticated caller authority to access it.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q005

Advanced · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

An issue coordinator can triage but cannot push, while a temporary workaround proposes Admin. Which change meets the actual responsibility without granting unnecessary code or security control?

```text
Required: manage issues and labels
Not required: push source, change access, delete repository
Current role: Triage
Proposed workaround: Admin
```

- **A. Grant Admin to eliminate every permission prompt** Admin resolves more permissions than needed and unnecessarily expands sensitive control.
- **B. Grant Write permanently for issue coordination** Source push capability exceeds the stated responsibility and is unnecessary for triage.
- **C. Share another administrator's credentials** Shared credentials weaken accountability and grant unrelated privileges beyond the coordinator's task.
- **D. Retain Triage and correct only missing issue-specific access** **Correct.** The role matches issue management while avoiding broader source and administrative powers.

**Explanation:** Admin resolves more permissions than needed and unnecessarily expands sensitive control. Source push capability exceeds the stated responsibility and is unnecessary for triage. Shared credentials weaken accountability and grant unrelated privileges beyond the coordinator's task. The role matches issue management while avoiding broader source and administrative powers.

**Sources:** [S4](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L20-Q006

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

A local authorization review needs the current GitHub caller's effective permissions without modifying repository membership. Which operation is suitable?

- **A. Add the caller as Admin** Granting access changes the environment rather than observing existing effective permissions.
- **B. Rotate every organization token** Bulk token rotation is unrelated to a read-only review of current repository permissions.
- **C. Change the repository visibility** Visibility mutation does not establish the caller's original effective access level.
- **D. Read repository viewer permission metadata** **Correct.** Read-only effective permission metadata helps inspect the current caller's repository access.

**Explanation:** Granting access changes the environment rather than observing existing effective permissions. Bulk token rotation is unrelated to a read-only review of current repository permissions. Visibility mutation does not establish the caller's original effective access level. Read-only effective permission metadata helps inspect the current caller's repository access.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q007

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md), [D2.2.3](../../docs/objective-map.md)

A maintainer wants to grant Admin to every contributor so automation never encounters authorization failures. What principle should guide the alternative design?

- **A. Choose the highest role by default** Highest-role defaults unnecessarily broaden sensitive access and destructive repository control.
- **B. Share one administrator identity for all activity** Shared identities obscure attribution and exceed individual contributors' required permissions.
- **C. Remove access review records** Discarding records does not reduce overprivilege or make authorization failures easier to investigate.
- **D. Grant roles matching specific responsibilities** **Correct.** Least privilege selects required capabilities instead of suppressing all future authorization boundaries.

**Explanation:** Highest-role defaults unnecessarily broaden sensitive access and destructive repository control. Shared identities obscure attribution and exceed individual contributors' required permissions. Discarding records does not reduce overprivilege or make authorization failures easier to investigate. Least privilege selects required capabilities instead of suppressing all future authorization boundaries.

**Sources:** [S4](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization)

## L20-Q008

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A cross-repository automation should act as a scoped installation rather than a developer's personal identity. Which credential type should be evaluated?

- **A. One shared personal administrator token** A shared personal token couples service automation to a human's broad privileges.
- **B. The originating job token without cross-repository installation** A job-scoped repository token does not provide the intended installed cross-repository application authority.
- **C. A token for an app installation on another repository only** An installation lacking access to the target repository cannot authorize the required operation.
- **D. GitHub App installation token** **Correct.** Installation authentication can scope automation to the app's installed repositories and permissions.

**Explanation:** A shared personal token couples service automation to a human's broad privileges. A job-scoped repository token does not provide the intended installed cross-repository application authority. An installation lacking access to the target repository cannot authorize the required operation. Installation authentication can scope automation to the app's installed repositories and permissions.

**Sources:** [S5](https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/about-authentication-with-a-github-app)

## L20-Q009

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A CLI status command shows a different GitHub account than the ownership journal records. What should managed operations do before continuing?

- **A. Delete repositories now hidden from the new account** Invisibility under another identity does not prove deletion or authorize destructive cleanup.
- **B. Refuse the mismatched identity context** **Correct.** A changed authenticated principal can invalidate assumptions about accessible owned objects.
- **C. Assume identical repository names prove identity** Repository naming does not establish that the same authenticated account is active.
- **D. Rewrite the journal account automatically** Changing recorded identity would manufacture context instead of verifying ownership continuity.

**Explanation:** Invisibility under another identity does not prove deletion or authorize destructive cleanup. A changed authenticated principal can invalidate assumptions about accessible owned objects. Repository naming does not establish that the same authenticated account is active. Changing recorded identity would manufacture context instead of verifying ownership continuity.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q010

Advanced · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

A job's GITHUB_TOKEN reads its own repository but cross-repository automation is denied. The organization forbids shared personal credentials. Which design resolves scope and identity requirements?

```text
Caller: originating repository GITHUB_TOKEN
Target: another private repository
Organization policy: no shared personal credentials
Required scope: read selected target contents
```

- **A. Commit a personal access token as fallback** Committed personal credentials violate the stated identity and secret-handling constraints.
- **B. Disable authorization checks on the target repository** Removing access controls is neither a scoped credential design nor a supported requirement.
- **C. Use a narrowly permissioned installed GitHub App token** **Correct.** An app installation provides the intended service identity and repository-specific authorization boundary.
- **D. Grant repository Admin without changing token scope** Repository role changes alone do not turn a job token into unrestricted cross-repository authentication.

**Explanation:** Committed personal credentials violate the stated identity and secret-handling constraints. Removing access controls is neither a scoped credential design nor a supported requirement. An app installation provides the intended service identity and repository-specific authorization boundary. Repository role changes alone do not turn a job token into unrestricted cross-repository authentication.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github); [S5](https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/about-authentication-with-a-github-app)

## L20-Q011

Foundational · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A user belongs to a project team but an operation is denied. Which evidence should be inspected before adding more permissions?

- **A. Effective groups, inherited permissions and relevant denies** **Correct.** Team membership alone does not summarize all permissions affecting the requested operation.
- **B. Only the most recent direct Allow assignment** Direct grants alone omit inherited group memberships and any relevant effective security denial.
- **C. Only the assigned Basic access level** Feature entitlement does not establish the effective security permission for the requested operation.
- **D. Only the team backlog area-path selection** Planning visibility does not summarize all effective permissions authorizing the requested service operation.

**Explanation:** Team membership alone does not summarize all permissions affecting the requested operation. Direct grants alone omit inherited group memberships and any relevant effective security denial. Feature entitlement does not establish the effective security permission for the requested operation. Planning visibility does not summarize all effective permissions authorizing the requested service operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops)

## L20-Q012

Foundational · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Azure DevOps access levels and security permissions both affect feature use. Which statement correctly distinguishes these controls?

- **A. Basic access automatically grants project administration** A feature access level does not automatically confer project administrative permissions.
- **B. A group permission always purchases every paid feature** Security grants do not independently supply required product feature entitlements.
- **C. Stakeholder access makes every feature available** Stakeholder has product restrictions and is not equivalent to unrestricted feature access.
- **D. Access levels expose features; permissions authorize operations** **Correct.** Feature availability and security authorization are related but distinct access controls.

**Explanation:** A feature access level does not automatically confer project administrative permissions. Security grants do not independently supply required product feature entitlements. Stakeholder has product restrictions and is not equivalent to unrestricted feature access. Feature availability and security authorization are related but distinct access controls.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/organizations/security/access-levels?view=azure-devops)

## L20-Q013

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Two teams share one project but need separate backlogs and iteration selections. Which organization model supports that requirement?

- **A. Duplicate the entire organization immediately** Separate organizations are not required merely to configure distinct team backlog views.
- **B. Rename one branch per team** Branch naming does not configure team area paths, iterations or board scope.
- **C. Separate teams with configured areas and iterations** **Correct.** Team settings tailor backlog and planning views within the same Azure DevOps project.
- **D. One global personal access token** An authentication credential does not define separate teams' Agile planning configuration.

**Explanation:** Separate organizations are not required merely to configure distinct team backlog views. Branch naming does not configure team area paths, iterations or board scope. Team settings tailor backlog and planning views within the same Azure DevOps project. An authentication credential does not define separate teams' Agile planning configuration.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/organizations/settings/about-teams-and-settings?view=azure-devops)

## L20-Q014

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A project reader needs only to inspect the project, not administer its configuration. Which access-review action best preserves least privilege?

- **A. Add Project Administrators preemptively** Administrative membership exceeds the stated read-only project inspection responsibility.
- **B. Grant all collection-level permissions** Collection-wide grants enlarge scope beyond the user's limited project observation requirement.
- **C. Share an organization owner's token** Owner credentials grant unrelated privileges and undermine individual access accountability.
- **D. Inspect effective read access before granting more** **Correct.** A review should establish existing permissions before adding unnecessary capabilities to the principal.

**Explanation:** Administrative membership exceeds the stated read-only project inspection responsibility. Collection-wide grants enlarge scope beyond the user's limited project observation requirement. Owner credentials grant unrelated privileges and undermine individual access accountability. A review should establish existing permissions before adding unnecessary capabilities to the principal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops)

## L20-Q015

Advanced · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A user has Basic access and an Allow through one group, but another ordinary project group explicitly denies the same permission. Which investigation explains the denied operation?

```json
{"accessLevel":"Basic","groupA":{"operation":"Allow"},"groupB":{"operation":"Deny"},"effective":"Denied"}
```

- **A. Upgrade every user to a paid testing tier** Additional feature entitlements do not automatically remove the conflicting security permission deny.
- **B. Rename the group containing the deny** Changing a group label does not change its effective permission assignments.
- **C. Add another identical Allow without reviewing the deny** Additional redundant grants do not reliably resolve the relevant conflicting effective denial.
- **D. Inspect the effective permission and conflicting group deny** **Correct.** Feature entitlement does not remove a relevant effective security denial from group membership.

**Explanation:** Additional feature entitlements do not automatically remove the conflicting security permission deny. Changing a group label does not change its effective permission assignments. Additional redundant grants do not reliably resolve the relevant conflicting effective denial. Feature entitlement does not remove a relevant effective security denial from group membership.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S7](https://learn.microsoft.com/en-us/azure/devops/organizations/security/access-levels?view=azure-devops)

## L20-Q016

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

A new Azure DevOps team is listed successfully through the project API. What does that observation establish by itself?

- **A. The team exists and is visible to this caller** **Correct.** A read result proves visibility rather than every team member's complete effective permissions.
- **B. Every member can administer the organization** Team existence does not confer collection or organization administration privileges.
- **C. Every team member has all paid features** A team listing does not establish each user's product access level or entitlement.
- **D. The team owns every project resource** Team membership does not automatically establish ownership over all project resources.

**Explanation:** A read result proves visibility rather than every team member's complete effective permissions. Team existence does not confer collection or organization administration privileges. A team listing does not establish each user's product access level or entitlement. Team membership does not automatically establish ownership over all project resources.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/organizations/settings/about-teams-and-settings?view=azure-devops)

## L20-Q017

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

A permission change should be limited to one disposable project rather than the organization. Which review question is most relevant?

- **A. Whether another group explicitly denies the requested operation** Effective denial paths can prevent an intended grant from authorizing the operation.
- **B. Whether inherited grants already provide the requested operation** Existing inherited access matters before making a new scope-changing permission assignment.
- **C. What is the exact assignment scope and inherited impact** **Correct.** Security changes need an explicit boundary and understanding of affected inherited permissions.
- **D. Only whether the role name is Reader** A role label alone does not identify its assignment scope or inherited permissions.

**Explanation:** Effective denial paths can prevent an intended grant from authorizing the operation. Existing inherited access matters before making a new scope-changing permission assignment. Security changes need an explicit boundary and understanding of affected inherited permissions. A role label alone does not identify its assignment scope or inherited permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops)

## L20-Q018

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

A stakeholder cannot use a feature required by a private project workflow. What should the team check before changing security groups?

- **A. Only whether the user's password is long** Password length does not determine product feature entitlement or access-level restrictions.
- **B. Only whether the user has a local clone** A local clone cannot establish access to restricted Azure DevOps service features.
- **C. Only whether the team has a new name** Team naming does not alter product access-level restrictions or feature entitlement.
- **D. The feature's access-level requirements** **Correct.** A product access restriction may require an appropriate entitlement rather than broader security grants.

**Explanation:** Password length does not determine product feature entitlement or access-level restrictions. A local clone cannot establish access to restricted Azure DevOps service features. Team naming does not alter product access-level restrictions or feature entitlement. A product access restriction may require an appropriate entitlement rather than broader security grants.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/devops/organizations/security/access-levels?view=azure-devops)

## L20-Q019

Applied · [CP2](README.md#task-2) · [D4.1.5](../../docs/objective-map.md)

Removing a user from one team did not remove project access because another group still grants it. What should offboarding inspect?

- **A. Only the removed team's member count** A team count does not reveal other groups or direct grants still providing access.
- **B. Only the user's last commit date** Commit activity does not enumerate effective security memberships or authorization grants.
- **C. Only the user's product access level** Feature entitlement does not enumerate other team memberships or direct permission grants.
- **D. All relevant group and direct permission paths** **Correct.** Effective access can persist through memberships beyond the single team being removed.

**Explanation:** A team count does not reveal other groups or direct grants still providing access. Commit activity does not enumerate effective security memberships or authorization grants. Feature entitlement does not enumerate other team memberships or direct permission grants. Effective access can persist through memberships beyond the single team being removed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/organizations/settings/about-teams-and-settings?view=azure-devops)

## L20-Q020

Advanced · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

A Basic user needs one team's backlog, cannot access a restricted feature, and also has a project-level deny for an operation. Which review avoids conflating three independent controls?

```json
{"teamBacklog":"separate area needed","feature":"restricted by access level","operationPermission":"Deny","currentAccessLevel":"Basic"}
```

- **A. Make the user an organization administrator** Broad administration bypasses careful diagnosis and exceeds the limited team workflow requirement.
- **B. Change only the iteration path** Planning configuration does not resolve separate feature restrictions or security permission denial.
- **C. Purchase every paid feature and ignore groups** Entitlement changes do not necessarily resolve an effective project security deny.
- **D. Check team settings, feature entitlement and effective permissions separately** **Correct.** Planning scope, product access and security authorization solve distinct parts of the observed problem.

**Explanation:** Broad administration bypasses careful diagnosis and exceeds the limited team workflow requirement. Planning configuration does not resolve separate feature restrictions or security permission denial. Entitlement changes do not necessarily resolve an effective project security deny. Planning scope, product access and security authorization solve distinct parts of the observed problem.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S7](https://learn.microsoft.com/en-us/azure/devops/organizations/security/access-levels?view=azure-devops); [S8](https://learn.microsoft.com/en-us/azure/devops/organizations/settings/about-teams-and-settings?view=azure-devops)

## L20-Q021

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

An Azure-hosted application must authenticate without storing an application password. Which identity capability should be evaluated?

- **A. Managed identity** **Correct.** Managed identities let supported Azure resources obtain tokens without managing an application secret.
- **B. A stored service-principal client secret** A reusable application secret retains the password storage and rotation burden the requirement avoids.
- **C. An interactive user session copied to the app host** A human session is not a supported application identity with an independent workload lifecycle.
- **D. Shared administrator password in app settings** A stored administrator secret adds credential exposure and unnecessary shared authentication risk.

**Explanation:** Managed identities let supported Azure resources obtain tokens without managing an application secret. A reusable application secret retains the password storage and rotation burden the requirement avoids. A human session is not a supported application identity with an independent workload lifecycle. A stored administrator secret adds credential exposure and unnecessary shared authentication risk.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q022

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

An identity should disappear with the Azure resource that owns it. Which managed identity type matches that lifecycle?

- **A. One shared personal access token** A personal token is not the resource-bound managed identity lifecycle described.
- **B. A GitHub repository role** Repository permissions do not create an Azure resource-bound application authentication identity.
- **C. System-assigned managed identity** **Correct.** A system-assigned identity is tied to the lifecycle of its owning Azure resource.
- **D. User-assigned managed identity** A user-assigned identity is an independent resource with a separately managed lifecycle.

**Explanation:** A personal token is not the resource-bound managed identity lifecycle described. Repository permissions do not create an Azure resource-bound application authentication identity. A system-assigned identity is tied to the lifecycle of its owning Azure resource. A user-assigned identity is an independent resource with a separately managed lifecycle.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q023

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Several resources need the same managed identity whose lifecycle is independent of any one host. Which identity type fits?

- **A. One local CLI login shared forever** A human interactive session is not an independently managed application identity resource.
- **B. User-assigned managed identity** **Correct.** A user-assigned identity is separately managed and can be attached to multiple supported resources.
- **C. System-assigned identity from one deleted host** A system-assigned identity belongs to its resource and is removed with that host.
- **D. One random identity name in documentation** A name alone does not provision or attach a reusable managed identity resource.

**Explanation:** A human interactive session is not an independently managed application identity resource. A user-assigned identity is separately managed and can be attached to multiple supported resources. A system-assigned identity belongs to its resource and is removed with that host. A name alone does not provision or attach a reusable managed identity resource.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q024

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

The learner creates a managed identity and receives clientId and principalId values. Which identifier is used as the role-assignment principal object?

- **A. The clientId** The client identifier selects an application identity but is not its directory principal object ID.
- **B. The identity's ARM resource ID** The resource ID identifies the managed identity resource rather than its directory principal object.
- **C. The subscriptionId** The subscription identifies a resource scope rather than the principal receiving the role assignment.
- **D. The principalId** **Correct.** Role assignments target the identity's principal object rather than its application client identifier.

**Explanation:** The client identifier selects an application identity but is not its directory principal object ID. The resource ID identifies the managed identity resource rather than its directory principal object. The subscription identifies a resource scope rather than the principal receiving the role assignment. Role assignments target the identity's principal object rather than its application client identifier.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q025

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A shared user-assigned identity survives deletion of one host, while cleanup intends to remove only that host. Which deletion boundary is appropriate?

```json
{"identityType":"UserAssigned","attachedHosts":["host-a","host-b"],"cleanupTarget":"host-a","identityOwnedByHostRun":false}
```

- **A. Delete every identity with the same prefix** Prefix matching does not establish ownership or safe deletion of shared authentication principals.
- **B. Assume deleting the host already removed it** Host deletion does not automatically remove an independently managed user-assigned identity resource.
- **C. Keep the independently owned shared identity unless explicitly managed for deletion** **Correct.** A user-assigned identity's independent lifecycle and other consumers must be considered before removal.
- **D. Delete the identity because one host disappeared** Deleting a shared independent principal can disrupt surviving resources that still use it.

**Explanation:** Prefix matching does not establish ownership or safe deletion of shared authentication principals. Host deletion does not automatically remove an independently managed user-assigned identity resource. A user-assigned identity's independent lifecycle and other consumers must be considered before removal. Deleting a shared independent principal can disrupt surviving resources that still use it.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q026

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity was created successfully but cannot read a protected vault secret. What separate requirement should troubleshooting verify?

- **A. Whether the principal can list resource groups** Unrelated management visibility does not establish permission to retrieve protected vault secret values.
- **B. Whether the vault grants only management Reader** Management inspection permission does not supply the intended secret data-read operation.
- **C. Whether the identity exists without any vault role** Principal existence does not establish the data permission needed to retrieve secret contents.
- **D. A scoped data-access role for the identity** **Correct.** Creating an identity establishes a principal rather than automatically granting vault secret access.

**Explanation:** Unrelated management visibility does not establish permission to retrieve protected vault secret values. Management inspection permission does not supply the intended secret data-read operation. Principal existence does not establish the data permission needed to retrieve secret contents. Creating an identity establishes a principal rather than automatically granting vault secret access.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q027

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A resource exposes both system-assigned and several user-assigned identities. What should application authentication configuration make explicit?

- **A. Only the shared resource group containing those identities** Group placement cannot disambiguate which attached principal the application should use.
- **B. A random identity on each request** Random principal selection prevents predictable least-privilege authorization and meaningful troubleshooting.
- **C. Only the identity with the first alphabetical display name** Alphabetical ordering does not establish the explicitly intended managed identity for token acquisition.
- **D. Which supported managed identity the application intends to use** **Correct.** Explicit selection prevents ambiguity when multiple principals are attached to the same host.

**Explanation:** Group placement cannot disambiguate which attached principal the application should use. Random principal selection prevents predictable least-privilege authorization and meaningful troubleshooting. Alphabetical ordering does not establish the explicitly intended managed identity for token acquisition. Explicit selection prevents ambiguity when multiple principals are attached to the same host.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q028

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity GET returns its ARM resource ID, client ID, principal ID and tenant ID. Which additional check is needed before claiming that the application can use this identity to read a protected service?

- **A. Confirm the resource belongs to the tenant ID already returned** The GET already supplies the tenant association; rereading that field does not test service access.
- **B. Confirm that the ARM resource ID contains the intended subscription** The returned resource ID already permits the subscription check; it does not exercise application authentication.
- **C. Confirm that the response includes a principal ID** The stated response already contains the principal identifier, which alone does not prove token or service access.
- **D. Acquire a token as the application identity and perform the required service read** **Correct.** This tests both authentication in the application environment and downstream authorization, which ARM metadata cannot establish.

**Explanation:** The GET already supplies the tenant association; rereading that field does not test service access. The returned resource ID already permits the subscription check; it does not exercise application authentication. The stated response already contains the principal identifier, which alone does not prove token or service access. This tests both authentication in the application environment and downstream authorization, which ARM metadata cannot establish.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q029

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A team chooses managed identity to avoid rotating a long-lived application secret. What security responsibility still remains?

- **A. Disable access reviews permanently** An identity's permissions and consumers still need periodic governance and lifecycle review.
- **B. Review its roles, scope and consuming resources** **Correct.** Secret-free authentication does not automatically narrow the identity's effective authorization permissions.
- **C. Rotate a secret committed in every branch** Managed identity does not require committing a shared application password into source.
- **D. Give the identity subscription Owner by default** Broad ownership is not required merely because authentication uses managed identity.

**Explanation:** An identity's permissions and consumers still need periodic governance and lifecycle review. Secret-free authentication does not automatically narrow the identity's effective authorization permissions. Managed identity does not require committing a shared application password into source. Broad ownership is not required merely because authentication uses managed identity.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)

## L20-Q030

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

A managed identity exists and has Reader on a sandbox group, but no token-based API call was tested. Which result is accurate while preserving the scope boundary?

```json
{"identityRead":true,"readerAssignmentScope":"owned-group","tokenAcquisitionTested":false,"protectedServiceCallTested":false}
```

- **A. Federation and application data access fully verified** Identity and assignment reads do not exercise federation or downstream data authorization.
- **B. The role should be expanded until no tests are needed** Broader privileges do not replace effective access validation and exceed the scoped requirement.
- **C. Identity and assignment inspected; effective service access remains unverified** **Correct.** Declared role state does not prove a successful authenticated call through the intended application path.
- **D. Every data service is readable across the subscription** Group-scoped management permissions do not confer subscription-wide data access.

**Explanation:** Identity and assignment reads do not exercise federation or downstream data authorization. Broader privileges do not replace effective access validation and exceed the scoped requirement. Declared role state does not prove a successful authenticated call through the intended application path. Group-scoped management permissions do not confer subscription-wide data access.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q031

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

An identity needs to inspect management properties of every current and future resource in one disposable resource group. Which single Reader assignment scope meets that requirement with the least excess access?

- **A. That exact resource group** **Correct.** The group-scoped assignment is inherited by its current and future resources without exposing other groups.
- **B. The management group containing the subscription** A management-group assignment reaches other descendant subscriptions and exceeds this one-group requirement.
- **C. The subscription containing the resource group** Subscription scope also grants reads in unrelated resource groups.
- **D. One existing web app inside the resource group** A resource-level assignment is too narrow to cover the other current or future resources in the group.

**Explanation:** The group-scoped assignment is inherited by its current and future resources without exposing other groups. A management-group assignment reaches other descendant subscriptions and exceeds this one-group requirement. Subscription scope also grants reads in unrelated resource groups. A resource-level assignment is too narrow to cover the other current or future resources in the group.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q032

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

An Azure RBAC role is assigned at resource-group scope. Which resources can receive its inherited permissions through that scope?

- **A. Every tenant user account** Azure resource scope inheritance does not grant permissions over every directory identity.
- **B. The sibling groups selected by similar naming prefixes** A group assignment does not inherit sideways based on another group's name similarity.
- **C. Resources beneath that resource group** **Correct.** Resource-group assignments apply within that group rather than automatically spanning sibling groups.
- **D. All sibling resource groups automatically** A group assignment does not inherit sideways into separate resource groups.

**Explanation:** Azure resource scope inheritance does not grant permissions over every directory identity. A group assignment does not inherit sideways based on another group's name similarity. Resource-group assignments apply within that group rather than automatically spanning sibling groups. A group assignment does not inherit sideways into separate resource groups.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q033

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

The Reader role shows management Actions containing read operations and an empty DataActions list. What distinction should the learner preserve?

- **A. Reader permits every resource write** Read-oriented management operations do not provide general resource creation or update authority.
- **B. An empty DataActions list disables all Azure authentication** Data-action scope does not determine whether the identity can acquire authentication tokens.
- **C. Management reads do not grant arbitrary application data reads** **Correct.** Role definitions distinguish management-plane operations from separately authorized resource data operations.
- **D. Reader grants universal database SELECT** Management Reader does not automatically create SQL database users or data permissions.

**Explanation:** Read-oriented management operations do not provide general resource creation or update authority. Data-action scope does not determine whether the identity can acquire authentication tokens. Role definitions distinguish management-plane operations from separately authorized resource data operations. Management Reader does not automatically create SQL database users or data permissions.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-definitions)

## L20-Q034

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A read-only role assignment targets the right identity but the wrong resource group. Which correction addresses least privilege and task functionality?

- **A. Grant Owner at subscription scope** Broad ownership exceeds the task instead of correcting the specific group scope mistake.
- **B. Rename the identity to match the group** Identity naming does not change an existing role assignment's effective resource scope.
- **C. Add the group name to Git metadata** Source-control metadata cannot modify the Azure role assignment's authorization scope.
- **D. Assign the required role at the intended exact scope** **Correct.** Correct principal selection must be paired with the actual authorized resource boundary.

**Explanation:** Broad ownership exceeds the task instead of correcting the specific group scope mistake. Identity naming does not change an existing role assignment's effective resource scope. Source-control metadata cannot modify the Azure role assignment's authorization scope. Correct principal selection must be paired with the actual authorized resource boundary.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q035

Advanced · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

Reader permits management inspection in the owned group, but reading blob contents fails and writes must remain forbidden. Which change addresses the actual plane and scope requirement?

```json
{"role":"Reader","Actions":["*/read"],"DataActions":[],"scope":"owned resource group","needed":"read blob contents; no management writes"}
```

- **A. Treat the failed data read as proof authentication always failed** Authorization can deny data access after identity authentication succeeds at the management plane.
- **B. Review a narrow required data-read role at the relevant storage scope** **Correct.** Management Reader does not grant blob contents access, so data permissions need separate least-privilege design.
- **C. Grant subscription Contributor and keep data requirements implicit** Broader management writes do not directly establish the required narrowly scoped data-read permission.
- **D. Replace Reader with permanent subscription Owner** Broad ownership violates the no-write requirement and unnecessarily enlarges administrative control.

**Explanation:** Authorization can deny data access after identity authentication succeeds at the management plane. Management Reader does not grant blob contents access, so data permissions need separate least-privilege design. Broader management writes do not directly establish the required narrowly scoped data-read permission. Broad ownership violates the no-write requirement and unnecessarily enlarges administrative control.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview); [S9](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-definitions)

## L20-Q036

Foundational · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

Cleanup needs to remove a role assignment created by this run. Which record should its ownership journal retain?

- **A. Only the human-readable Reader role name** Many assignments can share that role name across different principals and scopes.
- **B. Only the identity's display name** A principal can have multiple assignments that do not all belong to this run.
- **C. Only the managed identity's clientId** A principal identifier alone cannot distinguish its multiple role assignments across different scopes.
- **D. The exact role-assignment resource ID** **Correct.** Exact managed IDs let cleanup target the intended assignment without broad permission discovery.

**Explanation:** Many assignments can share that role name across different principals and scopes. A principal can have multiple assignments that do not all belong to this run. A principal identifier alone cannot distinguish its multiple role assignments across different scopes. Exact managed IDs let cleanup target the intended assignment without broad permission discovery.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q037

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A local policy model permits in-scope read actions and rejects writes. What does its successful test actually prove?

- **A. The model evaluates its declared rules as expected** **Correct.** A local model verifies decision logic rather than actual token authorization by Azure services.
- **B. The identity's live effective access is fully proven** Computed decisions do not execute a token-authenticated call against the protected resource.
- **C. Every service applies identical data-plane permissions** Different services and planes can apply additional authorization and policy requirements.
- **D. The identity can read outside the sandbox** The model's explicit scope boundary rejects targets outside the declared owned group.

**Explanation:** A local model verifies decision logic rather than actual token authorization by Azure services. Computed decisions do not execute a token-authenticated call against the protected resource. Different services and planes can apply additional authorization and policy requirements. The model's explicit scope boundary rejects targets outside the declared owned group.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q038

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A target begins with the same group-name prefix but belongs to a longer sibling name. How should a scope check avoid accepting it?

- **A. Ignore resource-group segments entirely** Removing scope identity checks permits resources outside the intended ownership boundary.
- **B. Compare only the resource's final name** Identical resource names can exist under different subscriptions and groups.
- **C. Compare the full scope or slash-delimited descendants** **Correct.** A delimiter-aware comparison distinguishes true descendants from similarly prefixed sibling resource groups.
- **D. Accept every string with the shared prefix** Raw prefix matching can incorrectly include unrelated sibling group names.

**Explanation:** Removing scope identity checks permits resources outside the intended ownership boundary. Identical resource names can exist under different subscriptions and groups. A delimiter-aware comparison distinguishes true descendants from similarly prefixed sibling resource groups. Raw prefix matching can incorrectly include unrelated sibling group names.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q039

Applied · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A learner has Contributor on a resource group and can create an App Service, but creating a Reader role assignment returns AuthorizationFailed. Which missing permission should troubleshooting investigate first?

- **A. Microsoft.Authorization/roleAssignments/write at the assignment scope** **Correct.** Contributor can provision resources but excludes authorization-management writes; assigning access requires separately granted rights.
- **B. A Microsoft Graph application permission to read directory users** Reading directory users does not authorize an Azure Resource Manager role-assignment write.
- **C. The application identity's Key Vault secrets/get permission** Key Vault data-plane access belongs to the target workload and cannot grant the learner RBAC assignment rights.
- **D. Microsoft.Web/sites/write on the resource group** The successful App Service creation already demonstrates the relevant resource-write capability; RBAC writes are separate.

**Explanation:** Contributor can provision resources but excludes authorization-management writes; assigning access requires separately granted rights. Reading directory users does not authorize an Azure Resource Manager role-assignment write. Key Vault data-plane access belongs to the target workload and cannot grant the learner RBAC assignment rights. The successful App Service creation already demonstrates the relevant resource-write capability; RBAC writes are separate.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q040

Advanced · [CP4](README.md#task-4) · [D4.1.1](../../docs/objective-map.md)

A model accepts targets using a raw prefix for group lab, accidentally allowing lab-production. Reader contains no DataActions. Which two corrections are required before reporting its result?

```text
Allowed scope: /subscriptions/sub/resourceGroups/lab
Candidate: /subscriptions/sub/resourceGroups/lab-production/providers/Microsoft.Storage/storageAccounts/shared
Model uses: candidate.StartsWith(allowedScope)
Reader DataActions: []
```

- **A. Keep the prefix rule and add more JSON fields** Additional metadata does not repair accepting a sibling resource group as owned scope.
- **B. Treat Reader as universal data access** Management actions and empty data actions do not establish unrestricted protected data permissions.
- **C. Use delimiter-aware scope checks and label the result as model-only** **Correct.** Correct scope logic and honest evidence boundaries are both required before interpreting simulated authorization decisions.
- **D. Grant Owner and mark live access verified** Broad grants neither fix a faulty scope comparison nor turn simulation into live authorization evidence.

**Explanation:** Additional metadata does not repair accepting a sibling resource group as owned scope. Management actions and empty data actions do not establish unrestricted protected data permissions. Correct scope logic and honest evidence boundaries are both required before interpreting simulated authorization decisions. Broad grants neither fix a faulty scope comparison nor turn simulation into live authorization evidence.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview); [S9](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-definitions)

## L20-Q041

Foundational · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

An Azure Pipelines definition needs Azure deployment authentication without a stored client secret. Which connection approach should be evaluated?

- **A. A plaintext service-principal password in YAML** Committed long-lived credentials expose secrets and require manual credential lifecycle management.
- **B. The Azure DevOps job token used directly as an Azure resource token** A job token does not bypass the configured Azure identity federation and audience requirements.
- **C. A random personal token from another organization** An unrelated personal credential does not establish the intended scoped Azure deployment identity.
- **D. A scoped workload identity federation service connection** **Correct.** WIF exchanges trusted workload identity for Azure access without retaining a client secret.

**Explanation:** Committed long-lived credentials expose secrets and require manual credential lifecycle management. A job token does not bypass the configured Azure identity federation and audience requirements. An unrelated personal credential does not establish the intended scoped Azure deployment identity. WIF exchanges trusted workload identity for Azure access without retaining a client secret.

**Sources:** [S10](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L20-Q042

Foundational · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

A service connection is correctly configured, but an unrelated pipeline should not be able to use it. Which authorization choice supports that boundary?

- **A. Grant access to all pipelines permanently** Broad authorization expands use beyond the explicitly intended deployment definition.
- **B. Rename the connection to production** Naming does not restrict which pipeline definitions can invoke the connection.
- **C. Hide the connection name in a comment** Obscuring a label does not enforce service-connection authorization boundaries.
- **D. Authorize only the intended pipeline** **Correct.** Connection access must be scoped to the consumers approved to use its deployment capability.

**Explanation:** Broad authorization expands use beyond the explicitly intended deployment definition. Naming does not restrict which pipeline definitions can invoke the connection. Obscuring a label does not enforce service-connection authorization boundaries. Connection access must be scoped to the consumers approved to use its deployment capability.

**Sources:** [S10](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L20-Q043

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

A one-off bootstrap requires a personal token because federation has not been configured yet. Which fallback policy is least risky?

- **A. Short-lived narrowly scoped token with deliberate removal** **Correct.** A constrained temporary fallback limits exposure while the intended workload identity path is established.
- **B. Unrestricted token without expiration** Broad perpetual credentials create unnecessary privilege and long-lived secret lifecycle risk.
- **C. Shared personal Owner token committed to source** Shared committed credentials expose privileged access and weaken individual accountability.
- **D. Reuse any token found in build logs** Log exposure indicates leakage rather than an approved authentication source.

**Explanation:** A constrained temporary fallback limits exposure while the intended workload identity path is established. Broad perpetual credentials create unnecessary privilege and long-lived secret lifecycle risk. Shared committed credentials expose privileged access and weaken individual accountability. Log exposure indicates leakage rather than an approved authentication source.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q044

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

Long-running organization automation must remain accountable when a developer leaves the team. Which identity choice reduces dependence on that person's account?

- **A. An appropriately installed GitHub App** **Correct.** App installation authentication separates service automation from one developer's personal membership lifecycle.
- **B. That developer's unrestricted personal token** A personal credential couples service availability and privileges to the departing account.
- **C. A copy of the developer's browser cookie** Session copying exposes human authentication state and does not establish a proper service identity.
- **D. A local Git user.name value** Commit attribution settings are not credentials for authorized GitHub service automation.

**Explanation:** App installation authentication separates service automation from one developer's personal membership lifecycle. A personal credential couples service availability and privileges to the departing account. Session copying exposes human authentication state and does not establish a proper service identity. Commit attribution settings are not credentials for authorized GitHub service automation.

**Sources:** [S5](https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/about-authentication-with-a-github-app)

## L20-Q045

Advanced · [CP5](README.md#task-5) · [D4.1.3](../../docs/objective-map.md)

A WIF exchange succeeds, but deployment targets an outside group and should remain denied. Which action preserves the approved boundary while restoring the intended sandbox operation?

```text
Federation exchange: succeeded
Allowed scope: owned sandbox group
Requested target: shared production group
Resource write: AuthorizationFailed
```

- **A. Correct the target to the authorized group and verify effective access** **Correct.** Successful authentication does not justify expanding resource authorization beyond the approved sandbox.
- **B. Grant subscription Owner to suppress the denial** Broad authorization would override the intended scope rather than correct the wrong target.
- **C. Share the migration identity for every operation** Identity reuse can erase separation of duties and still leave target context incorrect.
- **D. Treat token exchange success as deployment completion** Authentication success does not prove resource operations were authorized or executed.

**Explanation:** Successful authentication does not justify expanding resource authorization beyond the approved sandbox. Broad authorization would override the intended scope rather than correct the wrong target. Identity reuse can erase separation of duties and still leave target context incorrect. Authentication success does not prove resource operations were authorized or executed.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview); [S10](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L20-Q046

Foundational · [CP5](README.md#task-5) · [D4.1.6](../../docs/objective-map.md)

A developer with Basic access is approved to push to one Azure Repos repository but lacks Contribute permission. There is no inherited Deny. Which change grants the required access with the narrowest scope?

- **A. Upgrade the developer to Basic + Test Plans** A higher feature entitlement does not grant the missing repository Contribute permission.
- **B. Grant Contribute on this repository through an approved security group** **Correct.** Repository-scoped Contribute permits the approved push without granting unrelated administrative rights.
- **C. Add the developer to Project Collection Administrators** Collection administration is far broader than the approved operation on a single repository.
- **D. Remove the repository's pull-request approval policies** Relaxing review policies does not grant the developer the missing Contribute permission.

**Explanation:** A higher feature entitlement does not grant the missing repository Contribute permission. Repository-scoped Contribute permits the approved push without granting unrelated administrative rights. Collection administration is far broader than the approved operation on a single repository. Relaxing review policies does not grant the developer the missing Contribute permission.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S7](https://learn.microsoft.com/en-us/azure/devops/organizations/security/access-levels?view=azure-devops)

## L20-Q047

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

A GitHub automation token expires while the app installation remains authorized. Which recovery maintains the intended nonhuman identity model?

- **A. Commit the expired token so future runs reuse it** An expired credential cannot authenticate and source history would expose the token value.
- **B. Grant anonymous write access to the repository** Removing authentication is unrelated to renewing the approved application's installation credential.
- **C. Acquire a fresh installation token through the approved app flow** **Correct.** Short-lived installation tokens can be renewed without replacing automation with a personal account.
- **D. Create a never-expiring shared administrator token** A perpetual personal credential weakens the scoped service identity and secret lifecycle design.

**Explanation:** An expired credential cannot authenticate and source history would expose the token value. Removing authentication is unrelated to renewing the approved application's installation credential. Short-lived installation tokens can be renewed without replacing automation with a personal account. A perpetual personal credential weakens the scoped service identity and secret lifecycle design.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github); [S5](https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/about-authentication-with-a-github-app)

## L20-Q048

Applied · [CP5](README.md#task-5) · [D4.1.1](../../docs/objective-map.md)

A private group's identity assignment is visible, but the application still cannot obtain a token from its host. Which evidence should be examined next?

- **A. Only whether the repository is public** Repository visibility does not provide an Azure host's managed identity token endpoint.
- **B. Only the management-plane Reader role definition** A role definition does not establish that the application can acquire its intended identity token.
- **C. The supported host identity attachment and token acquisition path** **Correct.** Role assignment visibility does not prove that the running host can acquire its intended principal's token.
- **D. Only the identity's existence in the directory** Directory existence does not prove the host attachment or token endpoint can serve the running application.

**Explanation:** Repository visibility does not provide an Azure host's managed identity token endpoint. A role definition does not establish that the application can acquire its intended identity token. Role assignment visibility does not prove that the running host can acquire its intended principal's token. Directory existence does not prove the host attachment or token endpoint can serve the running application.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)

## L20-Q049

Applied · [CP5](README.md#task-5) · [D4.1.1](../../docs/objective-map.md)

The read-only local policy fixture passes, yet actual federation and protected-service calls were never executed. Which publication claim accurately preserves the verification boundary?

- **A. Production deployment verified by Reader inspection** Inspecting a role definition does not deploy or validate production resources.
- **B. Policy logic tested; live identity and service authorization unverified** **Correct.** Local computed decisions do not exercise workload token exchange or protected Azure API authorization.
- **C. Federation fully verified through policy calculations** A policy calculation cannot demonstrate the external identity provider accepting workload claims.
- **D. All protected data paths proven readable** No data-plane service request was executed to establish that authorization result.

**Explanation:** Inspecting a role definition does not deploy or validate production resources. Local computed decisions do not exercise workload token exchange or protected Azure API authorization. A policy calculation cannot demonstrate the external identity provider accepting workload claims. No data-plane service request was executed to establish that authorization result.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview); [S10](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L20-Q050

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

During cleanup the authenticated principal changes, and the new principal cannot see a recorded object. Ownership markers were not rechecked. Which response avoids treating invisibility as deletion?

```json
{"journalPrincipal":"original","currentPrincipal":"different","recordedObjectRead":"not visible","ownershipRechecked":false}
```

- **A. Mark the hidden object deleted automatically** Authorization-dependent invisibility does not establish that the provider actually removed the object.
- **B. Overwrite the journal with the new principal** Changing recorded context manufactures continuity instead of checking the established ownership identity.
- **C. Search by prefix and delete all visible replacements** Name-prefix deletion expands beyond exact recorded IDs and cannot resolve the hidden object's state.
- **D. Stop and verify identity plus exact owned-object state** **Correct.** Changed identity can hide resources, so absence under that context cannot prove cleanup completion.

**Explanation:** Authorization-dependent invisibility does not establish that the provider actually removed the object. Changing recorded context manufactures continuity instead of checking the established ownership identity. Name-prefix deletion expands beyond exact recorded IDs and cannot resolve the hidden object's state. Changed identity can hide resources, so absence under that context cannot prove cleanup completion.

**Sources:** [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github); [S6](https://learn.microsoft.com/en-us/azure/role-based-access-control/scope-overview)
