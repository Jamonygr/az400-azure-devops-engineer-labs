# Lab 05 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inspect repository capabilities and effective permissions

The fresh GitHub repository and project repository inventory are identified.

Verify both the positive and negative probes in the lab README. Use the sandbox repository; repository administration requires a suitable role.

## CP2 — Create an LFS-aware local repository

Attributes assign binary files to LFS and exclude transient build artifacts.

Verify both the positive and negative probes in the lab README. Install Git LFS before storing real large files. git-fat is syllabus context; compare support and security before adoption.

## CP3 — Tag an immutable release candidate

An annotated semantic-version tag resolves to an exact commit.

Verify both the positive and negative probes in the lab README. Use a new version for a changed artifact; avoid moving published release tags.

## CP4 — Measure object storage and enable local maintenance

Local settings and object counters support repository scale analysis.

Verify both the positive and negative probes in the lab README. Keep optimization repository-local; test sparse checkout and Scalar on a separate copy.

## CP5 — Produce an access and sharing decision record

Access and cross-repository sharing choices are explicit.

Verify both the positive and negative probes in the lab README. Grant narrow repository permissions; evaluate outside collaborators separately from organization membership.

## Repair and recovery

```powershell
$p=Join-Path $WorkRoot 'repository-admin';git -C $p restore .gitattributes
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
