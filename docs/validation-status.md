# Validation status

## Release standard

Course v2 uses local execution, mocked platform responses and hosted GitHub CI.
Checks validate course structure, all objective mappings, assessments, generated
content, script safety, application behavior, templates, Bicep and documentation.
They do not create live Azure workloads or Azure DevOps projects.

| Layer | Verification |
|---|---|
| Course and questions | Deterministic generation, schemas, counts, source/objective/checkpoint links, question integrity |
| Lifecycle | Complete sequences for all 28 labs, all break/fix contracts, mocked Azure/GitHub/DevOps responses and PowerShell static analysis |
| Application | Locked restore, build, unit/HTTP tests, enforced coverage and running containers |
| Artifacts | YAML parsing/security checks, actionlint, Bicep compilation and lint |
| Documentation | Strict MkDocs build, links/assets, accessible SVG metadata, desktop/mobile quiz and progress tests |
| Live Azure and Azure DevOps integration | Not live-verified in this release |

Fixtures are synthetic and labeled as samples. A lab is only live-verified after
its guided steps, break/fix, repair, validators, cleanup and residual checks have
run in a separately approved disposable environment. Record that evidence
privately and publish only a redacted verification summary.

The [Offline quality workflow](https://github.com/Jamonygr/az400-azure-devops-engineer-labs/actions/workflows/quality.yml)
is the authoritative record of each commit's CI result. The
[documentation workflow](https://github.com/Jamonygr/az400-azure-devops-engineer-labs/actions/workflows/pages.yml)
publishes the exact successful `main` commit. Manual publication also checks for
a successful quality run for that same commit.

## Course v2 verification

Checked October 16, 2026:

- 28 labs, 140 core checkpoints, 86 objectives and 1,250 questions are checked by the schemas and generators. Each assessed lab has 15 foundational, 25 applied and 10 advanced questions, with four choices and an explanation for each choice.
- All 25 assessment sets received a separate technical review covering questions, answers and distractors. Repeated decisions, weak alternatives, exhibit placement and inaccurate metadata found during review were corrected. These are original practice questions, not official exam items.
- 107 PowerShell lifecycle, progress, packaging and sequence tests passed. Every lab has a complete local or mocked sequence; every break/fix contract must demonstrate healthy state, the expected failure and successful repair.
- 15 JavaScript unit tests, 11 Python tests and 18 desktop/mobile browser tests passed. Browser checks include reload/resume, multiple tabs, legacy imports, merge/replace, blank scores, unavailable storage, keyboard interaction and question-revision resets.
- 15 .NET application tests passed. Hosted Linux CI measured 85.84% line coverage using the documented exclusions and settings, above the enforced 65% threshold.
- Both isolated capstone packages restored and passed all 15 application tests in hosted CI. Package closure tests check referenced scripts and templates inside the copied learner tree.
- Hosted Linux CI built and ran the application container, checking startup, health, API behavior, source revision, negative input and its non-root user (UID 1654).
- Four SQL Server container tests passed in hosted Linux CI: migrated database, missing migration, denied migration-history read and denied application-table read. Migrations run with a separate restricted identity; the runtime identity receives only the required reads and application writes.
- All 678 checkpoint, preparation, assertion and break/fix PowerShell blocks parsed. Generated-source drift checks passed.
- Bicep 0.48.1 compiled/linted the core, full workload, and monitoring templates without warnings.
- Workflow syntax, Markdown, spelling, secret scanning, and strict documentation build passed.
- All 154 distinct assessment source URLs returned HTTP 200 during the final source check.
- Representative homepage, catalog, quiz and lesson pages were visually reviewed in the built site, alongside automated narrow-screen and theme checks.

The Windows Docker daemon was unavailable. Actual application and SQL container
execution was verified on the hosted Linux runner, rather than inferred from
static files. The complete sequence tests isolate platform calls behind
fail-closed mocks and use real local Git, .NET, package, scanner and Bicep operations
where applicable. Mock results are not evidence of live provider behavior.

## Coverage and evidence

Objective mappings classify a checkpoint as **explained**, **practiced** or
**integrated**. Those classifications describe the learning activity; the separate
verification metadata describes the author's evidence. A mapped objective alone
does not establish that an exercise works against a live service.

CLI completion requires current validation, recorded fault/repair evidence and
cleanup results. Capstones also require their protected release integration
evidence; completing CI alone produces a partial result. Paid checkpoint execution
authorization is remembered privately so later read-only validation can inspect
completed work. Browser progress remains visibly self-reported and is separate
from CLI evidence and quiz attempts.

## Remaining integration limits

Live Azure and Azure DevOps execution is outside this release standard. Tenant
permissions, federation, paid security features, private runner networking,
managed-identity access to Azure SQL, hosted approvals and service-specific
telemetry queries remain unverified against a learner's account until executed
separately. The capstone tests exercise deployment ordering, evidence rejection,
artifact promotion, rollback and cleanup with provider responses mocked; they do
not claim a live protected deployment.

No validation run deploys training resources through the repository's active
workflows. Credentials, learner identifiers and runtime evidence stay outside Git.
