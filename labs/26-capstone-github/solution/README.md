# Lab 26 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The dossier cannot convert a Boolean into integration proof. Read hosted run conclusions and exact artifact revisions, retain deployment and rollback evidence, then use the ownership journal for cleanup.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Establish GitHub source and accepted work traceability

The disposable GitHub repository has source and a measurable work item. The package includes all deployment templates, scripts and inactive release definitions; CI alone is active.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.3` | practiced | Record the run-owned issue and exact source acceptance context. |

Retain and inspect: Issue, repository boundary, and copied source allowlist.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use a new sandbox; integrate work tracking before delivery evidence is produced.

## CP2 — Pass the local quality and coverage gates

The sample passes tests and the shared 65% coverage gate.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.2.3` | practiced | Execute local test/coverage gates before hosted CI. |

Retain and inspect: TRX counts, coverage, lock hashes, and SDK.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Repair failures without suppressing tests or weakening coverage; check the code under test is in the measured scope.

## CP3 — Publish CI while preserving the dormant deployment gate

A reviewed commit enables CI; cloud deployment remains outside the active workflow directory. Historical CI-only source revision and CI file hashes remain independently inspectable after the separate protected release activation.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.5` | practiced | Publish CI plus a dependency-complete dormant deployment bundle. |

Retain and inspect: Exact commit SHA and active-versus-dormant file locations. core-publication.json links the baseline commit, exact CI path, SHA256 and Git blob; current protected release evidence is separate.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Activate a separately reviewed deployment only after federation, SQL/network prerequisites, environment approval, and costs are authorized.

## CP4 — Verify hosted CI provenance and successful completion

A successful hosted run proves the exact published source revision.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.1.4` | integrated | Select the successful exact-revision CI artifact and retain its run identity. |

Retain and inspect: Run URL, commit SHA, test artifact, and final result.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Check runner availability, permissions, and task failure; canceled/skipped runs are not completion.

## CP5 — Produce the operational release and recovery dossier

A provenance dossier records the CI milestone. Full completion remains partial until the separate protected Integration operation records both measured deployment and rollback.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.4` | integrated | Join issue, CI revision/artifact, measured protected release, compatible rollback and cleanup records; integration is required. |
| `D3.3.9` | integrated | Integration requires provider-configured database/application environment approvals and observed protected release runs. |
| `D3.4.2` | integrated | Integration executes verified artifact → protected migration → application → revision/telemetry gate. |
| `D3.4.8` | integrated | Integration executes the already-built SQL migration bundle with a separate federated identity. |
| `D4.2.2` | integrated | Integration exchanges GitHub environment OIDC for narrowly scoped Azure identities. |
| `D5.1.1` | integrated | Integration joins the owned app with its Application Insights workspace and measures tagged release requests. |
| `D5.2.3` | integrated | Integration checks the assembly revision and observed release telemetry, then repeats verification for the retained baseline. |

Retain and inspect: release-dossier.json, recovery reasoning, and final cleanup audit.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: State verified and pending integration behavior separately; preserve evidence until sandbox deletion is proven.

## Repair and recovery

Expected failure marker: `AZ400-L26-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$sha=(Get-Content (Join-Path $WorkRoot 'capstone-sha.txt')).Trim()
if($d.commit -cne $sha -or $d.commit -notmatch '^[0-9a-f]{40}$'){throw 'AZ400-L26-FAULT'}
```

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.commit=Get-Content (Join-Path $WorkRoot 'capstone-sha.txt');$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
