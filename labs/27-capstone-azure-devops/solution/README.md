# Lab 27 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Establish Azure DevOps source and accepted work

Source and acceptance criteria exist only in the disposable project.

Verify both the positive and negative probes in the lab README. Complete Git authentication bootstrap without writing a PAT into a remote URL.

## CP2 — Run local build, tests, and measured coverage

The shared sample passes a 65% minimum measured coverage gate.

Verify both the positive and negative probes in the lab README. Repair behavior rather than suppressing tests or disabling collectors.

## CP3 — Publish a CI pipeline and dormant deployment contract

The reviewed revision contains CI and an unregistered cloud deployment template.

Verify both the positive and negative probes in the lab README. Keep deployment registration separate until service connection, environment checks, SQL/network prerequisites, and costs are approved.

## CP4 — Register and queue the exact project CI definition

One sandbox pipeline is queued against the reviewed main revision.

Verify both the positive and negative probes in the lab README. Obtain hosted parallelism or approved isolated agents; waiting for capacity is an external gate.

## CP5 — Verify successful delivery provenance and recovery evidence

Successful build evidence ties accepted work to the exact commit; cloud deployment remains a separate gate.

Verify both the positive and negative probes in the lab README. Retrieve final test/artifact evidence before deleting the disposable project; do not report a queued run as delivered.

## Repair and recovery

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.result='succeeded';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
