# Lab 22 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L22-Q001

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The team inventories NuGet dependencies but currently sees only direct references. Which command option includes packages introduced by other packages?

- **A. no-restore alone** Skipping restoration changes execution behavior rather than expanding inventory to transitive references.
- **B. include-transitive** **Correct.** Transitive dependency inventory includes packages resolved through the project's direct package references.
- **C. outdated alone** Outdated reporting finds newer versions rather than requesting complete transitive dependency visibility.
- **D. include-prerelease alone** Prerelease selection does not independently include dependencies introduced by other packages.

**Explanation:** Skipping restoration changes execution behavior rather than expanding inventory to transitive references. Transitive dependency inventory includes packages resolved through the project's direct package references. Outdated reporting finds newer versions rather than requesting complete transitive dependency visibility. Prerelease selection does not independently include dependencies introduced by other packages.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q002

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

An inventory report lists Requested and Resolved versions for the same package. Which value identifies the exact version used by the restored project?

- **A. Resolved** **Correct.** Resolved reports the specific package version selected for the current restored project.
- **B. Requested** Requested can be a range rather than the exact version actually selected.
- **C. Latest available** A newer available package version is not necessarily the one restored by this project.
- **D. The source branch name** A branch identifier does not establish the package version selected by dependency resolution.

**Explanation:** Resolved reports the specific package version selected for the current restored project. Requested can be a range rather than the exact version actually selected. A newer available package version is not necessarily the one restored by this project. A branch identifier does not establish the package version selected by dependency resolution.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q003

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A CI gate needs to inspect package results programmatically without parsing formatted console tables. Which output form should it request?

- **A. The package author's display page** A descriptive web page is not the command's machine-readable resolved dependency result.
- **B. Only the command duration** Elapsed time does not contain package identifiers, versions or vulnerability details.
- **C. JSON with a supported output version** **Correct.** Structured versioned output provides explicit fields for reliable policy checks and retained evidence.
- **D. Colored console output only** Presentation-oriented tables and colors are less suitable than structured fields for robust automation.

**Explanation:** A descriptive web page is not the command's machine-readable resolved dependency result. Elapsed time does not contain package identifiers, versions or vulnerability details. Structured versioned output provides explicit fields for reliable policy checks and retained evidence. Presentation-oriented tables and colors are less suitable than structured fields for robust automation.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q004

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The solution contains multiple projects with different dependency graphs. Which inventory scope best describes the application's complete restored package inputs?

- **A. Inspect only packages named Microsoft** Package naming does not establish whether a component belongs in the dependency graph.
- **B. Inventory only cached package directory names** A shared cache can contain unrelated versions not selected by this solution's restore.
- **C. Inventory the intended solution and its transitive packages** **Correct.** Solution-wide transitive inventory exposes direct and indirect packages across the relevant projects.
- **D. Inspect only the first csproj filename** One project's direct references can omit dependencies used by other solution projects.

**Explanation:** Package naming does not establish whether a component belongs in the dependency graph. A shared cache can contain unrelated versions not selected by this solution's restore. Solution-wide transitive inventory exposes direct and indirect packages across the relevant projects. One project's direct references can omit dependencies used by other solution projects.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q005

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A direct package is patched, but its transitive cryptography dependency remains vulnerable under the current lockfile. Which next step verifies a real remediation?

```json
{"direct":{"name":"Example.SqlClient","old":"1.0.0","new":"1.1.0"},"resolvedTransitive":{"name":"Example.Crypto","version":"2.0.0","knownVulnerable":true}}
```

- **A. Review the resolved graph and update the affected dependency safely** **Correct.** A direct version change must be checked against the actual vulnerable transitive version selected.
- **B. Close the alert because the direct version increased** A newer parent version does not guarantee that the affected transitive package changed.
- **C. Delete the vulnerability report while retaining the lockfile** Removing evidence leaves the vulnerable resolved dependency and its associated risk unchanged.
- **D. Exclude all transitive packages from future inventory** Hiding indirect components prevents observing the affected dependency rather than remediating it.

**Explanation:** A direct version change must be checked against the actual vulnerable transitive version selected. A newer parent version does not guarantee that the affected transitive package changed. Removing evidence leaves the vulnerable resolved dependency and its associated risk unchanged. Hiding indirect components prevents observing the affected dependency rather than remediating it.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q006

Foundational · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A fresh agent lacks assets required for package reporting, while a previous workstation had completed restore. Which approach yields comparable inventory evidence?

- **A. Copy the workstation's console screenshot** Another environment's screenshot cannot establish this clean agent's selected dependency inputs.
- **B. List every folder in the user cache** A global cache includes packages unrelated to the current solution's resolved graph.
- **C. Remove version pins before inventory** Unbounded resolution changes dependency inputs instead of preserving a comparable reproducible inventory.
- **D. Restore reproducibly before relying on the resolved dependency graph** **Correct.** Resolved package evidence depends on the intended project's actual restored dependency selection.

**Explanation:** Another environment's screenshot cannot establish this clean agent's selected dependency inputs. A global cache includes packages unrelated to the current solution's resolved graph. Unbounded resolution changes dependency inputs instead of preserving a comparable reproducible inventory. Resolved package evidence depends on the intended project's actual restored dependency selection.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q007

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A developer believes a package absent from direct references cannot affect application supply-chain risk. Which evidence should the review request?

- **A. Only the project's top-level package names** A top-level-only list omits the indirect components relevant to this risk claim.
- **B. Only the container's human-readable image tag** An image tag does not enumerate the application's complete resolved package dependency graph.
- **C. Only the most recent commit message** Commit text cannot establish which indirect packages the current project actually consumes.
- **D. The resolved transitive dependency graph** **Correct.** Indirect dependencies can be part of the application even without direct source references.

**Explanation:** A top-level-only list omits the indirect components relevant to this risk claim. An image tag does not enumerate the application's complete resolved package dependency graph. Commit text cannot establish which indirect packages the current project actually consumes. Indirect dependencies can be part of the application even without direct source references.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q008

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A lockfile is committed, but local inventory includes a different resolved version after an unreviewed restore. What should the pipeline require?

- **A. Ignore the lockfile whenever restore succeeds** Successful unbounded restoration does not preserve the reviewed dependency version contract.
- **B. Replace every package with latest automatically** Unreviewed upgrades introduce compatibility changes and do not prove a controlled remediation.
- **C. Treat the local package cache as authoritative** Cached availability does not define which versions the reviewed project should resolve.
- **D. Locked restoration and review of intentional dependency changes** **Correct.** A locked restore detects dependency drift instead of silently accepting a changed resolved graph.

**Explanation:** Successful unbounded restoration does not preserve the reviewed dependency version contract. Unreviewed upgrades introduce compatibility changes and do not prove a controlled remediation. Cached availability does not define which versions the reviewed project should resolve. A locked restore detects dependency drift instead of silently accepting a changed resolved graph.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q009

Applied · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

The dependency inventory command exits unsuccessfully because its source is unreachable. What should a required inventory gate report?

- **A. Zero dependencies and a passing result** An unavailable result does not prove that the application has no dependency inputs.
- **B. A successful pass from yesterday's file** Stale evidence cannot silently replace the required current execution and dependency observation.
- **C. All packages vulnerable without any advisory data** Tool failure does not establish actual vulnerability status for each dependency.
- **D. Incomplete evidence with a visible failure** **Correct.** A failed inventory cannot establish a complete or clean resolved dependency assessment.

**Explanation:** An unavailable result does not prove that the application has no dependency inputs. Stale evidence cannot silently replace the required current execution and dependency observation. Tool failure does not establish actual vulnerability status for each dependency. A failed inventory cannot establish a complete or clean resolved dependency assessment.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q010

Advanced · [CP1](README.md#task-1) · [D4.3.1](../../docs/objective-map.md)

A scan uses a cached inventory from a different commit while current lockfiles changed. It reports no findings. Which evidence is required before release?

```text
Current lockfile hash: bbbb
Cached inventory lockfile hash: aaaa
Scan result from cached inventory: no findings
Current graph restored: not yet
```

- **A. Only the package cache hit flag** A cache hit does not prove advisory evaluation covered the intended release graph.
- **B. A current restored graph scanned against available advisory data** **Correct.** The assessment must correspond to the actual release inputs rather than unrelated cached dependency metadata.
- **C. Only the old no-findings summary** A clean result from another dependency graph cannot establish this release's status.
- **D. Only a valid JSON schema for the stale file** Document shape does not bind the report to the current resolved package versions.

**Explanation:** A cache hit does not prove advisory evaluation covered the intended release graph. The assessment must correspond to the actual release inputs rather than unrelated cached dependency metadata. A clean result from another dependency graph cannot establish this release's status. Document shape does not bind the report to the current resolved package versions.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q011

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The team wants known vulnerability advisories for the project's resolved NuGet packages. Which reporting option should be used?

- **A. outdated only** A newer available version does not itself establish whether the installed version is vulnerable.
- **B. deprecated only** Deprecation status is distinct from advisory reporting for known security vulnerabilities.
- **C. include-prerelease only** Considering prerelease versions does not request a vulnerability advisory assessment.
- **D. vulnerable** **Correct.** The vulnerability option evaluates known advisory information for the selected resolved packages.

**Explanation:** A newer available version does not itself establish whether the installed version is vulnerable. Deprecation status is distinct from advisory reporting for known security vulnerabilities. Considering prerelease versions does not request a vulnerability advisory assessment. The vulnerability option evaluates known advisory information for the selected resolved packages.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q012

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A Dependabot alert identifies an affected package and a patched version. What is the most complete remediation workflow?

- **A. Dismiss the alert because a patch exists** Patch availability does not mean the application has adopted or validated that fixed version.
- **B. Merge any version change without tests** Dependency changes can affect behavior and need validation of the selected remediation.
- **C. Rename the dependency in documentation** A documentation label does not modify the package version used by the application.
- **D. Review the upgrade, test it and verify the alert's resolution** **Correct.** Remediation needs a safe dependency change and validation rather than a merely proposed update.

**Explanation:** Patch availability does not mean the application has adopted or validated that fixed version. Dependency changes can affect behavior and need validation of the selected remediation. A documentation label does not modify the package version used by the application. Remediation needs a safe dependency change and validation rather than a merely proposed update.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q013

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The scanner reports no known advisories for the current dependency graph. What limitation should the release report state?

- **A. Every dependency license is approved automatically** Security advisory results do not determine compliance with the organization's license policy.
- **B. Runtime authorization and private networking are verified** Dependency advisory analysis does not exercise deployed identity or network integration behavior.
- **C. No known findings within this scan's coverage and advisory data** **Correct.** A clean result is bounded by observed inputs and available vulnerability knowledge.
- **D. The application is guaranteed free of vulnerabilities** Known-advisory scanning cannot prove the absence of all possible security defects.

**Explanation:** Security advisory results do not determine compliance with the organization's license policy. Dependency advisory analysis does not exercise deployed identity or network integration behavior. A clean result is bounded by observed inputs and available vulnerability knowledge. Known-advisory scanning cannot prove the absence of all possible security defects.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q014

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A security finding affects a package used only by a test tool. What should triage consider before deciding urgency and scope?

- **A. Only whether the dependency is direct rather than transitive** Indirect components can still be exploitable, so dependency depth alone does not establish urgency.
- **B. Only whether a newer major version exists** A major upgrade's existence does not explain the actual advisory or safe remediation scope.
- **C. Usage, exposure, advisory details and affected versions** **Correct.** Dependency context informs risk without assuming every package has identical production exposure.
- **D. Only the advisory severity without component usage** Severity matters but usage and actual exposure also inform a justified component-specific triage decision.

**Explanation:** Indirect components can still be exploitable, so dependency depth alone does not establish urgency. A major upgrade's existence does not explain the actual advisory or safe remediation scope. Dependency context informs risk without assuming every package has identical production exposure. Severity matters but usage and actual exposure also inform a justified component-specific triage decision.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q015

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The patched package requires a breaking major upgrade, the vulnerable feature is disabled, and release is urgent. Which decision is defensible?

```json
{"finding":"known vulnerable feature","featureEnabled":false,"patchedUpgrade":"breaking major","releaseUrgent":true,"exceptionOwner":null}
```

- **A. Disable advisory access so the pipeline appears green** Removing detection conceals known risk rather than implementing a reviewed mitigation and remediation plan.
- **B. Document evidence, mitigation and time-limited risk ownership while planning tested remediation** **Correct.** A reviewed exception needs specific exposure evidence, accountable ownership and an expiry rather than silent acceptance.
- **C. Permanently dismiss every alert for that package** A broad indefinite dismissal hides future vulnerabilities and exceeds the specific temporary risk decision.
- **D. Upgrade immediately without compatibility testing** An untested breaking change can create operational failures and does not provide safe remediation evidence.

**Explanation:** Removing detection conceals known risk rather than implementing a reviewed mitigation and remediation plan. A reviewed exception needs specific exposure evidence, accountable ownership and an expiry rather than silent acceptance. A broad indefinite dismissal hides future vulnerabilities and exceeds the specific temporary risk decision. An untested breaking change can create operational failures and does not provide safe remediation evidence.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q016

Foundational · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The advisory data source cannot be reached, but a wrapper converts every scanner error into an empty findings list. What is the defect?

- **A. The wrapper fails open on unavailable security evidence** **Correct.** A required scan must distinguish no findings from failure to obtain advisory results.
- **B. It checks transitive packages too carefully** Transitive visibility does not explain treating unavailable advisory data as a clean result.
- **C. It retains package versions too precisely** Precise resolved versions support assessment and do not cause the fail-open logic.
- **D. It emits machine-readable JSON** Structured output is useful; the defect is incorrectly interpreting an unsuccessful scan outcome.

**Explanation:** A required scan must distinguish no findings from failure to obtain advisory results. Transitive visibility does not explain treating unavailable advisory data as a clean result. Precise resolved versions support assessment and do not cause the fail-open logic. Structured output is useful; the defect is incorrectly interpreting an unsuccessful scan outcome.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q017

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

A dependency update pull request passes compilation but changes behavior tested by integration cases. Which gate should still be required before acceptance?

- **A. Only a successful clean dependency restore** Restore can resolve packages without demonstrating that their updated behavior remains compatible.
- **B. Only closure of the original security issue** Closing an issue is an administrative action rather than compatibility validation evidence.
- **C. Only a smaller package download size** Package size does not prove that the updated dependency preserves required behavior.
- **D. Relevant application and integration tests** **Correct.** Compilation alone cannot establish behavioral compatibility after a dependency upgrade.

**Explanation:** Restore can resolve packages without demonstrating that their updated behavior remains compatible. Closing an issue is an administrative action rather than compatibility validation evidence. Package size does not prove that the updated dependency preserves required behavior. Compilation alone cannot establish behavioral compatibility after a dependency upgrade.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q018

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

An alert was dismissed as not affected using a concrete reachability analysis. What should the record include for future review?

- **A. Only a generic false-positive label** A label without supporting evidence cannot explain why the affected advisory does not apply.
- **B. Only the developer's preference to avoid upgrades** Convenience is not an evidence-based assessment of vulnerability applicability or mitigation.
- **C. Only the alert count after dismissal** A reduced count does not substantiate the technical rationale for accepting the finding.
- **D. The justification, evidence, owner and reassessment trigger** **Correct.** A documented decision remains inspectable and can be revisited when exposure or code changes.

**Explanation:** A label without supporting evidence cannot explain why the affected advisory does not apply. Convenience is not an evidence-based assessment of vulnerability applicability or mitigation. A reduced count does not substantiate the technical rationale for accepting the finding. A documented decision remains inspectable and can be revisited when exposure or code changes.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts)

## L22-Q019

Applied · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The vulnerability command returns structured findings despite a successful process exit. What should a policy gate evaluate?

- **A. Only the generated file's timestamp** Freshness is useful but does not determine whether findings meet the security policy.
- **B. Finding content against the required severity policy** **Correct.** Process success can mean the scan completed rather than that its findings satisfy release policy.
- **C. Only exit status zero** A completed scan may still contain vulnerabilities that violate the organization's acceptance threshold.
- **D. Only whether stdout is nonempty** Nonempty output does not distinguish acceptable results from policy-breaking vulnerability findings.

**Explanation:** Freshness is useful but does not determine whether findings meet the security policy. Process success can mean the scan completed rather than that its findings satisfy release policy. A completed scan may still contain vulnerabilities that violate the organization's acceptance threshold. Nonempty output does not distinguish acceptable results from policy-breaking vulnerability findings.

**Sources:** [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q020

Advanced · [CP2](README.md#task-2) · [D4.3.6](../../docs/objective-map.md)

The scan completed and found a critical transitive advisory, but its log upload failed. Which status should block release and remain visible?

```json
{"scanExitCode":0,"criticalTransitiveFindings":1,"reportUpload":"failed","releasePolicy":"block critical findings"}
```

- **A. A pass because logs were not uploaded** Missing evidence is not evidence that the scan found no vulnerabilities.
- **B. A permanent scanner exclusion for that dependency** A blanket exclusion conceals the finding rather than addressing remediation or controlled exception review.
- **C. The critical finding and incomplete evidence publication** **Correct.** Successful process execution does not negate a policy-breaking result or missing required evidence.
- **D. A pass because the scan command returned zero** Exit success does not convert a reported critical vulnerability into an acceptable policy result.

**Explanation:** Missing evidence is not evidence that the scan found no vulnerabilities. A blanket exclusion conceals the finding rather than addressing remediation or controlled exception review. Successful process execution does not negate a policy-breaking result or missing required evidence. Exit success does not convert a reported critical vulnerability into an acceptable policy result.

**Sources:** [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S4](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-package-list)

## L22-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The lesson needs to prove that a secret scanner detects a leaked credential pattern without using real credentials. What input is appropriate?

- **A. An empty source fixture only** Clean input alone cannot establish that the scanner recognizes the intended leakage defect.
- **B. A comment claiming a secret existed** A claim without matching fixture content does not exercise the scanner's detection path.
- **C. A deterministic harmless synthetic marker** **Correct.** A known fake pattern demonstrates detection without introducing a usable authentication secret.
- **D. A live production access token** A real credential adds avoidable exposure to an exercise intended to test detection behavior.

**Explanation:** Clean input alone cannot establish that the scanner recognizes the intended leakage defect. A claim without matching fixture content does not exercise the scanner's detection path. A known fake pattern demonstrates detection without introducing a usable authentication secret. A real credential adds avoidable exposure to an exercise intended to test detection behavior.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A secret scan detects a valid credential in a repository's history. Which action is needed beyond deleting the current line?

- **A. Add a future gitignore rule only** Ignore rules do not erase tracked history or revoke an exposed usable credential.
- **B. Change the secret's comment label** Changing documentation text leaves the actual credential and its effective access unchanged.
- **C. Revoke or rotate the exposed credential** **Correct.** Copies in history or other systems can remain usable after the current line is removed.
- **D. Rename the source file only** A name change does not invalidate credential values already copied from repository history.

**Explanation:** Ignore rules do not erase tracked history or revoke an exposed usable credential. Changing documentation text leaves the actual credential and its effective access unchanged. Copies in history or other systems can remain usable after the current line is removed. A name change does not invalidate credential values already copied from repository history.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q023

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The fixture contains the expected synthetic leakage marker but the scan still passes. Which response makes the negative test meaningful?

- **A. Fail the test and correct detection or fixture wiring** **Correct.** A negative case must demonstrate the intended defect is actually observed by the scanner.
- **B. Accept the pass because no real secret was used** Synthetic safety does not make a missed expected detection into a successful assertion.
- **C. Force every scan to fail unconditionally** An unconditional failure cannot distinguish true leakage detection from broken scanner behavior.
- **D. Remove the fixture and keep the passing status** Deleting the negative input avoids testing detection rather than validating the scanner's actual capability.

**Explanation:** A negative case must demonstrate the intended defect is actually observed by the scanner. Synthetic safety does not make a missed expected detection into a successful assertion. An unconditional failure cannot distinguish true leakage detection from broken scanner behavior. Deleting the negative input avoids testing detection rather than validating the scanner's actual capability.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q024

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scanner suppresses one approved fake test value but should continue detecting other secret patterns. Which exception scope is safest?

- **A. Limit the exception to that documented fixture value or path** **Correct.** A narrow reviewed exception avoids suppressing unrelated real secret findings throughout the repository.
- **B. Ignore every file under source** Broad source exclusion hides the very application code the scanner is intended to inspect.
- **C. Disable the full scanner for pull requests** Removing validation loses coverage beyond the single harmless fixture's justified exception.
- **D. Ignore every token-like string globally** A universal pattern exclusion prevents detection of unrelated genuine credential exposure.

**Explanation:** A narrow reviewed exception avoids suppressing unrelated real secret findings throughout the repository. Broad source exclusion hides the very application code the scanner is intended to inspect. Removing validation loses coverage beyond the single harmless fixture's justified exception. A universal pattern exclusion prevents detection of unrelated genuine credential exposure.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The synthetic marker is detected, but its raw value is copied into public logs and screenshots. Which change preserves useful evidence while reducing disclosure habits?

```text
Synthetic finding detected: yes
Evidence includes: raw token-like fixture value
Requested practice: redact sensitive values and retain useful detection metadata
```

- **A. Retain redacted finding metadata and deterministic detection assertions** **Correct.** Safe evidence demonstrates detection without normalizing publication of sensitive-looking material in logs.
- **B. Retain raw findings in every report because this value is synthetic** The exercise should establish a reusable redacted evidence habit before learners encounter real findings.
- **C. Remove failure reports and retain only a clean-scan screenshot** That removes the negative detection evidence needed to demonstrate the scanner actually rejected the fixture.
- **D. Mark the scanner passed without retaining any outcome** An unsupported success claim does not provide evidence of the expected detection behavior.

**Explanation:** Safe evidence demonstrates detection without normalizing publication of sensitive-looking material in logs. The exercise should establish a reusable redacted evidence habit before learners encounter real findings. That removes the negative detection evidence needed to demonstrate the scanner actually rejected the fixture. An unsupported success claim does not provide evidence of the expected detection behavior.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scan covers only current files while policy also requires inspection of committed history. Which gap should the release report identify?

- **A. Every detected secret is automatically revoked** Detection alone does not invalidate credentials with the issuing authentication provider.
- **B. Historical credential coverage remains unverified** **Correct.** A current-tree scan cannot establish that earlier commits contain no exposed secrets.
- **C. All history is clean because current files are clean** Current contents do not describe deleted or changed material retained in previous commits.
- **D. Dependency vulnerabilities are automatically absent** Secret pattern scanning does not evaluate known advisory risk in package dependencies.

**Explanation:** Detection alone does not invalidate credentials with the issuing authentication provider. A current-tree scan cannot establish that earlier commits contain no exposed secrets. Current contents do not describe deleted or changed material retained in previous commits. Secret pattern scanning does not evaluate known advisory risk in package dependencies.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q027

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A scanner returns a network error and no findings file. Which state should the required gate distinguish from a clean scan?

- **A. Execution failure with unavailable assessment evidence** **Correct.** Missing results after an error cannot be interpreted as a successful no-findings security assessment.
- **B. Clean because the findings array is absent** Absent output does not prove the tool completed or found no sensitive values.
- **C. Fixed because the command retried once** A retry attempt alone does not establish successful execution or a clean assessment.
- **D. Dismissed because a fixture was synthetic** Fixture safety does not resolve an unsuccessful required scanner invocation and missing results.

**Explanation:** Missing results after an error cannot be interpreted as a successful no-findings security assessment. Absent output does not prove the tool completed or found no sensitive values. A retry attempt alone does not establish successful execution or a clean assessment. Fixture safety does not resolve an unsuccessful required scanner invocation and missing results.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q028

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

A precommit secret check passes but CI finds a token in another tracked path. Which coverage correction should be made?

- **A. Treat precommit installation as proof of complete enforcement** Developers can bypass local hooks and their installation does not prove all paths were scanned.
- **B. Align checked paths and retain the CI gate** **Correct.** Different scopes can miss committed files, so local convenience must not replace required shared coverage.
- **C. Disable CI because local checks already passed** The local pass did not cover the observed leaked file found by the broader gate.
- **D. Ignore every generated directory without checking tracked contents** Broad exclusions can hide tracked credential material that remains in repository history.

**Explanation:** Developers can bypass local hooks and their installation does not prove all paths were scanned. Different scopes can miss committed files, so local convenience must not replace required shared coverage. The local pass did not cover the observed leaked file found by the broader gate. Broad exclusions can hide tracked credential material that remains in repository history.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q029

Applied · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The team intentionally injects a fake secret, expects a blocked scan, repairs it and expects success. What should evidence demonstrate?

- **A. Only a final successful scan** A final pass alone does not establish that the negative fixture was ever detected.
- **B. Only an injected fixture filename** A filename does not show the scanner's detection or repaired-state behavior.
- **C. Only an unconditional nonzero wrapper exit** An artificial exit does not demonstrate a finding produced by the intended detection logic.
- **D. Healthy, failing and repaired outcomes for the same detector** **Correct.** A complete sequence proves the check observes the intended defect and its actual removal.

**Explanation:** A final pass alone does not establish that the negative fixture was ever detected. A filename does not show the scanner's detection or repaired-state behavior. An artificial exit does not demonstrate a finding produced by the intended detection logic. A complete sequence proves the check observes the intended defect and its actual removal.

**Sources:** [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.4](../../docs/objective-map.md)

The negative fixture is outside scanner scope, while the wrapper fails due to a missing executable. Which change is required before claiming break/fix success?

```text
Configured scan scope: src/**
Negative fixture: test-fixtures/leaked.txt
Failure reason: scanner executable missing
Claimed outcome: expected secret detected
```

- **A. Suppress the error and mark the repaired phase passed** An unsupported success report conceals both missing execution and the untested fixture scope.
- **B. Use an in-scope fixture and assert the expected detection reason** **Correct.** An unrelated tool error does not prove that the scanner observed the intended security defect.
- **C. Accept any nonzero status as a detected secret** Execution failure and expected security detection are distinct outcomes requiring separate evidence.
- **D. Delete the scanner dependency and keep the failure** Preserving a missing tool cannot establish meaningful credential pattern detection coverage.

**Explanation:** An unsupported success report conceals both missing execution and the untested fixture scope. An unrelated tool error does not prove that the scanner observed the intended security defect. Execution failure and expected security detection are distinct outcomes requiring separate evidence. Preserving a missing tool cannot establish meaningful credential pattern detection coverage.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)

## L22-Q031

Foundational · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

The team wants source-code analysis for security weaknesses in the ASP.NET API. Which scan category addresses that layer?

- **A. Dependency license inventory alone** License review evaluates component policy rather than analyzing the application's own code defects.
- **B. Container tag naming review alone** Image labels do not inspect source-level security weaknesses in the API implementation.
- **C. Artifact retention auditing alone** Retention checks evidence lifetime rather than program behavior and source security flaws.
- **D. Static code security analysis** **Correct.** Code scanning analyzes source or compiled program structure for potential security weaknesses.

**Explanation:** License review evaluates component policy rather than analyzing the application's own code defects. Image labels do not inspect source-level security weaknesses in the API implementation. Retention checks evidence lifetime rather than program behavior and source security flaws. Code scanning analyzes source or compiled program structure for potential security weaknesses.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q032

Foundational · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

The application packages clean source into an image whose operating-system base is vulnerable. Which additional scan category is needed?

- **A. Container image vulnerability assessment** **Correct.** Container assessment can identify affected operating-system and image components beyond application source scanning.
- **B. Only a source formatter pass** Formatting application files cannot evaluate packages contained in the runtime image layers.
- **C. Only a repository issue-label check** Issue metadata does not inspect the container's actual operating-system component versions.
- **D. Only another local URI parser test** Reference syntax testing does not evaluate image-layer vulnerability advisory exposure.

**Explanation:** Container assessment can identify affected operating-system and image components beyond application source scanning. Formatting application files cannot evaluate packages contained in the runtime image layers. Issue metadata does not inspect the container's actual operating-system component versions. Reference syntax testing does not evaluate image-layer vulnerability advisory exposure.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q033

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A CodeQL example is present in a lab artifact folder but no provider analysis has run. Which verification claim is appropriate?

- **A. The repository is free of exploitable code defects** Static contract review cannot establish comprehensive absence of application security vulnerabilities.
- **B. Workflow contract reviewed; hosted analysis remains unverified** **Correct.** Stored YAML and static checks do not demonstrate actual provider execution or resulting findings.
- **C. Source analysis completed automatically by file presence** A workflow example does not execute merely because its file exists in the course repository.
- **D. Every finding has been uploaded to GitHub** No provider run means result publication has not been observed for this lesson.

**Explanation:** Static contract review cannot establish comprehensive absence of application security vulnerabilities. Stored YAML and static checks do not demonstrate actual provider execution or resulting findings. A workflow example does not execute merely because its file exists in the course repository. No provider run means result publication has not been observed for this lesson.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q034

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

Security scanning for untrusted pull requests currently uses the same persistent private deployment agent. Which execution boundary should be changed?

- **A. Keep the runner and hide deployment variables by name** Obscured names do not isolate untrusted code from the host's available capabilities.
- **B. Grant the scan administrator credentials to prevent failures** Broader privileges increase risk and do not repair the worker trust boundary.
- **C. Run deployment first so its credentials are cached** Caching deployment access worsens exposure to later untrusted analysis job code.
- **D. Run untrusted analysis on isolated nondeployment workers** **Correct.** Untrusted source must not inherit privileged deployment runner state or network capabilities.

**Explanation:** Obscured names do not isolate untrusted code from the host's available capabilities. Broader privileges increase risk and do not repair the worker trust boundary. Caching deployment access worsens exposure to later untrusted analysis job code. Untrusted source must not inherit privileged deployment runner state or network capabilities.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q035

Advanced · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Source scanning passes, but the deployed image digest differs from the scanned tag's current content. Which provenance and scanning correction is needed?

```text
Scanned tag: todo:release
Scanned digest: sha256:aaaa
Deployed same tag now resolves: sha256:bbbb
Application source scan: passed
```

- **A. Rename the tag to approved after deployment** Changing a label does not assess the actual image contents or establish trustworthy provenance.
- **B. Scan and deploy the same immutable image digest** **Correct.** Mutable tags can change, so release evidence must bind assessment to the actual deployed bytes.
- **C. Trust the old tag's clean report indefinitely** A mutable name does not establish that the deployed image matches the previously assessed contents.
- **D. Rescan only source and ignore the image** Source assessment does not cover all image layers or prove deployed digest equivalence.

**Explanation:** Changing a label does not assess the actual image contents or establish trustworthy provenance. Mutable tags can change, so release evidence must bind assessment to the actual deployed bytes. A mutable name does not establish that the deployed image matches the previously assessed contents. Source assessment does not cover all image layers or prove deployed digest equivalence.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q036

Foundational · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A policy requires security findings above a threshold to block merging. Which configuration must accompany analysis execution?

- **A. Only an informational job without branch requirements** Informational output can be ignored and does not enforce the required merge decision.
- **B. Only a README statement that scanning is mandatory** Documentation does not make branch admission depend on the actual security result.
- **C. Only a nightly report after releases** Postrelease reporting does not enforce the stated premerge security threshold gate.
- **D. A required enforced result with explicit finding policy** **Correct.** Running a scanner alone does not guarantee that policy-breaking results prevent merge.

**Explanation:** Informational output can be ignored and does not enforce the required merge decision. Documentation does not make branch admission depend on the actual security result. Postrelease reporting does not enforce the stated premerge security threshold gate. Running a scanner alone does not guarantee that policy-breaking results prevent merge.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q037

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

A container assessment's cloud prerequisites are unavailable and the learner has only reviewed a local scan plan. Which status is honest?

- **A. All security products were enabled automatically** A local plan does not authorize or perform paid security service activation.
- **B. The cloud image assessment remains unexecuted** **Correct.** A local plan cannot demonstrate provider entitlement, image ingestion or cloud vulnerability findings.
- **C. Cloud scan passed because the plan parses** Syntactic validity does not exercise actual image assessment or provider result collection.
- **D. No vulnerabilities exist because no results arrived** Absent execution evidence cannot establish that the image has no known vulnerable components.

**Explanation:** A local plan does not authorize or perform paid security service activation. A local plan cannot demonstrate provider entitlement, image ingestion or cloud vulnerability findings. Syntactic validity does not exercise actual image assessment or provider result collection. Absent execution evidence cannot establish that the image has no known vulnerable components.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q038

Applied · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

A SARIF report was generated but upload failed, and branch policy expects the provider's code-scanning result. What needs investigation?

- **A. Only whether the source file was formatted** Formatting does not repair analysis result upload authorization or required-check publication.
- **B. Only whether the SARIF document parses locally** Valid document structure does not establish upload authorization or successful provider ingestion.
- **C. Only whether the scanner process exited successfully** Local process success does not prove that provider publication and branch enforcement succeeded.
- **D. Result publication permissions and the required check outcome** **Correct.** Local analysis output does not prove provider ingestion or successful enforcement of the expected branch gate.

**Explanation:** Formatting does not repair analysis result upload authorization or required-check publication. Valid document structure does not establish upload authorization or successful provider ingestion. Local process success does not prove that provider publication and branch enforcement succeeded. Local analysis output does not prove provider ingestion or successful enforcement of the expected branch gate.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q039

Applied · [CP4](README.md#task-4) · [D4.3.5](../../docs/objective-map.md)

Scanning uses a pinned action commit, but its database is stale and the scanner lacks access to the intended image. What does pinning establish and what remains missing?

- **A. A stale database proves the image is clean** Outdated advisory knowledge limits coverage rather than demonstrating absence of vulnerabilities.
- **B. Tool-source identity; current data and image assessment remain needed** **Correct.** An immutable action reference does not guarantee fresh advisory data or access to the assessed artifact.
- **C. All scan inputs and findings are automatically trustworthy** Pinning one tool source cannot establish correctness of every runtime input and result.
- **D. Image access is unnecessary once an action is pinned** The scanner must still inspect the intended image to assess its components.

**Explanation:** Outdated advisory knowledge limits coverage rather than demonstrating absence of vulnerabilities. An immutable action reference does not guarantee fresh advisory data or access to the assessed artifact. Pinning one tool source cannot establish correctness of every runtime input and result. The scanner must still inspect the intended image to assess its components.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S3](https://learn.microsoft.com/en-us/azure/defender-for-cloud/agentless-vulnerability-assessment-azure)

## L22-Q040

Advanced · [CP4](README.md#task-4) · [D4.3.1](../../docs/objective-map.md)

The scan reports zero findings after analyzing JavaScript only, while the release API is C# and its generated build sources were omitted. Which acceptance correction addresses both coverage gaps?

```json
{"applicationLanguage":"csharp","analyzedLanguages":["javascript"],"generatedBuildSourcesIncluded":false,"findings":0,"scannerCompleted":true}
```

- **A. Analyze the intended C# build and verify expected source coverage** **Correct.** A clean result is meaningful only when analysis includes the actual application language and relevant build inputs.
- **B. Accept zero findings because the scanner completed** Successful execution does not prove that the intended application sources were analyzed.
- **C. Suppress the language mismatch as an artifact naming issue** Language and source coverage errors are substantive assessment gaps rather than presentation metadata.
- **D. Run dependency advisory scanning instead of code analysis** Dependency advisories do not replace analysis of the application code and its build sources.

**Explanation:** A clean result is meaningful only when analysis includes the actual application language and relevant build inputs. Successful execution does not prove that the intended application sources were analyzed. Language and source coverage errors are substantive assessment gaps rather than presentation metadata. Dependency advisories do not replace analysis of the application code and its build sources.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)

## L22-Q041

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The dependency inventory reports an unknown license expression for one component. Which next step fits an evidence-based license policy?

- **A. Delete the package name from the report** Removing inventory evidence does not remove the component or resolve its license classification.
- **B. Queue a component-specific review before approval** **Correct.** An unknown license requires resolving evidence rather than assuming it meets the organization's policy.
- **C. Treat unknown as automatically allowed** Missing license evidence cannot establish that the component satisfies the approved policy.
- **D. Treat the vulnerability score as its license** Security severity does not define the legal license expression attached to the component.

**Explanation:** Removing inventory evidence does not remove the component or resolve its license classification. An unknown license requires resolving evidence rather than assuming it meets the organization's policy. Missing license evidence cannot establish that the component satisfies the approved policy. Security severity does not define the legal license expression attached to the component.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q042

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A security advisory scan is clean, but a new dependency has a disallowed license under company policy. What should the license gate do?

- **A. Pass because no vulnerability was found** A security result does not establish compliance with the organization's approved license policy.
- **B. Classify the dependency using only the application's own license** The top-level project license does not automatically replace the separate dependency's license terms.
- **C. Disable license inventory for this pull request** Hiding the component avoids the review rather than satisfying the stated acceptance rule.
- **D. Block or require the defined reviewed exception** **Correct.** Security and license policy are separate, so clean advisory results do not override license restrictions.

**Explanation:** A security result does not establish compliance with the organization's approved license policy. The top-level project license does not automatically replace the separate dependency's license terms. Hiding the component avoids the review rather than satisfying the stated acceptance rule. Security and license policy are separate, so clean advisory results do not override license restrictions.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q043

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A license review queue needs enough evidence for an owner to assess one newly introduced package. Which record is most useful?

- **A. Only the parent package's license expression** The indirect component can have a distinct license that needs its own version-specific evidence.
- **B. Package identity, version, license expression and source evidence** **Correct.** A specific component record supports a review of the actual license attached to that version.
- **C. Only the total dependency count** A count cannot identify which component version or license needs policy assessment.
- **D. Only the scanner's elapsed time** Duration does not describe the component's license expression or supporting evidence source.

**Explanation:** The indirect component can have a distinct license that needs its own version-specific evidence. A specific component record supports a review of the actual license attached to that version. A count cannot identify which component version or license needs policy assessment. Duration does not describe the component's license expression or supporting evidence source.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q044

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A dependency's license metadata changes between versions while the package name stays the same. Which scope should approval distinguish?

- **A. Only whether the package compiles successfully** Successful compilation does not establish compliance with the organization's component license policy.
- **B. The actual package version and applicable license evidence** **Correct.** Name-only approvals can miss a license change in a newly resolved component version.
- **C. Only the unchanged package name** A stable name does not prove that the new version has identical license metadata.
- **D. Only the top-level project's MIT license** The application's own license does not automatically replace each dependency's separate license terms.

**Explanation:** Successful compilation does not establish compliance with the organization's component license policy. Name-only approvals can miss a license change in a newly resolved component version. A stable name does not prove that the new version has identical license metadata. The application's own license does not automatically replace each dependency's separate license terms.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q045

Advanced · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A transitive component has an unknown license and a patched upgrade is required urgently for security. Which decision handles both assurance tracks?

```json
{"component":"Example.Transitive","license":"UNKNOWN","securityUpgradeRequired":true,"newVersionTested":false,"reviewOwners":["security","license-policy"]}
```

- **A. Assign the parent project's license to every transitive component** A parent dependency's license does not necessarily describe each separately licensed indirect package.
- **B. Review the upgrade's security fix and unresolved license with accountable owners** **Correct.** Security urgency does not automatically approve unknown license terms, so both policies need explicit decisions.
- **C. Ignore license review because the patch fixes security** A security remediation can still introduce or retain an unresolved license-policy issue.
- **D. Delay all security remediation permanently until the queue empties** An indefinite delay ignores the vulnerability risk instead of coordinating the two review requirements.

**Explanation:** A parent dependency's license does not necessarily describe each separately licensed indirect package. Security urgency does not automatically approve unknown license terms, so both policies need explicit decisions. A security remediation can still introduce or retain an unresolved license-policy issue. An indefinite delay ignores the vulnerability risk instead of coordinating the two review requirements.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q046

Foundational · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The local exercise generates a license review queue but no reviewer has decided on its unknown entries. Which completion statement is accurate?

- **A. All unknown packages are legally unusable** Missing metadata alone does not establish the final legal interpretation of a component's license.
- **B. Every transitive dependency was removed from the application** Generating a report does not change the actual resolved package graph or deployed components.
- **C. Inventory and queue created; policy decisions pending** **Correct.** Creating review records does not establish that unresolved component licenses were approved.
- **D. All dependency licenses approved automatically** A queue is evidence of pending review rather than a completed approval decision.

**Explanation:** Missing metadata alone does not establish the final legal interpretation of a component's license. Generating a report does not change the actual resolved package graph or deployed components. Creating review records does not establish that unresolved component licenses were approved. A queue is evidence of pending review rather than a completed approval decision.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q047

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

A workflow compares dependency changes in pull requests and should reject license expressions outside an approved list. Which configuration addresses that policy?

- **A. Only a vulnerability severity threshold** Security severity does not express which component licenses the organization permits.
- **B. Only a package cache key** Cache identity controls reuse rather than license-policy acceptance of dependency changes.
- **C. Only a global MIT badge in README** A repository badge does not evaluate separate dependency licenses against the organization's policy.
- **D. An explicit allowlist or deny policy in dependency review** **Correct.** Dependency review supports applying a configured license policy to introduced component changes.

**Explanation:** Security severity does not express which component licenses the organization permits. Cache identity controls reuse rather than license-policy acceptance of dependency changes. A repository badge does not evaluate separate dependency licenses against the organization's policy. Dependency review supports applying a configured license policy to introduced component changes.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q048

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

The report includes direct packages only, but policy applies to distributed transitive components too. What should license inventory change?

- **A. Approve based only on package download counts** Popularity does not establish the applicable license expression or policy compatibility.
- **B. Include the resolved transitive dependency set** **Correct.** License review needs the relevant indirect components actually consumed or distributed by the application.
- **C. Infer every indirect license from its parent** Dependencies can have separate license terms that differ from the referencing parent component.
- **D. Ignore indirect packages that lack source imports** A package can be distributed or used transitively without a direct source-level import.

**Explanation:** Popularity does not establish the applicable license expression or policy compatibility. License review needs the relevant indirect components actually consumed or distributed by the application. Dependencies can have separate license terms that differ from the referencing parent component. A package can be distributed or used transitively without a direct source-level import.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q049

Applied · [CP5](README.md#task-5) · [D1.2.5](../../docs/objective-map.md)

An approved temporary license exception applies to one version until a named expiry date. Which update should trigger reassessment?

- **A. Only a renamed pipeline job** A job label does not determine whether the component still matches the exception's scope.
- **B. A component version or license-evidence change** **Correct.** A bounded exception does not automatically extend to different versions or changed license evidence.
- **C. Only an unchanged package name despite a version upgrade** A name-level match does not establish that new version terms remain within the approved exception.
- **D. Only a faster dependency restore** Restore duration does not change the license evidence covered by the approved exception.

**Explanation:** A job label does not determine whether the component still matches the exception's scope. A bounded exception does not automatically extend to different versions or changed license evidence. A name-level match does not establish that new version terms remain within the approved exception. Restore duration does not change the license evidence covered by the approved exception.

**Sources:** [S5](https://github.com/actions/dependency-review-action)

## L22-Q050

Advanced · [CP5](README.md#task-5) · [D4.3.1](../../docs/objective-map.md), [D4.3.6](../../docs/objective-map.md), [D4.2.4](../../docs/objective-map.md), [D1.2.5](../../docs/objective-map.md)

The release has clean source results, an unresolved critical transitive advisory, one unknown license and a successful synthetic secret test. What should the gate conclude?

```json
{"sourceAnalysis":"clean","criticalTransitiveAdvisory":"unresolved","newDependencyLicense":"UNKNOWN","syntheticSecretFixture":"detected and repaired"}
```

- **A. The source scan implicitly approves package licenses** Source-code security analysis does not decide license compliance or remediate transitive advisories.
- **B. Release remains blocked by unresolved required assurance decisions** **Correct.** A clean result in one scan category does not satisfy other unresolved security and license policies.
- **C. Release passes because most categories succeeded** Majority voting cannot override a required vulnerability or license-policy acceptance condition.
- **D. The synthetic test proves all real credentials are absent** A deterministic fixture covers its specific detection path rather than every possible credential exposure.

**Explanation:** Source-code security analysis does not decide license compliance or remediate transitive advisories. A clean result in one scan category does not satisfy other unresolved security and license policies. Majority voting cannot override a required vulnerability or license-policy acceptance condition. A deterministic fixture covers its specific detection path rather than every possible credential exposure.

**Sources:** [S1](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning); [S2](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts); [S5](https://github.com/actions/dependency-review-action); [S6](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning)
