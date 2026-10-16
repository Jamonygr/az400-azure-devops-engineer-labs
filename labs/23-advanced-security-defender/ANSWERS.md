# Lab 23 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L23-Q001

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Paid feature onboarding: A learner enables Advanced Security for every Azure Repos repository without checking the active-committer billing estimate. Which next change most directly satisfies the stated requirement?

- **A. Review licensing estimate and enable only the intended training repository** **Correct.** Security onboarding can create subscription charges. This directly addresses the constraint stated in this case.
- **B. Configure the security product for the actual repository host** Host-specific products protect their supported repository surfaces. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **C. Disable only owned training capabilities after dependency review** Cleanup should match the lab's resource and billing boundary. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.

**Explanation:** Security onboarding can create subscription charges. The selected answer is review licensing estimate and enable only the intended training repository.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q002

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Paid feature onboarding: A learner enables Advanced Security for every Azure Repos repository without checking the active-committer billing estimate. Which explanation best accounts for the behavior or constraint described?

- **A. Feature activation has a billing lifecycle** **Correct.** Training intent does not make paid capabilities free. This directly addresses the constraint stated in this case.
- **B. Azure Repos configuration is not GitHub repository configuration** The integrations have different onboarding boundaries. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **C. Feature and connector lifecycles continue beyond the exercise** Closing a browser does not stop paid services. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.

**Explanation:** Training intent does not make paid capabilities free. The selected answer is feature activation has a billing lifecycle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q003

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Paid feature onboarding: A learner enables Advanced Security for every Azure Repos repository without checking the active-committer billing estimate. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended host displays its repository findings** The verification must use the correct product surface. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **B. The owned activation is removed and retained services are documented** The evidence must distinguish cleanup from shared dependencies. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **C. Only the scoped repository is enabled with acknowledged billing** **Correct.** The evidence should include scope rather than broad activation. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should include scope rather than broad activation. The selected answer is only the scoped repository is enabled with acknowledged billing.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q004

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Paid feature onboarding: A learner enables Advanced Security for every Azure Repos repository without checking the active-committer billing estimate. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a dedicated lab and document cleanup ownership** **Correct.** Shared organizations can include unrelated billable contributors. This directly addresses the constraint stated in this case.
- **B. Review host-specific permissions and licensing before enabling** Similar names do not imply identical prerequisites. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **C. Do not remove security coverage used by other teams** Shared organizations require ownership-aware changes. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.

**Explanation:** Shared organizations can include unrelated billable contributors. The selected answer is use a dedicated lab and document cleanup ownership.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q005

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Paid feature onboarding: A learner enables Advanced Security for every Azure Repos repository without checking the active-committer billing estimate. The team selects this remedy: "Review licensing estimate and enable only the intended training repository." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some billing and inventory updates are not instantaneous** Verify the current service's reporting behavior. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **B. Active-committer licensing may include historical contributors** **Correct.** Costs are not simply the number of current viewers. This directly addresses the constraint stated in this case.
- **C. Multi-host organizations may need separate administration** Central reporting does not eliminate host-level setup. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.

**Explanation:** Costs are not simply the number of current viewers. The selected answer is active-committer licensing may include historical contributors.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q006

Foundational · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Wrong product target: A team expects Advanced Security for Azure DevOps to scan GitHub repositories through an Azure Repos setting. Which next change most directly satisfies the stated requirement?

- **A. Review licensing estimate and enable only the intended training repository** Security onboarding can create subscription charges. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **B. Configure the security product for the actual repository host** **Correct.** Host-specific products protect their supported repository surfaces. This directly addresses the constraint stated in this case.
- **C. Onboard the intended DevOps source through its supported connector** Inventory requires an authorized integration path. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.

**Explanation:** Host-specific products protect their supported repository surfaces. The selected answer is configure the security product for the actual repository host.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q007

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Wrong product target: A team expects Advanced Security for Azure DevOps to scan GitHub repositories through an Azure Repos setting. Which explanation best accounts for the behavior or constraint described?

- **A. Azure Repos configuration is not GitHub repository configuration** **Correct.** The integrations have different onboarding boundaries. This directly addresses the constraint stated in this case.
- **B. The dashboard cannot infer access to external source systems** Azure subscription access alone is insufficient. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **C. Feature activation has a billing lifecycle** Training intent does not make paid capabilities free. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.

**Explanation:** The integrations have different onboarding boundaries. The selected answer is azure Repos configuration is not GitHub repository configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q008

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Wrong product target: A team expects Advanced Security for Azure DevOps to scan GitHub repositories through an Azure Repos setting. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The intended host displays its repository findings** **Correct.** The verification must use the correct product surface. This directly addresses the constraint stated in this case.
- **B. The scoped repositories appear in the Defender inventory** Fresh inventory demonstrates connector authorization. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **C. Only the scoped repository is enabled with acknowledged billing** The evidence should include scope rather than broad activation. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.

**Explanation:** The verification must use the correct product surface. The selected answer is the intended host displays its repository findings.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q009

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Wrong product target: A team expects Advanced Security for Azure DevOps to scan GitHub repositories through an Azure Repos setting. Which execution safeguard most directly addresses the risk in this case?

- **A. Review host-specific permissions and licensing before enabling** **Correct.** Similar names do not imply identical prerequisites. This directly addresses the constraint stated in this case.
- **B. Grant only the intended organization and repository scope** The connector should not collect unrelated source metadata. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **C. Use a dedicated lab and document cleanup ownership** Shared organizations can include unrelated billable contributors. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.

**Explanation:** Similar names do not imply identical prerequisites. The selected answer is review host-specific permissions and licensing before enabling.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q010

Advanced · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Wrong product target: A team expects Advanced Security for Azure DevOps to scan GitHub repositories through an Azure Repos setting. The team selects this remedy: "Configure the security product for the actual repository host." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Active-committer licensing may include historical contributors** Costs are not simply the number of current viewers. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **B. Multi-host organizations may need separate administration** **Correct.** Central reporting does not eliminate host-level setup. This directly addresses the constraint stated in this case.
- **C. Connector permissions and service support vary by host** Follow the current supported onboarding flow. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.

**Explanation:** Central reporting does not eliminate host-level setup. The selected answer is multi-host organizations may need separate administration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q011

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

No Defender inventory: A Defender for Cloud dashboard shows no DevOps repositories because no authorized source connector has been established. Which next change most directly satisfies the stated requirement?

- **A. Verify supported integration prerequisites and connector scope** Central visibility depends on configured source integration. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **B. Configure the security product for the actual repository host** Host-specific products protect their supported repository surfaces. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **C. Onboard the intended DevOps source through its supported connector** **Correct.** Inventory requires an authorized integration path. This directly addresses the constraint stated in this case.

**Explanation:** Inventory requires an authorized integration path. The selected answer is onboard the intended DevOps source through its supported connector.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q012

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

No Defender inventory: A Defender for Cloud dashboard shows no DevOps repositories because no authorized source connector has been established. Which explanation best accounts for the behavior or constraint described?

- **A. Azure Repos configuration is not GitHub repository configuration** The integrations have different onboarding boundaries. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **B. The dashboard cannot infer access to external source systems** **Correct.** Azure subscription access alone is insufficient. This directly addresses the constraint stated in this case.
- **C. Local findings do not automatically imply central ingestion** The reporting connection may be absent or out of scope. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.

**Explanation:** Azure subscription access alone is insufficient. The selected answer is the dashboard cannot infer access to external source systems.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q013

Applied · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

No Defender inventory: A Defender for Cloud dashboard shows no DevOps repositories because no authorized source connector has been established. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known finding appears for the correct repository in Defender** The test should correlate the same source issue. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **B. The intended host displays its repository findings** The verification must use the correct product surface. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **C. The scoped repositories appear in the Defender inventory** **Correct.** Fresh inventory demonstrates connector authorization. This directly addresses the constraint stated in this case.

**Explanation:** Fresh inventory demonstrates connector authorization. The selected answer is the scoped repositories appear in the Defender inventory.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q014

Applied · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

No Defender inventory: A Defender for Cloud dashboard shows no DevOps repositories because no authorized source connector has been established. Which execution safeguard most directly addresses the risk in this case?

- **A. Review host-specific permissions and licensing before enabling** Similar names do not imply identical prerequisites. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **B. Grant only the intended organization and repository scope** **Correct.** The connector should not collect unrelated source metadata. This directly addresses the constraint stated in this case.
- **C. Check freshness and permissions before re-enabling broad products** Missing data may be an ingestion or authorization problem. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.

**Explanation:** The connector should not collect unrelated source metadata. The selected answer is grant only the intended organization and repository scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q015

Advanced · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

No Defender inventory: A Defender for Cloud dashboard shows no DevOps repositories because no authorized source connector has been established. The team selects this remedy: "Onboard the intended DevOps source through its supported connector." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Multi-host organizations may need separate administration** Central reporting does not eliminate host-level setup. That addresses a different requirement: Wrong product target. It does not directly resolve this case's stated constraint.
- **B. Connector permissions and service support vary by host** **Correct.** Follow the current supported onboarding flow. This directly addresses the constraint stated in this case.
- **C. Central ingestion can have delay and coverage limits** Host results remain important diagnostic evidence. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.

**Explanation:** Follow the current supported onboarding flow. The selected answer is connector permissions and service support vary by host.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q016

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Empty integration view: Advanced Security findings exist in the repository host but do not appear in Defender for Cloud. Which next change most directly satisfies the stated requirement?

- **A. Configure the supported code-analysis execution path** Feature availability and completed analysis are separate requirements. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **B. Onboard the intended DevOps source through its supported connector** Inventory requires an authorized integration path. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **C. Verify supported integration prerequisites and connector scope** **Correct.** Central visibility depends on configured source integration. This directly addresses the constraint stated in this case.

**Explanation:** Central visibility depends on configured source integration. The selected answer is verify supported integration prerequisites and connector scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q017

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Empty integration view: Advanced Security findings exist in the repository host but do not appear in Defender for Cloud. Which explanation best accounts for the behavior or constraint described?

- **A. Enabling the product does not prove code analysis ran** The repository still needs valid analysis setup. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **B. The dashboard cannot infer access to external source systems** Azure subscription access alone is insufficient. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **C. Local findings do not automatically imply central ingestion** **Correct.** The reporting connection may be absent or out of scope. This directly addresses the constraint stated in this case.

**Explanation:** The reporting connection may be absent or out of scope. The selected answer is local findings do not automatically imply central ingestion.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q018

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Empty integration view: Advanced Security findings exist in the repository host but do not appear in Defender for Cloud. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known finding appears for the correct repository in Defender** **Correct.** The test should correlate the same source issue. This directly addresses the constraint stated in this case.
- **B. A completed run produces results for the intended source revision** The evidence must identify an actual scan. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **C. The scoped repositories appear in the Defender inventory** Fresh inventory demonstrates connector authorization. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.

**Explanation:** The test should correlate the same source issue. The selected answer is a known finding appears for the correct repository in Defender.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q019

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Empty integration view: Advanced Security findings exist in the repository host but do not appear in Defender for Cloud. Which execution safeguard most directly addresses the risk in this case?

- **A. Check freshness and permissions before re-enabling broad products** **Correct.** Missing data may be an ingestion or authorization problem. This directly addresses the constraint stated in this case.
- **B. Use supported languages build steps and task permissions** Incomplete setup can yield no useful coverage. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **C. Grant only the intended organization and repository scope** The connector should not collect unrelated source metadata. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.

**Explanation:** Missing data may be an ingestion or authorization problem. The selected answer is check freshness and permissions before re-enabling broad products.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q020

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Empty integration view: Advanced Security findings exist in the repository host but do not appear in Defender for Cloud. The team selects this remedy: "Verify supported integration prerequisites and connector scope." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Connector permissions and service support vary by host** Follow the current supported onboarding flow. That addresses a different requirement: No Defender inventory. It does not directly resolve this case's stated constraint.
- **B. Central ingestion can have delay and coverage limits** **Correct.** Host results remain important diagnostic evidence. This directly addresses the constraint stated in this case.
- **C. Scanning setup differs by language and mode** One configuration may not suit every repository. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.

**Explanation:** Host results remain important diagnostic evidence. The selected answer is central ingestion can have delay and coverage limits.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q021

Foundational · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Enablement misconception: Advanced Security is enabled for a repository, but no code-scanning workflow has completed for its language. Which next change most directly satisfies the stated requirement?

- **A. Enable and validate the supported push-protection control** Detection and prevention occur at different workflow points. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.
- **B. Verify supported integration prerequisites and connector scope** Central visibility depends on configured source integration. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **C. Configure the supported code-analysis execution path** **Correct.** Feature availability and completed analysis are separate requirements. This directly addresses the constraint stated in this case.

**Explanation:** Feature availability and completed analysis are separate requirements. The selected answer is configure the supported code-analysis execution path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q022

Foundational · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Enablement misconception: Advanced Security is enabled for a repository, but no code-scanning workflow has completed for its language. Which explanation best accounts for the behavior or constraint described?

- **A. Local findings do not automatically imply central ingestion** The reporting connection may be absent or out of scope. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **B. Enabling the product does not prove code analysis ran** **Correct.** The repository still needs valid analysis setup. This directly addresses the constraint stated in this case.
- **C. A post-commit alert does not guarantee push rejection** The preventive control needs its own configuration. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.

**Explanation:** The repository still needs valid analysis setup. The selected answer is enabling the product does not prove code analysis ran.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q023

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Enablement misconception: Advanced Security is enabled for a repository, but no code-scanning workflow has completed for its language. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A known finding appears for the correct repository in Defender** The test should correlate the same source issue. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **B. A completed run produces results for the intended source revision** **Correct.** The evidence must identify an actual scan. This directly addresses the constraint stated in this case.
- **C. A controlled matching test push is blocked** A negative test demonstrates prevention before acceptance. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must identify an actual scan. The selected answer is a completed run produces results for the intended source revision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q024

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Enablement misconception: Advanced Security is enabled for a repository, but no code-scanning workflow has completed for its language. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a documented synthetic fixture and isolated training branch** A real secret should never be the test input. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.
- **B. Check freshness and permissions before re-enabling broad products** Missing data may be an ingestion or authorization problem. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **C. Use supported languages build steps and task permissions** **Correct.** Incomplete setup can yield no useful coverage. This directly addresses the constraint stated in this case.

**Explanation:** Incomplete setup can yield no useful coverage. The selected answer is use supported languages build steps and task permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q025

Advanced · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Enablement misconception: Advanced Security is enabled for a repository, but no code-scanning workflow has completed for its language. The team selects this remedy: "Configure the supported code-analysis execution path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Central ingestion can have delay and coverage limits** Host results remain important diagnostic evidence. That addresses a different requirement: Empty integration view. It does not directly resolve this case's stated constraint.
- **B. Scanning setup differs by language and mode** **Correct.** One configuration may not suit every repository. This directly addresses the constraint stated in this case.
- **C. Push protection cannot recognize every possible secret** Secret hygiene and response remain necessary. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.

**Explanation:** One configuration may not suit every repository. The selected answer is scanning setup differs by language and mode.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q026

Foundational · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Secret push prevention: A repository detects a test secret after commit, but the team also needs to stop future matching pushes. Which next change most directly satisfies the stated requirement?

- **A. Grant the appropriate scoped integration and source permissions** Different systems enforce different authorization boundaries. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **B. Configure the supported code-analysis execution path** Feature availability and completed analysis are separate requirements. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **C. Enable and validate the supported push-protection control** **Correct.** Detection and prevention occur at different workflow points. This directly addresses the constraint stated in this case.

**Explanation:** Detection and prevention occur at different workflow points. The selected answer is enable and validate the supported push-protection control.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q027

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Secret push prevention: A repository detects a test secret after commit, but the team also needs to stop future matching pushes. Which explanation best accounts for the behavior or constraint described?

- **A. Azure resource visibility does not imply source-host security access** The analyst crosses several permission domains. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **B. Enabling the product does not prove code analysis ran** The repository still needs valid analysis setup. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **C. A post-commit alert does not guarantee push rejection** **Correct.** The preventive control needs its own configuration. This directly addresses the constraint stated in this case.

**Explanation:** The preventive control needs its own configuration. The selected answer is a post-commit alert does not guarantee push rejection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q028

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Secret push prevention: A repository detects a test secret after commit, but the team also needs to stop future matching pushes. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A completed run produces results for the intended source revision** The evidence must identify an actual scan. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **B. A controlled matching test push is blocked** **Correct.** A negative test demonstrates prevention before acceptance. This directly addresses the constraint stated in this case.
- **C. The analyst sees required findings without unnecessary source administration** Effective access should match the review role. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.

**Explanation:** A negative test demonstrates prevention before acceptance. The selected answer is a controlled matching test push is blocked.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q029

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Secret push prevention: A repository detects a test secret after commit, but the team also needs to stop future matching pushes. Which execution safeguard most directly addresses the risk in this case?

- **A. Review each platform's role and permission requirements separately** Broad elevation on one system may not solve another's denial. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **B. Use supported languages build steps and task permissions** Incomplete setup can yield no useful coverage. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.
- **C. Use a documented synthetic fixture and isolated training branch** **Correct.** A real secret should never be the test input. This directly addresses the constraint stated in this case.

**Explanation:** A real secret should never be the test input. The selected answer is use a documented synthetic fixture and isolated training branch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q030

Advanced · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

Secret push prevention: A repository detects a test secret after commit, but the team also needs to stop future matching pushes. The team selects this remedy: "Enable and validate the supported push-protection control." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Push protection cannot recognize every possible secret** **Correct.** Secret hygiene and response remain necessary. This directly addresses the constraint stated in this case.
- **B. Cross-platform least privilege is more complex** It still offers clearer accountability and reduced exposure. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **C. Scanning setup differs by language and mode** One configuration may not suit every repository. That addresses a different requirement: Enablement misconception. It does not directly resolve this case's stated constraint.

**Explanation:** Secret hygiene and response remain necessary. The selected answer is push protection cannot recognize every possible secret.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q031

Foundational · [CP4](README.md#task-4) · [D4.3.2](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

Access confusion: A security analyst can view Azure resources but cannot administer the DevOps connector or read repository findings. Which next change most directly satisfies the stated requirement?

- **A. Configure future-repository defaults deliberately where supported** Existing-resource activation and future defaults are separate controls. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **B. Enable and validate the supported push-protection control** Detection and prevention occur at different workflow points. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.
- **C. Grant the appropriate scoped integration and source permissions** **Correct.** Different systems enforce different authorization boundaries. This directly addresses the constraint stated in this case.

**Explanation:** Different systems enforce different authorization boundaries. The selected answer is grant the appropriate scoped integration and source permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q032

Foundational · [CP4](README.md#task-4) · [D4.3.2](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

Access confusion: A security analyst can view Azure resources but cannot administer the DevOps connector or read repository findings. Which explanation best accounts for the behavior or constraint described?

- **A. An onboarding action may not apply to later repositories** Current coverage does not prove automatic future coverage. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **B. A post-commit alert does not guarantee push rejection** The preventive control needs its own configuration. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.
- **C. Azure resource visibility does not imply source-host security access** **Correct.** The analyst crosses several permission domains. This directly addresses the constraint stated in this case.

**Explanation:** The analyst crosses several permission domains. The selected answer is azure resource visibility does not imply source-host security access.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q033

Applied · [CP4](README.md#task-4) · [D4.3.2](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

Access confusion: A security analyst can view Azure resources but cannot administer the DevOps connector or read repository findings. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The analyst sees required findings without unnecessary source administration** **Correct.** Effective access should match the review role. This directly addresses the constraint stated in this case.
- **B. A newly created test repository receives the intended protection** The validation must include a future-resource scenario. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. A controlled matching test push is blocked** A negative test demonstrates prevention before acceptance. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.

**Explanation:** Effective access should match the review role. The selected answer is the analyst sees required findings without unnecessary source administration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q034

Applied · [CP4](README.md#task-4) · [D4.3.2](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

Access confusion: A security analyst can view Azure resources but cannot administer the DevOps connector or read repository findings. Which execution safeguard most directly addresses the risk in this case?

- **A. Use a documented synthetic fixture and isolated training branch** A real secret should never be the test input. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.
- **B. Review each platform's role and permission requirements separately** **Correct.** Broad elevation on one system may not solve another's denial. This directly addresses the constraint stated in this case.
- **C. Confirm the billing implications of automatic enablement** New repositories can introduce additional paid contributors. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.

**Explanation:** Broad elevation on one system may not solve another's denial. The selected answer is review each platform's role and permission requirements separately.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q035

Advanced · [CP4](README.md#task-4) · [D4.3.2](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

Access confusion: A security analyst can view Azure resources but cannot administer the DevOps connector or read repository findings. The team selects this remedy: "Grant the appropriate scoped integration and source permissions." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Cross-platform least privilege is more complex** **Correct.** It still offers clearer accountability and reduced exposure. This directly addresses the constraint stated in this case.
- **B. Automatic coverage reduces gaps but broadens cost scope** Defaults need clear ownership and budget review. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. Push protection cannot recognize every possible secret** Secret hygiene and response remain necessary. That addresses a different requirement: Secret push prevention. It does not directly resolve this case's stated constraint.

**Explanation:** It still offers clearer accountability and reduced exposure. The selected answer is cross-platform least privilege is more complex.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q036

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Organization-wide activation: An administrator wants future repositories to inherit a security policy but only enabled existing repositories. Which next change most directly satisfies the stated requirement?

- **A. Grant the appropriate scoped integration and source permissions** Different systems enforce different authorization boundaries. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **B. Configure future-repository defaults deliberately where supported** **Correct.** Existing-resource activation and future defaults are separate controls. This directly addresses the constraint stated in this case.
- **C. Correlate records by source identity and relationship** Multiple views can represent the same underlying issue. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.

**Explanation:** Existing-resource activation and future defaults are separate controls. The selected answer is configure future-repository defaults deliberately where supported.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q037

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Organization-wide activation: An administrator wants future repositories to inherit a security policy but only enabled existing repositories. Which explanation best accounts for the behavior or constraint described?

- **A. Central aggregation is being mistaken for additional unique risk** The same finding may appear in different surfaces. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.
- **B. Azure resource visibility does not imply source-host security access** The analyst crosses several permission domains. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **C. An onboarding action may not apply to later repositories** **Correct.** Current coverage does not prove automatic future coverage. This directly addresses the constraint stated in this case.

**Explanation:** Current coverage does not prove automatic future coverage. The selected answer is an onboarding action may not apply to later repositories.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q038

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Organization-wide activation: An administrator wants future repositories to inherit a security policy but only enabled existing repositories. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The report distinguishes unique findings from their representations** The evidence should preserve traceability without double counting. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.
- **B. The analyst sees required findings without unnecessary source administration** Effective access should match the review role. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **C. A newly created test repository receives the intended protection** **Correct.** The validation must include a future-resource scenario. This directly addresses the constraint stated in this case.

**Explanation:** The validation must include a future-resource scenario. The selected answer is a newly created test repository receives the intended protection.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q039

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Organization-wide activation: An administrator wants future repositories to inherit a security policy but only enabled existing repositories. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep original source identifiers during normalization** Removing provenance makes correlation unreliable. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.
- **B. Review each platform's role and permission requirements separately** Broad elevation on one system may not solve another's denial. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **C. Confirm the billing implications of automatic enablement** **Correct.** New repositories can introduce additional paid contributors. This directly addresses the constraint stated in this case.

**Explanation:** New repositories can introduce additional paid contributors. The selected answer is confirm the billing implications of automatic enablement.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q040

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Organization-wide activation: An administrator wants future repositories to inherit a security policy but only enabled existing repositories. The team selects this remedy: "Configure future-repository defaults deliberately where supported." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Deduplication rules need maintenance across products** Different tools may also find genuinely distinct issues. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.
- **B. Cross-platform least privilege is more complex** It still offers clearer accountability and reduced exposure. That addresses a different requirement: Access confusion. It does not directly resolve this case's stated constraint.
- **C. Automatic coverage reduces gaps but broadens cost scope** **Correct.** Defaults need clear ownership and budget review. This directly addresses the constraint stated in this case.

**Explanation:** Defaults need clear ownership and budget review. The selected answer is automatic coverage reduces gaps but broadens cost scope.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q041

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Duplicate risk records: Repository findings and Defender recommendations are counted as independent vulnerabilities, doubling the dashboard total. Which next change most directly satisfies the stated requirement?

- **A. Disable only owned training capabilities after dependency review** Cleanup should match the lab's resource and billing boundary. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **B. Configure future-repository defaults deliberately where supported** Existing-resource activation and future defaults are separate controls. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. Correlate records by source identity and relationship** **Correct.** Multiple views can represent the same underlying issue. This directly addresses the constraint stated in this case.

**Explanation:** Multiple views can represent the same underlying issue. The selected answer is correlate records by source identity and relationship.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q042

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Duplicate risk records: Repository findings and Defender recommendations are counted as independent vulnerabilities, doubling the dashboard total. Which explanation best accounts for the behavior or constraint described?

- **A. Feature and connector lifecycles continue beyond the exercise** Closing a browser does not stop paid services. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **B. An onboarding action may not apply to later repositories** Current coverage does not prove automatic future coverage. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. Central aggregation is being mistaken for additional unique risk** **Correct.** The same finding may appear in different surfaces. This directly addresses the constraint stated in this case.

**Explanation:** The same finding may appear in different surfaces. The selected answer is central aggregation is being mistaken for additional unique risk.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q043

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Duplicate risk records: Repository findings and Defender recommendations are counted as independent vulnerabilities, doubling the dashboard total. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The report distinguishes unique findings from their representations** **Correct.** The evidence should preserve traceability without double counting. This directly addresses the constraint stated in this case.
- **B. The owned activation is removed and retained services are documented** The evidence must distinguish cleanup from shared dependencies. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **C. A newly created test repository receives the intended protection** The validation must include a future-resource scenario. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should preserve traceability without double counting. The selected answer is the report distinguishes unique findings from their representations.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q044

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Duplicate risk records: Repository findings and Defender recommendations are counted as independent vulnerabilities, doubling the dashboard total. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not remove security coverage used by other teams** Shared organizations require ownership-aware changes. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **B. Confirm the billing implications of automatic enablement** New repositories can introduce additional paid contributors. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. Keep original source identifiers during normalization** **Correct.** Removing provenance makes correlation unreliable. This directly addresses the constraint stated in this case.

**Explanation:** Removing provenance makes correlation unreliable. The selected answer is keep original source identifiers during normalization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q045

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Duplicate risk records: Repository findings and Defender recommendations are counted as independent vulnerabilities, doubling the dashboard total. The team selects this remedy: "Correlate records by source identity and relationship." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some billing and inventory updates are not instantaneous** Verify the current service's reporting behavior. That addresses a different requirement: Lab offboarding. It does not directly resolve this case's stated constraint.
- **B. Automatic coverage reduces gaps but broadens cost scope** Defaults need clear ownership and budget review. That addresses a different requirement: Organization-wide activation. It does not directly resolve this case's stated constraint.
- **C. Deduplication rules need maintenance across products** **Correct.** Different tools may also find genuinely distinct issues. This directly addresses the constraint stated in this case.

**Explanation:** Different tools may also find genuinely distinct issues. The selected answer is deduplication rules need maintenance across products.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q046

Foundational · [CP5](README.md#task-5) · [D4.3.2](../../docs/objective-map.md), [D4.3.3](../../docs/objective-map.md)

Lab offboarding: The training exercise ends, but its paid security activation and connector remain enabled on a shared organization. Which next change most directly satisfies the stated requirement?

- **A. Correlate records by source identity and relationship** Multiple views can represent the same underlying issue. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.
- **B. Disable only owned training capabilities after dependency review** **Correct.** Cleanup should match the lab's resource and billing boundary. This directly addresses the constraint stated in this case.
- **C. Review licensing estimate and enable only the intended training repository** Security onboarding can create subscription charges. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.

**Explanation:** Cleanup should match the lab's resource and billing boundary. The selected answer is disable only owned training capabilities after dependency review.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q047

Applied · [CP5](README.md#task-5) · [D4.3.2](../../docs/objective-map.md), [D4.3.3](../../docs/objective-map.md)

Lab offboarding: The training exercise ends, but its paid security activation and connector remain enabled on a shared organization. Which explanation best accounts for the behavior or constraint described?

- **A. Feature and connector lifecycles continue beyond the exercise** **Correct.** Closing a browser does not stop paid services. This directly addresses the constraint stated in this case.
- **B. Feature activation has a billing lifecycle** Training intent does not make paid capabilities free. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **C. Central aggregation is being mistaken for additional unique risk** The same finding may appear in different surfaces. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.

**Explanation:** Closing a browser does not stop paid services. The selected answer is feature and connector lifecycles continue beyond the exercise.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q048

Applied · [CP5](README.md#task-5) · [D4.3.2](../../docs/objective-map.md), [D4.3.3](../../docs/objective-map.md)

Lab offboarding: The training exercise ends, but its paid security activation and connector remain enabled on a shared organization. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The owned activation is removed and retained services are documented** **Correct.** The evidence must distinguish cleanup from shared dependencies. This directly addresses the constraint stated in this case.
- **B. Only the scoped repository is enabled with acknowledged billing** The evidence should include scope rather than broad activation. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **C. The report distinguishes unique findings from their representations** The evidence should preserve traceability without double counting. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must distinguish cleanup from shared dependencies. The selected answer is the owned activation is removed and retained services are documented.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q049

Applied · [CP5](README.md#task-5) · [D4.3.2](../../docs/objective-map.md), [D4.3.3](../../docs/objective-map.md)

Lab offboarding: The training exercise ends, but its paid security activation and connector remain enabled on a shared organization. Which execution safeguard most directly addresses the risk in this case?

- **A. Do not remove security coverage used by other teams** **Correct.** Shared organizations require ownership-aware changes. This directly addresses the constraint stated in this case.
- **B. Use a dedicated lab and document cleanup ownership** Shared organizations can include unrelated billable contributors. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **C. Keep original source identifiers during normalization** Removing provenance makes correlation unreliable. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.

**Explanation:** Shared organizations require ownership-aware changes. The selected answer is do not remove security coverage used by other teams.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q050

Advanced · [CP5](README.md#task-5) · [D4.3.2](../../docs/objective-map.md), [D4.3.3](../../docs/objective-map.md)

Lab offboarding: The training exercise ends, but its paid security activation and connector remain enabled on a shared organization. The team selects this remedy: "Disable only owned training capabilities after dependency review." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Some billing and inventory updates are not instantaneous** **Correct.** Verify the current service's reporting behavior. This directly addresses the constraint stated in this case.
- **B. Active-committer licensing may include historical contributors** Costs are not simply the number of current viewers. That addresses a different requirement: Paid feature onboarding. It does not directly resolve this case's stated constraint.
- **C. Deduplication rules need maintenance across products** Different tools may also find genuinely distinct issues. That addresses a different requirement: Duplicate risk records. It does not directly resolve this case's stated constraint.

**Explanation:** Verify the current service's reporting behavior. The selected answer is some billing and inventory updates are not instantaneous.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)
