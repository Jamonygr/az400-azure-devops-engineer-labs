# Lab 23 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L23-Q001

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An Azure Repos security proposal estimates licenses by everyone who can read the repository. Which population should determine the active-committer estimate?

- **A.** Only developers who opened pull requests this month
- **B.** Only users who can dismiss security alerts
- **C.** Unique qualifying committers represented in pushes during the preceding 90 days
- **D.** All users with repository read permission

## L23-Q002

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A developer needs to inspect Azure Repos security findings but must not dismiss them or enable paid features. Which permission fits this task?

- **A.** Project Collection Administrators membership
- **B.** Advanced Security: view alerts
- **C.** Advanced Security: Manage and dismiss alerts
- **D.** Advanced Security: Manage settings

## L23-Q003

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

An analyst wants a unified view of repository security posture across supported source platforms in Azure. Which service supplies this integration?

- **A.** Azure Monitor Application Insights
- **B.** Azure DevOps repository branch policies
- **C.** GitHub repository traffic insights
- **D.** Microsoft Defender for Cloud DevOps security

## L23-Q004

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

The security owner wants existing Azure Repos repositories enabled now and new repositories enabled by default later. Which configuration distinction matters?

- **A.** Existing-repository activation and defaults for future repositories are separate choices
- **B.** Enabling one current repository automatically enables future repositories
- **C.** The future default enables every existing repository retroactively
- **D.** A billing subscription association automatically enables all repositories

## L23-Q005

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An Azure Repos project has a license, but no CodeQL execution or analysis results. What additional evidence is needed before claiming code scanning coverage?

- **A.** A repository-level permission granting view alerts
- **B.** A successful ordinary build without security analysis steps
- **C.** A supported scan configuration and successful analysis for the relevant code revision
- **D.** A screenshot showing the project's active committer estimate

## L23-Q006

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A team designs a Defender connector for one GitHub organization. Which GitHub role is a documented onboarding prerequisite?

- **A.** Member of an unrelated GitHub organization
- **B.** Organization owner
- **C.** Repository read-only collaborator
- **D.** Outside collaborator on a single issue

## L23-Q007

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

An engineer runs the shown Azure CLI command during a security review. What does successful output establish?

```powershell
az security pricing list --subscription $SubscriptionId -o json
```

- **A.** That all repositories have completed security scanning
- **B.** That the operator approved a new paid plan
- **C.** That every security alert is assigned to an owner
- **D.** The subscription's readable current Defender pricing configuration

## L23-Q008

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An Azure DevOps Defender connector works after creation but fails when its creator loses source permissions. Which dependency explains the failure?

- **A.** The connector inherits permissions from every Azure subscription reader
- **B.** The connector must use the most recent repository committer's identity
- **C.** The connector permanently preserves all permissions held at installation
- **D.** The connector uses the creating account's permissions for Azure DevOps operations

## L23-Q009

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A source inventory includes Azure Repos Git and Team Foundation Version Control repositories. Which repository type is supported by Defender DevOps onboarding?

- **A.** TfsGit repositories
- **B.** Every repository type because the organization is connected
- **C.** Only TFVC repositories with a release pipeline
- **D.** Only GitHub repositories mirrored into TFVC

## L23-Q010

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A repository owner enables eligible secret scanning and wants to understand its initial scope. Which behavior is documented?

- **A.** Only the current default-branch tip is examined
- **B.** Every arbitrary string is recognized as a secret
- **C.** Only files opened in an active pull request are examined
- **D.** An initial scan checks repository history for supported secret types

## L23-Q011

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A security engineer needs to dismiss a verified false-positive Azure Repos alert but must not change product activation. Which specialized permission is appropriate?

- **A.** Advanced Security: Manage settings only
- **B.** Azure subscription Billing Reader alone
- **C.** Advanced Security: Manage and dismiss alerts
- **D.** Advanced Security: view alerts

## L23-Q012

Foundational · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A newly created GitHub Defender connector shows no recommendations immediately. Which conclusion is justified?

- **A.** Inventory and recommendation availability require their own ingestion and scan checks
- **B.** The absence proves the organization contains no vulnerabilities
- **C.** The connector must be recreated immediately under a different name
- **D.** The repository's source security features are automatically disabled

## L23-Q013

Foundational · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Two repositories on the same Azure subscription have 20 and 30 active committers; 10 identities overlap. For the same enabled product, what is the combined unique count?

- **A.** 30
- **B.** 10
- **C.** 40
- **D.** 50

## L23-Q014

Foundational · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

A team checks supported Defender DevOps hosting options before procurement. Which combination is documented?

- **A.** Every GitHub Enterprise Cloud data-residency configuration
- **B.** Azure DevOps Services, GitHub Enterprise Cloud, and GitLab SaaS
- **C.** Azure DevOps Server and GitHub Enterprise Server only
- **D.** Any self-hosted Git server exposing HTTPS

## L23-Q015

Foundational · [CP5](README.md#task-5) · [D4.3.4](../../docs/objective-map.md)

A lab uses a synthetic high-severity finding to practice triage. What evidence can the lab honestly report?

- **A.** A successful live Defender vulnerability detection
- **B.** Complete production repository scanning coverage
- **C.** An automatically approved source-platform risk exception
- **D.** A tested local disposition rule against labeled fixture input

## L23-Q016

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A migration imports old commits into an enabled Azure Repos repository today. Their original authors committed more than 90 days ago. Which estimate is appropriate?

- **A.** Count only the person who ran the import command
- **B.** Count every historical organization member regardless of the import
- **C.** Review qualifying identities represented in today's push, even when original commit dates are older
- **D.** Exclude every imported author because each original commit is old

## L23-Q017

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Finance compares 35 active committers before activation with a billing page read taken immediately afterward. Why might these numbers differ without proving an error?

- **A.** The billing usage view represents the previous day's measured count
- **B.** The billing page always counts repository readers instead of committers
- **C.** The estimate guarantees a fixed monthly license total
- **D.** Enabling the feature erases all recent contributor identities

## L23-Q018

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pilot is approved for one repository with 12 active committers. The administrator sees an enable-all control for a 400-repository project. Which implementation matches the approval?

- **A.** Enable the organization temporarily and assess the bill at month end
- **B.** Enable the reviewed product only on the approved repository and record its estimate
- **C.** Enable the project and exclude unwanted findings in a report
- **D.** Set the future-repository default and assume the current pilot is enabled

## L23-Q019

Applied · [CP1](README.md#task-1) · [D4.3.3](../../docs/objective-map.md)

A capability read returns the shown response for a private GitHub repository. What should the reviewer do with the missing security field?

```json
{"full_name":"org/training","visibility":"private"}
```

- **A.** Record every security capability as enabled
- **B.** Change the repository to public to make the inspection pass
- **C.** Verify token permissions and feature eligibility before deciding whether the feature is disabled
- **D.** Record every security capability as disabled

## L23-Q020

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Developers can read alerts, and security triagers can dismiss them. Only billing-approved administrators should enable features. Which permission design fits?

- **A.** Make all repository contributors collection administrators
- **B.** Grant only view alerts to every group
- **C.** Separate view, lifecycle, and settings permissions for the three groups
- **D.** Give the triager group Manage settings so it can dismiss alerts

## L23-Q021

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pipeline produces valid third-party SARIF, but Azure Repos shows no code scanning results. Which next step targets the missing integration?

- **A.** Dismiss prior findings to force the dashboard to refresh
- **B.** Check the supported Advanced Security result-publication task and its upload outcome
- **C.** Rename the SARIF file to the repository name
- **D.** Increase the active-committer estimate in the billing review

## L23-Q022

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A supported credential appears in a historical commit and is now valid in the provider. What is the first containment action when the alert is confirmed?

- **A.** Revoke or rotate the credential, then remove exposure and investigate use
- **B.** Delete the current file and close the alert immediately
- **C.** Rewrite history first and leave the credential active until completion
- **D.** Mark the alert false positive because the default branch no longer contains it

## L23-Q023

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A Defender connector should discover only the training organization's approved repositories. Which review is essential before creation?

- **A.** Verify only that one selected repository has a green build
- **B.** Verify that every organization member can read the Azure subscription
- **C.** Verify GitHub app installation access and the connector's source selection
- **D.** Verify only the Azure resource group's display name

## L23-Q024

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An analyst needs to inspect findings for one Defender connector but not other teams' connectors. Which Azure access design is best?

- **A.** Grant subscription Contributor to the analyst
- **B.** Grant GitHub repository write access and no Azure role
- **C.** Grant tenant-wide Global Administrator for the investigation window
- **D.** Scope Security Reader to the appropriate connector or containing resource group

## L23-Q025

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A connector health check began failing after the creating Azure DevOps account was disabled. Which repair best preserves accountable operations?

- **A.** Refresh only the Azure destination token while leaving the disabled source authorization unchanged
- **B.** Restore or reauthorize the connection using an approved maintained identity and verify its source scope
- **C.** Grant a new Azure Security Reader assignment without reauthorizing the source connection
- **D.** Recreate the connector with the same disabled source identity and unchanged authorization

## L23-Q026

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

An integration report lists the same CVE in GitHub service-a and Azure Repos service-b. How should aggregation preserve remediation accountability?

- **A.** Treat identical CVE text as proof of one scanner duplicate
- **B.** Merge both rows into one resolved alert when either repository is patched
- **C.** Keep repository and source identities while grouping the common vulnerability for overview
- **D.** Keep only the highest-severity row and drop the other repository

## L23-Q027

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

The fixture contains three findings, but the approved lab owns only org/training. Which result should the correlation stage produce?

```json
[{"id":"a","host":"GitHub","scope":"org/training","severity":"high"},
 {"id":"b","host":"GitHub","scope":"org/training","severity":"medium"},
 {"id":"c","host":"GitHub","scope":"other/production","severity":"critical"}]
```

- **A.** Retain only one owned finding to equal the number of repositories
- **B.** Retain the two exact owned matches and report the excluded foreign finding separately
- **C.** Retain all findings because severity is the only relevant filter
- **D.** Delete the foreign finding at its source to make counts agree

## L23-Q028

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

An alert labeled high has a demonstrated input-to-sink path in the released application. Which triage record best supports a release decision?

- **A.** Lower its severity to meet the release threshold without technical review
- **B.** Assign an owner, record the path evidence, block release, and define a verified fix criterion
- **C.** Accept the risk solely because a medium alert was fixed earlier
- **D.** Dismiss it as false positive because the scanner is occasionally noisy

## L23-Q029

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

CodeQL is configured for an unsupported language in one repository. Which coverage statement is accurate?

- **A.** That language needs a supported alternative analysis path or a recorded coverage gap
- **B.** The enabled product automatically analyzes every language equally
- **C.** A scan of a neighboring repository covers this repository too
- **D.** An empty result list proves the unsupported code is safe

## L23-Q030

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Secret scanning has completed with no findings. A developer asks whether this proves no credentials ever entered Git history. Which response is defensible?

- **A.** It proves the repository no longer needs credential management
- **B.** It establishes no detected supported secrets within the scan's documented scope and limits
- **C.** It proves every historical credential value was identified
- **D.** It proves credentials could not have been copied outside Git

## L23-Q031

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An organization enables Advanced Security for existing projects but elects not to enable it automatically for future repositories. What onboarding control is needed?

- **A.** A branch naming convention that includes security
- **B.** An alert dismissal workflow in another project
- **C.** An explicit new-repository entitlement and activation review
- **D.** No control because all future repositories inherit existing activation

## L23-Q032

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

Eight hours after creating a GitHub connector, source inventory appears but code recommendations remain absent. Source code scanning was never configured. What should be checked next?

- **A.** Create duplicate connectors for the same organization
- **B.** Change every repository to public so inventory becomes a scan
- **C.** Configure and verify the required source security scanning path and its completed results
- **D.** Increase the connector discovery wait indefinitely

## L23-Q033

Applied · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

The review pipeline currently invokes the shown command to collect Defender plan inventory. Which change makes this step read-only?

```powershell
az security pricing create --name CloudPosture --tier Standard --subscription $SubscriptionId
```

- **A.** Run pricing create using a shorter-lived token
- **B.** Replace pricing create with pricing list for the selected subscription
- **C.** Keep pricing create but suppress its output
- **D.** Keep pricing create and add a descriptive subscription tag

## L23-Q034

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Two Azure DevOps organizations share one subscription. An administrator proposes migrating only one organization from bundled Advanced Security billing to standalone products. Which issue needs escalation?

- **A.** The migration automatically separates organizations onto new subscriptions
- **B.** The migration grants GitHub.com licenses for all users
- **C.** The documented migration operates at subscription level and affects associated organizations
- **D.** Each repository can independently reverse the migration afterward

## L23-Q035

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

An automated integration must read Azure Repos security findings. The team can use Microsoft Entra authentication. Which choice follows current guidance?

- **A.** Use a collection-administrator PAT for convenience despite available Entra authentication
- **B.** Use an Entra token with no repository security permission because authentication alone is sufficient
- **C.** Grant Azure subscription Security Reader and assume it supplies Azure Repos finding access
- **D.** Use an appropriately scoped Entra token and required repository permissions

## L23-Q036

Applied · [CP5](README.md#task-5) · [D4.3.4](../../docs/objective-map.md)

A scanner finding was accepted as risk for 30 days with a named owner. What should the aggregation view show during that period?

- **A.** The open exposure with its approved exception, owner, and expiry
- **B.** A fixed finding with no follow-up date
- **C.** No record because accepted findings are irrelevant to posture
- **D.** A false-positive disposition because the release proceeded

## L23-Q037

Applied · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A code alert claims an input-to-sink path, but analysis of the exact shipped build proves that claimed path is impossible. Which evidence best supports an evidence-based false-positive disposition?

- **A.** The source revision, build configuration, reachability analysis, and reviewer decision
- **B.** The repository's overall test pass percentage
- **C.** The age of the scanner product's latest release
- **D.** A comment saying the team has never observed an exploit

## L23-Q038

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A GitHub connector includes only selected repositories, and a newly created repository is absent. Which diagnosis should precede a platform incident?

- **A.** Assume the new repository is automatically included because the organization is connected
- **B.** Review installation repository access and the connector's selected scope
- **C.** Increase every repository's code scanning timeout
- **D.** Reassign every repository owner to the connector creator

## L23-Q039

Applied · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

The correlation job receives two rows with the same alert ID from different source hosts. What key prevents accidental merging?

- **A.** Severity plus detection date
- **B.** Repository display name alone
- **C.** Source host plus organization/repository identity plus alert ID
- **D.** Alert ID alone

## L23-Q040

Applied · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A pilot is ending, but another team uses paid scanning in the same organization. Which cleanup action fits the pilot boundary?

- **A.** Delete the shared billing subscription association
- **B.** Leave the pilot enabled because any cleanup could affect shared coverage
- **C.** Disable only the pilot's authorized activation and verify remaining shared coverage and billing state
- **D.** Disable Advanced Security across the organization to ensure no pilot charges remain

## L23-Q041

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

A repository pilot has 12 unique active committers; a second approved pilot has 18, including five from the first. Finance approves the same product for these repositories only. What activation and estimate should be proposed?

- **A.** Enable the two named repositories with a combined estimate of 25 unique committers
- **B.** Enable the two repositories with an estimate of 30
- **C.** Enable the project with an estimate of 25
- **D.** Enable only the first repository with an estimate of 12

## L23-Q042

Advanced · [CP3](README.md#task-3) · [D4.3.2](../../docs/objective-map.md)

A regulated team uses GitHub Enterprise Cloud with data residency. It wants Defender DevOps onboarding next week and already has subscription Contributor. What is the best planning decision?

- **A.** Install the connector using a more privileged Azure role
- **B.** Report source-native scan findings as successful Defender ingestion
- **C.** Record the documented hosting support gap and choose a supported evidence path with the platform owner
- **D.** Proceed because all GitHub Enterprise Cloud configurations are interchangeable

## L23-Q043

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A central security account can view Azure Repos findings but cannot enable features; the connector creator is leaving. Which transition addresses both constraints?

- **A.** Keep the connector unchanged and transfer only the Azure resource group's tags
- **B.** Reauthorize the connector under a maintained approved source identity and retain separate settings authority
- **C.** Give the departing creator permanent collection administration and retain its disabled account
- **D.** Give every security reader feature settings permission to avoid future dependency

## L23-Q044

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A merged report contains the shown records. The deployment concerns GitHub org/api at revision aaa. Which release interpretation preserves provenance?

```text
GitHub | org/api | revision aaa | alert 42 | high   | open, reachable
GitHub | org/api | revision bbb | alert 42 | high   | fixed
ADO    | org/api | revision ccc | alert 42 | medium | open
```

- **A.** Release aaa because the latest row for that repository says fixed
- **B.** Block solely on the medium Azure Repos row because it is newest
- **C.** Merge all rows into one low-risk alert because repository names share api
- **D.** The high finding at aaa blocks that release; the fixed result at bbb does not prove aaa was repaired

## L23-Q045

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

GitHub inventory is visible in Defender, but the only security evidence is a pipeline log showing CodeQL initialization succeeded and analysis later failed. What should the readiness report say?

- **A.** The source is vulnerability-free because no code alerts arrived
- **B.** The source connector is necessarily broken because analysis failed
- **C.** Discovery succeeded; code analysis and downstream finding coverage remain unverified pending a successful scan
- **D.** Defender integration is fully verified because repository discovery succeeded

## L23-Q046

Advanced · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md)

A high-severity secret alert contains an active credential, while a high code alert has a plausible but unconfirmed input path. The release window is short. Which triage plan is best?

- **A.** Dismiss the code alert and defer credential rotation until both root causes are known
- **B.** Rotate the credential and automatically close both alerts
- **C.** Revoke the active credential immediately, investigate its use, and assign time-bounded reachability analysis for the code alert
- **D.** Fix the code alert first because all high severities have identical operational urgency

## L23-Q047

Advanced · [CP2](README.md#task-2) · [D4.3.3](../../docs/objective-map.md)

Finance permits alert triage but has not approved standalone-product migration. An administrator proposes granting triagers Manage settings to migrate and then disabling that permission. Which response fits the documented boundaries?

- **A.** Grant Manage settings temporarily because the permission can later be revoked
- **B.** Let triagers migrate only one repository and reconcile billing afterward
- **C.** Disable all repository security products until every triager has settings permission
- **D.** Keep lifecycle-only triage permission and route the subscription-level irreversible migration through the billing decision process

## L23-Q048

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

After connector onboarding, a dashboard count rises from 20 to 80. Source access was expanded yesterday, scan completion varies by repository, and leadership asks whether risk quadrupled. Which analysis is sound?

- **A.** Compare like-for-like repository scope, scan freshness, and finding states before interpreting the trend
- **B.** Report a fourfold risk increase because total findings rose fourfold
- **C.** Report unchanged risk because connector changes never affect security posture
- **D.** Remove newly discovered repositories from all future reports to preserve the old baseline

## L23-Q049

Advanced · [CP4](README.md#task-4) · [D4.3.4](../../docs/objective-map.md)

A release dashboard must show two owned findings and one excluded foreign finding without leaking the foreign repository name. Which design best preserves auditability?

- **A.** Publish owned finding details plus an exclusion count and a restricted provenance record
- **B.** Publish all raw records because exclusions must always be publicly named
- **C.** Discard foreign input without recording that filtering occurred
- **D.** Combine the foreign finding into the owned critical count without identifying its source

## L23-Q050

Advanced · [CP5](README.md#task-5) · [D4.3.3](../../docs/objective-map.md), [D4.3.4](../../docs/objective-map.md)

A security pilot checklist has green boxes for entitlement review, connector inventory, fixture triage, and local validation. No paid activation or live alert ingestion occurred. Which completion statement is accurate?

- **A.** Repository inventory proves the connector discovery lane; fixture outcomes also establish production enforcement
- **B.** A reviewed entitlement matrix is equivalent to a successful licensed scan
- **C.** The offline workflow and prerequisite decisions passed; live security enforcement and Defender ingestion remain gated
- **D.** Successful local validation proves the complete integration even without a live source alert
