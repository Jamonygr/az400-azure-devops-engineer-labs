# Lab 21 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L21-Q001

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which next change most directly satisfies the stated requirement?

- **A. Grant the job the required id-token permission** OIDC token issuance needs an explicit workflow permission. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **B. Assign the necessary narrow Azure resource role** Authentication and resource authorization are separate decisions. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **C. Use GitHub OIDC with a matching Azure federated identity credential** **Correct.** Federation exchanges a trusted short-lived assertion. This directly addresses the constraint stated in this case.

**Explanation:** Federation exchanges a trusted short-lived assertion. The selected answer is use GitHub OIDC with a matching Azure federated identity credential.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q002

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which explanation best accounts for the behavior or constraint described?

- **A. Identity identifiers do not authorize token issuance** The workflow permission is separate from Azure configuration. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **B. A valid token does not carry unlimited Azure permissions** The identity still needs a role assignment. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **C. The current design relies on a reusable stored secret** **Correct.** The platform supports a secretless authentication path. This directly addresses the constraint stated in this case.

**Explanation:** The platform supports a secretless authentication path. The selected answer is the current design relies on a reusable stored secret.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q003

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended deployment succeeds while other groups remain inaccessible** The repair should prove narrow effective access. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **B. The trusted job obtains Azure access without a client secret** **Correct.** The proof should exercise the actual token exchange. This directly addresses the constraint stated in this case.
- **C. The trusted job requests an OIDC token successfully** Issuance must work before Azure exchange can succeed. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.

**Explanation:** The proof should exercise the actual token exchange. The selected answer is the trusted job obtains Azure access without a client secret.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q004

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. Which execution safeguard most directly addresses the risk in this case?

- **A. Verify tenant subscription and principal before changing assignments** Granting the right role to the wrong identity does not help. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **B. Restrict the federated subject audience and Azure role scope** **Correct.** Token issuance alone should not authorize unrelated workflows. This directly addresses the constraint stated in this case.
- **C. Keep unrelated token permissions minimal** Enabling OIDC does not require broad repository write access. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.

**Explanation:** Token issuance alone should not authorize unrelated workflows. The selected answer is restrict the federated subject audience and Azure role scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q005

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Secretless GitHub deployment: A trusted workflow must deploy to Azure without storing a long-lived client secret. The team selects this remedy: "Use GitHub OIDC with a matching Azure federated identity credential." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Federation requires precise trust configuration** **Correct.** A mismatched claim can prevent otherwise valid deployment. This directly addresses the constraint stated in this case.
- **B. Token issuance is only one authentication stage** Azure trust and authorization must also be correct. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **C. Federation removes reusable secrets rather than authorization work** Roles and access reviews remain required. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.

**Explanation:** A mismatched claim can prevent otherwise valid deployment. The selected answer is federation requires precise trust configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q006

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which next change most directly satisfies the stated requirement?

- **A. Grant the job the required id-token permission** **Correct.** OIDC token issuance needs an explicit workflow permission. This directly addresses the constraint stated in this case.
- **B. Match trust configuration to the actual intended subject claims** Environment and branch contexts can produce different subjects. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **C. Use GitHub OIDC with a matching Azure federated identity credential** Federation exchanges a trusted short-lived assertion. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.

**Explanation:** OIDC token issuance needs an explicit workflow permission. The selected answer is grant the job the required id-token permission.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q007

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which explanation best accounts for the behavior or constraint described?

- **A. The current design relies on a reusable stored secret** The platform supports a secretless authentication path. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Identity identifiers do not authorize token issuance** **Correct.** The workflow permission is separate from Azure configuration. This directly addresses the constraint stated in this case.
- **C. The token subject no longer matches the credential's trust** The workflow changed its identity context. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The workflow permission is separate from Azure configuration. The selected answer is identity identifiers do not authorize token issuance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q008

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended environment job authenticates while other subjects are denied** Positive and negative tests establish the trust boundary. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **B. The trusted job obtains Azure access without a client secret** The proof should exercise the actual token exchange. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **C. The trusted job requests an OIDC token successfully** **Correct.** Issuance must work before Azure exchange can succeed. This directly addresses the constraint stated in this case.

**Explanation:** Issuance must work before Azure exchange can succeed. The selected answer is the trusted job requests an OIDC token successfully.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q009

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not broaden the subject merely to silence the error** A wildcard-like shortcut could admit unintended executions. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **B. Restrict the federated subject audience and Azure role scope** Token issuance alone should not authorize unrelated workflows. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **C. Keep unrelated token permissions minimal** **Correct.** Enabling OIDC does not require broad repository write access. This directly addresses the constraint stated in this case.

**Explanation:** Enabling OIDC does not require broad repository write access. The selected answer is keep unrelated token permissions minimal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q010

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Missing OIDC token: A GitHub job has Azure identifiers configured but cannot request its federated identity token. The team selects this remedy: "Grant the job the required id-token permission." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Federation requires precise trust configuration** A mismatched claim can prevent otherwise valid deployment. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Token issuance is only one authentication stage** **Correct.** Azure trust and authorization must also be correct. This directly addresses the constraint stated in this case.
- **C. Tight subject matching adds configuration maintenance** Workflow context changes need coordinated trust updates. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Azure trust and authorization must also be correct. The selected answer is token issuance is only one authentication stage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q011

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which next change most directly satisfies the stated requirement?

- **A. Grant the job the required id-token permission** OIDC token issuance needs an explicit workflow permission. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **B. Match trust configuration to the actual intended subject claims** **Correct.** Environment and branch contexts can produce different subjects. This directly addresses the constraint stated in this case.
- **C. Use the current service connection's documented issuer and subject** Federation values must match the actual connection configuration. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.

**Explanation:** Environment and branch contexts can produce different subjects. The selected answer is match trust configuration to the actual intended subject claims.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q012

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which explanation best accounts for the behavior or constraint described?

- **A. Identity identifiers do not authorize token issuance** The workflow permission is separate from Azure configuration. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **B. The token subject no longer matches the credential's trust** **Correct.** The workflow changed its identity context. This directly addresses the constraint stated in this case.
- **C. Issuer behavior changes across service lifecycle updates** Old examples may no longer describe new connections. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.

**Explanation:** The workflow changed its identity context. The selected answer is the token subject no longer matches the credential's trust.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q013

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended environment job authenticates while other subjects are denied** **Correct.** Positive and negative tests establish the trust boundary. This directly addresses the constraint stated in this case.
- **B. The federated credential matches the connection's emitted claims** The evidence should come from the configured service. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **C. The trusted job requests an OIDC token successfully** Issuance must work before Azure exchange can succeed. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.

**Explanation:** Positive and negative tests establish the trust boundary. The selected answer is the intended environment job authenticates while other subjects are denied.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q014

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. Which execution safeguard most directly addresses the risk in this case?

- **A. Review the announced issuer retirement and migration scope** Affected existing connections need deliberate migration planning. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **B. Keep unrelated token permissions minimal** Enabling OIDC does not require broad repository write access. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **C. Do not broaden the subject merely to silence the error** **Correct.** A wildcard-like shortcut could admit unintended executions. This directly addresses the constraint stated in this case.

**Explanation:** A wildcard-like shortcut could admit unintended executions. The selected answer is do not broaden the subject merely to silence the error.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q015

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Subject mismatch: A federated credential trusts main-branch jobs, but the workflow now uses a protected deployment environment and authentication fails. The team selects this remedy: "Match trust configuration to the actual intended subject claims." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cloud and identity scenarios can differ** Avoid assuming every connection uses one universal issuer. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **B. Token issuance is only one authentication stage** Azure trust and authorization must also be correct. That addresses a different requirement: Missing OIDC token. It does not directly resolve this case's stated constraint.
- **C. Tight subject matching adds configuration maintenance** **Correct.** Workflow context changes need coordinated trust updates. This directly addresses the constraint stated in this case.

**Explanation:** Workflow context changes need coordinated trust updates. The selected answer is tight subject matching adds configuration maintenance.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q016

Foundational · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which next change most directly satisfies the stated requirement?

- **A. Grant the identity the necessary scoped secret-data access** Authentication does not imply secret authorization. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **B. Match trust configuration to the actual intended subject claims** Environment and branch contexts can produce different subjects. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **C. Use the current service connection's documented issuer and subject** **Correct.** Federation values must match the actual connection configuration. This directly addresses the constraint stated in this case.

**Explanation:** Federation values must match the actual connection configuration. The selected answer is use the current service connection's documented issuer and subject.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q017

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which explanation best accounts for the behavior or constraint described?

- **A. Issuer behavior changes across service lifecycle updates** **Correct.** Old examples may no longer describe new connections. This directly addresses the constraint stated in this case.
- **B. Management access and data-plane secret access differ** A successful login cannot read every protected value. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **C. The token subject no longer matches the credential's trust** The workflow changed its identity context. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** Old examples may no longer describe new connections. The selected answer is issuer behavior changes across service lifecycle updates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q018

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The federated credential matches the connection's emitted claims** **Correct.** The evidence should come from the configured service. This directly addresses the constraint stated in this case.
- **B. The task retrieves only the intended secret under its identity** The test should verify both allowed and unrelated denied access. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **C. The intended environment job authenticates while other subjects are denied** Positive and negative tests establish the trust boundary. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should come from the configured service. The selected answer is the federated credential matches the connection's emitted claims.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q019

Applied · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not broaden the subject merely to silence the error** A wildcard-like shortcut could admit unintended executions. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **B. Review the announced issuer retirement and migration scope** **Correct.** Affected existing connections need deliberate migration planning. This directly addresses the constraint stated in this case.
- **C. Avoid granting broad vault administration as a shortcut** The deployment only needs limited secret consumption. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.

**Explanation:** Affected existing connections need deliberate migration planning. The selected answer is review the announced issuer retirement and migration scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q020

Advanced · [CP1](README.md#task-1) · [D4.1.3](../../docs/objective-map.md), [D4.2.2](../../docs/objective-map.md)

Legacy issuer: An Azure Pipeline tutorial hardcodes the old federation issuer instead of using the current connection's generated values. The team selects this remedy: "Use the current service connection's documented issuer and subject." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Tight subject matching adds configuration maintenance** Workflow context changes need coordinated trust updates. That addresses a different requirement: Subject mismatch. It does not directly resolve this case's stated constraint.
- **B. Cloud and identity scenarios can differ** **Correct.** Avoid assuming every connection uses one universal issuer. This directly addresses the constraint stated in this case.
- **C. Vault access adds a runtime service dependency** Plan for availability and bounded failure handling. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.

**Explanation:** Avoid assuming every connection uses one universal issuer. The selected answer is cloud and identity scenarios can differ.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which next change most directly satisfies the stated requirement?

- **A. Store it as a protected secure file or supported secret-store artifact** Sensitive deployment files need controlled distribution. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Use the current service connection's documented issuer and subject** Federation values must match the actual connection configuration. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **C. Grant the identity the necessary scoped secret-data access** **Correct.** Authentication does not imply secret authorization. This directly addresses the constraint stated in this case.

**Explanation:** Authentication does not imply secret authorization. The selected answer is grant the identity the necessary scoped secret-data access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which explanation best accounts for the behavior or constraint described?

- **A. Management access and data-plane secret access differ** **Correct.** A successful login cannot read every protected value. This directly addresses the constraint stated in this case.
- **B. Source control makes the certificate broadly and historically available** Repository access becomes credential access. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **C. Issuer behavior changes across service lifecycle updates** Old examples may no longer describe new connections. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.

**Explanation:** A successful login cannot read every protected value. The selected answer is management access and data-plane secret access differ.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q023

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Only the approved signing task can obtain the protected file** The control should apply at the consuming job boundary. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. The federated credential matches the connection's emitted claims** The evidence should come from the configured service. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **C. The task retrieves only the intended secret under its identity** **Correct.** The test should verify both allowed and unrelated denied access. This directly addresses the constraint stated in this case.

**Explanation:** The test should verify both allowed and unrelated denied access. The selected answer is the task retrieves only the intended secret under its identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q024

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. Which execution safeguard most directly addresses the risk in this case?

- **A. Review the announced issuer retirement and migration scope** Affected existing connections need deliberate migration planning. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **B. Avoid granting broad vault administration as a shortcut** **Correct.** The deployment only needs limited secret consumption. This directly addresses the constraint stated in this case.
- **C. Delete temporary local copies after the supported task lifecycle** Worker files can outlive the immediate process. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.

**Explanation:** The deployment only needs limited secret consumption. The selected answer is avoid granting broad vault administration as a shortcut.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Key Vault denial: A pipeline authenticates to Azure successfully but cannot retrieve the specific secret required by its deployment. The team selects this remedy: "Grant the identity the necessary scoped secret-data access." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cloud and identity scenarios can differ** Avoid assuming every connection uses one universal issuer. That addresses a different requirement: Legacy issuer. It does not directly resolve this case's stated constraint.
- **B. Vault access adds a runtime service dependency** **Correct.** Plan for availability and bounded failure handling. This directly addresses the constraint stated in this case.
- **C. Secure storage still needs certificate lifecycle management** Expiry revocation and ownership remain operational responsibilities. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.

**Explanation:** Plan for availability and bounded failure handling. The selected answer is vault access adds a runtime service dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q026

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which next change most directly satisfies the stated requirement?

- **A. Grant the identity the necessary scoped secret-data access** Authentication does not imply secret authorization. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **B. Store it as a protected secure file or supported secret-store artifact** **Correct.** Sensitive deployment files need controlled distribution. This directly addresses the constraint stated in this case.
- **C. Stop emitting secret-derived material to logs** Transformation does not make a credential safe to disclose. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.

**Explanation:** Sensitive deployment files need controlled distribution. The selected answer is store it as a protected secure file or supported secret-store artifact.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q027

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which explanation best accounts for the behavior or constraint described?

- **A. Management access and data-plane secret access differ** A successful login cannot read every protected value. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **B. Source control makes the certificate broadly and historically available** **Correct.** Repository access becomes credential access. This directly addresses the constraint stated in this case.
- **C. Masking may not recognize derived or partial values** Output hygiene cannot depend solely on exact-value masking. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.

**Explanation:** Repository access becomes credential access. The selected answer is source control makes the certificate broadly and historically available.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q028

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Logs contain no raw transformed or partial sensitive value** Validation must inspect the actual emitted diagnostics. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **B. The task retrieves only the intended secret under its identity** The test should verify both allowed and unrelated denied access. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.
- **C. Only the approved signing task can obtain the protected file** **Correct.** The control should apply at the consuming job boundary. This directly addresses the constraint stated in this case.

**Explanation:** The control should apply at the consuming job boundary. The selected answer is only the approved signing task can obtain the protected file.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q029

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. Which execution safeguard most directly addresses the risk in this case?

- **A. Delete temporary local copies after the supported task lifecycle** **Correct.** Worker files can outlive the immediate process. This directly addresses the constraint stated in this case.
- **B. Use synthetic secrets during deliberate leakage tests** Testing should not expose a live credential. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **C. Avoid granting broad vault administration as a shortcut** The deployment only needs limited secret consumption. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.

**Explanation:** Worker files can outlive the immediate process. The selected answer is delete temporary local copies after the supported task lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q030

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure file spread: A signing certificate is checked into source so every job can access it without library authorization. The team selects this remedy: "Store it as a protected secure file or supported secret-store artifact." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Secure storage still needs certificate lifecycle management** **Correct.** Expiry revocation and ownership remain operational responsibilities. This directly addresses the constraint stated in this case.
- **B. Masking is a defensive aid with limitations** Design diagnostics to avoid secret-bearing content. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **C. Vault access adds a runtime service dependency** Plan for availability and bounded failure handling. That addresses a different requirement: Key Vault denial. It does not directly resolve this case's stated constraint.

**Explanation:** Expiry revocation and ownership remain operational responsibilities. The selected answer is secure storage still needs certificate lifecycle management.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q031

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which next change most directly satisfies the stated requirement?

- **A. Store it as a protected secure file or supported secret-store artifact** Sensitive deployment files need controlled distribution. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Stop emitting secret-derived material to logs** **Correct.** Transformation does not make a credential safe to disclose. This directly addresses the constraint stated in this case.
- **C. Align version selection and consumers with the rotation plan** Rotation must update the value the application actually reads. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Transformation does not make a credential safe to disclose. The selected answer is stop emitting secret-derived material to logs.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q032

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which explanation best accounts for the behavior or constraint described?

- **A. Source control makes the certificate broadly and historically available** Repository access becomes credential access. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Masking may not recognize derived or partial values** **Correct.** Output hygiene cannot depend solely on exact-value masking. This directly addresses the constraint stated in this case.
- **C. The consumer is still bound to an obsolete secret version** Changing the latest value does not alter an explicit old reference. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Output hygiene cannot depend solely on exact-value masking. The selected answer is masking may not recognize derived or partial values.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q033

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Only the approved signing task can obtain the protected file** The control should apply at the consuming job boundary. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Logs contain no raw transformed or partial sensitive value** **Correct.** Validation must inspect the actual emitted diagnostics. This directly addresses the constraint stated in this case.
- **C. The consumer retrieves the intended valid version** The evidence must identify the effective version without revealing it. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Validation must inspect the actual emitted diagnostics. The selected answer is logs contain no raw transformed or partial sensitive value.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q034

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. Which execution safeguard most directly addresses the risk in this case?

- **A. Delete temporary local copies after the supported task lifecycle** Worker files can outlive the immediate process. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Use synthetic secrets during deliberate leakage tests** **Correct.** Testing should not expose a live credential. This directly addresses the constraint stated in this case.
- **C. Coordinate overlap and rollback before invalidating the old credential** Abrupt rotation can break dependent systems. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Testing should not expose a live credential. The selected answer is use synthetic secrets during deliberate leakage tests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q035

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

Transformed secret: A script base64-encodes a secret and writes it to logs, assuming the platform's secret masker will hide it. The team selects this remedy: "Stop emitting secret-derived material to logs." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Secure storage still needs certificate lifecycle management** Expiry revocation and ownership remain operational responsibilities. That addresses a different requirement: Secure file spread. It does not directly resolve this case's stated constraint.
- **B. Masking is a defensive aid with limitations** **Correct.** Design diagnostics to avoid secret-bearing content. This directly addresses the constraint stated in this case.
- **C. Version pinning improves determinism but needs planned updates** Automatic latest resolution has a different freshness tradeoff. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Design diagnostics to avoid secret-bearing content. The selected answer is masking is a defensive aid with limitations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q036

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which next change most directly satisfies the stated requirement?

- **A. Align version selection and consumers with the rotation plan** **Correct.** Rotation must update the value the application actually reads. This directly addresses the constraint stated in this case.
- **B. Pass secrets only to a trusted deployment path** Credential distribution should follow the execution trust boundary. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. Stop emitting secret-derived material to logs** Transformation does not make a credential safe to disclose. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.

**Explanation:** Rotation must update the value the application actually reads. The selected answer is align version selection and consumers with the rotation plan.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q037

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which explanation best accounts for the behavior or constraint described?

- **A. The consumer is still bound to an obsolete secret version** **Correct.** Changing the latest value does not alter an explicit old reference. This directly addresses the constraint stated in this case.
- **B. Broad inheritance gives untrusted code sensitive capabilities** A reusable interface does not make callers trustworthy. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. Masking may not recognize derived or partial values** Output hygiene cannot depend solely on exact-value masking. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.

**Explanation:** Changing the latest value does not alter an explicit old reference. The selected answer is the consumer is still bound to an obsolete secret version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q038

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Logs contain no raw transformed or partial sensitive value** Validation must inspect the actual emitted diagnostics. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **B. The consumer retrieves the intended valid version** **Correct.** The evidence must identify the effective version without revealing it. This directly addresses the constraint stated in this case.
- **C. Untrusted tests cannot read the deployment credential** The negative test should verify actual isolation. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must identify the effective version without revealing it. The selected answer is the consumer retrieves the intended valid version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q039

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. Which execution safeguard most directly addresses the risk in this case?

- **A. Use synthetic secrets during deliberate leakage tests** Testing should not expose a live credential. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **B. Coordinate overlap and rollback before invalidating the old credential** **Correct.** Abrupt rotation can break dependent systems. This directly addresses the constraint stated in this case.
- **C. Review reusable-workflow caller permissions and secret propagation** Nested execution can broaden exposure unexpectedly. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.

**Explanation:** Abrupt rotation can break dependent systems. The selected answer is coordinate overlap and rollback before invalidating the old credential.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q040

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Credential rotation: A secret is rotated in Key Vault, but the deployment uses a pinned old version and authentication now fails. The team selects this remedy: "Align version selection and consumers with the rotation plan." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Masking is a defensive aid with limitations** Design diagnostics to avoid secret-bearing content. That addresses a different requirement: Transformed secret. It does not directly resolve this case's stated constraint.
- **B. Version pinning improves determinism but needs planned updates** **Correct.** Automatic latest resolution has a different freshness tradeoff. This directly addresses the constraint stated in this case.
- **C. Selective secret passing requires clearer interfaces** The extra configuration supports least privilege. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.

**Explanation:** Automatic latest resolution has a different freshness tradeoff. The selected answer is version pinning improves determinism but needs planned updates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q041

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which next change most directly satisfies the stated requirement?

- **A. Pass secrets only to a trusted deployment path** **Correct.** Credential distribution should follow the execution trust boundary. This directly addresses the constraint stated in this case.
- **B. Assign the necessary narrow Azure resource role** Authentication and resource authorization are separate decisions. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **C. Align version selection and consumers with the rotation plan** Rotation must update the value the application actually reads. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** Credential distribution should follow the execution trust boundary. The selected answer is pass secrets only to a trusted deployment path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q042

Foundational · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which explanation best accounts for the behavior or constraint described?

- **A. Broad inheritance gives untrusted code sensitive capabilities** **Correct.** A reusable interface does not make callers trustworthy. This directly addresses the constraint stated in this case.
- **B. A valid token does not carry unlimited Azure permissions** The identity still needs a role assignment. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.
- **C. The consumer is still bound to an obsolete secret version** Changing the latest value does not alter an explicit old reference. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.

**Explanation:** A reusable interface does not make callers trustworthy. The selected answer is broad inheritance gives untrusted code sensitive capabilities.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q043

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The consumer retrieves the intended valid version** The evidence must identify the effective version without revealing it. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.
- **B. Untrusted tests cannot read the deployment credential** **Correct.** The negative test should verify actual isolation. This directly addresses the constraint stated in this case.
- **C. The intended deployment succeeds while other groups remain inaccessible** The repair should prove narrow effective access. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.

**Explanation:** The negative test should verify actual isolation. The selected answer is untrusted tests cannot read the deployment credential.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q044

Applied · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. Which execution safeguard most directly addresses the risk in this case?

- **A. Coordinate overlap and rollback before invalidating the old credential** Abrupt rotation can break dependent systems. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.
- **B. Review reusable-workflow caller permissions and secret propagation** **Correct.** Nested execution can broaden exposure unexpectedly. This directly addresses the constraint stated in this case.
- **C. Verify tenant subscription and principal before changing assignments** Granting the right role to the wrong identity does not help. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.

**Explanation:** Nested execution can broaden exposure unexpectedly. The selected answer is review reusable-workflow caller permissions and secret propagation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q045

Advanced · [CP5](README.md#task-5) · [D4.1.2](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md)

Secret inherited by tests: A reusable workflow exposes deployment credentials to all jobs including code from an untrusted pull request. The team selects this remedy: "Pass secrets only to a trusted deployment path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Version pinning improves determinism but needs planned updates** Automatic latest resolution has a different freshness tradeoff. That addresses a different requirement: Credential rotation. It does not directly resolve this case's stated constraint.
- **B. Selective secret passing requires clearer interfaces** **Correct.** The extra configuration supports least privilege. This directly addresses the constraint stated in this case.
- **C. Federation removes reusable secrets rather than authorization work** Roles and access reviews remain required. That addresses a different requirement: Federated but forbidden. It does not directly resolve this case's stated constraint.

**Explanation:** The extra configuration supports least privilege. The selected answer is selective secret passing requires clearer interfaces.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q046

Foundational · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which next change most directly satisfies the stated requirement?

- **A. Use GitHub OIDC with a matching Azure federated identity credential** Federation exchanges a trusted short-lived assertion. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Pass secrets only to a trusted deployment path** Credential distribution should follow the execution trust boundary. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. Assign the necessary narrow Azure resource role** **Correct.** Authentication and resource authorization are separate decisions. This directly addresses the constraint stated in this case.

**Explanation:** Authentication and resource authorization are separate decisions. The selected answer is assign the necessary narrow Azure resource role.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q047

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which explanation best accounts for the behavior or constraint described?

- **A. The current design relies on a reusable stored secret** The platform supports a secretless authentication path. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Broad inheritance gives untrusted code sensitive capabilities** A reusable interface does not make callers trustworthy. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. A valid token does not carry unlimited Azure permissions** **Correct.** The identity still needs a role assignment. This directly addresses the constraint stated in this case.

**Explanation:** The identity still needs a role assignment. The selected answer is a valid token does not carry unlimited Azure permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q048

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Untrusted tests cannot read the deployment credential** The negative test should verify actual isolation. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **B. The intended deployment succeeds while other groups remain inaccessible** **Correct.** The repair should prove narrow effective access. This directly addresses the constraint stated in this case.
- **C. The trusted job obtains Azure access without a client secret** The proof should exercise the actual token exchange. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.

**Explanation:** The repair should prove narrow effective access. The selected answer is the intended deployment succeeds while other groups remain inaccessible.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q049

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. Which execution safeguard most directly addresses the risk in this case?

- **A. Restrict the federated subject audience and Azure role scope** Token issuance alone should not authorize unrelated workflows. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Review reusable-workflow caller permissions and secret propagation** Nested execution can broaden exposure unexpectedly. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. Verify tenant subscription and principal before changing assignments** **Correct.** Granting the right role to the wrong identity does not help. This directly addresses the constraint stated in this case.

**Explanation:** Granting the right role to the wrong identity does not help. The selected answer is verify tenant subscription and principal before changing assignments.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)

## L21-Q050

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

Federated but forbidden: OIDC exchange succeeds, yet the deployment cannot modify the target resource group. The team selects this remedy: "Assign the necessary narrow Azure resource role." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Federation requires precise trust configuration** A mismatched claim can prevent otherwise valid deployment. That addresses a different requirement: Secretless GitHub deployment. It does not directly resolve this case's stated constraint.
- **B. Selective secret passing requires clearer interfaces** The extra configuration supports least privilege. That addresses a different requirement: Secret inherited by tests. It does not directly resolve this case's stated constraint.
- **C. Federation removes reusable secrets rather than authorization work** **Correct.** Roles and access reviews remain required. This directly addresses the constraint stated in this case.

**Explanation:** Roles and access reviews remain required. The selected answer is federation removes reusable secrets rather than authorization work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops); [S2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)
