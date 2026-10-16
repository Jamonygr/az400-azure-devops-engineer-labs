# Lab 12 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inventory the local runner capability baseline

The selected host architecture and required tool versions are explicit.

Verify both the positive and negative probes in the lab README. Select a hosted image or ephemeral self-hosted image with the required SDK; pin important tools.

## CP2 — Read GitHub runner inventory without registering a machine

The repository runner inventory is known; zero self-hosted runners is valid.

Verify both the positive and negative probes in the lab README. Repository admin/read access is needed; hosted runners do not appear in this endpoint.

## CP3 — Read Azure DevOps agent pools and hosted availability

Organization pool inventory distinguishes hosted and self-hosted execution.

Verify both the positive and negative probes in the lab README. Pool visibility does not prove available parallel jobs; verify the grant or use an approved disposable agent.

## CP4 — Test outbound control-plane reachability

The candidate host can reach both HTTPS control planes without disabling TLS checks.

Verify both the positive and negative probes in the lab README. Ask the sandbox network owner to permit required endpoints; do not disable certificate validation.

## CP5 — Choose an isolation and cost model

Public PRs and private-network workloads use separate trust boundaries.

Verify both the positive and negative probes in the lab README. Keep self-hosted registration tokens short-lived and outside artifacts; destroy worker instances after the job.

## Repair and recovery

```powershell
$d=Get-Content (Join-Path $WorkRoot 'runner-design.json') -Raw|ConvertFrom-Json;$d.untrustedPR='hosted ephemeral';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'runner-design.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
