# Lab 23 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inspect repository security capability metadata

Repository visibility and exposed security feature capabilities are recorded.

Verify both the positive and negative probes in the lab README. Capabilities depend on repository ownership/visibility and account licensing; unavailable access is a gate.

## CP2 — Prepare an explicit Advanced Security entitlement review

Paid activation remains blocked until an authorized billing owner approves it.

Verify both the positive and negative probes in the lab README. Check current product names, pricing, and eligible repositories before enabling billable scanning.

## CP3 — Inspect Microsoft Defender pricing state without changing plans

Current subscription plan state is read; no Defender plan is enabled.

Verify both the positive and negative probes in the lab README. Security Reader permission may be needed. Never call pricing create/update to bypass a missing entitlement.

## CP4 — Map GitHub and Azure DevOps findings into Defender governance

Connector ownership and selected repository/project scope are explicit; no organization connector is created.

Verify both the positive and negative probes in the lab README. Use separate one-time privileged bootstrap for connectors; repository ownership does not authorize organization-wide collection.

## CP5 — Triage a synthetic finding with an evidence-based decision

A reachable high finding blocks release and has a named remediation owner.

Verify both the positive and negative probes in the lab README. Record concrete false-positive evidence before dismissal; severity changes require traceable review.

## Repair and recovery

```powershell
$f=Get-Content (Join-Path $WorkRoot 'triage.json') -Raw|ConvertFrom-Json;$f.dismissed=$false;$f|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'triage.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
