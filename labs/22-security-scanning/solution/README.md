# Lab 22 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Expected scanner exit 1 means the seeded fixture was blocked, not that the scanner crashed. Preserve redacted reports and provenance; never count a missing database/report as zero findings.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair passed in CourseScanMonitorSequences.Tests.ps1. Local .NET package inventory/advisory queries and Gitleaks scans are real. GitHub/Azure APIs and Docker/Trivy reports are explicit fixtures; live security integration and alert delivery have not run. Repository CI separately runs the actual application container.

## CP1 — Inventory direct and transitive dependencies

Machine-readable dependency provenance includes transitive packages.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Package IDs/versions and lock-file fingerprints.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Restore approved sources first and review transitive exposure, not just direct references.

## CP2 — Run the vulnerability advisory check

The advisory result records known package findings at query time.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.5` | practiced | Query advisory counts/severity and keep timestamps/scope explicit. |

Retain and inspect: Advisory IDs/severity and UTC scan date; do not claim future vulnerability absence.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Update the smallest compatible dependency set, regenerate locks, rerun tests, and document accepted residual risk.

## CP3 — Run a real secret scanner against clean and leaking fixtures

A real scanner accepts clean files and returns exit1 with a redacted finding for the custom noncredential marker.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.4` | practiced | Run the real Gitleaks CLI on clean and deliberately seeded nonsecret fixtures and inspect its blocking exit/report. |
| `D4.3.1` | practiced | Execute and distinguish secret scanning from the separately explained CodeQL provider integration. |

Retain and inspect: Scanner version, rule ID, exit codes, and redacted JSON; the marker is not a credential.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Install the approved scanner during bootstrap. A custom fixture proves rule execution and exit propagation, not completeness of every production credential detector.

## CP4 — Build and scan the exact local container image

Trivy records actual image findings tied to the local image ID, computes the release decision, and the uniquely tagged training image is removed.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.5` | practiced | Build an exact local image, run Trivy on that tag, and apply a high/critical vulnerability gate. |

Retain and inspect: Image ID, scanner/database metadata, severity counts and gate decision; zero findings is a dated observation.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: A completed scan can correctly block a release. Remediate findings and rebuild/retest the changed digest; never reuse a mutable tag as proof.

## CP5 — Collect real license findings and classify unknowns

A real license scan produces review inputs; unknown/undetected metadata remains pending and no automatic legal approval is granted.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.3.6` | explained | Inspect the Dependabot/CodeQL configuration contract; local vulnerability/license scanning does not enable provider dependency alerts. |

Retain and inspect: Scanner provenance, detected expressions, policy candidates and manual-review obligations.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Scanner detection is not legal advice or approval. Check package primary metadata, SPDX expressions and notices; CodeQL provider configuration is a separate explained/gated workflow.

## Repair and recovery

Expected failure marker: `AZ400-L22-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
if(Select-String -Path (Join-Path $WorkRoot 'scan-fixture.txt') -Pattern 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE|BEGIN PRIVATE KEY'){throw 'AZ400-L22-FAULT'}
```

```powershell
Set-Content (Join-Path $WorkRoot 'scan-fixture.txt') 'public-setting=training'
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
