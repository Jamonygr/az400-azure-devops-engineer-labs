# Lab 05 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Check the attributes result on the fixture file and the annotated tag target independently. An access decision record is explained policy; it is not evidence that organization roles were changed.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Inspect repository capabilities and effective permissions

The fresh GitHub repository and project repository inventory are identified.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.3` | explained | Inspect repository scope and discuss role boundaries; this task does not grant organization roles. |

Retain and inspect: Effective permission, visibility, and repository IDs.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the sandbox repository; repository administration requires a suitable role.

## CP2 — Create an LFS-aware local repository

Attributes assign binary files to LFS and exclude transient build artifacts.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.1` | practiced | Set and inspect Git large-file attributes on a fixture; transferring LFS objects is not claimed. |

Retain and inspect: Attributes and tracked file list; Git LFS installation is a separate tool prerequisite.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Install Git LFS before storing real large files. git-fat is syllabus context; compare support and security before adoption.

## CP3 — Tag an immutable release candidate

An annotated semantic-version tag resolves to an exact commit.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.4` | practiced | Create and resolve an annotated version tag to its intended commit. |

Retain and inspect: Tag name, target SHA, and annotation.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use a new version for a changed artifact; avoid moving published release tags.

## CP4 — Measure object storage and enable local maintenance

Local settings and object counters support repository scale analysis.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D2.2.2` | practiced | Run Git maintenance and inspect the retained repository objects. |

Retain and inspect: Object count and local configuration; compare Scalar when a real monorepo justifies it.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep optimization repository-local; test sparse checkout and Scalar on a separate copy.

## CP5 — Produce an access and sharing decision record

Access and cross-repository sharing choices are explicit.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Decision record linked to observed repository capabilities.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Grant narrow repository permissions; evaluate outside collaborators separately from organization membership.

## Repair and recovery

Expected failure marker: `AZ400-L05-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$p=Join-Path $WorkRoot 'repository-admin'
if((git -C $p check-attr filter -- model.bin) -notmatch 'lfs$'){throw 'AZ400-L05-FAULT'}
```

```powershell
$p=Join-Path $WorkRoot 'repository-admin';git -C $p restore .gitattributes
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
