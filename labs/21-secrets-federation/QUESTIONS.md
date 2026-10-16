# Lab 21 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L21-Q001

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which next change most directly satisfies the stated requirement?

- **A.** Grant the job the required id-token permission
- **B.** Assign the necessary narrow Azure resource role
- **C.** Use GitHub OIDC with a matching Azure federated identity credential

## L21-Q002

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which explanation best accounts for the behavior or constraint described?

- **A.** Identity identifiers do not authorize token issuance
- **B.** A valid token does not carry unlimited Azure permissions
- **C.** The current design relies on a reusable stored secret

## L21-Q003

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended deployment succeeds while other groups remain inaccessible
- **B.** The trusted job obtains Azure access without a client secret
- **C.** The trusted job requests an OIDC token successfully

## L21-Q004

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which execution safeguard most directly addresses the risk in this case?

- **A.** Verify tenant subscription and principal before changing assignments
- **B.** Restrict the federated subject audience and Azure role scope
- **C.** Keep unrelated token permissions minimal

## L21-Q005

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. The team selects this remedy: "Use GitHub OIDC with a matching Azure federated identity credential." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Federation requires precise trust configuration
- **B.** Token issuance is only one authentication stage
- **C.** Federation removes reusable secrets rather than authorization work

## L21-Q006

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which next change most directly satisfies the stated requirement?

- **A.** Grant the job the required id-token permission
- **B.** Match trust configuration to the actual intended subject claims
- **C.** Use GitHub OIDC with a matching Azure federated identity credential

## L21-Q007

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which explanation best accounts for the behavior or constraint described?

- **A.** The current design relies on a reusable stored secret
- **B.** Identity identifiers do not authorize token issuance
- **C.** The token subject no longer matches the credential's trust

## L21-Q008

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended environment job authenticates while other subjects are denied
- **B.** The trusted job obtains Azure access without a client secret
- **C.** The trusted job requests an OIDC token successfully

## L21-Q009

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not broaden the subject merely to silence the error
- **B.** Restrict the federated subject audience and Azure role scope
- **C.** Keep unrelated token permissions minimal

## L21-Q010

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. The team selects this remedy: "Grant the job the required id-token permission." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Federation requires precise trust configuration
- **B.** Token issuance is only one authentication stage
- **C.** Tight subject matching adds configuration maintenance

## L21-Q011

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which next change most directly satisfies the stated requirement?

- **A.** Grant the job the required id-token permission
- **B.** Match trust configuration to the actual intended subject claims
- **C.** Use the current service connection's documented issuer and subject

## L21-Q012

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which explanation best accounts for the behavior or constraint described?

- **A.** Identity identifiers do not authorize token issuance
- **B.** The token subject no longer matches the credential's trust
- **C.** Issuer behavior changes across service lifecycle updates

## L21-Q013

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The intended environment job authenticates while other subjects are denied
- **B.** The federated credential matches the connection's emitted claims
- **C.** The trusted job requests an OIDC token successfully

## L21-Q014

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review the announced issuer retirement and migration scope
- **B.** Keep unrelated token permissions minimal
- **C.** Do not broaden the subject merely to silence the error

## L21-Q015

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. The team selects this remedy: "Match trust configuration to the actual intended subject claims." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Cloud and identity scenarios can differ
- **B.** Token issuance is only one authentication stage
- **C.** Tight subject matching adds configuration maintenance

## L21-Q016

Foundational · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which next change most directly satisfies the stated requirement?

- **A.** Grant the identity the necessary scoped secret-data access
- **B.** Match trust configuration to the actual intended subject claims
- **C.** Use the current service connection's documented issuer and subject

## L21-Q017

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which explanation best accounts for the behavior or constraint described?

- **A.** Issuer behavior changes across service lifecycle updates
- **B.** Management access and data-plane secret access differ
- **C.** The token subject no longer matches the credential's trust

## L21-Q018

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The federated credential matches the connection's emitted claims
- **B.** The task retrieves only the intended secret under its identity
- **C.** The intended environment job authenticates while other subjects are denied

## L21-Q019

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which execution safeguard most directly addresses the risk in this case?

- **A.** Do not broaden the subject merely to silence the error
- **B.** Review the announced issuer retirement and migration scope
- **C.** Avoid granting broad vault administration as a shortcut

## L21-Q020

Advanced · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. The team selects this remedy: "Use the current service connection's documented issuer and subject." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Tight subject matching adds configuration maintenance
- **B.** Cloud and identity scenarios can differ
- **C.** Vault access adds a runtime service dependency

## L21-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which next change most directly satisfies the stated requirement?

- **A.** Store it as a protected secure file or supported secret-store artifact
- **B.** Use the current service connection's documented issuer and subject
- **C.** Grant the identity the necessary scoped secret-data access

## L21-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which explanation best accounts for the behavior or constraint described?

- **A.** Management access and data-plane secret access differ
- **B.** Source control makes the certificate broadly and historically available
- **C.** Issuer behavior changes across service lifecycle updates

## L21-Q023

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Only the approved signing task can obtain the protected file
- **B.** The federated credential matches the connection's emitted claims
- **C.** The task retrieves only the intended secret under its identity

## L21-Q024

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review the announced issuer retirement and migration scope
- **B.** Avoid granting broad vault administration as a shortcut
- **C.** Delete temporary local copies after the supported task lifecycle

## L21-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. The team selects this remedy: "Grant the identity the necessary scoped secret-data access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Cloud and identity scenarios can differ
- **B.** Vault access adds a runtime service dependency
- **C.** Secure storage still needs certificate lifecycle management

## L21-Q026

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which next change most directly satisfies the stated requirement?

- **A.** Grant the identity the necessary scoped secret-data access
- **B.** Store it as a protected secure file or supported secret-store artifact
- **C.** Stop emitting secret-derived material to logs

## L21-Q027

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which explanation best accounts for the behavior or constraint described?

- **A.** Management access and data-plane secret access differ
- **B.** Source control makes the certificate broadly and historically available
- **C.** Masking may not recognize derived or partial values

## L21-Q028

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Logs contain no raw transformed or partial sensitive value
- **B.** The task retrieves only the intended secret under its identity
- **C.** Only the approved signing task can obtain the protected file

## L21-Q029

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which execution safeguard most directly addresses the risk in this case?

- **A.** Delete temporary local copies after the supported task lifecycle
- **B.** Use synthetic secrets during deliberate leakage tests
- **C.** Avoid granting broad vault administration as a shortcut

## L21-Q030

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. The team selects this remedy: "Store it as a protected secure file or supported secret-store artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Secure storage still needs certificate lifecycle management
- **B.** Masking is a defensive aid with limitations
- **C.** Vault access adds a runtime service dependency

## L21-Q031

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which next change most directly satisfies the stated requirement?

- **A.** Store it as a protected secure file or supported secret-store artifact
- **B.** Stop emitting secret-derived material to logs
- **C.** Align version selection and consumers with the rotation plan

## L21-Q032

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which explanation best accounts for the behavior or constraint described?

- **A.** Source control makes the certificate broadly and historically available
- **B.** Masking may not recognize derived or partial values
- **C.** The consumer is still bound to an obsolete secret version

## L21-Q033

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Only the approved signing task can obtain the protected file
- **B.** Logs contain no raw transformed or partial sensitive value
- **C.** The consumer retrieves the intended valid version

## L21-Q034

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which execution safeguard most directly addresses the risk in this case?

- **A.** Delete temporary local copies after the supported task lifecycle
- **B.** Use synthetic secrets during deliberate leakage tests
- **C.** Coordinate overlap and rollback before invalidating the old credential

## L21-Q035

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. The team selects this remedy: "Stop emitting secret-derived material to logs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Secure storage still needs certificate lifecycle management
- **B.** Masking is a defensive aid with limitations
- **C.** Version pinning improves determinism but needs planned updates

## L21-Q036

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which next change most directly satisfies the stated requirement?

- **A.** Align version selection and consumers with the rotation plan
- **B.** Pass secrets only to a trusted deployment path
- **C.** Stop emitting secret-derived material to logs

## L21-Q037

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which explanation best accounts for the behavior or constraint described?

- **A.** The consumer is still bound to an obsolete secret version
- **B.** Broad inheritance gives untrusted code sensitive capabilities
- **C.** Masking may not recognize derived or partial values

## L21-Q038

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Logs contain no raw transformed or partial sensitive value
- **B.** The consumer retrieves the intended valid version
- **C.** Untrusted tests cannot read the deployment credential

## L21-Q039

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use synthetic secrets during deliberate leakage tests
- **B.** Coordinate overlap and rollback before invalidating the old credential
- **C.** Review reusable-workflow caller permissions and secret propagation

## L21-Q040

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. The team selects this remedy: "Align version selection and consumers with the rotation plan." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Masking is a defensive aid with limitations
- **B.** Version pinning improves determinism but needs planned updates
- **C.** Selective secret passing requires clearer interfaces

## L21-Q041

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which next change most directly satisfies the stated requirement?

- **A.** Pass secrets only to a trusted deployment path
- **B.** Assign the necessary narrow Azure resource role
- **C.** Align version selection and consumers with the rotation plan

## L21-Q042

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which explanation best accounts for the behavior or constraint described?

- **A.** Broad inheritance gives untrusted code sensitive capabilities
- **B.** A valid token does not carry unlimited Azure permissions
- **C.** The consumer is still bound to an obsolete secret version

## L21-Q043

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The consumer retrieves the intended valid version
- **B.** Untrusted tests cannot read the deployment credential
- **C.** The intended deployment succeeds while other groups remain inaccessible

## L21-Q044

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which execution safeguard most directly addresses the risk in this case?

- **A.** Coordinate overlap and rollback before invalidating the old credential
- **B.** Review reusable-workflow caller permissions and secret propagation
- **C.** Verify tenant subscription and principal before changing assignments

## L21-Q045

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. The team selects this remedy: "Pass secrets only to a trusted deployment path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Version pinning improves determinism but needs planned updates
- **B.** Selective secret passing requires clearer interfaces
- **C.** Federation removes reusable secrets rather than authorization work

## L21-Q046

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which next change most directly satisfies the stated requirement?

- **A.** Use GitHub OIDC with a matching Azure federated identity credential
- **B.** Pass secrets only to a trusted deployment path
- **C.** Assign the necessary narrow Azure resource role

## L21-Q047

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which explanation best accounts for the behavior or constraint described?

- **A.** The current design relies on a reusable stored secret
- **B.** Broad inheritance gives untrusted code sensitive capabilities
- **C.** A valid token does not carry unlimited Azure permissions

## L21-Q048

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Untrusted tests cannot read the deployment credential
- **B.** The intended deployment succeeds while other groups remain inaccessible
- **C.** The trusted job obtains Azure access without a client secret

## L21-Q049

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which execution safeguard most directly addresses the risk in this case?

- **A.** Restrict the federated subject audience and Azure role scope
- **B.** Review reusable-workflow caller permissions and secret propagation
- **C.** Verify tenant subscription and principal before changing assignments

## L21-Q050

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. The team selects this remedy: "Assign the necessary narrow Azure resource role." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Federation requires precise trust configuration
- **B.** Selective secret passing requires clearer interfaces
- **C.** Federation removes reusable secrets rather than authorization work
