# Lab 20 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L20-Q001

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which next change most directly satisfies the stated requirement?

- **A. Use a suitable managed identity with scoped resource access** **Correct.** Azure can manage the workload identity lifecycle. This directly addresses the constraint stated in this case.
- **B. Evaluate a user-assigned managed identity** Its lifecycle can be independent of a single resource. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.
- **C. Replace personal dependence with an appropriate service identity strategy** Automation needs accountable nonpersonal lifecycle management. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.

**Explanation:** Azure can manage the workload identity lifecycle. The selected answer is use a suitable managed identity with scoped resource access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q002

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which explanation best accounts for the behavior or constraint described?

- **A. The job's availability is coupled to a personal credential** Expiration and employee changes become operational dependencies. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **B. The application currently relies on manually stored credentials** **Correct.** A managed identity can remove that secret handling. This directly addresses the constraint stated in this case.
- **C. A system-assigned identity is tied to its resource lifecycle** Deleting that resource affects its associated identity. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.

**Explanation:** A managed identity can remove that secret handling. The selected answer is the application currently relies on manually stored credentials.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q003

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The workload authenticates without a stored client secret** **Correct.** The test must verify the actual resource access path. This directly addresses the constraint stated in this case.
- **B. Replacement resources use the intended retained identity** The identity must survive the relevant resource recreation. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.
- **C. The job runs under the documented service-owned authentication path** Identity provenance should be visible and reviewable. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.

**Explanation:** The test must verify the actual resource access path. The selected answer is the workload authenticates without a stored client secret.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q004

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which execution safeguard most directly addresses the risk in this case?

- **A. Use short-lived or federated credentials when supported** Reducing reusable credentials lowers rotation and leakage exposure. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **B. Assign only the target resource permissions required** **Correct.** Managed identity does not imply least privilege automatically. This directly addresses the constraint stated in this case.
- **C. Limit which resources may attach the shared identity** Attachment can grant access through the identity. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.

**Explanation:** Managed identity does not imply least privilege automatically. The selected answer is assign only the target resource permissions required.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q005

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. The team selects this remedy: "Use a suitable managed identity with scoped resource access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared identity reduces per-resource attribution granularity** Isolation may favor separate identities instead. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.
- **B. Legacy tools may still require a PAT** Such exceptions need scope expiry and an owner. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **C. Managed identities still need authorization and lifecycle design** **Correct.** Secret removal does not remove access governance. This directly addresses the constraint stated in this case.

**Explanation:** Secret removal does not remove access governance. The selected answer is managed identities still need authorization and lifecycle design.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q006

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which next change most directly satisfies the stated requirement?

- **A. Use a suitable managed identity with scoped resource access** Azure can manage the workload identity lifecycle. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **B. Evaluate a user-assigned managed identity** **Correct.** Its lifecycle can be independent of a single resource. This directly addresses the constraint stated in this case.
- **C. Use a narrowly scoped GitHub App installation** App identity separates integration ownership from a person. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.

**Explanation:** Its lifecycle can be independent of a single resource. The selected answer is evaluate a user-assigned managed identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q007

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which explanation best accounts for the behavior or constraint described?

- **A. The integration depends on an individual's credential lifecycle** Employee access changes can interrupt automation. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. The application currently relies on manually stored credentials** A managed identity can remove that secret handling. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **C. A system-assigned identity is tied to its resource lifecycle** **Correct.** Deleting that resource affects its associated identity. This directly addresses the constraint stated in this case.

**Explanation:** Deleting that resource affects its associated identity. The selected answer is a system-assigned identity is tied to its resource lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q008

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The workload authenticates without a stored client secret** The test must verify the actual resource access path. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **B. Replacement resources use the intended retained identity** **Correct.** The identity must survive the relevant resource recreation. This directly addresses the constraint stated in this case.
- **C. The installation has only the required repository permissions** The proof should include denied unrelated access. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.

**Explanation:** The identity must survive the relevant resource recreation. The selected answer is replacement resources use the intended retained identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q009

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which execution safeguard most directly addresses the risk in this case?

- **A. Protect the app credentials and rotate them appropriately** Service identity still has sensitive authentication material. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Assign only the target resource permissions required** Managed identity does not imply least privilege automatically. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **C. Limit which resources may attach the shared identity** **Correct.** Attachment can grant access through the identity. This directly addresses the constraint stated in this case.

**Explanation:** Attachment can grant access through the identity. The selected answer is limit which resources may attach the shared identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q010

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. The team selects this remedy: "Evaluate a user-assigned managed identity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. App setup adds installation and permission administration** The benefit is clearer service ownership and scope. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Managed identities still need authorization and lifecycle design** Secret removal does not remove access governance. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **C. Shared identity reduces per-resource attribution granularity** **Correct.** Isolation may favor separate identities instead. This directly addresses the constraint stated in this case.

**Explanation:** Isolation may favor separate identities instead. The selected answer is shared identity reduces per-resource attribution granularity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q011

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which next change most directly satisfies the stated requirement?

- **A. Evaluate a user-assigned managed identity** Its lifecycle can be independent of a single resource. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.
- **B. Use a narrowly scoped GitHub App installation** **Correct.** App identity separates integration ownership from a person. This directly addresses the constraint stated in this case.
- **C. Reduce GITHUB_TOKEN permissions to the required minimum** Workflow authority should match the task. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.

**Explanation:** App identity separates integration ownership from a person. The selected answer is use a narrowly scoped GitHub App installation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q012

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which explanation best accounts for the behavior or constraint described?

- **A. The integration depends on an individual's credential lifecycle** **Correct.** Employee access changes can interrupt automation. This directly addresses the constraint stated in this case.
- **B. The token's effective scope exceeds read-only build needs** Defaults can grant unnecessary capabilities. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **C. A system-assigned identity is tied to its resource lifecycle** Deleting that resource affects its associated identity. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.

**Explanation:** Employee access changes can interrupt automation. The selected answer is the integration depends on an individual's credential lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q013

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The installation has only the required repository permissions** **Correct.** The proof should include denied unrelated access. This directly addresses the constraint stated in this case.
- **B. Checkout works while unrelated writes are rejected** Both useful operation and denied excess matter. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **C. Replacement resources use the intended retained identity** The identity must survive the relevant resource recreation. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.

**Explanation:** The proof should include denied unrelated access. The selected answer is the installation has only the required repository permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q014

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which execution safeguard most directly addresses the risk in this case?

- **A. Grant elevated rights only to trusted jobs needing them** Permission escalation should follow a deliberate boundary. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **B. Limit which resources may attach the shared identity** Attachment can grant access through the identity. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.
- **C. Protect the app credentials and rotate them appropriately** **Correct.** Service identity still has sensitive authentication material. This directly addresses the constraint stated in this case.

**Explanation:** Service identity still has sensitive authentication material. The selected answer is protect the app credentials and rotate them appropriately.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q015

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. The team selects this remedy: "Use a narrowly scoped GitHub App installation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. App setup adds installation and permission administration** **Correct.** The benefit is clearer service ownership and scope. This directly addresses the constraint stated in this case.
- **B. Tighter scopes can break implicit workflow assumptions** Those dependencies should be reviewed explicitly. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **C. Shared identity reduces per-resource attribution granularity** Isolation may favor separate identities instead. That addresses a different requirement: Identity lifecycle. It does not directly resolve this case's stated constraint.

**Explanation:** The benefit is clearer service ownership and scope. The selected answer is app setup adds installation and permission administration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q016

Foundational · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which next change most directly satisfies the stated requirement?

- **A. Use a narrowly scoped GitHub App installation** App identity separates integration ownership from a person. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Reduce GITHUB_TOKEN permissions to the required minimum** **Correct.** Workflow authority should match the task. This directly addresses the constraint stated in this case.
- **C. Restrict connection scope and authorize intended pipelines explicitly** The connection is a protected deployment capability. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.

**Explanation:** Workflow authority should match the task. The selected answer is reduce GITHUB_TOKEN permissions to the required minimum.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q017

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which explanation best accounts for the behavior or constraint described?

- **A. Resource authorization and Azure role scope are overly broad** Either can expand the attack surface. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.
- **B. The integration depends on an individual's credential lifecycle** Employee access changes can interrupt automation. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **C. The token's effective scope exceeds read-only build needs** **Correct.** Defaults can grant unnecessary capabilities. This directly addresses the constraint stated in this case.

**Explanation:** Defaults can grant unnecessary capabilities. The selected answer is the token's effective scope exceeds read-only build needs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q018

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The installation has only the required repository permissions** The proof should include denied unrelated access. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Checkout works while unrelated writes are rejected** **Correct.** Both useful operation and denied excess matter. This directly addresses the constraint stated in this case.
- **C. The intended pipeline deploys while an unauthorized pipeline is denied** The test should cross the actual consumer boundary. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.

**Explanation:** Both useful operation and denied excess matter. The selected answer is checkout works while unrelated writes are rejected.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q019

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which execution safeguard most directly addresses the risk in this case?

- **A. Protect the app credentials and rotate them appropriately** Service identity still has sensitive authentication material. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Grant elevated rights only to trusted jobs needing them** **Correct.** Permission escalation should follow a deliberate boundary. This directly addresses the constraint stated in this case.
- **C. Inspect both service-connection permissions and Azure assignments** Two authorization layers affect effective access. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.

**Explanation:** Permission escalation should follow a deliberate boundary. The selected answer is grant elevated rights only to trusted jobs needing them.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q020

Advanced · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. The team selects this remedy: "Reduce GITHUB_TOKEN permissions to the required minimum." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. App setup adds installation and permission administration** The benefit is clearer service ownership and scope. That addresses a different requirement: GitHub automation. It does not directly resolve this case's stated constraint.
- **B. Tighter scopes can break implicit workflow assumptions** **Correct.** Those dependencies should be reviewed explicitly. This directly addresses the constraint stated in this case.
- **C. Narrow connections require more explicit onboarding** New pipelines need deliberate permission review. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.

**Explanation:** Those dependencies should be reviewed explicitly. The selected answer is tighter scopes can break implicit workflow assumptions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q021

Foundational · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which next change most directly satisfies the stated requirement?

- **A. Use the appropriate limited repository collaboration access** The principal needs a narrow collaboration scope. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **B. Reduce GITHUB_TOKEN permissions to the required minimum** Workflow authority should match the task. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **C. Restrict connection scope and authorize intended pipelines explicitly** **Correct.** The connection is a protected deployment capability. This directly addresses the constraint stated in this case.

**Explanation:** The connection is a protected deployment capability. The selected answer is restrict connection scope and authorize intended pipelines explicitly.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q022

Foundational · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which explanation best accounts for the behavior or constraint described?

- **A. The invitation grants more organizational reach than needed** Task access and organization membership are separate choices. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **B. The token's effective scope exceeds read-only build needs** Defaults can grant unnecessary capabilities. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.
- **C. Resource authorization and Azure role scope are overly broad** **Correct.** Either can expand the attack surface. This directly addresses the constraint stated in this case.

**Explanation:** Either can expand the attack surface. The selected answer is resource authorization and Azure role scope are overly broad.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q023

Applied · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended pipeline deploys while an unauthorized pipeline is denied** **Correct.** The test should cross the actual consumer boundary. This directly addresses the constraint stated in this case.
- **B. The contractor reviews the intended repository without broader access** The check should include an unrelated private repository. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **C. Checkout works while unrelated writes are rejected** Both useful operation and denied excess matter. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.

**Explanation:** The test should cross the actual consumer boundary. The selected answer is the intended pipeline deploys while an unauthorized pipeline is denied.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q024

Applied · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which execution safeguard most directly addresses the risk in this case?

- **A. Inspect both service-connection permissions and Azure assignments** **Correct.** Two authorization layers affect effective access. This directly addresses the constraint stated in this case.
- **B. Review repository role and sensitive workflow permissions** Read collaboration still needs an appropriate trust boundary. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **C. Grant elevated rights only to trusted jobs needing them** Permission escalation should follow a deliberate boundary. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.

**Explanation:** Two authorization layers affect effective access. The selected answer is inspect both service-connection permissions and Azure assignments.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q025

Advanced · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. The team selects this remedy: "Restrict connection scope and authorize intended pipelines explicitly." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Narrow connections require more explicit onboarding** **Correct.** New pipelines need deliberate permission review. This directly addresses the constraint stated in this case.
- **B. Outside collaboration may limit some organization features** Choose access based on actual work requirements. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **C. Tighter scopes can break implicit workflow assumptions** Those dependencies should be reviewed explicitly. That addresses a different requirement: Workflow token scope. It does not directly resolve this case's stated constraint.

**Explanation:** New pipelines need deliberate permission review. The selected answer is narrow connections require more explicit onboarding.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q026

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which next change most directly satisfies the stated requirement?

- **A. Inspect effective group and repository permissions** Combined permission assignments determine actual access. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **B. Restrict connection scope and authorize intended pipelines explicitly** The connection is a protected deployment capability. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.
- **C. Use the appropriate limited repository collaboration access** **Correct.** The principal needs a narrow collaboration scope. This directly addresses the constraint stated in this case.

**Explanation:** The principal needs a narrow collaboration scope. The selected answer is use the appropriate limited repository collaboration access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q027

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which explanation best accounts for the behavior or constraint described?

- **A. Resource authorization and Azure role scope are overly broad** Either can expand the attack surface. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.
- **B. The invitation grants more organizational reach than needed** **Correct.** Task access and organization membership are separate choices. This directly addresses the constraint stated in this case.
- **C. An overlapping explicit restriction can override the expected grant** One allowed membership does not explain all effective rights. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.

**Explanation:** Task access and organization membership are separate choices. The selected answer is the invitation grants more organizational reach than needed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q028

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended pipeline deploys while an unauthorized pipeline is denied** The test should cross the actual consumer boundary. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.
- **B. The contractor reviews the intended repository without broader access** **Correct.** The check should include an unrelated private repository. This directly addresses the constraint stated in this case.
- **C. The intended checkout succeeds after the conflict is corrected** The repair should avoid broad administrator promotion. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.

**Explanation:** The check should include an unrelated private repository. The selected answer is the contractor reviews the intended repository without broader access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q029

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which execution safeguard most directly addresses the risk in this case?

- **A. Review repository role and sensitive workflow permissions** **Correct.** Read collaboration still needs an appropriate trust boundary. This directly addresses the constraint stated in this case.
- **B. Confirm the denied scope protects no required separate boundary** Removing a deny can expose unrelated resources. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **C. Inspect both service-connection permissions and Azure assignments** Two authorization layers affect effective access. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.

**Explanation:** Read collaboration still needs an appropriate trust boundary. The selected answer is review repository role and sensitive workflow permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q030

Advanced · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. The team selects this remedy: "Use the appropriate limited repository collaboration access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Complex inheritance increases access troubleshooting effort** Simpler groups make effective rights easier to review. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **B. Narrow connections require more explicit onboarding** New pipelines need deliberate permission review. That addresses a different requirement: Azure service connection. It does not directly resolve this case's stated constraint.
- **C. Outside collaboration may limit some organization features** **Correct.** Choose access based on actual work requirements. This directly addresses the constraint stated in this case.

**Explanation:** Choose access based on actual work requirements. The selected answer is outside collaboration may limit some organization features.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q031

Foundational · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which next change most directly satisfies the stated requirement?

- **A. Inspect effective group and repository permissions** **Correct.** Combined permission assignments determine actual access. This directly addresses the constraint stated in this case.
- **B. Choose the access level and permissions needed for the actual task** Licensing access and security permissions are different controls. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. Use the appropriate limited repository collaboration access** The principal needs a narrow collaboration scope. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.

**Explanation:** Combined permission assignments determine actual access. The selected answer is inspect effective group and repository permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q032

Foundational · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which explanation best accounts for the behavior or constraint described?

- **A. An overlapping explicit restriction can override the expected grant** **Correct.** One allowed membership does not explain all effective rights. This directly addresses the constraint stated in this case.
- **B. A security grant cannot necessarily add an unavailable access-level feature** Feature entitlement and permission checks both matter. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. The invitation grants more organizational reach than needed** Task access and organization membership are separate choices. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.

**Explanation:** One allowed membership does not explain all effective rights. The selected answer is an overlapping explicit restriction can override the expected grant.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q033

Applied · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The contractor reviews the intended repository without broader access** The check should include an unrelated private repository. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **B. The intended checkout succeeds after the conflict is corrected** **Correct.** The repair should avoid broad administrator promotion. This directly addresses the constraint stated in this case.
- **C. The user can perform the approved task under the chosen access model** Validate the actual private-project operation. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The repair should avoid broad administrator promotion. The selected answer is the intended checkout succeeds after the conflict is corrected.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q034

Applied · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which execution safeguard most directly addresses the risk in this case?

- **A. Confirm the denied scope protects no required separate boundary** **Correct.** Removing a deny can expose unrelated resources. This directly addresses the constraint stated in this case.
- **B. Avoid granting project administration to fix a licensing limitation** Administrative authority is not the appropriate entitlement remedy. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. Review repository role and sensitive workflow permissions** Read collaboration still needs an appropriate trust boundary. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.

**Explanation:** Removing a deny can expose unrelated resources. The selected answer is confirm the denied scope protects no required separate boundary.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q035

Advanced · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. The team selects this remedy: "Inspect effective group and repository permissions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Higher access levels may have licensing implications** Provision according to required capabilities. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **B. Outside collaboration may limit some organization features** Choose access based on actual work requirements. That addresses a different requirement: External GitHub reviewer. It does not directly resolve this case's stated constraint.
- **C. Complex inheritance increases access troubleshooting effort** **Correct.** Simpler groups make effective rights easier to review. This directly addresses the constraint stated in this case.

**Explanation:** Simpler groups make effective rights easier to review. The selected answer is complex inheritance increases access troubleshooting effort.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q036

Foundational · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which next change most directly satisfies the stated requirement?

- **A. Choose the access level and permissions needed for the actual task** **Correct.** Licensing access and security permissions are different controls. This directly addresses the constraint stated in this case.
- **B. Configure team settings areas and iteration paths intentionally** Teams can have distinct planning scopes within a project. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **C. Inspect effective group and repository permissions** Combined permission assignments determine actual access. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.

**Explanation:** Licensing access and security permissions are different controls. The selected answer is choose the access level and permissions needed for the actual task.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q037

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which explanation best accounts for the behavior or constraint described?

- **A. An overlapping explicit restriction can override the expected grant** One allowed membership does not explain all effective rights. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **B. A security grant cannot necessarily add an unavailable access-level feature** **Correct.** Feature entitlement and permission checks both matter. This directly addresses the constraint stated in this case.
- **C. Project membership does not automatically define each team's workflow** Planning configuration has its own boundaries. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.

**Explanation:** Feature entitlement and permission checks both matter. The selected answer is a security grant cannot necessarily add an unavailable access-level feature.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q038

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Each team sees the intended backlog and iteration configuration** The test should inspect both teams' effective views. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **B. The intended checkout succeeds after the conflict is corrected** The repair should avoid broad administrator promotion. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **C. The user can perform the approved task under the chosen access model** **Correct.** Validate the actual private-project operation. This directly addresses the constraint stated in this case.

**Explanation:** Validate the actual private-project operation. The selected answer is the user can perform the approved task under the chosen access model.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q039

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which execution safeguard most directly addresses the risk in this case?

- **A. Review shared project permissions separately from team planning** A backlog filter is not a security barrier. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **B. Confirm the denied scope protects no required separate boundary** Removing a deny can expose unrelated resources. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **C. Avoid granting project administration to fix a licensing limitation** **Correct.** Administrative authority is not the appropriate entitlement remedy. This directly addresses the constraint stated in this case.

**Explanation:** Administrative authority is not the appropriate entitlement remedy. The selected answer is avoid granting project administration to fix a licensing limitation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q040

Advanced · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. The team selects this remedy: "Choose the access level and permissions needed for the actual task." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared projects simplify administration but share some settings** Team autonomy is not total project isolation. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **B. Complex inheritance increases access troubleshooting effort** Simpler groups make effective rights easier to review. That addresses a different requirement: Unexpected Azure deny. It does not directly resolve this case's stated constraint.
- **C. Higher access levels may have licensing implications** **Correct.** Provision according to required capabilities. This directly addresses the constraint stated in this case.

**Explanation:** Provision according to required capabilities. The selected answer is higher access levels may have licensing implications.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q041

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which next change most directly satisfies the stated requirement?

- **A. Replace personal dependence with an appropriate service identity strategy** Automation needs accountable nonpersonal lifecycle management. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **B. Choose the access level and permissions needed for the actual task** Licensing access and security permissions are different controls. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. Configure team settings areas and iteration paths intentionally** **Correct.** Teams can have distinct planning scopes within a project. This directly addresses the constraint stated in this case.

**Explanation:** Teams can have distinct planning scopes within a project. The selected answer is configure team settings areas and iteration paths intentionally.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q042

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which explanation best accounts for the behavior or constraint described?

- **A. The job's availability is coupled to a personal credential** Expiration and employee changes become operational dependencies. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **B. A security grant cannot necessarily add an unavailable access-level feature** Feature entitlement and permission checks both matter. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. Project membership does not automatically define each team's workflow** **Correct.** Planning configuration has its own boundaries. This directly addresses the constraint stated in this case.

**Explanation:** Planning configuration has its own boundaries. The selected answer is project membership does not automatically define each team's workflow.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q043

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Each team sees the intended backlog and iteration configuration** **Correct.** The test should inspect both teams' effective views. This directly addresses the constraint stated in this case.
- **B. The job runs under the documented service-owned authentication path** Identity provenance should be visible and reviewable. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **C. The user can perform the approved task under the chosen access model** Validate the actual private-project operation. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.

**Explanation:** The test should inspect both teams' effective views. The selected answer is each team sees the intended backlog and iteration configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q044

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which execution safeguard most directly addresses the risk in this case?

- **A. Use short-lived or federated credentials when supported** Reducing reusable credentials lowers rotation and leakage exposure. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **B. Avoid granting project administration to fix a licensing limitation** Administrative authority is not the appropriate entitlement remedy. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.
- **C. Review shared project permissions separately from team planning** **Correct.** A backlog filter is not a security barrier. This directly addresses the constraint stated in this case.

**Explanation:** A backlog filter is not a security barrier. The selected answer is review shared project permissions separately from team planning.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q045

Advanced · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. The team selects this remedy: "Configure team settings areas and iteration paths intentionally." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Shared projects simplify administration but share some settings** **Correct.** Team autonomy is not total project isolation. This directly addresses the constraint stated in this case.
- **B. Legacy tools may still require a PAT** Such exceptions need scope expiry and an owner. That addresses a different requirement: Personal-token expiry. It does not directly resolve this case's stated constraint.
- **C. Higher access levels may have licensing implications** Provision according to required capabilities. That addresses a different requirement: Stakeholder assumption. It does not directly resolve this case's stated constraint.

**Explanation:** Team autonomy is not total project isolation. The selected answer is shared projects simplify administration but share some settings.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q046

Foundational · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which next change most directly satisfies the stated requirement?

- **A. Replace personal dependence with an appropriate service identity strategy** **Correct.** Automation needs accountable nonpersonal lifecycle management. This directly addresses the constraint stated in this case.
- **B. Use a suitable managed identity with scoped resource access** Azure can manage the workload identity lifecycle. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **C. Configure team settings areas and iteration paths intentionally** Teams can have distinct planning scopes within a project. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.

**Explanation:** Automation needs accountable nonpersonal lifecycle management. The selected answer is replace personal dependence with an appropriate service identity strategy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q047

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which explanation best accounts for the behavior or constraint described?

- **A. The application currently relies on manually stored credentials** A managed identity can remove that secret handling. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **B. Project membership does not automatically define each team's workflow** Planning configuration has its own boundaries. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **C. The job's availability is coupled to a personal credential** **Correct.** Expiration and employee changes become operational dependencies. This directly addresses the constraint stated in this case.

**Explanation:** Expiration and employee changes become operational dependencies. The selected answer is the job's availability is coupled to a personal credential.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q048

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The workload authenticates without a stored client secret** The test must verify the actual resource access path. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **B. Each team sees the intended backlog and iteration configuration** The test should inspect both teams' effective views. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **C. The job runs under the documented service-owned authentication path** **Correct.** Identity provenance should be visible and reviewable. This directly addresses the constraint stated in this case.

**Explanation:** Identity provenance should be visible and reviewable. The selected answer is the job runs under the documented service-owned authentication path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q049

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which execution safeguard most directly addresses the risk in this case?

- **A. Review shared project permissions separately from team planning** A backlog filter is not a security barrier. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.
- **B. Use short-lived or federated credentials when supported** **Correct.** Reducing reusable credentials lowers rotation and leakage exposure. This directly addresses the constraint stated in this case.
- **C. Assign only the target resource permissions required** Managed identity does not imply least privilege automatically. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.

**Explanation:** Reducing reusable credentials lowers rotation and leakage exposure. The selected answer is use short-lived or federated credentials when supported.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)

## L20-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. The team selects this remedy: "Replace personal dependence with an appropriate service identity strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Legacy tools may still require a PAT** **Correct.** Such exceptions need scope expiry and an owner. This directly addresses the constraint stated in this case.
- **B. Managed identities still need authorization and lifecycle design** Secret removal does not remove access governance. That addresses a different requirement: Hosted workload identity. It does not directly resolve this case's stated constraint.
- **C. Shared projects simplify administration but share some settings** Team autonomy is not total project isolation. That addresses a different requirement: Team boundary. It does not directly resolve this case's stated constraint.

**Explanation:** Such exceptions need scope expiry and an owner. The selected answer is legacy tools may still require a PAT.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview); [S3](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github)
