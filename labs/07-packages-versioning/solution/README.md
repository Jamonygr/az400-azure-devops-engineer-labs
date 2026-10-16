# Lab 07 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The consumer must resolve Versioned.Library 1.2.0 from the intended feed. A successful restore of an unintended version fails the learning goal even if compilation succeeds.

Author verification: **offline-tested**. The complete five-checkpoint sequence, final-state revalidation, fault detection and repair run with real local Git/.NET/package/file operations and fail-closed synthetic GitHub/Azure DevOps responses. Provider operations remain unverified live.

## CP1 — Create a versioned local package

A reproducible local feed receives Versioned.Library1.2.0.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Package name/version and SHA256.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use semantic versions for compatibility; reserve new versions for changed bytes.

## CP2 — Inspect package metadata without executing package code

The package contains its nuspec and net10.0 library, and receives a digest.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: nuspec file list and SHA256 digest.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Correct package inclusion rules before publishing; do not publish signing keys.

## CP3 — Consume the local feed with a pinned dependency

A consumer pins1.2.0 and records a dependency lock file.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.1.3` | practiced | Restore the explicitly pinned library version from the local feed. |

Retain and inspect: Consumer project and packages.lock.json.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use an explicit feed and version; investigate feed precedence rather than accepting a similarly named upstream package.

## CP4 — Produce a distinct prerelease artifact

Stable and prerelease packages coexist under distinct immutable versions.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.4` | explained | Compare semantic package versions with Git tag/revision identity; no remote tag publication occurs. |
| `D3.1.4` | practiced | Inspect the package version and dependency lock information as separate artifact identifiers. |

Retain and inspect: Both versions and stable digest preservation.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Promote the same package to a feed view; avoid rebuilding after approval.

## CP5 — Promote verified package bytes and evaluate upstream trust

The approved stable package is copied unchanged into a local Release view and a source allowlist accepts the reviewed upstream while rejecting an unreviewed one. Hosted feed publication remains separate.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.1.1` | explained | Compare private/public feed selection and authorization using the feed decision record. |
| `D3.1.2` | explained | Describe upstream/feed promotion topology; the concrete exercise uses a local NuGet folder. |

Retain and inspect: Before/after SHA256, promoted local package and two evaluated upstream cases; no registry credential.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Complete feed creation/permissions bootstrap before an explicitly authorized publication.

## Repair and recovery

Expected failure marker: `AZ400-L07-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$p=Join-Path $WorkRoot 'Package.Consumer/Package.Consumer.csproj';$x=[xml](Get-Content $p -Raw)
$pkg=@($x.SelectNodes('/Project/ItemGroup/PackageReference')|Where-Object Include -eq 'Versioned.Library')
if($pkg.Count -ne 1 -or $pkg[0].Version -ne '1.2.0'){throw 'AZ400-L07-FAULT'}
```

```powershell
$p=Join-Path $WorkRoot 'Package.Consumer/Package.Consumer.csproj';(Get-Content $p -Raw).Replace('Version="9.9.9"','Version="1.2.0"')|Set-Content $p
dotnet restore (Join-Path $WorkRoot 'Package.Consumer')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
