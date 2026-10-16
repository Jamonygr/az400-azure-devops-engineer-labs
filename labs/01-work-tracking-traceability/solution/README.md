# Lab 01 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The reciprocal URLs must resolve to the exact owned project/repository. A passing work-item index is useful planning evidence, but source-to-production traceability remains a separate integration milestone.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Create a GitHub work item with acceptance criteria

A sandbox issue describes a measurable delivery outcome.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.1` | explained | Acceptance fields distinguish planning, implementation, review, and release states; the fixture is not a configured organization-wide process. |

Retain and inspect: Issue number and redacted acceptance text.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Confirm issues are enabled in the fresh sandbox repository and use its exact owner/repo.

## CP2 — Create the matching Azure Boards task

A task exists in the disposable Azure DevOps project.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Task ID, type, state, and project name.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use a Task supported by the sandbox process and verify project permissions.

## CP3 — Link Boards to the GitHub issue

The task exposes a hyperlink to the corresponding issue.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.3` | integrated | Link the GitHub issue and the Azure Boards work item and query both identifiers. |
| `D1.3.5` | integrated | Read back the reciprocal issue/work-item URL relationship inside both disposable sandboxes. |

Retain and inspect: Relation type and redacted target URL.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Remove only the duplicate sandbox hyperlink and retry the exact target.

## CP4 — Add reciprocal traceability to the issue

GitHub issue and Boards task form a navigable traceability pair.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.2` | practiced | Update the run-owned issue after feedback and read the revised acceptance text. |

Retain and inspect: Issue body with reciprocal task link.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Edit only the run-owned issue and retain its acceptance criteria.

## CP5 — Query the work queue and produce a traceability index

The project query includes the owned task and an index retains both tracking IDs.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.1.4` | explained | The work-item index explains requirement-to-quality traceability; exact source/test/artifact/environment linkage is implemented in the capstones. |

Retain and inspect: Queue count and traceability.json with private URLs redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Correct WIQL quoting and ensure the same disposable project is used for creation and query.

## Repair and recovery

Expected failure marker: `AZ400-L01-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$n=Get-Content (Join-Path $WorkRoot 'issue-number.txt');$i=gh issue view $n --repo $GhRepo --json body|ConvertFrom-Json
$url=Get-Content (Join-Path $WorkRoot 'board-url.txt')
if(-not $i.body.Contains($url) -or $i.body -notmatch 'Acceptance:'){throw 'AZ400-L01-FAULT'}
```

```powershell
$n=Get-Content (Join-Path $WorkRoot 'issue-number.txt')
 $url=Get-Content (Join-Path $WorkRoot 'board-url.txt')
 gh issue edit $n --repo $GhRepo --body "Acceptance: health returns HTTP 200; tests pass. Azure Boards: $url. Run:$RunId"
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
