# Lab 02 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Normalize delivery observations

Three explicitly fictional observations separate flow, tests, and findings.

Verify both the positive and negative probes in the lab README. Use one time unit and keep observation windows consistent.

## CP2 — Calculate flow and recovery measures

Mean lead time150min, cycle70min, failure rate1/3, recovery30min.

Verify both the positive and negative probes in the lab README. Count failed deployments, not failed unit tests, in the change-failure numerator.

## CP3 — Report testing and security independently

The quality report records165tests,1failed test,2critical findings.

Verify both the positive and negative probes in the lab README. Avoid interpreting scan count as vulnerability count; deduplicate by stable alert identity.

## CP4 — Inspect workflow durations from the sandbox

A real run inventory is collected; a new sandbox may correctly contain zero runs.

Verify both the positive and negative probes in the lab README. A zero-run sandbox is missing telemetry, not a successful pipeline.

## CP5 — Publish a decision-oriented metric review

A review ties a metric to one concrete improvement and its sample-size limit.

Verify both the positive and negative probes in the lab README. Report the sample size and distinguish delivery metrics from service SLO measurements.

## Repair and recovery

```powershell
$e=Get-Content (Join-Path $WorkRoot 'observations.json') -Raw|ConvertFrom-Json;$e[0].cycleMinutes=70;$e|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'observations.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
