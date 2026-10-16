# Lab 14 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The order assertion rejects application-before-migration. Inspect generated SQL and keep compatibility evidence even when the application build itself passes.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair passed in CourseReleaseSequences.Tests.ps1. Local .NET publishing/tests, EF SQL generation and Bicep compilation are real; GitHub, Azure and readiness HTTP responses are explicit fail-closed doubles. Live release, SQL authentication and traffic routing have not run.

## CP1 — Publish a single immutable application bundle

A release bundle and exact application digest are produced before deployment.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.7` | practiced | Produce the deployable application output from the actual sample. |

Retain and inspect: Application SHA256 and build revision.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Promote these exact bytes through environments; avoid rebuilding after approval.

## CP2 — Generate an idempotent SQL Server migration script

The database change is a reviewable script; no database connection is opened.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.4.8` | practiced | Generate and inspect an idempotent SQL migration script without connecting to a database. |

Retain and inspect: Migration script digest and schema compatibility review.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Select the SQL Server context; SQLite migration syntax is not interchangeable.

## CP3 — Preview the protected database execution lane

Migration preview names the protected database lane without applying SQL.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Preview output without connection credentials.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Supply an authorized disposable database and separate approval before -Apply; a placeholder host is never executed.

## CP4 — Validate expand-database-application ordering

Backward-compatible expansion precedes application rollout; destructive contraction is deferred.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.6` | practiced | Assert the migration/application/verification ordering in the local release graph. |
| `D3.4.2` | practiced | Resolve the ordered release dependency contract and reject a reversed migration/app order. |

Retain and inspect: Release DAG and the generated SQL digest.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use dependsOn/needs and a success condition; job naming alone does not impose ordering.

## CP5 — Record binary/database recovery compatibility

Rollback routes traffic to a compatible binary rather than dropping newly written data.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Compatibility assumptions, recovery procedure, and SQL/application hashes.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Test old and new binaries against the expanded schema before rollout.

## Repair and recovery

Expected failure marker: `AZ400-L14-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$s=@(Get-Content (Join-Path $WorkRoot 'release-order.txt'))
if(($s -join ',') -ne 'schema-expand,application-deploy,readiness-check,schema-contract-later'){throw 'AZ400-L14-FAULT'}
```

```powershell
@('schema-expand','application-deploy','readiness-check','schema-contract-later')|Set-Content (Join-Path $WorkRoot 'release-order.txt')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
