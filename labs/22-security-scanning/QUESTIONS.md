# Lab 22 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L22-Q001

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The team inventories NuGet dependencies but currently sees only direct references. Which command option includes packages introduced by other packages?

- **A.** no-restore alone
- **B.** include-transitive
- **C.** outdated alone
- **D.** include-prerelease alone

## L22-Q002

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

An inventory report lists Requested and Resolved versions for the same package. Which value identifies the exact version used by the restored project?

- **A.** Resolved
- **B.** Requested
- **C.** Latest available
- **D.** The source branch name

## L22-Q003

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A CI gate needs to inspect package results programmatically without parsing formatted console tables. Which output form should it request?

- **A.** The package author's display page
- **B.** Only the command duration
- **C.** JSON with a supported output version
- **D.** Colored console output only

## L22-Q004

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The solution contains multiple projects with different dependency graphs. Which inventory scope best describes the application's complete restored package inputs?

- **A.** Inspect only packages named Microsoft
- **B.** Inventory only cached package directory names
- **C.** Inventory the intended solution and its transitive packages
- **D.** Inspect only the first csproj filename

## L22-Q005

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A direct package is patched, but its transitive cryptography dependency remains vulnerable under the current lockfile. Which next step verifies a real remediation?

```json
{"direct":{"name":"Example.SqlClient","old":"1.0.0","new":"1.1.0"},"resolvedTransitive":{"name":"Example.Crypto","version":"2.0.0","knownVulnerable":true}}
```

- **A.** Review the resolved graph and update the affected dependency safely
- **B.** Close the alert because the direct version increased
- **C.** Delete the vulnerability report while retaining the lockfile
- **D.** Exclude all transitive packages from future inventory

## L22-Q006

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A fresh agent lacks assets required for package reporting, while a previous workstation had completed restore. Which approach yields comparable inventory evidence?

- **A.** Copy the workstation's console screenshot
- **B.** List every folder in the user cache
- **C.** Remove version pins before inventory
- **D.** Restore reproducibly before relying on the resolved dependency graph

## L22-Q007

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A developer believes a package absent from direct references cannot affect application supply-chain risk. Which evidence should the review request?

- **A.** Only the project's top-level package names
- **B.** Only the container's human-readable image tag
- **C.** Only the most recent commit message
- **D.** The resolved transitive dependency graph

## L22-Q008

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A lockfile is committed, but local inventory includes a different resolved version after an unreviewed restore. What should the pipeline require?

- **A.** Ignore the lockfile whenever restore succeeds
- **B.** Replace every package with latest automatically
- **C.** Treat the local package cache as authoritative
- **D.** Locked restoration and review of intentional dependency changes

## L22-Q009

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The dependency inventory command exits unsuccessfully because its source is unreachable. What should a required inventory gate report?

- **A.** Zero dependencies and a passing result
- **B.** A successful pass from yesterday's file
- **C.** All packages vulnerable without any advisory data
- **D.** Incomplete evidence with a visible failure

## L22-Q010

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A scan uses a cached inventory from a different commit while current lockfiles changed. It reports no findings. Which evidence is required before release?

```text
Current lockfile hash: bbbb
Cached inventory lockfile hash: aaaa
Scan result from cached inventory: no findings
Current graph restored: not yet
```

- **A.** Only the package cache hit flag
- **B.** A current restored graph scanned against available advisory data
- **C.** Only the old no-findings summary
- **D.** Only a valid JSON schema for the stale file

## L22-Q011

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The team wants known vulnerability advisories for the project's resolved NuGet packages. Which reporting option should be used?

- **A.** outdated only
- **B.** deprecated only
- **C.** include-prerelease only
- **D.** vulnerable

## L22-Q012

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A Dependabot alert identifies an affected package and a patched version. What is the most complete remediation workflow?

- **A.** Dismiss the alert because a patch exists
- **B.** Merge any version change without tests
- **C.** Rename the dependency in documentation
- **D.** Review the upgrade, test it and verify the alert's resolution

## L22-Q013

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The scanner reports no known advisories for the current dependency graph. What limitation should the release report state?

- **A.** Every dependency license is approved automatically
- **B.** Runtime authorization and private networking are verified
- **C.** No known findings within this scan's coverage and advisory data
- **D.** The application is guaranteed free of vulnerabilities

## L22-Q014

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A security finding affects a package used only by a test tool. What should triage consider before deciding urgency and scope?

- **A.** Only whether the dependency is direct rather than transitive
- **B.** Only whether a newer major version exists
- **C.** Usage, exposure, advisory details and affected versions
- **D.** Only the advisory severity without component usage

## L22-Q015

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The patched package requires a breaking major upgrade, the vulnerable feature is disabled, and release is urgent. Which decision is defensible?

```json
{"finding":"known vulnerable feature","featureEnabled":false,"patchedUpgrade":"breaking major","releaseUrgent":true,"exceptionOwner":null}
```

- **A.** Disable advisory access so the pipeline appears green
- **B.** Document evidence, mitigation and time-limited risk ownership while planning tested remediation
- **C.** Permanently dismiss every alert for that package
- **D.** Upgrade immediately without compatibility testing

## L22-Q016

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The advisory data source cannot be reached, but a wrapper converts every scanner error into an empty findings list. What is the defect?

- **A.** The wrapper fails open on unavailable security evidence
- **B.** It checks transitive packages too carefully
- **C.** It retains package versions too precisely
- **D.** It emits machine-readable JSON

## L22-Q017

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A dependency update pull request passes compilation but changes behavior tested by integration cases. Which gate should still be required before acceptance?

- **A.** Only a successful clean dependency restore
- **B.** Only closure of the original security issue
- **C.** Only a smaller package download size
- **D.** Relevant application and integration tests

## L22-Q018

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

An alert was dismissed as not affected using a concrete reachability analysis. What should the record include for future review?

- **A.** Only a generic false-positive label
- **B.** Only the developer's preference to avoid upgrades
- **C.** Only the alert count after dismissal
- **D.** The justification, evidence, owner and reassessment trigger

## L22-Q019

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The vulnerability command returns structured findings despite a successful process exit. What should a policy gate evaluate?

- **A.** Only the generated file's timestamp
- **B.** Finding content against the required severity policy
- **C.** Only exit status zero
- **D.** Only whether stdout is nonempty

## L22-Q020

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The scan completed and found a critical transitive advisory, but its log upload failed. Which status should block release and remain visible?

```json
{"scanExitCode":0,"criticalTransitiveFindings":1,"reportUpload":"failed","releasePolicy":"block critical findings"}
```

- **A.** A pass because logs were not uploaded
- **B.** A permanent scanner exclusion for that dependency
- **C.** The critical finding and incomplete evidence publication
- **D.** A pass because the scan command returned zero

## L22-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The lesson needs to prove that a secret scanner detects a leaked credential pattern without using real credentials. What input is appropriate?

- **A.** An empty source fixture only
- **B.** A comment claiming a secret existed
- **C.** A deterministic harmless synthetic marker
- **D.** A live production access token

## L22-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A secret scan detects a valid credential in a repository's history. Which action is needed beyond deleting the current line?

- **A.** Add a future gitignore rule only
- **B.** Change the secret's comment label
- **C.** Revoke or rotate the exposed credential
- **D.** Rename the source file only

## L22-Q023

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The fixture contains the expected synthetic leakage marker but the scan still passes. Which response makes the negative test meaningful?

- **A.** Fail the test and correct detection or fixture wiring
- **B.** Accept the pass because no real secret was used
- **C.** Force every scan to fail unconditionally
- **D.** Remove the fixture and keep the passing status

## L22-Q024

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scanner suppresses one approved fake test value but should continue detecting other secret patterns. Which exception scope is safest?

- **A.** Limit the exception to that documented fixture value or path
- **B.** Ignore every file under source
- **C.** Disable the full scanner for pull requests
- **D.** Ignore every token-like string globally

## L22-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The synthetic marker is detected, but its raw value is copied into public logs and screenshots. Which change preserves useful evidence while reducing disclosure habits?

```text
Synthetic finding detected: yes
Evidence includes: raw token-like fixture value
Requested practice: redact sensitive values and retain useful detection metadata
```

- **A.** Retain redacted finding metadata and deterministic detection assertions
- **B.** Retain raw findings in every report because this value is synthetic
- **C.** Remove failure reports and retain only a clean-scan screenshot
- **D.** Mark the scanner passed without retaining any outcome

## L22-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scan covers only current files while policy also requires inspection of committed history. Which gap should the release report identify?

- **A.** Every detected secret is automatically revoked
- **B.** Historical credential coverage remains unverified
- **C.** All history is clean because current files are clean
- **D.** Dependency vulnerabilities are automatically absent

## L22-Q027

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scanner returns a network error and no findings file. Which state should the required gate distinguish from a clean scan?

- **A.** Execution failure with unavailable assessment evidence
- **B.** Clean because the findings array is absent
- **C.** Fixed because the command retried once
- **D.** Dismissed because a fixture was synthetic

## L22-Q028

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A precommit secret check passes but CI finds a token in another tracked path. Which coverage correction should be made?

- **A.** Treat precommit installation as proof of complete enforcement
- **B.** Align checked paths and retain the CI gate
- **C.** Disable CI because local checks already passed
- **D.** Ignore every generated directory without checking tracked contents

## L22-Q029

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The team intentionally injects a fake secret, expects a blocked scan, repairs it and expects success. What should evidence demonstrate?

- **A.** Only a final successful scan
- **B.** Only an injected fixture filename
- **C.** Only an unconditional nonzero wrapper exit
- **D.** Healthy, failing and repaired outcomes for the same detector

## L22-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The negative fixture is outside scanner scope, while the wrapper fails due to a missing executable. Which change is required before claiming break/fix success?

```text
Configured scan scope: src/**
Negative fixture: test-fixtures/leaked.txt
Failure reason: scanner executable missing
Claimed outcome: expected secret detected
```

- **A.** Suppress the error and mark the repaired phase passed
- **B.** Use an in-scope fixture and assert the expected detection reason
- **C.** Accept any nonzero status as a detected secret
- **D.** Delete the scanner dependency and keep the failure

## L22-Q031

Foundational · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

The team wants source-code analysis for security weaknesses in the ASP.NET API. Which scan category addresses that layer?

- **A.** Dependency license inventory alone
- **B.** Container tag naming review alone
- **C.** Artifact retention auditing alone
- **D.** Static code security analysis

## L22-Q032

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

The application packages clean source into an image whose operating-system base is vulnerable. Which additional scan category is needed?

- **A.** Container image vulnerability assessment
- **B.** Only a source formatter pass
- **C.** Only a repository issue-label check
- **D.** Only another local URI parser test

## L22-Q033

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A CodeQL example is present in a lab artifact folder but no provider analysis has run. Which verification claim is appropriate?

- **A.** The repository is free of exploitable code defects
- **B.** Workflow contract reviewed; hosted analysis remains unverified
- **C.** Source analysis completed automatically by file presence
- **D.** Every finding has been uploaded to GitHub

## L22-Q034

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

Security scanning for untrusted pull requests currently uses the same persistent private deployment agent. Which execution boundary should be changed?

- **A.** Keep the runner and hide deployment variables by name
- **B.** Grant the scan administrator credentials to prevent failures
- **C.** Run deployment first so its credentials are cached
- **D.** Run untrusted analysis on isolated nondeployment workers

## L22-Q035

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Source scanning passes, but the deployed image digest differs from the scanned tag's current content. Which provenance and scanning correction is needed?

```text
Scanned tag: todo:release
Scanned digest: sha256:aaaa
Deployed same tag now resolves: sha256:bbbb
Application source scan: passed
```

- **A.** Rename the tag to approved after deployment
- **B.** Scan and deploy the same immutable image digest
- **C.** Trust the old tag's clean report indefinitely
- **D.** Rescan only source and ignore the image

## L22-Q036

Foundational · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A policy requires security findings above a threshold to block merging. Which configuration must accompany analysis execution?

- **A.** Only an informational job without branch requirements
- **B.** Only a README statement that scanning is mandatory
- **C.** Only a nightly report after releases
- **D.** A required enforced result with explicit finding policy

## L22-Q037

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

A container assessment's cloud prerequisites are unavailable and the learner has only reviewed a local scan plan. Which status is honest?

- **A.** All security products were enabled automatically
- **B.** The cloud image assessment remains unexecuted
- **C.** Cloud scan passed because the plan parses
- **D.** No vulnerabilities exist because no results arrived

## L22-Q038

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A SARIF report was generated but upload failed, and branch policy expects the provider's code-scanning result. What needs investigation?

- **A.** Only whether the source file was formatted
- **B.** Only whether the SARIF document parses locally
- **C.** Only whether the scanner process exited successfully
- **D.** Result publication permissions and the required check outcome

## L22-Q039

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scanning uses a pinned action commit, but its database is stale and the scanner lacks access to the intended image. What does pinning establish and what remains missing?

- **A.** A stale database proves the image is clean
- **B.** Tool-source identity; current data and image assessment remain needed
- **C.** All scan inputs and findings are automatically trustworthy
- **D.** Image access is unnecessary once an action is pinned

## L22-Q040

Advanced · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

The scan reports zero findings after analyzing JavaScript only, while the release API is C# and its generated build sources were omitted. Which acceptance correction addresses both coverage gaps?

```json
{"applicationLanguage":"csharp","analyzedLanguages":["javascript"],"generatedBuildSourcesIncluded":false,"findings":0,"scannerCompleted":true}
```

- **A.** Analyze the intended C# build and verify expected source coverage
- **B.** Accept zero findings because the scanner completed
- **C.** Suppress the language mismatch as an artifact naming issue
- **D.** Run dependency advisory scanning instead of code analysis

## L22-Q041

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The dependency inventory reports an unknown license expression for one component. Which next step fits an evidence-based license policy?

- **A.** Delete the package name from the report
- **B.** Queue a component-specific review before approval
- **C.** Treat unknown as automatically allowed
- **D.** Treat the vulnerability score as its license

## L22-Q042

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A security advisory scan is clean, but a new dependency has a disallowed license under company policy. What should the license gate do?

- **A.** Pass because no vulnerability was found
- **B.** Classify the dependency using only the application's own license
- **C.** Disable license inventory for this pull request
- **D.** Block or require the defined reviewed exception

## L22-Q043

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A license review queue needs enough evidence for an owner to assess one newly introduced package. Which record is most useful?

- **A.** Only the parent package's license expression
- **B.** Package identity, version, license expression and source evidence
- **C.** Only the total dependency count
- **D.** Only the scanner's elapsed time

## L22-Q044

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A dependency's license metadata changes between versions while the package name stays the same. Which scope should approval distinguish?

- **A.** Only whether the package compiles successfully
- **B.** The actual package version and applicable license evidence
- **C.** Only the unchanged package name
- **D.** Only the top-level project's MIT license

## L22-Q045

Advanced · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A transitive component has an unknown license and a patched upgrade is required urgently for security. Which decision handles both assurance tracks?

```json
{"component":"Example.Transitive","license":"UNKNOWN","securityUpgradeRequired":true,"newVersionTested":false,"reviewOwners":["security","license-policy"]}
```

- **A.** Assign the parent project's license to every transitive component
- **B.** Review the upgrade's security fix and unresolved license with accountable owners
- **C.** Ignore license review because the patch fixes security
- **D.** Delay all security remediation permanently until the queue empties

## L22-Q046

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The local exercise generates a license review queue but no reviewer has decided on its unknown entries. Which completion statement is accurate?

- **A.** All unknown packages are legally unusable
- **B.** Every transitive dependency was removed from the application
- **C.** Inventory and queue created; policy decisions pending
- **D.** All dependency licenses approved automatically

## L22-Q047

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A workflow compares dependency changes in pull requests and should reject license expressions outside an approved list. Which configuration addresses that policy?

- **A.** Only a vulnerability severity threshold
- **B.** Only a package cache key
- **C.** Only a global MIT badge in README
- **D.** An explicit allowlist or deny policy in dependency review

## L22-Q048

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The report includes direct packages only, but policy applies to distributed transitive components too. What should license inventory change?

- **A.** Approve based only on package download counts
- **B.** Include the resolved transitive dependency set
- **C.** Infer every indirect license from its parent
- **D.** Ignore indirect packages that lack source imports

## L22-Q049

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

An approved temporary license exception applies to one version until a named expiry date. Which update should trigger reassessment?

- **A.** Only a renamed pipeline job
- **B.** A component version or license-evidence change
- **C.** Only an unchanged package name despite a version upgrade
- **D.** Only a faster dependency restore

## L22-Q050

Advanced · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md), [D4.3.6](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md)

The release has clean source results, an unresolved critical transitive advisory, one unknown license and a successful synthetic secret test. What should the gate conclude?

```json
{"sourceAnalysis":"clean","criticalTransitiveAdvisory":"unresolved","newDependencyLicense":"UNKNOWN","syntheticSecretFixture":"detected and repaired"}
```

- **A.** The source scan implicitly approves package licenses
- **B.** Release remains blocked by unresolved required assurance decisions
- **C.** Release passes because most categories succeeded
- **D.** The synthetic test proves all real credentials are absent
