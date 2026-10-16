# Lab 14 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Publish a single immutable application bundle

A release bundle and exact application digest are produced before deployment.

Verify both the positive and negative probes in the lab README. Promote these exact bytes through environments; avoid rebuilding after approval.

## CP2 — Generate an idempotent SQL Server migration script

The database change is a reviewable script; no database connection is opened.

Verify both the positive and negative probes in the lab README. Select the SQL Server context; SQLite migration syntax is not interchangeable.

## CP3 — Preview the protected database execution lane

Migration preview names the protected database lane without applying SQL.

Verify both the positive and negative probes in the lab README. Supply an authorized disposable database and separate approval before -Apply; a placeholder host is never executed.

## CP4 — Validate expand-database-application ordering

Backward-compatible expansion precedes application rollout; destructive contraction is deferred.

Verify both the positive and negative probes in the lab README. Use dependsOn/needs and a success condition; job naming alone does not impose ordering.

## CP5 — Record binary/database recovery compatibility

Rollback routes traffic to a compatible binary rather than dropping newly written data.

Verify both the positive and negative probes in the lab README. Test old and new binaries against the expanded schema before rollout.

## Repair and recovery

```powershell
@('schema-expand','application-deploy','readiness-check','schema-contract-later')|Set-Content (Join-Path $WorkRoot 'release-order.txt')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
