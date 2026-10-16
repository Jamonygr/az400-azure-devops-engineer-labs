# Lab 23 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L23-Q001

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An Azure Repos security proposal estimates licenses by everyone who can read the repository. Which population should determine the active-committer estimate?

- **A. Only developers who opened pull requests this month** The billing window and push-based definition extend beyond monthly pull request authors.
- **B. Only users who can dismiss security alerts** Alert administration permissions do not define the billed contributor population.
- **C. Unique qualifying committers represented in pushes during the preceding 90 days** **Correct.** Billing counts qualifying active committers, rather than all readers or repository members.
- **D. All users with repository read permission** Read permission alone does not make a person an active committer.

**Explanation:** The billing window and push-based definition extend beyond monthly pull request authors. Alert administration permissions do not define the billed contributor population. Billing counts qualifying active committers, rather than all readers or repository members. Read permission alone does not make a person an active committer.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q002

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A developer needs to inspect Azure Repos security findings but must not dismiss them or enable paid features. Which permission fits this task?

- **A. Project Collection Administrators membership** Collection administration grants substantially broader control than viewing repository findings.
- **B. Advanced Security: view alerts** **Correct.** This permission permits finding inspection without alert lifecycle or billable settings control.
- **C. Advanced Security: Manage and dismiss alerts** This adds dismissal authority that the inspection task does not require.
- **D. Advanced Security: Manage settings** This permits enabling billable features and exceeds the inspection requirement.

**Explanation:** Collection administration grants substantially broader control than viewing repository findings. This permission permits finding inspection without alert lifecycle or billable settings control. This adds dismissal authority that the inspection task does not require. This permits enabling billable features and exceeds the inspection requirement.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q003

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

An analyst wants a unified view of repository security posture across supported source platforms in Azure. Which service supplies this integration?

- **A. Azure Monitor Application Insights** Application Insights observes application execution rather than integrating repository security posture.
- **B. Azure DevOps repository branch policies** Branch policies govern repository changes but do not aggregate cross-platform Defender posture.
- **C. GitHub repository traffic insights** Traffic insights describe repository activity rather than cross-platform security findings.
- **D. Microsoft Defender for Cloud DevOps security** **Correct.** Defender for Cloud integrates supported source platforms into a DevOps security posture view.

**Explanation:** Application Insights observes application execution rather than integrating repository security posture. Branch policies govern repository changes but do not aggregate cross-platform Defender posture. Traffic insights describe repository activity rather than cross-platform security findings. Defender for Cloud integrates supported source platforms into a DevOps security posture view.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support)

## L23-Q004

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

The security owner wants existing Azure Repos repositories enabled now and new repositories enabled by default later. Which configuration distinction matters?

- **A. Existing-repository activation and defaults for future repositories are separate choices** **Correct.** Existing scope activation does not automatically establish the desired future-repository default.
- **B. Enabling one current repository automatically enables future repositories** A repository-specific activation does not become an organization-wide creation policy.
- **C. The future default enables every existing repository retroactively** Creation defaults do not replace explicit decisions for already existing repositories.
- **D. A billing subscription association automatically enables all repositories** A billing association supplies payment context rather than repository activation intent.

**Explanation:** Existing scope activation does not automatically establish the desired future-repository default. A repository-specific activation does not become an organization-wide creation policy. Creation defaults do not replace explicit decisions for already existing repositories. A billing association supplies payment context rather than repository activation intent.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q005

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An Azure Repos project has a license, but no CodeQL execution or analysis results. What additional evidence is needed before claiming code scanning coverage?

- **A. A repository-level permission granting view alerts** Viewing permission cannot establish that a scan produced results.
- **B. A successful ordinary build without security analysis steps** A build succeeds independently of whether CodeQL analysis was configured or executed.
- **C. A supported scan configuration and successful analysis for the relevant code revision** **Correct.** Licensing permits use; completed analysis establishes whether that revision was scanned.
- **D. A screenshot showing the project's active committer estimate** A billing estimate does not establish that any code analysis ran.

**Explanation:** Viewing permission cannot establish that a scan produced results. A build succeeds independently of whether CodeQL analysis was configured or executed. Licensing permits use; completed analysis establishes whether that revision was scanned. A billing estimate does not establish that any code analysis ran.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-code-scanning?view=azure-devops)

## L23-Q006

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A team designs a Defender connector for one GitHub organization. Which GitHub role is a documented onboarding prerequisite?

- **A. Member of an unrelated GitHub organization** Membership elsewhere conveys no authority over the organization being connected.
- **B. Organization owner** **Correct.** The onboarding procedure requires organization-owner authority for the GitHub organization connection.
- **C. Repository read-only collaborator** Repository reading does not authorize organization-level connector installation.
- **D. Outside collaborator on a single issue** Issue collaboration does not grant organization authorization rights.

**Explanation:** Membership elsewhere conveys no authority over the organization being connected. The onboarding procedure requires organization-owner authority for the GitHub organization connection. Repository reading does not authorize organization-level connector installation. Issue collaboration does not grant organization authorization rights.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q007

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

An engineer runs the shown Azure CLI command during a security review. What does successful output establish?

```powershell
az security pricing list --subscription $SubscriptionId -o json
```

- **A. That all repositories have completed security scanning** Subscription pricing inventory contains no proof of repository scan completion.
- **B. That the operator approved a new paid plan** A read operation does not express approval or change a pricing tier.
- **C. That every security alert is assigned to an owner** Pricing configuration does not describe repository finding assignments.
- **D. The subscription's readable current Defender pricing configuration** **Correct.** Listing pricing is an inventory read and does not create a connector or activate scanning.

**Explanation:** Subscription pricing inventory contains no proof of repository scan completion. A read operation does not express approval or change a pricing tier. Pricing configuration does not describe repository finding assignments. Listing pricing is an inventory read and does not create a connector or activate scanning.

**Sources:** [S10](https://learn.microsoft.com/en-us/cli/azure/security/pricing?view=azure-cli-latest)

## L23-Q008

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An Azure DevOps Defender connector works after creation but fails when its creator loses source permissions. Which dependency explains the failure?

- **A. The connector inherits permissions from every Azure subscription reader** Subscription readership does not transfer source-platform permissions to the connector.
- **B. The connector must use the most recent repository committer's identity** Committing changes does not select the connector's authorization identity.
- **C. The connector permanently preserves all permissions held at installation** Source access changes can affect operation; authorization is not a frozen permission snapshot.
- **D. The connector uses the creating account's permissions for Azure DevOps operations** **Correct.** The documented authorization model makes that account's continuing source access operationally relevant.

**Explanation:** Subscription readership does not transfer source-platform permissions to the connector. Committing changes does not select the connector's authorization identity. Source access changes can affect operation; authorization is not a frozen permission snapshot. The documented authorization model makes that account's continuing source access operationally relevant.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-devops)

## L23-Q009

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A source inventory includes Azure Repos Git and Team Foundation Version Control repositories. Which repository type is supported by Defender DevOps onboarding?

- **A. TfsGit repositories** **Correct.** The documented Azure DevOps integration supports Git repositories identified as TfsGit.
- **B. Every repository type because the organization is connected** Organization onboarding does not remove repository-type support constraints.
- **C. Only TFVC repositories with a release pipeline** A release pipeline does not make TFVC a supported repository type.
- **D. Only GitHub repositories mirrored into TFVC** Mirroring into an unsupported type does not satisfy the source integration requirement.

**Explanation:** The documented Azure DevOps integration supports Git repositories identified as TfsGit. Organization onboarding does not remove repository-type support constraints. A release pipeline does not make TFVC a supported repository type. Mirroring into an unsupported type does not satisfy the source integration requirement.

**Sources:** [S9](https://learn.microsoft.com/en-us/azure/defender-for-cloud/faq-defender-for-devops)

## L23-Q010

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A repository owner enables eligible secret scanning and wants to understand its initial scope. Which behavior is documented?

- **A. Only the current default-branch tip is examined** The initial scan is not limited to a single current tree.
- **B. Every arbitrary string is recognized as a secret** Secret detection relies on supported patterns and capabilities rather than universal recognition.
- **C. Only files opened in an active pull request are examined** Initial secret scanning is independent of whether a file appears in an open pull request.
- **D. An initial scan checks repository history for supported secret types** **Correct.** Historical scanning can discover supported credentials in earlier commits, not just future pushes.

**Explanation:** The initial scan is not limited to a single current tree. Secret detection relies on supported patterns and capabilities rather than universal recognition. Initial secret scanning is independent of whether a file appears in an open pull request. Historical scanning can discover supported credentials in earlier commits, not just future pushes.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-secret-scanning?view=azure-devops)

## L23-Q011

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A security engineer needs to dismiss a verified false-positive Azure Repos alert but must not change product activation. Which specialized permission is appropriate?

- **A. Advanced Security: Manage settings only** Settings management targets feature activation rather than the narrower alert disposition task.
- **B. Azure subscription Billing Reader alone** Subscription billing inspection does not authorize repository alert lifecycle changes.
- **C. Advanced Security: Manage and dismiss alerts** **Correct.** Alert lifecycle permission supports dismissal without granting billable settings management.
- **D. Advanced Security: view alerts** Viewing permits inspection but does not authorize alert dismissal.

**Explanation:** Settings management targets feature activation rather than the narrower alert disposition task. Subscription billing inspection does not authorize repository alert lifecycle changes. Alert lifecycle permission supports dismissal without granting billable settings management. Viewing permits inspection but does not authorize alert dismissal.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q012

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A newly created GitHub Defender connector shows no recommendations immediately. Which conclusion is justified?

- **A. Inventory and recommendation availability require their own ingestion and scan checks** **Correct.** Connector creation is distinct from discovery and completed security analysis, which can take time.
- **B. The absence proves the organization contains no vulnerabilities** An empty initial view can reflect discovery or scan timing rather than a clean repository.
- **C. The connector must be recreated immediately under a different name** Recreating a newly created connector does not first diagnose normal discovery latency.
- **D. The repository's source security features are automatically disabled** An initially empty Defender view does not establish source-feature state.

**Explanation:** Connector creation is distinct from discovery and completed security analysis, which can take time. An empty initial view can reflect discovery or scan timing rather than a clean repository. Recreating a newly created connector does not first diagnose normal discovery latency. An initially empty Defender view does not establish source-feature state.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q013

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Two repositories on the same Azure subscription have 20 and 30 active committers; 10 identities overlap. For the same enabled product, what is the combined unique count?

- **A. 30** Choosing the larger repository count discards ten contributors unique to the other repository.
- **B. 10** Counting only the overlap omits all contributors unique to either repository.
- **C. 40** **Correct.** Subscription-level deduplication counts the ten overlapping identities once, so 20 plus 30 minus 10 equals 40.
- **D. 50** Adding repository totals without removing overlap double-counts ten identities.

**Explanation:** Choosing the larger repository count discards ten contributors unique to the other repository. Counting only the overlap omits all contributors unique to either repository. Subscription-level deduplication counts the ten overlapping identities once, so 20 plus 30 minus 10 equals 40. Adding repository totals without removing overlap double-counts ten identities.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q014

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

A team checks supported Defender DevOps hosting options before procurement. Which combination is documented?

- **A. Every GitHub Enterprise Cloud data-residency configuration** The documented support exceptions must be checked rather than assuming all configurations qualify.
- **B. Azure DevOps Services, GitHub Enterprise Cloud, and GitLab SaaS** **Correct.** The support matrix names these hosted source platforms, subject to their detailed prerequisites.
- **C. Azure DevOps Server and GitHub Enterprise Server only** The documented hosted integration support does not equate these server products with their cloud counterparts.
- **D. Any self-hosted Git server exposing HTTPS** A reachable Git endpoint is insufficient to establish a supported Defender connector.

**Explanation:** The documented support exceptions must be checked rather than assuming all configurations qualify. The support matrix names these hosted source platforms, subject to their detailed prerequisites. The documented hosted integration support does not equate these server products with their cloud counterparts. A reachable Git endpoint is insufficient to establish a supported Defender connector.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support)

## L23-Q015

Foundational · [CP5](README.md#task-5) · [D4.3.4](../../docs/objective-map.md)

A lab uses a synthetic high-severity finding to practice triage. What evidence can the lab honestly report?

- **A. A successful live Defender vulnerability detection** A fixture is not evidence of a live Defender detection or ingestion run.
- **B. Complete production repository scanning coverage** One synthetic input cannot establish production scan coverage.
- **C. An automatically approved source-platform risk exception** A local rule test does not authorize a production risk acceptance decision.
- **D. A tested local disposition rule against labeled fixture input** **Correct.** The exercise establishes rule behavior on the fixture without claiming a provider scanner produced that finding.

**Explanation:** A fixture is not evidence of a live Defender detection or ingestion run. One synthetic input cannot establish production scan coverage. A local rule test does not authorize a production risk acceptance decision. The exercise establishes rule behavior on the fixture without claiming a provider scanner produced that finding.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q016

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A migration imports old commits into an enabled Azure Repos repository today. Their original authors committed more than 90 days ago. Which estimate is appropriate?

- **A. Count only the person who ran the import command** A pushed change can represent qualifying contributors beyond the pushing operator.
- **B. Count every historical organization member regardless of the import** Organization membership without qualifying pushed contributions does not establish active-committer status.
- **C. Review qualifying identities represented in today's push, even when original commit dates are older** **Correct.** The active-committer definition uses recent pushes containing qualifying identities, rather than only original commit timestamps.
- **D. Exclude every imported author because each original commit is old** Old commit timestamps do not by themselves remove identities represented in recent pushes.

**Explanation:** A pushed change can represent qualifying contributors beyond the pushing operator. Organization membership without qualifying pushed contributions does not establish active-committer status. The active-committer definition uses recent pushes containing qualifying identities, rather than only original commit timestamps. Old commit timestamps do not by themselves remove identities represented in recent pushes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q017

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Finance compares 35 active committers before activation with a billing page read taken immediately afterward. Why might these numbers differ without proving an error?

- **A. The billing usage view represents the previous day's measured count** **Correct.** Documented usage timing can differ from a current estimate, so compare matching measurement periods.
- **B. The billing page always counts repository readers instead of committers** The timing difference does not change the documented billing population.
- **C. The estimate guarantees a fixed monthly license total** Active populations can change and estimates do not freeze future daily charges.
- **D. Enabling the feature erases all recent contributor identities** Activation does not remove contribution history from the active-committer definition.

**Explanation:** Documented usage timing can differ from a current estimate, so compare matching measurement periods. The timing difference does not change the documented billing population. Active populations can change and estimates do not freeze future daily charges. Activation does not remove contribution history from the active-committer definition.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q018

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pilot is approved for one repository with 12 active committers. The administrator sees an enable-all control for a 400-repository project. Which implementation matches the approval?

- **A. Enable the organization temporarily and assess the bill at month end** Organization-wide activation exceeds the approved pilot boundary before the estimate can be reviewed.
- **B. Enable the reviewed product only on the approved repository and record its estimate** **Correct.** Repository-specific activation preserves the authorized scope and its reviewed billing basis.
- **C. Enable the project and exclude unwanted findings in a report** Filtering reports does not narrow the product activation or potential billing scope.
- **D. Set the future-repository default and assume the current pilot is enabled** A future creation default does not establish activation of the existing pilot repository.

**Explanation:** Organization-wide activation exceeds the approved pilot boundary before the estimate can be reviewed. Repository-specific activation preserves the authorized scope and its reviewed billing basis. Filtering reports does not narrow the product activation or potential billing scope. A future creation default does not establish activation of the existing pilot repository.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops); [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q019

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

A capability read returns the shown response for a private GitHub repository. What should the reviewer do with the missing security field?

```json
{"full_name":"org/training","visibility":"private"}
```

- **A. Record every security capability as enabled** Repository visibility and a successful read do not establish enabled security features.
- **B. Change the repository to public to make the inspection pass** Changing visibility is a separate security decision and does not diagnose the missing metadata.
- **C. Verify token permissions and feature eligibility before deciding whether the feature is disabled** **Correct.** An absent or unexposed field can reflect access or entitlement limits and is not an explicit disabled state.
- **D. Record every security capability as disabled** A missing field is not a returned status for each capability.

**Explanation:** Repository visibility and a successful read do not establish enabled security features. Changing visibility is a separate security decision and does not diagnose the missing metadata. An absent or unexposed field can reflect access or entitlement limits and is not an explicit disabled state. A missing field is not a returned status for each capability.

**Sources:** [S12](https://docs.github.com/en/rest/repos/repos#get-a-repository)

## L23-Q020

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Developers can read alerts, and security triagers can dismiss them. Only billing-approved administrators should enable features. Which permission design fits?

- **A. Make all repository contributors collection administrators** Broad administration defeats the stated separation of security responsibilities.
- **B. Grant only view alerts to every group** Read-only access prevents authorized triagers and settings administrators from completing their distinct duties.
- **C. Separate view, lifecycle, and settings permissions for the three groups** **Correct.** The specialized permissions distinguish inspection, disposition, and billable product settings.
- **D. Give the triager group Manage settings so it can dismiss alerts** Settings management unnecessarily grants activation authority for an alert lifecycle task.

**Explanation:** Broad administration defeats the stated separation of security responsibilities. Read-only access prevents authorized triagers and settings administrators from completing their distinct duties. The specialized permissions distinguish inspection, disposition, and billable product settings. Settings management unnecessarily grants activation authority for an alert lifecycle task.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q021

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pipeline produces valid third-party SARIF, but Azure Repos shows no code scanning results. Which next step targets the missing integration?

- **A. Dismiss prior findings to force the dashboard to refresh** Changing old dispositions does not upload the missing analysis.
- **B. Check the supported Advanced Security result-publication task and its upload outcome** **Correct.** Producing a file and publishing supported analysis to Advanced Security are different pipeline steps.
- **C. Rename the SARIF file to the repository name** Naming alone does not publish a report to the security service.
- **D. Increase the active-committer estimate in the billing review** License counts do not transport analysis output into the service.

**Explanation:** Changing old dispositions does not upload the missing analysis. Producing a file and publishing supported analysis to Advanced Security are different pipeline steps. Naming alone does not publish a report to the security service. License counts do not transport analysis output into the service.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-code-scanning?view=azure-devops)

## L23-Q022

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A supported credential appears in a historical commit and is now valid in the provider. What is the first containment action when the alert is confirmed?

- **A. Revoke or rotate the credential, then remove exposure and investigate use** **Correct.** Credential containment addresses active access; repository cleanup and investigation complete remediation.
- **B. Delete the current file and close the alert immediately** Current-tree deletion does not invalidate a credential retained in history or elsewhere.
- **C. Rewrite history first and leave the credential active until completion** History cleanup can take time and does not itself revoke the exposed credential.
- **D. Mark the alert false positive because the default branch no longer contains it** Historical exposure of a valid credential is not disproved by its absence from the current tree.

**Explanation:** Credential containment addresses active access; repository cleanup and investigation complete remediation. Current-tree deletion does not invalidate a credential retained in history or elsewhere. History cleanup can take time and does not itself revoke the exposed credential. Historical exposure of a valid credential is not disproved by its absence from the current tree.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-secret-scanning?view=azure-devops)

## L23-Q023

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A Defender connector should discover only the training organization's approved repositories. Which review is essential before creation?

- **A. Verify only that one selected repository has a green build** Build state does not define which repositories the connector may discover.
- **B. Verify that every organization member can read the Azure subscription** Broad Azure readership is not needed to define source collection scope.
- **C. Verify GitHub app installation access and the connector's source selection** **Correct.** Both source authorization and connector configuration affect which repositories can be collected.
- **D. Verify only the Azure resource group's display name** The destination resource name does not establish source repository authorization.

**Explanation:** Build state does not define which repositories the connector may discover. Broad Azure readership is not needed to define source collection scope. Both source authorization and connector configuration affect which repositories can be collected. The destination resource name does not establish source repository authorization.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q024

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An analyst needs to inspect findings for one Defender connector but not other teams' connectors. Which Azure access design is best?

- **A. Grant subscription Contributor to the analyst** Contributor adds broad change permissions beyond reading the selected findings.
- **B. Grant GitHub repository write access and no Azure role** Source repository access alone does not authorize reading the Defender destination.
- **C. Grant tenant-wide Global Administrator for the investigation window** Tenant administration is far broader than the connector-level read requirement.
- **D. Scope Security Reader to the appropriate connector or containing resource group** **Correct.** Supported narrower role scopes allow inspection without exposing unrelated subscription security inventory.

**Explanation:** Contributor adds broad change permissions beyond reading the selected findings. Source repository access alone does not authorize reading the Defender destination. Tenant administration is far broader than the connector-level read requirement. Supported narrower role scopes allow inspection without exposing unrelated subscription security inventory.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q025

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A connector health check began failing after the creating Azure DevOps account was disabled. Which repair best preserves accountable operations?

- **A. Refresh only the Azure destination token while leaving the disabled source authorization unchanged** A healthy destination token does not restore the connector creating account source permissions.
- **B. Restore or reauthorize the connection using an approved maintained identity and verify its source scope** **Correct.** The source-account lifecycle dependency should be repaired with deliberate authorization and health validation.
- **C. Grant a new Azure Security Reader assignment without reauthorizing the source connection** Destination read permission does not replace the disabled source identity used for Azure DevOps operations.
- **D. Recreate the connector with the same disabled source identity and unchanged authorization** A new connector object using the broken source authorization retains the underlying lifecycle failure.

**Explanation:** A healthy destination token does not restore the connector creating account source permissions. The source-account lifecycle dependency should be repaired with deliberate authorization and health validation. Destination read permission does not replace the disabled source identity used for Azure DevOps operations. A new connector object using the broken source authorization retains the underlying lifecycle failure.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-devops)

## L23-Q026

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An integration report lists the same CVE in GitHub service-a and Azure Repos service-b. How should aggregation preserve remediation accountability?

- **A. Treat identical CVE text as proof of one scanner duplicate** The same vulnerability can affect different repositories without duplicate ingestion.
- **B. Merge both rows into one resolved alert when either repository is patched** Fixing one codebase does not demonstrate remediation in the other.
- **C. Keep repository and source identities while grouping the common vulnerability for overview** **Correct.** A shared vulnerability can require separate fixes in independently owned repositories.
- **D. Keep only the highest-severity row and drop the other repository** Dropping the second occurrence hides a distinct affected codebase and owner.

**Explanation:** The same vulnerability can affect different repositories without duplicate ingestion. Fixing one codebase does not demonstrate remediation in the other. A shared vulnerability can require separate fixes in independently owned repositories. Dropping the second occurrence hides a distinct affected codebase and owner.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support); [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q027

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

The fixture contains three findings, but the approved lab owns only org/training. Which result should the correlation stage produce?

```json
[{"id":"a","host":"GitHub","scope":"org/training","severity":"high"},
 {"id":"b","host":"GitHub","scope":"org/training","severity":"medium"},
 {"id":"c","host":"GitHub","scope":"other/production","severity":"critical"}]
```

- **A. Retain only one owned finding to equal the number of repositories** One repository can have multiple independent findings, so repository count is not an alert limit.
- **B. Retain the two exact owned matches and report the excluded foreign finding separately** **Correct.** Exact source scope filtering preserves the collection boundary without modifying foreign alert state.
- **C. Retain all findings because severity is the only relevant filter** Severity does not authorize processing resources outside the approved source scope.
- **D. Delete the foreign finding at its source to make counts agree** A correlation exclusion does not authorize altering another team's finding.

**Explanation:** One repository can have multiple independent findings, so repository count is not an alert limit. Exact source scope filtering preserves the collection boundary without modifying foreign alert state. Severity does not authorize processing resources outside the approved source scope. A correlation exclusion does not authorize altering another team's finding.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q028

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

An alert labeled high has a demonstrated input-to-sink path in the released application. Which triage record best supports a release decision?

- **A. Lower its severity to meet the release threshold without technical review** Changing a label does not change the exposure demonstrated by the finding.
- **B. Assign an owner, record the path evidence, block release, and define a verified fix criterion** **Correct.** The decision connects observed exploitability to accountable remediation and a testable release condition.
- **C. Accept the risk solely because a medium alert was fixed earlier** Progress on a different finding does not mitigate this reachable high finding.
- **D. Dismiss it as false positive because the scanner is occasionally noisy** General scanner noise is not contrary evidence for this specific demonstrated path.

**Explanation:** Changing a label does not change the exposure demonstrated by the finding. The decision connects observed exploitability to accountable remediation and a testable release condition. Progress on a different finding does not mitigate this reachable high finding. General scanner noise is not contrary evidence for this specific demonstrated path.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q029

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

CodeQL is configured for an unsupported language in one repository. Which coverage statement is accurate?

- **A. That language needs a supported alternative analysis path or a recorded coverage gap** **Correct.** CodeQL support is language-dependent, so configuration alone cannot establish coverage for unsupported code.
- **B. The enabled product automatically analyzes every language equally** Product entitlement does not remove analysis language support limits.
- **C. A scan of a neighboring repository covers this repository too** Analysis scope and results must correspond to the code being claimed as covered.
- **D. An empty result list proves the unsupported code is safe** No supported analysis is not equivalent to an analysis with no findings.

**Explanation:** CodeQL support is language-dependent, so configuration alone cannot establish coverage for unsupported code. Product entitlement does not remove analysis language support limits. Analysis scope and results must correspond to the code being claimed as covered. No supported analysis is not equivalent to an analysis with no findings.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-code-scanning?view=azure-devops)

## L23-Q030

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Secret scanning has completed with no findings. A developer asks whether this proves no credentials ever entered Git history. Which response is defensible?

- **A. It proves the repository no longer needs credential management** Clean detection results do not eliminate the need for appropriate credential handling.
- **B. It establishes no detected supported secrets within the scan's documented scope and limits** **Correct.** Detection results must be interpreted against supported patterns and completed scope, rather than as universal absence proof.
- **C. It proves every historical credential value was identified** Pattern-based detection does not establish recognition of every possible credential format.
- **D. It proves credentials could not have been copied outside Git** Repository scanning does not establish behavior of external systems or users.

**Explanation:** Clean detection results do not eliminate the need for appropriate credential handling. Detection results must be interpreted against supported patterns and completed scope, rather than as universal absence proof. Pattern-based detection does not establish recognition of every possible credential format. Repository scanning does not establish behavior of external systems or users.

**Sources:** [S5](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-secret-scanning?view=azure-devops)

## L23-Q031

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An organization enables Advanced Security for existing projects but elects not to enable it automatically for future repositories. What onboarding control is needed?

- **A. A branch naming convention that includes security** Branch names do not activate licensed repository features.
- **B. An alert dismissal workflow in another project** Alert lifecycle actions do not configure coverage for newly created repositories.
- **C. An explicit new-repository entitlement and activation review** **Correct.** Without the future default, each new repository needs a deliberate coverage decision.
- **D. No control because all future repositories inherit existing activation** The selected configuration does not automatically extend activation to future repositories.

**Explanation:** Branch names do not activate licensed repository features. Alert lifecycle actions do not configure coverage for newly created repositories. Without the future default, each new repository needs a deliberate coverage decision. The selected configuration does not automatically extend activation to future repositories.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q032

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Eight hours after creating a GitHub connector, source inventory appears but code recommendations remain absent. Source code scanning was never configured. What should be checked next?

- **A. Create duplicate connectors for the same organization** Duplicate destination connections do not supply the missing source analysis.
- **B. Change every repository to public so inventory becomes a scan** Visibility changes do not execute the missing security analysis.
- **C. Configure and verify the required source security scanning path and its completed results** **Correct.** Inventory discovery does not substitute for the scan setup needed to produce recommendations.
- **D. Increase the connector discovery wait indefinitely** Additional waiting cannot complete a scan configuration that does not exist.

**Explanation:** Duplicate destination connections do not supply the missing source analysis. Visibility changes do not execute the missing security analysis. Inventory discovery does not substitute for the scan setup needed to produce recommendations. Additional waiting cannot complete a scan configuration that does not exist.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q033

Applied · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

The review pipeline currently invokes the shown command to collect Defender plan inventory. Which change makes this step read-only?

```powershell
az security pricing create --name CloudPosture --tier Standard --subscription $SubscriptionId
```

- **A. Run pricing create using a shorter-lived token** Credential lifetime does not change the mutating semantics of the API call.
- **B. Replace pricing create with pricing list for the selected subscription** **Correct.** The list operation reads current plan state; create changes pricing configuration.
- **C. Keep pricing create but suppress its output** Output suppression does not prevent the command from modifying the plan.
- **D. Keep pricing create and add a descriptive subscription tag** Tagging the subscription does not make a pricing mutation read-only.

**Explanation:** Credential lifetime does not change the mutating semantics of the API call. The list operation reads current plan state; create changes pricing configuration. Output suppression does not prevent the command from modifying the plan. Tagging the subscription does not make a pricing mutation read-only.

**Sources:** [S10](https://learn.microsoft.com/en-us/cli/azure/security/pricing?view=azure-cli-latest)

## L23-Q034

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Two Azure DevOps organizations share one subscription. An administrator proposes migrating only one organization from bundled Advanced Security billing to standalone products. Which issue needs escalation?

- **A. The migration automatically separates organizations onto new subscriptions** The migration does not silently redesign subscription associations.
- **B. The migration grants GitHub.com licenses for all users** Azure Repos product billing changes do not establish GitHub.com entitlement.
- **C. The documented migration operates at subscription level and affects associated organizations** **Correct.** The migration boundary and irreversible nature require a subscription-wide review, not an isolated organization assumption.
- **D. Each repository can independently reverse the migration afterward** The documented migration is not a reversible per-repository toggle.

**Explanation:** The migration does not silently redesign subscription associations. Azure Repos product billing changes do not establish GitHub.com entitlement. The migration boundary and irreversible nature require a subscription-wide review, not an isolated organization assumption. The documented migration is not a reversible per-repository toggle.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q035

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An automated integration must read Azure Repos security findings. The team can use Microsoft Entra authentication. Which choice follows current guidance?

- **A. Use a collection-administrator PAT for convenience despite available Entra authentication** That introduces broader personal credential authority than the automated read requires.
- **B. Use an Entra token with no repository security permission because authentication alone is sufficient** A valid token still needs the source authorization required to read the security findings.
- **C. Grant Azure subscription Security Reader and assume it supplies Azure Repos finding access** Azure destination permissions do not replace the repository security authorization required by the source service.
- **D. Use an appropriately scoped Entra token and required repository permissions** **Correct.** The documentation recommends Entra tokens and still requires task-appropriate authorization.

**Explanation:** That introduces broader personal credential authority than the automated read requires. A valid token still needs the source authorization required to read the security findings. Azure destination permissions do not replace the repository security authorization required by the source service. The documentation recommends Entra tokens and still requires task-appropriate authorization.

**Sources:** [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q036

Applied · [CP5](README.md#task-5) · [D4.3.4](../../docs/objective-map.md)

A scanner finding was accepted as risk for 30 days with a named owner. What should the aggregation view show during that period?

- **A. The open exposure with its approved exception, owner, and expiry** **Correct.** Risk acceptance documents a governed disposition but does not prove the vulnerability was fixed.
- **B. A fixed finding with no follow-up date** Acceptance and remediation are different states, and the exception has an explicit expiry.
- **C. No record because accepted findings are irrelevant to posture** The exposure remains relevant even while an authorized exception is active.
- **D. A false-positive disposition because the release proceeded** Release authorization does not establish that the detection was incorrect.

**Explanation:** Risk acceptance documents a governed disposition but does not prove the vulnerability was fixed. Acceptance and remediation are different states, and the exception has an explicit expiry. The exposure remains relevant even while an authorized exception is active. Release authorization does not establish that the detection was incorrect.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q037

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A code alert claims an input-to-sink path, but analysis of the exact shipped build proves that claimed path is impossible. Which evidence best supports an evidence-based false-positive disposition?

- **A. The source revision, build configuration, reachability analysis, and reviewer decision** **Correct.** Specific evidence connects the disposition to the exact shipped code and permits later reassessment.
- **B. The repository's overall test pass percentage** Aggregate test results do not establish whether this flagged path is reachable.
- **C. The age of the scanner product's latest release** Scanner age alone does not prove this individual result is wrong.
- **D. A comment saying the team has never observed an exploit** Lack of observed exploitation does not demonstrate unreachable code or incorrect detection.

**Explanation:** Specific evidence connects the disposition to the exact shipped code and permits later reassessment. Aggregate test results do not establish whether this flagged path is reachable. Scanner age alone does not prove this individual result is wrong. Lack of observed exploitation does not demonstrate unreachable code or incorrect detection.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q038

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A GitHub connector includes only selected repositories, and a newly created repository is absent. Which diagnosis should precede a platform incident?

- **A. Assume the new repository is automatically included because the organization is connected** Organization connection does not override selected-repository authorization limits.
- **B. Review installation repository access and the connector's selected scope** **Correct.** A repository excluded by configuration can correctly remain absent from inventory.
- **C. Increase every repository's code scanning timeout** Scan duration cannot grant an excluded repository to the installation.
- **D. Reassign every repository owner to the connector creator** Changing ownership is not the first step for checking explicit selection configuration.

**Explanation:** Organization connection does not override selected-repository authorization limits. A repository excluded by configuration can correctly remain absent from inventory. Scan duration cannot grant an excluded repository to the installation. Changing ownership is not the first step for checking explicit selection configuration.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q039

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

The correlation job receives two rows with the same alert ID from different source hosts. What key prevents accidental merging?

- **A. Severity plus detection date** Many unrelated alerts share a severity and detection date.
- **B. Repository display name alone** Display names can collide across organizations and source hosts.
- **C. Source host plus organization/repository identity plus alert ID** **Correct.** Alert identifiers must be interpreted within their source namespace and resource context.
- **D. Alert ID alone** Two systems can legitimately issue the same local alert identifier.

**Explanation:** Many unrelated alerts share a severity and detection date. Display names can collide across organizations and source hosts. Alert identifiers must be interpreted within their source namespace and resource context. Two systems can legitimately issue the same local alert identifier.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q040

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pilot is ending, but another team uses paid scanning in the same organization. Which cleanup action fits the pilot boundary?

- **A. Delete the shared billing subscription association** Changing shared billing affects unrelated repositories beyond the pilot scope.
- **B. Leave the pilot enabled because any cleanup could affect shared coverage** The shared context requires scoped cleanup, not abandoning the approved pilot cleanup responsibility.
- **C. Disable only the pilot's authorized activation and verify remaining shared coverage and billing state** **Correct.** Cleanup must target the reviewed owned scope while retaining other teams' intended product use.
- **D. Disable Advanced Security across the organization to ensure no pilot charges remain** Organization-wide disablement also changes the other team's intentional security coverage.

**Explanation:** Changing shared billing affects unrelated repositories beyond the pilot scope. The shared context requires scoped cleanup, not abandoning the approved pilot cleanup responsibility. Cleanup must target the reviewed owned scope while retaining other teams' intended product use. Organization-wide disablement also changes the other team's intentional security coverage.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops); [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops)

## L23-Q041

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A repository pilot has 12 unique active committers; a second approved pilot has 18, including five from the first. Finance approves the same product for these repositories only. What activation and estimate should be proposed?

- **A. Enable the two named repositories with a combined estimate of 25 unique committers** **Correct.** Scoped activation matches the authorization, and 12 plus 18 minus 5 gives the deduplicated population.
- **B. Enable the two repositories with an estimate of 30** The proposed scope is correct, but the estimate double-counts five shared identities.
- **C. Enable the project with an estimate of 25** The estimate covers the two pilots, but project-wide activation adds unreviewed repositories.
- **D. Enable only the first repository with an estimate of 12** This omits the second explicitly approved pilot and fails to meet the requested coverage.

**Explanation:** Scoped activation matches the authorization, and 12 plus 18 minus 5 gives the deduplicated population. The proposed scope is correct, but the estimate double-counts five shared identities. The estimate covers the two pilots, but project-wide activation adds unreviewed repositories. This omits the second explicitly approved pilot and fails to meet the requested coverage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops)

## L23-Q042

Advanced · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

A regulated team uses GitHub Enterprise Cloud with data residency. It wants Defender DevOps onboarding next week and already has subscription Contributor. What is the best planning decision?

- **A. Install the connector using a more privileged Azure role** Additional Azure privileges do not create support for an excluded source configuration.
- **B. Report source-native scan findings as successful Defender ingestion** Source-native evidence may be useful but cannot be relabeled as an unperformed Defender integration.
- **C. Record the documented hosting support gap and choose a supported evidence path with the platform owner** **Correct.** Azure destination permission does not remove the source-hosting support limitation in the current support matrix.
- **D. Proceed because all GitHub Enterprise Cloud configurations are interchangeable** The documented data-residency exception prevents that assumption.

**Explanation:** Additional Azure privileges do not create support for an excluded source configuration. Source-native evidence may be useful but cannot be relabeled as an unperformed Defender integration. Azure destination permission does not remove the source-hosting support limitation in the current support matrix. The documented data-residency exception prevents that assumption.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github); [S2](https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support)

## L23-Q043

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A central security account can view Azure Repos findings but cannot enable features; the connector creator is leaving. Which transition addresses both constraints?

- **A. Keep the connector unchanged and transfer only the Azure resource group's tags** Destination metadata changes do not transfer source authorization or ensure continued connector access.
- **B. Reauthorize the connector under a maintained approved source identity and retain separate settings authority** **Correct.** Connector continuity and billable activation are separate responsibilities, so preserve both the account lifecycle and permission boundaries.
- **C. Give the departing creator permanent collection administration and retain its disabled account** Permanent broad access does not provide a maintained operational identity after account disablement.
- **D. Give every security reader feature settings permission to avoid future dependency** This broadens billable settings authority without specifically repairing the connector's authorization lifecycle.

**Explanation:** Destination metadata changes do not transfer source authorization or ensure continued connector access. Connector continuity and billable activation are separate responsibilities, so preserve both the account lifecycle and permission boundaries. Permanent broad access does not provide a maintained operational identity after account disablement. This broadens billable settings authority without specifically repairing the connector's authorization lifecycle.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-devops); [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q044

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A merged report contains the shown records. The deployment concerns GitHub org/api at revision aaa. Which release interpretation preserves provenance?

```text
GitHub | org/api | revision aaa | alert 42 | high   | open, reachable
GitHub | org/api | revision bbb | alert 42 | high   | fixed
ADO    | org/api | revision ccc | alert 42 | medium | open
```

- **A. Release aaa because the latest row for that repository says fixed** A fix in bbb does not establish that the released revision aaa contains the remediation.
- **B. Block solely on the medium Azure Repos row because it is newest** A different source namespace and revision do not override the matching reachable high finding.
- **C. Merge all rows into one low-risk alert because repository names share api** Similar names do not establish identical code identity, revision, or remediation state.
- **D. The high finding at aaa blocks that release; the fixed result at bbb does not prove aaa was repaired** **Correct.** Disposition must follow the exact source and released revision rather than a newer result from a different revision.

**Explanation:** A fix in bbb does not establish that the released revision aaa contains the remediation. A different source namespace and revision do not override the matching reachable high finding. Similar names do not establish identical code identity, revision, or remediation state. Disposition must follow the exact source and released revision rather than a newer result from a different revision.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q045

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

GitHub inventory is visible in Defender, but the only security evidence is a pipeline log showing CodeQL initialization succeeded and analysis later failed. What should the readiness report say?

- **A. The source is vulnerability-free because no code alerts arrived** A failed analysis cannot establish absence of vulnerabilities.
- **B. The source connector is necessarily broken because analysis failed** A source analysis failure can occur independently of connector discovery or authorization health.
- **C. Discovery succeeded; code analysis and downstream finding coverage remain unverified pending a successful scan** **Correct.** Initialization and inventory do not establish completed analysis or ingestion of its results.
- **D. Defender integration is fully verified because repository discovery succeeded** Discovery proves only one part of the integration, not completed code scanning.

**Explanation:** A failed analysis cannot establish absence of vulnerabilities. A source analysis failure can occur independently of connector discovery or authorization health. Initialization and inventory do not establish completed analysis or ingestion of its results. Discovery proves only one part of the integration, not completed code scanning.

**Sources:** [S4](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-code-scanning?view=azure-devops); [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github)

## L23-Q046

Advanced · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A high-severity secret alert contains an active credential, while a high code alert has a plausible but unconfirmed input path. The release window is short. Which triage plan is best?

- **A. Dismiss the code alert and defer credential rotation until both root causes are known** Neither disposition follows the known credential exposure or the unresolved reachability evidence.
- **B. Rotate the credential and automatically close both alerts** Credential rotation addresses one exposure but supplies no remediation evidence for the distinct code finding.
- **C. Revoke the active credential immediately, investigate its use, and assign time-bounded reachability analysis for the code alert** **Correct.** The confirmed credential exposure needs immediate containment while the unconfirmed path needs specific evidence and accountable follow-up.
- **D. Fix the code alert first because all high severities have identical operational urgency** Equal severity labels do not erase the difference between confirmed active access and an unconfirmed path.

**Explanation:** Neither disposition follows the known credential exposure or the unresolved reachability evidence. Credential rotation addresses one exposure but supplies no remediation evidence for the distinct code finding. The confirmed credential exposure needs immediate containment while the unconfirmed path needs specific evidence and accountable follow-up. Equal severity labels do not erase the difference between confirmed active access and an unconfirmed path.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction); [S5](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-secret-scanning?view=azure-devops)

## L23-Q047

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Finance permits alert triage but has not approved standalone-product migration. An administrator proposes granting triagers Manage settings to migrate and then disabling that permission. Which response fits the documented boundaries?

- **A. Grant Manage settings temporarily because the permission can later be revoked** Revoking access does not reverse a completed billing migration or its cross-organization effects.
- **B. Let triagers migrate only one repository and reconcile billing afterward** The documented migration is not a repository-isolated billing change.
- **C. Disable all repository security products until every triager has settings permission** Triage can proceed with the appropriate lifecycle permission without stopping unrelated coverage.
- **D. Keep lifecycle-only triage permission and route the subscription-level irreversible migration through the billing decision process** **Correct.** Temporary permission does not narrow an irreversible subscription-wide migration or replace financial authorization.

**Explanation:** Revoking access does not reverse a completed billing migration or its cross-organization effects. The documented migration is not a repository-isolated billing change. Triage can proceed with the appropriate lifecycle permission without stopping unrelated coverage. Temporary permission does not narrow an irreversible subscription-wide migration or replace financial authorization.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing?view=azure-devops); [S6](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-permissions?view=azure-devops)

## L23-Q048

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

After connector onboarding, a dashboard count rises from 20 to 80. Source access was expanded yesterday, scan completion varies by repository, and leadership asks whether risk quadrupled. Which analysis is sound?

- **A. Compare like-for-like repository scope, scan freshness, and finding states before interpreting the trend** **Correct.** Collection expansion and scan timing can change observed counts independently of a fourfold change in underlying exposure.
- **B. Report a fourfold risk increase because total findings rose fourfold** Raw counts across changed scope and coverage are not a controlled risk comparison.
- **C. Report unchanged risk because connector changes never affect security posture** Scope changes can reveal important exposure, so dismissing the new findings is unjustified.
- **D. Remove newly discovered repositories from all future reports to preserve the old baseline** A scoped baseline comparison can coexist with transparent reporting of newly covered repositories.

**Explanation:** Collection expansion and scan timing can change observed counts independently of a fourfold change in underlying exposure. Raw counts across changed scope and coverage are not a controlled risk comparison. Scope changes can reveal important exposure, so dismissing the new findings is unjustified. A scoped baseline comparison can coexist with transparent reporting of newly covered repositories.

**Sources:** [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github); [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q049

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A release dashboard must show two owned findings and one excluded foreign finding without leaking the foreign repository name. Which design best preserves auditability?

- **A. Publish owned finding details plus an exclusion count and a restricted provenance record** **Correct.** This supports scoped triage and auditable filtering while respecting the different visibility boundary.
- **B. Publish all raw records because exclusions must always be publicly named** Auditability does not require exposing unrelated repository identities to the release audience.
- **C. Discard foreign input without recording that filtering occurred** Silent removal prevents reviewers from distinguishing correct scope filtering from lost data.
- **D. Combine the foreign finding into the owned critical count without identifying its source** That inflates the owned release signal and obscures the collection boundary.

**Explanation:** This supports scoped triage and auditable filtering while respecting the different visibility boundary. Auditability does not require exposing unrelated repository identities to the release audience. Silent removal prevents reviewers from distinguishing correct scope filtering from lost data. That inflates the owned release signal and obscures the collection boundary.

**Sources:** [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)

## L23-Q050

Advanced · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

A security pilot checklist has green boxes for entitlement review, connector inventory, fixture triage, and local validation. No paid activation or live alert ingestion occurred. Which completion statement is accurate?

- **A. Repository inventory proves the connector discovery lane; fixture outcomes also establish production enforcement** Discovery and fixture processing do not establish that paid provider enforcement or live alert ingestion occurred.
- **B. A reviewed entitlement matrix is equivalent to a successful licensed scan** An eligibility decision is a prerequisite rather than execution evidence for the scanner.
- **C. The offline workflow and prerequisite decisions passed; live security enforcement and Defender ingestion remain gated** **Correct.** Each evidence item supports its actual boundary, and none proves unexecuted live integration.
- **D. Successful local validation proves the complete integration even without a live source alert** Local assertions do not cross the unexecuted provider scanning and ingestion boundaries.

**Explanation:** Discovery and fixture processing do not establish that paid provider enforcement or live alert ingestion occurred. An eligibility decision is a prerequisite rather than execution evidence for the scanner. Each evidence item supports its actual boundary, and none proves unexecuted live integration. Local assertions do not cross the unexecuted provider scanning and ingestion boundaries.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/repos/security/configure-github-advanced-security-features?view=azure-devops); [S7](https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-github); [S11](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)
