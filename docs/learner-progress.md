# Learner progress

Progress is private to this browser and this site's origin. It is not sent to
GitHub, Azure, the course author, or a server. Clearing browser storage removes it.
Use JSON export before changing browsers; import accepts only the course's
progress schema and rejects additional identity/token fields.

A lab can be marked complete only after validation and cleanup are recorded as
passed. Assessment scores are optional, 0–100, and unavailable for hands-on-only
Labs 00, 26, and 27. The browser controls are self-reported learning records;
use the CLI workflow below when recording actual local result files.

```powershell
./tools/Update-LearnerProgress.ps1 -LabId 01 `
  -ValidationPath .state/01/first-run/validation.json `
  -CleanupPath .state/01/first-run/cleanup.json -AssessmentScore 86
```

Import the generated `.state/progress.json` using the dashboard. It contains
completion fields and timestamps, without remote identities or credentials.
