# Lab 07 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create a versioned local package

A reproducible local feed receives Versioned.Library1.2.0.

Verify both the positive and negative probes in the lab README. Use semantic versions for compatibility; reserve new versions for changed bytes.

## CP2 — Inspect package metadata without executing package code

The package contains its nuspec and net10.0 library, and receives a digest.

Verify both the positive and negative probes in the lab README. Correct package inclusion rules before publishing; do not publish signing keys.

## CP3 — Consume the local feed with a pinned dependency

A consumer pins1.2.0 and records a dependency lock file.

Verify both the positive and negative probes in the lab README. Use an explicit feed and version; investigate feed precedence rather than accepting a similarly named upstream package.

## CP4 — Produce a distinct prerelease artifact

Stable and prerelease packages coexist under distinct immutable versions.

Verify both the positive and negative probes in the lab README. Promote the same package to a feed view; avoid rebuilding after approval.

## CP5 — Compare GitHub Packages and Azure Artifacts publication contracts

A publish contract separates registries, scopes, views, and upstream trust; it sends no package.

Verify both the positive and negative probes in the lab README. Complete feed creation/permissions bootstrap before an explicitly authorized publication.

## Repair and recovery

```powershell
$p=Join-Path $WorkRoot 'Package.Consumer/Package.Consumer.csproj';(Get-Content $p -Raw).Replace('Version="9.9.9"','Version="1.2.0"')|Set-Content $p
dotnet restore (Join-Path $WorkRoot 'Package.Consumer')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
