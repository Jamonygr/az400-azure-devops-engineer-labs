# Validation status

## Release standard

The initial release uses offline/local tests and hosted GitHub repository CI.
Checks validate course structure, all objective mappings, assessments, generated
content, script safety, application behavior, templates, Bicep and documentation.
They do not create live Azure workloads or Azure DevOps projects.

| Layer | Verification |
|---|---|
| Course and questions | Deterministic generation, schemas, counts, source/objective/checkpoint links, question integrity |
| Lifecycle | Mocked Azure/GitHub/DevOps contract tests and PowerShell static analysis |
| Application | Locked restore, build, unit and HTTP integration tests |
| Artifacts | YAML parsing/security checks, actionlint, Bicep compilation and lint |
| Documentation | Strict MkDocs build, links/assets, accessible SVG metadata, local progress tests |
| Live Azure and Azure DevOps integration | Not live-verified in this release |

Fixtures are synthetic and labeled as samples. A lab is only live-verified after
its guided steps, break/fix, repair, validators, cleanup and residual checks have
run in a separately approved disposable environment. Record that evidence
privately and publish only a redacted verification summary.

The hosted workflow run is the authoritative record of each commit's CI result.

## Initial local verification

Checked October 16, 2026:

- 28 labs, 140 checkpoints, 86 reciprocal objective mappings, and 1,250 assessment records validated.
- 32 PowerShell lifecycle/progress tests, five JavaScript progress tests, and 11 .NET application tests passed.
- Sample application line coverage: 84.21% with the repository's documented exclusions and settings.
- All 644 checkpoint/assertion/break-fix PowerShell blocks parsed; generated-source drift checks passed.
- Ten local checkpoint/validation pairs in Git recovery and desired-state configuration executed successfully.
- Bicep 0.48.1 compiled/linted the core, full workload, and monitoring templates without warnings.
- Workflow syntax, Markdown, spelling, secret scanning, and strict documentation build passed.
- The 70 distinct assessment source URLs returned HTTP 200 during the initial source review.

The local Docker daemon was unavailable; the application/container CI job builds
the image on a hosted Linux runner. Confirm that job's result before describing
container validation as complete. No local test contacted an Azure workload,
SQL endpoint, or Azure DevOps project to claim live integration success.
