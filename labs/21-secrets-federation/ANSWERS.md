# Lab 21 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L21-Q001

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A GitHub deployment job needs Azure access without storing a long-lived client secret. Which authentication pattern should be selected?

- **A. A personal administrator token in workflow source** Committed personal credentials expose privileged access and do not implement workload federation.
- **B. An App Service publish profile for every Azure operation** Publish profiles are deployment credentials rather than general secret-free Azure workload authentication.
- **C. OIDC workload identity federation** **Correct.** Federation exchanges trusted workload identity for short-lived Azure authentication without a stored client secret.
- **D. A shared client secret in repository settings** A stored reusable secret retains the credential rotation and leakage burden federation avoids.

**Explanation:** Committed personal credentials expose privileged access and do not implement workload federation. Publish profiles are deployment credentials rather than general secret-free Azure workload authentication. Federation exchanges trusted workload identity for short-lived Azure authentication without a stored client secret. A stored reusable secret retains the credential rotation and leakage burden federation avoids.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q002

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The Azure login action cannot request a GitHub OIDC token because the job lacks permission. Which permission is required?

- **A. packages write** Package publication permission does not provide the required workload identity token permission.
- **B. id-token write** **Correct.** This permission allows the job to request an OIDC token for federation.
- **C. contents write** Repository content write permission does not authorize requesting an OIDC identity token.
- **D. actions write** Workflow management permission is different from the job's OIDC token request capability.

**Explanation:** Package publication permission does not provide the required workload identity token permission. This permission allows the job to request an OIDC token for federation. Repository content write permission does not authorize requesting an OIDC identity token. Workflow management permission is different from the job's OIDC token request capability.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q003

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A GitHub job uses environment production. Which default subject should its Azure federated credential match for repository owner/course?

```yaml
repository: owner/course
job:
  environment: production
  permissions:
    contents: read
    id-token: write
```

- **A. repo:owner/course:environment:production** **Correct.** Environment jobs use an environment-qualified subject rather than the normal branch subject.
- **B. repo:owner/course:ref:refs/heads/main** The branch-qualified default does not match this job's environment-qualified subject claim.
- **C. repo:owner/course:pull_request** A pull-request subject does not match the protected production environment job.
- **D. repo:other/course:environment:production** The different repository owner makes the subject identify another workload context.

**Explanation:** Environment jobs use an environment-qualified subject rather than the normal branch subject. The branch-qualified default does not match this job's environment-qualified subject claim. A pull-request subject does not match the protected production environment job. The different repository owner makes the subject identify another workload context.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q004

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The workflow can request an OIDC token but Azure rejects the exchange. Which fields should be compared to the federated credential?

- **A. Issuer, subject and audience** **Correct.** Federation requires the presented workload claims to match the configured trust relationship.
- **B. Only the Azure client ID and resource group** Application selection and target scope alone do not validate issuer, subject and audience trust matching.
- **C. Only the Azure role names assigned to the principal** Authorization roles cannot repair a mismatch in the workload token exchange trust claims.
- **D. Only the token expiry time and issuance time** Token timing does not establish the configured subject, issuer and audience trust relationship.

**Explanation:** Federation requires the presented workload claims to match the configured trust relationship. Application selection and target scope alone do not validate issuer, subject and audience trust matching. Authorization roles cannot repair a mismatch in the workload token exchange trust claims. Token timing does not establish the configured subject, issuer and audience trust relationship.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q005

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The workflow adds environment production after federation was configured for main's branch subject. Token issuance succeeds but exchange fails. Which correction preserves protected-environment trust?

```text
Configured trust subject: repo:owner/course:ref:refs/heads/main
New job configuration: environment: production
Token issuance: succeeded
Azure exchange: subject mismatch
```

- **A. Trust every repository subject broadly** Broad trust unnecessarily expands which workloads can obtain the production Azure identity.
- **B. Add repository contents write permission** Content write does not change the OIDC subject or repair Azure trust matching.
- **C. Configure the exact production-environment subject** **Correct.** Adding an environment changes the default subject, so trust must match that protected workload.
- **D. Remove the environment and bypass its approval** Removing protection changes the required release governance instead of correcting intended federation claims.

**Explanation:** Broad trust unnecessarily expands which workloads can obtain the production Azure identity. Content write does not change the OIDC subject or repair Azure trust matching. Adding an environment changes the default subject, so trust must match that protected workload. Removing protection changes the required release governance instead of correcting intended federation claims.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q006

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The repository is renamed while its production credential still trusts the previous default subject. What should federation maintenance review?

- **A. Only the client's existing Azure role assignments** Role permissions cannot repair a mismatched workload identity subject during token exchange.
- **B. Only the workflow artifact expiration date** Artifact retention does not update or validate identity federation claim matching.
- **C. Only whether package restore succeeds** Dependency restoration does not exercise the deployment workload's OIDC trust relationship.
- **D. The exact current subject and configured trust** **Correct.** Repository context is part of the default subject and can invalidate the old trust mapping.

**Explanation:** Role permissions cannot repair a mismatched workload identity subject during token exchange. Artifact retention does not update or validate identity federation claim matching. Dependency restoration does not exercise the deployment workload's OIDC trust relationship. Repository context is part of the default subject and can invalidate the old trust mapping.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q007

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

The token exchange succeeds, but creating an Azure resource returns authorization denied. Which control should be checked next?

- **A. The repository's package publish permission** Package publishing rights do not determine Azure management-plane resource authorization.
- **B. The identity's role assignment and target scope** **Correct.** Authentication success does not grant resource permissions beyond the identity's effective authorization.
- **C. The GitHub OIDC issuer alone** A successful exchange already demonstrates sufficient trust for that authentication step.
- **D. The action's id-token permission alone** Token-request permission does not independently authorize Azure resource creation operations.

**Explanation:** Package publishing rights do not determine Azure management-plane resource authorization. Authentication success does not grant resource permissions beyond the identity's effective authorization. A successful exchange already demonstrates sufficient trust for that authentication step. Token-request permission does not independently authorize Azure resource creation operations.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q008

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

An Azure Pipelines connection should use short-lived workload authentication rather than a reusable secret. Which connection capability should be evaluated?

- **A. Workload identity federation** **Correct.** Federated service connections avoid retaining the service principal's long-lived client secret.
- **B. A service principal secret without expiration** A perpetual reusable secret increases lifecycle exposure instead of implementing federation.
- **C. A user's interactive password** A shared human credential is not the intended pipeline workload authentication model.
- **D. A stored publish profile for all resource operations** App publishing credentials do not replace scoped Azure resource-manager workload federation.

**Explanation:** Federated service connections avoid retaining the service principal's long-lived client secret. A perpetual reusable secret increases lifecycle exposure instead of implementing federation. A shared human credential is not the intended pipeline workload authentication model. App publishing credentials do not replace scoped Azure resource-manager workload federation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L21-Q009

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

A WIF service connection should be usable by only one approved release definition. Which authorization setting fits?

- **A. Copy connection credentials into variable groups** Duplicating credentials is unnecessary and does not enforce the intended consumer authorization boundary.
- **B. Remove environment checks after enabling federation** Federation authenticates workload identity but does not replace release approval and resource checks.
- **C. Authorize the specific pipeline** **Correct.** Connection use should be limited to explicitly approved pipeline definitions consuming its deployment authority.
- **D. Grant access to every pipeline** Organization-wide pipeline access expands use beyond the single approved release definition.

**Explanation:** Duplicating credentials is unnecessary and does not enforce the intended consumer authorization boundary. Federation authenticates workload identity but does not replace release approval and resource checks. Connection use should be limited to explicitly approved pipeline definitions consuming its deployment authority. Organization-wide pipeline access expands use beyond the single approved release definition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L21-Q010

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A migration identity needs database schema rights while an application deployment identity must not migrate SQL. Which design preserves federation and separation of duties?

```json
{"migration":{"stage":"production-database","rights":"reviewed schema changes"},"application":{"stage":"production","rights":"deploy application only"}}
```

- **A. Use one broadly privileged identity for both** A shared principal merges migration and application powers contrary to the separation requirement.
- **B. Use two connection names pointing to the same broad principal** Different labels do not separate the effective permissions of a shared identity.
- **C. Trust all repositories to both identities** Broad workload trust increases access without preserving the intended release capability boundaries.
- **D. Separate trusted identities and scoped protected stages** **Correct.** Distinct principals and protected stages prevent app deployment authority from implying database migration authority.

**Explanation:** A shared principal merges migration and application powers contrary to the separation requirement. Different labels do not separate the effective permissions of a shared identity. Broad workload trust increases access without preserving the intended release capability boundaries. Distinct principals and protected stages prevent app deployment authority from implying database migration authority.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q011

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The GitHub federation job grants contents read and id-token write. What does id-token write itself permit?

- **A. Reading every environment secret automatically** Secret availability remains governed by workflow context and protected environment controls.
- **B. Requesting the job's OIDC token** **Correct.** The permission enables token issuance rather than automatically authorizing Azure resource operations.
- **C. Writing any Azure resource directly** Azure resource writes still require a trusted exchange and scoped Azure authorization.
- **D. Editing the repository's protected branch directly** OIDC token permission does not confer source repository content write capability.

**Explanation:** Secret availability remains governed by workflow context and protected environment controls. The permission enables token issuance rather than automatically authorizing Azure resource operations. Azure resource writes still require a trusted exchange and scoped Azure authorization. OIDC token permission does not confer source repository content write capability.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q012

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A protected production identity must not be available to an unrelated repository's workflow. What trust boundary is most important?

- **A. Match only the public GitHub issuer** The issuer is shared by many workloads and cannot identify this intended repository alone.
- **B. Grant fewer Azure CLI command arguments** Command syntax does not narrow which external workloads the identity trust will accept.
- **C. Match the intended repository and protected subject exactly** **Correct.** The trust relationship must identify the specific approved workload rather than a broad caller set.
- **D. Match only the production environment label without repository context** An environment label alone cannot distinguish trusted production workloads from other repositories.

**Explanation:** The issuer is shared by many workloads and cannot identify this intended repository alone. Command syntax does not narrow which external workloads the identity trust will accept. The trust relationship must identify the specific approved workload rather than a broad caller set. An environment label alone cannot distinguish trusted production workloads from other repositories.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q013

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A pipeline identity cannot create its own role assignment during setup. Which bootstrap decision respects separation of privilege?

- **A. Have an authorized operator grant the reviewed narrow scope** **Correct.** Initial authorization may require a privileged operator without giving the workload permanent broad rights.
- **B. Grant subscription Owner permanently to the workload** Permanent broad rights exceed the ongoing deployment task's least-privilege authorization need.
- **C. Skip the assignment and claim deployment is ready** Missing required authorization means actual protected resource operations remain unverified or denied.
- **D. Put an administrator password in the pipeline file** Committed reusable credentials expose secrets rather than establishing a reviewed scoped authorization grant.

**Explanation:** Initial authorization may require a privileged operator without giving the workload permanent broad rights. Permanent broad rights exceed the ongoing deployment task's least-privilege authorization need. Missing required authorization means actual protected resource operations remain unverified or denied. Committed reusable credentials expose secrets rather than establishing a reviewed scoped authorization grant.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L21-Q014

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

An OIDC trust entry exists in Azure, but only a local JSON syntax check ran. What remains unverified?

- **A. Actual exchange and protected resource authorization** **Correct.** A valid trust document does not exercise the provider's token validation or resource permissions.
- **B. Whether the trust document parses locally** The local syntax check already establishes that limited document parsing result.
- **C. Whether the workflow text contains a client ID** Source presence does not establish successful execution or provider acceptance of that identity.
- **D. Whether environment names can be written as strings** Representing a name does not prove protected environment behavior or federation integration.

**Explanation:** A valid trust document does not exercise the provider's token validation or resource permissions. The local syntax check already establishes that limited document parsing result. Source presence does not establish successful execution or provider acceptance of that identity. Representing a name does not prove protected environment behavior or federation integration.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q015

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

Federation works for deployment, but a fork pull request would run on a trusted private runner with access to credential caches. Which control preserves both identity and runner boundaries?

```text
Trusted private runner: persistent workspace; Azure CLI cache present
Proposed workload: arbitrary fork pull-request source
Deployment protection: production environment approval
```

- **A. Keep the private runner and hide the connection name** Obscuring metadata does not prevent untrusted job code from reaching available runner capabilities.
- **B. Grant id-token write to every pull request** Broader token issuance does not isolate untrusted code from the privileged execution environment.
- **C. Replace federation with a permanent secret** A reusable credential increases exposure rather than resolving the runner trust boundary.
- **D. Separate untrusted CI from protected ephemeral deployment runners** **Correct.** Federation does not make executing untrusted code on a privileged persistent runner safe.

**Explanation:** Obscuring metadata does not prevent untrusted job code from reaching available runner capabilities. Broader token issuance does not isolate untrusted code from the privileged execution environment. A reusable credential increases exposure rather than resolving the runner trust boundary. Federation does not make executing untrusted code on a privileged persistent runner safe.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q016

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A federated credential uses the expected subject but an unintended audience. What should be corrected before changing Azure resource permissions?

- **A. The test coverage threshold** Coverage policy is unrelated to the OIDC audience accepted by the identity provider.
- **B. The audience in the trust configuration** **Correct.** Claim mismatch must be resolved at token exchange rather than by broadening resource permissions.
- **C. The target resource's Reader assignment** A data or management role cannot make an untrusted audience pass federation validation.
- **D. The application package's output path** Artifact layout does not determine identity token audience matching during federation.

**Explanation:** Coverage policy is unrelated to the OIDC audience accepted by the identity provider. Claim mismatch must be resolved at token exchange rather than by broadening resource permissions. A data or management role cannot make an untrusted audience pass federation validation. Artifact layout does not determine identity token audience matching during federation.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q017

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

An old secret-based connection is retained during WIF migration for rollback. Which lifecycle control should accompany that temporary fallback?

- **A. Authorize the fallback connection for every pipeline** Broad use expands the credential's reach beyond the reviewed migration recovery need.
- **B. Explicit expiry, access limits and a removal plan** **Correct.** Temporary fallback credentials still require bounded exposure and a deliberate retirement lifecycle.
- **C. Remove all expiration and monitoring** Unlimited fallback lifetime increases credential exposure and makes migration cleanup less reliable.
- **D. Commit the fallback secret beside the new YAML** Source publication exposes the reusable credential rather than safely preserving a limited fallback.

**Explanation:** Broad use expands the credential's reach beyond the reviewed migration recovery need. Temporary fallback credentials still require bounded exposure and a deliberate retirement lifecycle. Unlimited fallback lifetime increases credential exposure and makes migration cleanup less reliable. Source publication exposes the reusable credential rather than safely preserving a limited fallback.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L21-Q018

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A deployment identity has the correct production subject, but the workflow deploys an app outside the journal-owned group. Which check should block promotion?

- **A. Only a matching app-name prefix** A prefix can match resources outside the exact owned group or run.
- **B. Only whether the identity has any Contributor grant** A grant elsewhere cannot establish that this specific app target belongs to the owned group.
- **C. Exact subscription, group and resource ownership assertions** **Correct.** Correct workload authentication does not authorize adopting an unrelated resource target.
- **D. Only successful azure login output** Authentication success alone cannot establish the deployment target's ownership boundary.

**Explanation:** A prefix can match resources outside the exact owned group or run. A grant elsewhere cannot establish that this specific app target belongs to the owned group. Correct workload authentication does not authorize adopting an unrelated resource target. Authentication success alone cannot establish the deployment target's ownership boundary.

**Sources:** [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q019

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

A connection is configured with WIF, and its pipeline consumer is authorized. Which additional prerequisite still affects real deployment execution?

- **A. Unlimited artifact retention as authentication** Retention controls stored outputs rather than the agent's ability to reach protected services.
- **B. An automatically inherited production environment approval** Federation does not automatically create or exercise protected-resource approval checks.
- **C. Agent routing and protected-resource access** **Correct.** Federated authentication does not supply private DNS, network routing or environment approval automatically.
- **D. A copied user password in every job** WIF does not require adding a human password to enable deployment execution.

**Explanation:** Retention controls stored outputs rather than the agent's ability to reach protected services. Federation does not automatically create or exercise protected-resource approval checks. Federated authentication does not supply private DNS, network routing or environment approval automatically. WIF does not require adding a human password to enable deployment execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops)

## L21-Q020

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Token exchange succeeds on the protected runner, but the migration stage cannot reach private SQL and the app stage lacks schema rights by design. Which response respects both constraints?

```text
Migration WIF token exchange: passed
Private SQL DNS: unresolved from current worker
App deployment identity: deliberately lacks schema-alter permission
```

- **A. Move migration to a public hosted runner because token exchange works** Working token exchange does not provide that hosted runner a route to the private SQL endpoint.
- **B. Treat token exchange as proof the migration passed** Authentication success cannot establish network reachability or completed schema migration execution.
- **C. Fix migration routing while keeping identities separate** **Correct.** Private connectivity must be restored without broadening the app identity into a schema migrator.
- **D. Run schema changes under the app identity** That workaround breaks the explicitly required separation of deployment and database migration authority.

**Explanation:** Private connectivity must be restored without broadening the app identity into a schema migrator. Working token exchange does not provide that hosted runner a route to the private SQL endpoint. Authentication success cannot establish network reachability or completed schema migration execution. That workaround breaks the explicitly required separation of deployment and database migration authority.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure)

## L21-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

An app setting should reference a Key Vault secret instead of containing plaintext. Which reference scheme should validation accept?

- **A. An HTTPS vault secret URI** **Correct.** A secure vault reference identifies the secret through the protected HTTPS endpoint.
- **B. An HTTP vault secret URI** Plain HTTP does not satisfy the required secure vault-reference endpoint scheme.
- **C. A plaintext secret value with the same name** A literal value is not a reference and exposes the secret directly in configuration.
- **D. A relative local filesystem path** A local path does not identify a Key Vault secret through its service URI.

**Explanation:** A secure vault reference identifies the secret through the protected HTTPS endpoint. Plain HTTP does not satisfy the required secure vault-reference endpoint scheme. A literal value is not a reference and exposes the secret directly in configuration. A local path does not identify a Key Vault secret through its service URI.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A URI's hostname begins with a valid vault name but ends with an attacker-controlled suffix. Which parser behavior is correct?

- **A. Accept it if HTTPS is present** TLS scheme alone does not establish that the hostname belongs to the expected service.
- **B. Accept it if the path contains secrets** Path text cannot establish the endpoint's trusted hostname or actual vault ownership.
- **C. Reject the spoofed hostname** **Correct.** A suffix beyond the trusted vault domain identifies a different endpoint despite a familiar prefix.
- **D. Accept any hostname containing vault.azure.net** Substring matching can accept attacker-controlled domains that only embed the trusted text.

**Explanation:** TLS scheme alone does not establish that the hostname belongs to the expected service. Path text cannot establish the endpoint's trusted hostname or actual vault ownership. A suffix beyond the trusted vault domain identifies a different endpoint despite a familiar prefix. Substring matching can accept attacker-controlled domains that only embed the trusted text.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q023

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The service should follow secret rotation without changing its reference whenever a new version is published. Which URI form supports that intent?

- **A. A versionless secret reference** **Correct.** A versionless reference can resolve later versions after the service's refresh behavior applies.
- **B. A reference pinned to one version** A version identifier deliberately keeps selecting that version until configuration is changed.
- **C. The current secret's plaintext value** A copied value does not automatically follow rotation through a vault reference.
- **D. A URI pointing to a specific old backup file** A backup path is not the live versionless vault secret resolution contract.

**Explanation:** A versionless reference can resolve later versions after the service's refresh behavior applies. A version identifier deliberately keeps selecting that version until configuration is changed. A copied value does not automatically follow rotation through a vault reference. A backup path is not the live versionless vault secret resolution contract.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q024

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A deployment must retain one tested secret version until a reviewed configuration update. Which reference form meets that requirement?

- **A. A version-pinned secret URI** **Correct.** An explicit version selects the tested secret value until the reference itself is updated.
- **B. A versionless secret URI** Versionless resolution can adopt a later secret version after the service refreshes.
- **C. A URI without a secret name** Without the secret identifier the reference cannot select the required tested secret.
- **D. A reference copied from another environment's vault** An unrelated vault does not preserve this deployment's reviewed tested secret version.

**Explanation:** An explicit version selects the tested secret value until the reference itself is updated. Versionless resolution can adopt a later secret version after the service refreshes. Without the secret identifier the reference cannot select the required tested secret. An unrelated vault does not preserve this deployment's reviewed tested secret version.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Rotation publishes a new secret version, but the app intentionally pins the old tested version. Which update preserves controlled adoption while acknowledging service refresh behavior?

```text
Configured URI: https://training.vault.azure.net/secrets/signing-key/version-a
Vault now contains: version-a, version-b
Policy: reviewed adoption only; no plaintext configuration
```

- **A. Wait indefinitely for the pinned URI to select latest** Pinning selects a specific version rather than requesting automatic latest-version resolution.
- **B. Change only the app role assignment while keeping the pinned URI** Authorization changes do not select a different secret version from the explicitly pinned reference.
- **C. Refresh the reference without changing the pinned version** Refreshing retrieves the selected version again; it does not adopt a different version while pinning remains.
- **D. Review the new version and update the pinned reference explicitly** **Correct.** Pinned references do not automatically advance, so rotation adoption needs a reviewed configuration change.

**Explanation:** Pinned references do not automatically advance, so rotation adoption needs a reviewed configuration change. Pinning selects a specific version rather than requesting automatic latest-version resolution. Authorization changes do not select a different secret version from the explicitly pinned reference. Refreshing retrieves the selected version again; it does not adopt a different version while pinning remains.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The local reference parser accepts a valid HTTPS URI but never contacts Key Vault. Which conclusion is justified?

- **A. Secret value successfully retrieved from the vault** No service call ran to obtain the actual protected secret value.
- **B. Application rotation behavior fully verified** A local parser cannot observe the application's cached secret resolution and refresh behavior.
- **C. Vault access granted to the app automatically** Syntax acceptance does not create the managed identity's required data-access role assignment.
- **D. Reference syntax accepted; live resolution unverified** **Correct.** Parsing a URI does not exercise vault identity authorization, networking or secret retrieval.

**Explanation:** No service call ran to obtain the actual protected secret value. A local parser cannot observe the application's cached secret resolution and refresh behavior. Syntax acceptance does not create the managed identity's required data-access role assignment. Parsing a URI does not exercise vault identity authorization, networking or secret retrieval.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q027

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The app has a valid secret URI but no managed identity permission to read the secret. Which change addresses actual resolution authorization?

- **A. Change HTTPS to HTTP** Weakening transport does not supply the missing vault data-access authorization.
- **B. Append the secret value to the URI** Putting secret contents in configuration exposes sensitive data without repairing identity authorization.
- **C. Give the pipeline repository write permission** Repository permissions do not determine the app identity's Key Vault secret access.
- **D. Grant the intended identity narrow secret-read access** **Correct.** Reference syntax does not independently authorize the application's principal to retrieve secret contents.

**Explanation:** Weakening transport does not supply the missing vault data-access authorization. Putting secret contents in configuration exposes sensitive data without repairing identity authorization. Repository permissions do not determine the app identity's Key Vault secret access. Reference syntax does not independently authorize the application's principal to retrieve secret contents.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q028

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A versionless reference points to the correct vault, but a new secret version is not visible immediately. What should operations consider before declaring rotation broken?

- **A. The service's documented cache and refresh behavior** **Correct.** Versionless resolution can follow rotation after the application's reference refresh behavior occurs.
- **B. Versionless always means permanent first-version pinning** A versionless reference does not deliberately select one immutable secret version.
- **C. Every cached value proves the new version is absent** Delayed application refresh does not establish that the vault lacks the rotated version.
- **D. Changing repository roles forces immediate vault refresh** Repository roles do not control the application's secret-reference cache lifecycle.

**Explanation:** Versionless resolution can follow rotation after the application's reference refresh behavior occurs. A versionless reference does not deliberately select one immutable secret version. Delayed application refresh does not establish that the vault lacks the rotated version. Repository roles do not control the application's secret-reference cache lifecycle.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q029

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A secret URI passes syntax checks but private endpoint DNS fails on the app's network. Which prerequisite still needs validation?

- **A. Runtime network path to the vault** **Correct.** A valid reference cannot resolve a secret without working service DNS and connectivity.
- **B. Only the local URI parser's regex** Parsing does not exercise the application's private DNS or vault routing path.
- **C. Only the secret reference's version-pinning format** Version selection syntax cannot establish private DNS resolution or the app's vault routing path.
- **D. Only the secret name's letter case in documentation** Documentation labels do not repair the runtime network path to the protected endpoint.

**Explanation:** A valid reference cannot resolve a secret without working service DNS and connectivity. Parsing does not exercise the application's private DNS or vault routing path. Version selection syntax cannot establish private DNS resolution or the app's vault routing path. Documentation labels do not repair the runtime network path to the protected endpoint.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Two references are accepted locally, one versioned and one versionless, but no identity exchange or service reads occurred. Which evidence fields avoid overstating coverage?

```json
{"accepted":2,"rejected":3,"versioned":1,"fixtureOnly":true,"resolvedLive":false}
```

- **A. providerAuthorizationVerified true after parsing** Authorization requires actual provider evidence beyond local reference structure validation.
- **B. rotationPassed true after inspecting the URI** Reference inspection cannot demonstrate version refresh behavior in the deployed application.
- **C. fixtureOnly true and resolvedLive false** **Correct.** Explicit limits distinguish demonstrated URI validation from unexecuted provider secret-resolution integration.
- **D. resolvedLive true whenever HTTPS is present** HTTPS syntax alone does not prove the app authenticated and retrieved the vault secret.

**Explanation:** Authorization requires actual provider evidence beyond local reference structure validation. Reference inspection cannot demonstrate version refresh behavior in the deployed application. Explicit limits distinguish demonstrated URI validation from unexecuted provider secret-resolution integration. HTTPS syntax alone does not prove the app authenticated and retrieved the vault secret.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/app-service/app-service-key-vault-references)

## L21-Q031

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A pipeline needs a signing certificate as a protected file rather than source-controlled contents. Which Azure Pipelines facility fits?

- **A. Secure files with authorized pipeline access** **Correct.** Secure files provide protected storage and controlled use of file-based sensitive material.
- **B. A normal repository source file** Committed file contents become part of shared history and do not provide protected-file storage.
- **C. A public pipeline artifact containing the key** Publishing key material exposes it beyond the intended protected consumption boundary.
- **D. A plain-text variable containing the complete binary** Variable storage is not the intended protected file lifecycle for a signing certificate.

**Explanation:** Secure files provide protected storage and controlled use of file-based sensitive material. Committed file contents become part of shared history and do not provide protected-file storage. Publishing key material exposes it beyond the intended protected consumption boundary. Variable storage is not the intended protected file lifecycle for a signing certificate.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q032

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A secure file exists in Library, but a pipeline cannot use it. Which control should be checked before copying it elsewhere?

- **A. Only whether the agent has extra disk space** Available storage does not establish the pipeline's protected-file authorization or approval status.
- **B. The file's authorized pipelines and approvals** **Correct.** Secure-file existence does not imply every pipeline has permission to download and consume it.
- **C. Only the repository's default branch name** Branch naming alone does not authorize access to the protected Library file.
- **D. Only the artifact's retention setting** Artifact retention does not grant access to a secure file stored in Library.

**Explanation:** Available storage does not establish the pipeline's protected-file authorization or approval status. Secure-file existence does not imply every pipeline has permission to download and consume it. Branch naming alone does not authorize access to the protected Library file. Artifact retention does not grant access to a secure file stored in Library.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q033

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The signing step downloads a private file into the agent workspace. When should the script remove its temporary working copy?

- **A. Only during the next unrelated pipeline run** Delayed removal leaves material accessible beyond its intended consumption lifetime.
- **B. Never because Library is encrypted** Protected service storage does not eliminate exposure from a downloaded agent-side copy.
- **C. In guaranteed cleanup after consumption** **Correct.** Temporary sensitive material needs removal even when its consuming operation fails.
- **D. Only after a fully successful release** Failure paths would retain the temporary sensitive file when cleanup is success-only.

**Explanation:** Delayed removal leaves material accessible beyond its intended consumption lifetime. Protected service storage does not eliminate exposure from a downloaded agent-side copy. Temporary sensitive material needs removal even when its consuming operation fails. Failure paths would retain the temporary sensitive file when cleanup is success-only.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q034

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A synthetic secure-file fixture verifies a hash before consumption. What does the hash check establish?

- **A. The file's private key cannot be copied** A matching digest does not establish that other processes could not access the material.
- **B. The consumed bytes match the expected fixture** **Correct.** An expected digest detects changed file contents without printing the material itself.
- **C. The pipeline is authorized in Azure DevOps** Local integrity verification does not exercise Library access controls or provider authorization.
- **D. The file was never present on disk** Hashing generally observes file bytes and does not prove absence from the filesystem.

**Explanation:** A matching digest does not establish that other processes could not access the material. An expected digest detects changed file contents without printing the material itself. Local integrity verification does not exercise Library access controls or provider authorization. Hashing generally observes file bytes and does not prove absence from the filesystem.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q035

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The consumer throws after reading the temporary signing file. What implementation ensures cleanup still runs while preserving the failure?

```powershell
try {
  $bytes = Get-Content -LiteralPath $temporaryFile -AsByteStream
  Invoke-SigningConsumer $bytes # throws
}
finally { Remove-Item -LiteralPath $temporaryFile }
```

- **A. Delete only after the consumer returns normally** Normal-return cleanup does not execute when the consuming operation throws an exception.
- **B. Catch the error and report a successful signing result** Suppressing failure misrepresents the signing outcome even if temporary material is removed.
- **C. Leave the file for a future agent job** Future cleanup extends exposure and depends on unrelated work executing correctly.
- **D. Remove the file in finally and retain the error** **Correct.** Guaranteed cleanup must execute on both success and failure without converting failure into success.

**Explanation:** Normal-return cleanup does not execute when the consuming operation throws an exception. Suppressing failure misrepresents the signing outcome even if temporary material is removed. Future cleanup extends exposure and depends on unrelated work executing correctly. Guaranteed cleanup must execute on both success and failure without converting failure into success.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q036

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The local fixture consumes harmless input and deletes it on normal and failing paths. Which provider capability remains unverified?

- **A. Azure DevOps secure-file authorization and delivery** **Correct.** Local file lifetime checks do not exercise protected Library permissions or remote download behavior.
- **B. Whether finally executes after the injected failure** The failing-path cleanup evidence directly demonstrates that local lifecycle behavior.
- **C. Whether the expected harmless bytes were hash-checked** The fixture records its local integrity and consumption observations for those test bytes.
- **D. Whether the temporary local copy was removed** The residual search and fixture results directly inspect removal of that local copy.

**Explanation:** Local file lifetime checks do not exercise protected Library permissions or remote download behavior. The failing-path cleanup evidence directly demonstrates that local lifecycle behavior. The fixture records its local integrity and consumption observations for those test bytes. The residual search and fixture results directly inspect removal of that local copy.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q037

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A script emits the complete downloaded certificate bytes for troubleshooting. What diagnostic alternative reduces unnecessary disclosure?

- **A. Print contents only after failure** Failed-job logs still expose sensitive material to their viewers and retained artifacts.
- **B. Store contents inside the evidence JSON** Moving contents to an artifact preserves the same unnecessary disclosure risk.
- **C. Record digest and lifecycle status without contents** **Correct.** Integrity and cleanup metadata can support diagnosis without exposing sensitive file material.
- **D. Encode bytes as Base64 in logs** Reversible encoding still discloses the complete certificate material to log readers.

**Explanation:** Failed-job logs still expose sensitive material to their viewers and retained artifacts. Moving contents to an artifact preserves the same unnecessary disclosure risk. Integrity and cleanup metadata can support diagnosis without exposing sensitive file material. Reversible encoding still discloses the complete certificate material to log readers.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q038

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The agent directory is reused between jobs and a temporary secure-file copy remains. Which response should the lifecycle require?

- **A. Pass because the signing step succeeded** Functional signing success does not establish that temporary sensitive material was removed.
- **B. Delete every file across the agent's home** Broad deletion exceeds the exact owned residual and risks unrelated credentials or configuration.
- **C. Hide the directory listing from evidence** Suppressing observation does not eliminate the remaining sensitive material or its exposure.
- **D. Fail cleanup validation and remove the exact owned residual** **Correct.** Residual sensitive files violate the intended consumption lifetime and need explicit targeted cleanup.

**Explanation:** Functional signing success does not establish that temporary sensitive material was removed. Broad deletion exceeds the exact owned residual and risks unrelated credentials or configuration. Suppressing observation does not eliminate the remaining sensitive material or its exposure. Residual sensitive files violate the intended consumption lifetime and need explicit targeted cleanup.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q039

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A team wants a real private key for the local lifecycle exercise. Which choice provides meaningful test coverage without unnecessary secret handling?

- **A. Report provider authorization from a local file read** Local filesystem access does not establish Azure DevOps Library authorization or delivery.
- **B. Use a harmless synthetic file with the same lifecycle** **Correct.** Synthetic material exercises hashing, consumption and guaranteed removal without introducing a real credential.
- **C. Use the production signing key and print it** Real key exposure is unnecessary for demonstrating the local temporary-file lifetime behavior.
- **D. Skip the failure path because input is synthetic** Failure cleanup remains important regardless of whether the fixture contains a real credential.

**Explanation:** Local filesystem access does not establish Azure DevOps Library authorization or delivery. Synthetic material exercises hashing, consumption and guaranteed removal without introducing a real credential. Real key exposure is unnecessary for demonstrating the local temporary-file lifetime behavior. Failure cleanup remains important regardless of whether the fixture contains a real credential.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q040

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure-file access is correctly authorized, but the consuming tool fails after opening it on a persistent agent. Which evidence is required before reporting safe consumption?

```json
{"libraryAuthorized":true,"consumerOpenedFile":true,"consumerFailed":true,"temporaryFileExists":true}
```

- **A. Only the Library authorization record** Provider permission evidence does not prove temporary agent files were removed after consumer failure.
- **B. Only the consumer's stdout** Tool output alone may not establish failure handling or exact filesystem residual cleanup.
- **C. Only a passing hash check before execution** Preconsumption integrity does not establish cleanup after a later tool failure.
- **D. Both the original failure and verified temporary-file removal** **Correct.** Authorization success does not remove the obligation to preserve failures and clean downloaded material.

**Explanation:** Provider permission evidence does not prove temporary agent files were removed after consumer failure. Tool output alone may not establish failure handling or exact filesystem residual cleanup. Preconsumption integrity does not establish cleanup after a later tool failure. Authorization success does not remove the obligation to preserve failures and clean downloaded material.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q041

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A pipeline needs a secret value during one step but currently prints its environment for debugging. Which logging change should be made?

- **A. Rely only on masking every possible transformation** Masking cannot guarantee coverage of encoded, split or derived secret representations.
- **B. Print secrets only in pull requests** Untrusted contexts and retained logs still create secret disclosure risk.
- **C. Move the dump into a downloadable artifact** Artifact storage does not make unnecessary credential disclosure safe or appropriately scoped.
- **D. Remove broad environment dumps and log safe metadata** **Correct.** Environment dumps can disclose credentials beyond what the troubleshooting task requires.

**Explanation:** Masking cannot guarantee coverage of encoded, split or derived secret representations. Untrusted contexts and retained logs still create secret disclosure risk. Artifact storage does not make unnecessary credential disclosure safe or appropriately scoped. Environment dumps can disclose credentials beyond what the troubleshooting task requires.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q042

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A leaked credential is found in a committed file and is still valid. What should happen before treating Git history cleanup as sufficient?

- **A. Rewrite history and leave the credential valid** History cleanup cannot revoke credential copies retained by other systems or users.
- **B. Rename the file containing the credential** Renaming preserves the exposed value and does not change its effective access.
- **C. Add the file to gitignore only** Ignore rules do not remove tracked history or invalidate the exposed credential.
- **D. Revoke or rotate the credential promptly** **Correct.** Removing source references does not invalidate copies already obtained from logs, clones or history.

**Explanation:** History cleanup cannot revoke credential copies retained by other systems or users. Renaming preserves the exposed value and does not change its effective access. Ignore rules do not remove tracked history or invalidate the exposed credential. Removing source references does not invalidate copies already obtained from logs, clones or history.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q043

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A token is Base64-encoded before being printed, and the raw token is registered for masking. Which conclusion is safest?

- **A. Base64 encryption makes publication harmless** Base64 is reversible encoding rather than encryption or credential access control.
- **B. A private repository eliminates the need for redaction** Private visibility still exposes retained output to authorized viewers and compromised accounts.
- **C. The encoded output can still leak the token** **Correct.** A transformed secret can evade masking and remains reversible to its original value.
- **D. Masking the raw token guarantees all encodings are hidden** Masking does not promise recognition of every derived representation or transformation.

**Explanation:** Base64 is reversible encoding rather than encryption or credential access control. Private visibility still exposes retained output to authorized viewers and compromised accounts. A transformed secret can evade masking and remains reversible to its original value. Masking does not promise recognition of every derived representation or transformation.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q044

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The exercise searches generated evidence for a synthetic leakage marker. What should validation establish before recording the negative check as passed?

- **A. The marker is absent from the intended output paths** **Correct.** A scoped content check can verify that the synthetic sensitive value was not emitted there.
- **B. The marker variable exists in memory** Variable existence does not establish whether the value was written into evidence files.
- **C. The evidence directory's name contains private** A directory label does not prove its files exclude the synthetic secret marker.
- **D. No real token was used anywhere** Synthetic input avoids real credential exposure but does not itself prove redaction worked.

**Explanation:** A scoped content check can verify that the synthetic sensitive value was not emitted there. Variable existence does not establish whether the value was written into evidence files. A directory label does not prove its files exclude the synthetic secret marker. Synthetic input avoids real credential exposure but does not itself prove redaction worked.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q045

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A secret was removed from current source, but remains in CI logs and a retained artifact. Which response covers the complete observed exposure?

```json
{"currentSourceClean":true,"credentialStillValid":true,"exposurePaths":["previous CI log","retained artifact"]}
```

- **A. Disable the scanner to avoid duplicate findings** Suppressing detection does not remove retained exposure or revoke a valid secret.
- **B. Shorten future log retention without rotating** Future retention changes do not invalidate copies already accessible to other parties.
- **C. Rotate it and address the affected retained evidence** **Correct.** Current-tree cleanup alone does not remediate valid credentials exposed through other retained copies.
- **D. Commit another source deletion only** A new source change leaves already exposed logs, artifacts and credentials unaffected.

**Explanation:** Suppressing detection does not remove retained exposure or revoke a valid secret. Future retention changes do not invalidate copies already accessible to other parties. Current-tree cleanup alone does not remediate valid credentials exposed through other retained copies. A new source change leaves already exposed logs, artifacts and credentials unaffected.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q046

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A scanner fixture uses a recognizable fake token string while evidence intentionally records only counts. What is the best assertion for the redaction path?

- **A. Assert that the output JSON is valid** Valid JSON can still contain the complete synthetic or real secret value.
- **B. Assert that at least one log exists** File existence does not establish safe contents or proper sensitive-value handling.
- **C. Assert the marker appears in every result** Publishing the marker would contradict the intended redacted evidence handling requirement.
- **D. Search output files for the exact synthetic marker** **Correct.** A deterministic marker makes accidental disclosure observable without using a live credential.

**Explanation:** Valid JSON can still contain the complete synthetic or real secret value. File existence does not establish safe contents or proper sensitive-value handling. Publishing the marker would contradict the intended redacted evidence handling requirement. A deterministic marker makes accidental disclosure observable without using a live credential.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q047

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A pipeline author wants to commit learner identifiers and secret-resolution responses as proof of completion. Which evidence format is preferable?

- **A. Full raw service responses including tokens** Raw responses can disclose authentication data unrelated to the shared learning evidence requirement.
- **B. A screenshot showing the complete connection string** Visual publication still reveals sensitive material and can expose reusable access credentials.
- **C. A reusable production password beside the status** A password is not needed to substantiate the checkpoint's execution outcome.
- **D. Redacted statuses, hashes and scoped nonsecret observations** **Correct.** Useful verification metadata can establish behavior without publishing credentials or unnecessary learner identities.

**Explanation:** Raw responses can disclose authentication data unrelated to the shared learning evidence requirement. Visual publication still reveals sensitive material and can expose reusable access credentials. A password is not needed to substantiate the checkpoint's execution outcome. Useful verification metadata can establish behavior without publishing credentials or unnecessary learner identities.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q048

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A redaction function masks a known token but includes an unknown password under another JSON key. What limitation should the test address?

- **A. Only whether the known token was masked in stdout** Structured artifact fields can still leak credentials even when console output masks one known value.
- **B. Coverage across sensitive fields and structured outputs** **Correct.** Redaction must account for relevant output paths rather than one known value alone.
- **C. Only whether one exact token string was replaced** A single-value replacement can leave other sensitive field values exposed in the structured report.
- **D. Only whether the JSON remains pretty-printed** Formatting does not establish that sensitive values were removed from structured evidence.

**Explanation:** Structured artifact fields can still leak credentials even when console output masks one known value. Redaction must account for relevant output paths rather than one known value alone. A single-value replacement can leave other sensitive field values exposed in the structured report. Formatting does not establish that sensitive values were removed from structured evidence.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q049

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The pipeline enables shell command tracing while passing a secret to a command argument. Which change reduces log exposure most directly?

- **A. Encode the argument before tracing it** Reversible transformations can still disclose the underlying secret to log viewers.
- **B. Publish the trace only after successful deployment** Success does not eliminate sensitive material from the retained command trace.
- **C. Avoid tracing secrets and use supported protected input mechanisms** **Correct.** Command echoing can expose arguments, so secret handling must avoid unnecessary logged values.
- **D. Increase trace verbosity to improve masking** More command output can enlarge exposure rather than strengthen secret redaction guarantees.

**Explanation:** Reversible transformations can still disclose the underlying secret to log viewers. Success does not eliminate sensitive material from the retained command trace. Command echoing can expose arguments, so secret handling must avoid unnecessary logged values. More command output can enlarge exposure rather than strengthen secret redaction guarantees.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)

## L21-Q050

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The local exercise rejects unsafe references, removes synthetic files on both paths and finds no leakage marker. Federation, vault resolution and Library authorization were not executed. Which final status is accurate?

```json
{"unsafeReferencesRejected":true,"bothFilePathsCleaned":true,"leakMarkerAbsent":true,"federationExecuted":false,"vaultResolvedLive":false,"libraryAuthorizationVerified":false}
```

- **A. Mark secure-file provider validation passed after local temporary-file cleanup** Local filesystem cleanup does not exercise Azure DevOps Library authorization or protected file delivery.
- **B. Local handling verified; provider integrations remain unverified** **Correct.** Offline evidence covers local behavior without claiming external identity and protected-service authorization succeeded.
- **C. All live secrets integrations passed** No actual token exchange, secret retrieval or protected file download was observed.
- **D. Provider failures proven by synthetic tests** Local fixture behavior cannot establish how unexecuted external integrations would respond.

**Explanation:** Offline evidence covers local behavior without claiming external identity and protected-service authorization succeeded. Local filesystem cleanup does not exercise Azure DevOps Library authorization or protected file delivery. No actual token exchange, secret retrieval or protected file download was observed. Local fixture behavior cannot establish how unexecuted external integrations would respond.

**Sources:** [S5](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)
