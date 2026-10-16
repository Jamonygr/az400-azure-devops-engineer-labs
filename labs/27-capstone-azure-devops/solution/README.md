# Lab 27 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Inspect the registered release definition's repository/YAML identity and both deploy/rollback build results. Final evidence must show actual revision, health and telemetry for each selected artifact, not just a successful CI run.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Establish Azure DevOps source and accepted work

Source and acceptance criteria exist only in the disposable project. The package includes all deployment templates, scripts and inactive release definitions; CI alone is active.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.3` | practiced | Record the run-owned Boards work item and Azure Repos source acceptance context. |

Retain and inspect: Task, repository ID, and project identity.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Complete Git authentication bootstrap without writing a PAT into a remote URL.

## CP2 — Run local build, tests, and measured coverage

The shared sample passes a 65% minimum measured coverage gate.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.3` | practiced | Execute local test/coverage gates before hosted CI. |

Retain and inspect: TRX, coverage report, and dependency locks.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Repair behavior rather than suppressing tests or disabling collectors.

## CP3 — Publish a CI pipeline and dormant deployment contract

The reviewed revision contains CI and an unregistered cloud deployment template. Historical CI-only source revision and CI file hashes remain independently inspectable after the separate protected release activation.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.5` | practiced | Publish CI plus the dependency-complete dormant deployment bundle. |

Retain and inspect: Committed SHA and CI-versus-dormant template review. core-publication.json links the baseline commit, exact CI path, SHA256 and Git blob; current protected release evidence is separate.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep deployment registration separate until service connection, environment checks, SQL/network prerequisites, and costs are approved.

## CP4 — Register and queue the exact project CI definition

One sandbox pipeline is queued against the reviewed main revision.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Pipeline/build IDs and queued source branch.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Obtain hosted parallelism or approved isolated agents; waiting for capacity is an external gate.

## CP5 — Verify successful delivery provenance and recovery evidence

A provenance dossier records the CI milestone. Full completion remains partial until the separate protected Integration operation records both measured deployment and rollback.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.4` | integrated | Join work item, CI revision/artifact, measured protected release, compatible rollback and cleanup records; integration is required. |
| `D3.1.4` | integrated | Select the successful exact-revision CI artifact and retain the build identity. |
| `D3.3.9` | integrated | Integration requires provider-configured deployment environment approvals and independently observed protected release runs. |
| `D3.4.2` | integrated | Integration executes verified artifact → protected migration → application → revision/telemetry gate. |
| `D3.4.8` | integrated | Integration executes the already-built SQL migration bundle with a separate WIF connection. |
| `D4.1.3` | integrated | Integration uses separately authorized migration/application Azure DevOps WIF connections. |
| `D4.2.2` | integrated | Integration exchanges provider federation for narrowly scoped Azure identities. |
| `D5.1.1` | integrated | Integration joins the owned app with its telemetry workspace and measures tagged release requests. |
| `D5.2.3` | integrated | Integration checks exact revision and observed request metrics for both deployment and compatible rollback. |

Retain and inspect: Release dossier, successful test artifact references, recovery plan, and final cleanup audit.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Retrieve final test/artifact evidence before deleting the disposable project; do not report a queued run as delivered.

## Repair and recovery

Expected failure marker: `AZ400-L27-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$sha=(Get-Content (Join-Path $WorkRoot 'capstone-sha.txt')).Trim()
if($d.result -ne 'succeeded' -or $d.commit -cne $sha){throw 'AZ400-L27-FAULT'}
```

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.result='succeeded';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
