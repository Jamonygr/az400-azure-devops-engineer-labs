# Learner progress

Progress is private to this browser and this site's origin. It is not sent to
GitHub, Azure, the course author, or a server. Clearing browser storage removes it.
Use JSON export before changing browsers; import accepts only the course's
progress schema and rejects additional identity/token fields.

A lab can be marked complete only after validation, break/fix, and cleanup are
recorded as passed. Assessment scores are optional, 0–100, and unavailable for hands-on-only
Labs 00, 26, and 27. The browser controls are self-reported learning records;
use the CLI workflow below when recording actual local result files.

```powershell
./tools/Update-LearnerProgress.ps1 -LabId 01 `
  -ValidationPath .state/01/first-run/validation.json `
  -CleanupPath .state/01/first-run/cleanup.json -AssessmentScore 86
```

Import the generated `.state/progress.json` using the dashboard. It contains
completion fields and timestamps, without remote identities or credentials.

## Import and migration

Version 2 imports preserve older scores and completion history. A previous
completion becomes **needs-review** until the new break/fix requirement is
recorded. A score from the earlier question bank is labelled for a retake.
Browser buttons are self-reported; CLI imports identify evidence from local
result files. Neither is a claim that the author ran your cloud environment.

Imports show a preview and merge meaningful lab entries by default. Untouched
not-started entries cannot erase another lab's achievements. When both entries
contain activity, the newer timestamp wins; ties retain the current entry.
Replacement is an explicit alternative and first downloads a backup. Check the
preview before applying it. Clearing an optional score restores its unrecorded
state; zero remains a real score.

## Quiz attempts

Quiz answers are kept separately from practical progress. Only a completed
50-question attempt updates its lab score. Difficulty-filtered and missed-question
practice leave that score unchanged. A changed bank revision resets the affected
answer history; it never grants practical completion. Quiz attempts are currently
browser-local and are not included in practical-progress exports.
