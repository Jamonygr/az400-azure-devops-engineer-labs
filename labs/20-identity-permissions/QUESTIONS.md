# Lab 20 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L20-Q001

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which next change most directly satisfies the stated requirement?

- **A.** Use a suitable managed identity with scoped resource access
- **B.** Evaluate a user-assigned managed identity
- **C.** Replace personal dependence with an appropriate service identity strategy

## L20-Q002

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which explanation best accounts for the behavior or constraint described?

- **A.** The job's availability is coupled to a personal credential
- **B.** The application currently relies on manually stored credentials
- **C.** A system-assigned identity is tied to its resource lifecycle

## L20-Q003

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The workload authenticates without a stored client secret
- **B.** Replacement resources use the intended retained identity
- **C.** The job runs under the documented service-owned authentication path

## L20-Q004

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use short-lived or federated credentials when supported
- **B.** Assign only the target resource permissions required
- **C.** Limit which resources may attach the shared identity

## L20-Q005

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Hosted workload identity: An Azure service needs to access another Azure resource without embedding a reusable client secret. The team selects this remedy: "Use a suitable managed identity with scoped resource access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared identity reduces per-resource attribution granularity
- **B.** Legacy tools may still require a PAT
- **C.** Managed identities still need authorization and lifecycle design

## L20-Q006

Foundational · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which next change most directly satisfies the stated requirement?

- **A.** Use a suitable managed identity with scoped resource access
- **B.** Evaluate a user-assigned managed identity
- **C.** Use a narrowly scoped GitHub App installation

## L20-Q007

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which explanation best accounts for the behavior or constraint described?

- **A.** The integration depends on an individual's credential lifecycle
- **B.** The application currently relies on manually stored credentials
- **C.** A system-assigned identity is tied to its resource lifecycle

## L20-Q008

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The workload authenticates without a stored client secret
- **B.** Replacement resources use the intended retained identity
- **C.** The installation has only the required repository permissions

## L20-Q009

Applied · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. Which execution safeguard most directly addresses the risk in this case?

- **A.** Protect the app credentials and rotate them appropriately
- **B.** Assign only the target resource permissions required
- **C.** Limit which resources may attach the shared identity

## L20-Q010

Advanced · [CP3](README.md#task-3) · [D4.1.1](../../docs/objective-map.md)

Identity lifecycle: Several independently recreated resources need a deliberately shared Azure identity that survives replacement of one resource. The team selects this remedy: "Evaluate a user-assigned managed identity." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** App setup adds installation and permission administration
- **B.** Managed identities still need authorization and lifecycle design
- **C.** Shared identity reduces per-resource attribution granularity

## L20-Q011

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which next change most directly satisfies the stated requirement?

- **A.** Evaluate a user-assigned managed identity
- **B.** Use a narrowly scoped GitHub App installation
- **C.** Reduce GITHUB_TOKEN permissions to the required minimum

## L20-Q012

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which explanation best accounts for the behavior or constraint described?

- **A.** The integration depends on an individual's credential lifecycle
- **B.** The token's effective scope exceeds read-only build needs
- **C.** A system-assigned identity is tied to its resource lifecycle

## L20-Q013

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The installation has only the required repository permissions
- **B.** Checkout works while unrelated writes are rejected
- **C.** Replacement resources use the intended retained identity

## L20-Q014

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. Which execution safeguard most directly addresses the risk in this case?

- **A.** Grant elevated rights only to trusted jobs needing them
- **B.** Limit which resources may attach the shared identity
- **C.** Protect the app credentials and rotate them appropriately

## L20-Q015

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md)

GitHub automation: A long-running integration should act as a service across selected repositories without depending on an employee's personal token. The team selects this remedy: "Use a narrowly scoped GitHub App installation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** App setup adds installation and permission administration
- **B.** Tighter scopes can break implicit workflow assumptions
- **C.** Shared identity reduces per-resource attribution granularity

## L20-Q016

Foundational · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which next change most directly satisfies the stated requirement?

- **A.** Use a narrowly scoped GitHub App installation
- **B.** Reduce GITHUB_TOKEN permissions to the required minimum
- **C.** Restrict connection scope and authorize intended pipelines explicitly

## L20-Q017

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which explanation best accounts for the behavior or constraint described?

- **A.** Resource authorization and Azure role scope are overly broad
- **B.** The integration depends on an individual's credential lifecycle
- **C.** The token's effective scope exceeds read-only build needs

## L20-Q018

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The installation has only the required repository permissions
- **B.** Checkout works while unrelated writes are rejected
- **C.** The intended pipeline deploys while an unauthorized pipeline is denied

## L20-Q019

Applied · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. Which execution safeguard most directly addresses the risk in this case?

- **A.** Protect the app credentials and rotate them appropriately
- **B.** Grant elevated rights only to trusted jobs needing them
- **C.** Inspect both service-connection permissions and Azure assignments

## L20-Q020

Advanced · [CP1](README.md#task-1) · [D4.1.2](../../docs/objective-map.md)

Workflow token scope: A GitHub job only reads source but receives write access to issues and repository contents. The team selects this remedy: "Reduce GITHUB_TOKEN permissions to the required minimum." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** App setup adds installation and permission administration
- **B.** Tighter scopes can break implicit workflow assumptions
- **C.** Narrow connections require more explicit onboarding

## L20-Q021

Foundational · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which next change most directly satisfies the stated requirement?

- **A.** Use the appropriate limited repository collaboration access
- **B.** Reduce GITHUB_TOKEN permissions to the required minimum
- **C.** Restrict connection scope and authorize intended pipelines explicitly

## L20-Q022

Foundational · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which explanation best accounts for the behavior or constraint described?

- **A.** The invitation grants more organizational reach than needed
- **B.** The token's effective scope exceeds read-only build needs
- **C.** Resource authorization and Azure role scope are overly broad

## L20-Q023

Applied · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended pipeline deploys while an unauthorized pipeline is denied
- **B.** The contractor reviews the intended repository without broader access
- **C.** Checkout works while unrelated writes are rejected

## L20-Q024

Applied · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. Which execution safeguard most directly addresses the risk in this case?

- **A.** Inspect both service-connection permissions and Azure assignments
- **B.** Review repository role and sensitive workflow permissions
- **C.** Grant elevated rights only to trusted jobs needing them

## L20-Q025

Advanced · [CP4](README.md#task-4) · [D4.1.3](../../docs/objective-map.md)

Azure service connection: A deployment authorizes every pipeline in the project to a broadly privileged Azure connection for convenience. The team selects this remedy: "Restrict connection scope and authorize intended pipelines explicitly." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Narrow connections require more explicit onboarding
- **B.** Outside collaboration may limit some organization features
- **C.** Tighter scopes can break implicit workflow assumptions

## L20-Q026

Foundational · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which next change most directly satisfies the stated requirement?

- **A.** Inspect effective group and repository permissions
- **B.** Restrict connection scope and authorize intended pipelines explicitly
- **C.** Use the appropriate limited repository collaboration access

## L20-Q027

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which explanation best accounts for the behavior or constraint described?

- **A.** Resource authorization and Azure role scope are overly broad
- **B.** The invitation grants more organizational reach than needed
- **C.** An overlapping explicit restriction can override the expected grant

## L20-Q028

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended pipeline deploys while an unauthorized pipeline is denied
- **B.** The contractor reviews the intended repository without broader access
- **C.** The intended checkout succeeds after the conflict is corrected

## L20-Q029

Applied · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review repository role and sensitive workflow permissions
- **B.** Confirm the denied scope protects no required separate boundary
- **C.** Inspect both service-connection permissions and Azure assignments

## L20-Q030

Advanced · [CP1](README.md#task-1) · [D4.1.4](../../docs/objective-map.md)

External GitHub reviewer: A contractor needs access to one repository but is invited with broad organization membership privileges. The team selects this remedy: "Use the appropriate limited repository collaboration access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Complex inheritance increases access troubleshooting effort
- **B.** Narrow connections require more explicit onboarding
- **C.** Outside collaboration may limit some organization features

## L20-Q031

Foundational · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which next change most directly satisfies the stated requirement?

- **A.** Inspect effective group and repository permissions
- **B.** Choose the access level and permissions needed for the actual task
- **C.** Use the appropriate limited repository collaboration access

## L20-Q032

Foundational · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which explanation best accounts for the behavior or constraint described?

- **A.** An overlapping explicit restriction can override the expected grant
- **B.** A security grant cannot necessarily add an unavailable access-level feature
- **C.** The invitation grants more organizational reach than needed

## L20-Q033

Applied · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The contractor reviews the intended repository without broader access
- **B.** The intended checkout succeeds after the conflict is corrected
- **C.** The user can perform the approved task under the chosen access model

## L20-Q034

Applied · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. Which execution safeguard most directly addresses the risk in this case?

- **A.** Confirm the denied scope protects no required separate boundary
- **B.** Avoid granting project administration to fix a licensing limitation
- **C.** Review repository role and sensitive workflow permissions

## L20-Q035

Advanced · [CP4](README.md#task-4) · [D4.1.5](../../docs/objective-map.md)

Unexpected Azure deny: A pipeline identity belongs to an allowed group and a denied group, and repository checkout fails. The team selects this remedy: "Inspect effective group and repository permissions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Higher access levels may have licensing implications
- **B.** Outside collaboration may limit some organization features
- **C.** Complex inheritance increases access troubleshooting effort

## L20-Q036

Foundational · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which next change most directly satisfies the stated requirement?

- **A.** Choose the access level and permissions needed for the actual task
- **B.** Configure team settings areas and iteration paths intentionally
- **C.** Inspect effective group and repository permissions

## L20-Q037

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which explanation best accounts for the behavior or constraint described?

- **A.** An overlapping explicit restriction can override the expected grant
- **B.** A security grant cannot necessarily add an unavailable access-level feature
- **C.** Project membership does not automatically define each team's workflow

## L20-Q038

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Each team sees the intended backlog and iteration configuration
- **B.** The intended checkout succeeds after the conflict is corrected
- **C.** The user can perform the approved task under the chosen access model

## L20-Q039

Applied · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review shared project permissions separately from team planning
- **B.** Confirm the denied scope protects no required separate boundary
- **C.** Avoid granting project administration to fix a licensing limitation

## L20-Q040

Advanced · [CP2](README.md#task-2) · [D4.1.6](../../docs/objective-map.md)

Stakeholder assumption: A user with Azure DevOps Stakeholder access expects unrestricted repository and pipeline capabilities in a private project. The team selects this remedy: "Choose the access level and permissions needed for the actual task." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared projects simplify administration but share some settings
- **B.** Complex inheritance increases access troubleshooting effort
- **C.** Higher access levels may have licensing implications

## L20-Q041

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which next change most directly satisfies the stated requirement?

- **A.** Replace personal dependence with an appropriate service identity strategy
- **B.** Choose the access level and permissions needed for the actual task
- **C.** Configure team settings areas and iteration paths intentionally

## L20-Q042

Foundational · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which explanation best accounts for the behavior or constraint described?

- **A.** The job's availability is coupled to a personal credential
- **B.** A security grant cannot necessarily add an unavailable access-level feature
- **C.** Project membership does not automatically define each team's workflow

## L20-Q043

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Each team sees the intended backlog and iteration configuration
- **B.** The job runs under the documented service-owned authentication path
- **C.** The user can perform the approved task under the chosen access model

## L20-Q044

Applied · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use short-lived or federated credentials when supported
- **B.** Avoid granting project administration to fix a licensing limitation
- **C.** Review shared project permissions separately from team planning

## L20-Q045

Advanced · [CP2](README.md#task-2) · [D4.1.7](../../docs/objective-map.md)

Team boundary: Two Azure DevOps teams share one project but require different backlogs areas and iteration schedules. The team selects this remedy: "Configure team settings areas and iteration paths intentionally." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Shared projects simplify administration but share some settings
- **B.** Legacy tools may still require a PAT
- **C.** Higher access levels may have licensing implications

## L20-Q046

Foundational · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which next change most directly satisfies the stated requirement?

- **A.** Replace personal dependence with an appropriate service identity strategy
- **B.** Use a suitable managed identity with scoped resource access
- **C.** Configure team settings areas and iteration paths intentionally

## L20-Q047

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which explanation best accounts for the behavior or constraint described?

- **A.** The application currently relies on manually stored credentials
- **B.** Project membership does not automatically define each team's workflow
- **C.** The job's availability is coupled to a personal credential

## L20-Q048

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The workload authenticates without a stored client secret
- **B.** Each team sees the intended backlog and iteration configuration
- **C.** The job runs under the documented service-owned authentication path

## L20-Q049

Applied · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review shared project permissions separately from team planning
- **B.** Use short-lived or federated credentials when supported
- **C.** Assign only the target resource permissions required

## L20-Q050

Advanced · [CP5](README.md#task-5) · [D2.2.3](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

Personal-token expiry: A nightly job fails when its owner's PAT expires, and nobody else owns the credential rotation process. The team selects this remedy: "Replace personal dependence with an appropriate service identity strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Legacy tools may still require a PAT
- **B.** Managed identities still need authorization and lifecycle design
- **C.** Shared projects simplify administration but share some settings
