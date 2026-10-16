# Lab 26 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Establish GitHub source and accepted work traceability

The disposable GitHub repository has source and a measurable work item.

Verify both the positive and negative probes in the lab README. Use a new sandbox; integrate work tracking before delivery evidence is produced.

## CP2 — Pass the local quality and coverage gates

The sample passes tests and the shared 65% coverage gate.

Verify both the positive and negative probes in the lab README. Repair failures without suppressing tests or weakening coverage; check the code under test is in the measured scope.

## CP3 — Publish CI while preserving the dormant deployment gate

A reviewed commit enables CI; cloud deployment remains outside the active workflow directory.

Verify both the positive and negative probes in the lab README. Activate a separately reviewed deployment only after federation, SQL/network prerequisites, environment approval, and costs are authorized.

## CP4 — Verify hosted CI provenance and successful completion

A successful hosted run proves the exact published source revision.

Verify both the positive and negative probes in the lab README. Check runner availability, permissions, and task failure; canceled/skipped runs are not completion.

## CP5 — Produce the operational release and recovery dossier

The dossier connects work, source, CI, deployment review, recovery, and cleanup without inventing a deployment.

Verify both the positive and negative probes in the lab README. State verified and pending integration behavior separately; preserve evidence until sandbox deletion is proven.

## Repair and recovery

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.commit=Get-Content (Join-Path $WorkRoot 'capstone-sha.txt');$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
