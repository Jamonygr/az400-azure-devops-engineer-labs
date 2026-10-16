# Lab 01 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create a GitHub work item with acceptance criteria

A sandbox issue describes a measurable delivery outcome.

Verify both the positive and negative probes in the lab README. Confirm issues are enabled in the fresh sandbox repository and use its exact owner/repo.

## CP2 — Create the matching Azure Boards task

A task exists in the disposable Azure DevOps project.

Verify both the positive and negative probes in the lab README. Use a Task supported by the sandbox process and verify project permissions.

## CP3 — Link Boards to the GitHub issue

The task exposes a hyperlink to the corresponding issue.

Verify both the positive and negative probes in the lab README. Remove only the duplicate sandbox hyperlink and retry the exact target.

## CP4 — Add reciprocal traceability to the issue

GitHub issue and Boards task form a navigable traceability pair.

Verify both the positive and negative probes in the lab README. Edit only the run-owned issue and retain its acceptance criteria.

## CP5 — Query the work queue and produce a traceability index

The project query includes the owned task and an index retains both tracking IDs.

Verify both the positive and negative probes in the lab README. Correct WIQL quoting and ensure the same disposable project is used for creation and query.

## Repair and recovery

```powershell
$n=Get-Content (Join-Path $WorkRoot 'issue-number.txt')
 $url=Get-Content (Join-Path $WorkRoot 'board-url.txt')
 gh issue edit $n --repo $GhRepo --body "Acceptance: health returns HTTP 200; tests pass. Azure Boards: $url. Run:$RunId"
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
