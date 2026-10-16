# Lab 24 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create the owned Log Analytics workspace

A30-day workspace exists in the owned group; ingestion pricing still applies.

Verify both the positive and negative probes in the lab README. Review current workspace billing and approved region; avoid ingesting production/private payloads.

## CP2 — Connect a workspace-based Application Insights component

Application Insights is explicitly connected to the owned workspace.

Verify both the positive and negative probes in the lab README. Install the pinned application-insights extension during bootstrap; do not auto-install inside read-only preflight.

## CP3 — Inspect supported metric names before selecting alerts

The resource provider defines actual available metric names and units.

Verify both the positive and negative probes in the lab README. Use the metric definition unit; avoid applying a millisecond threshold to a count or percent.

## CP4 — Create a silent sandbox response-time alert

A5-minute latency rule exists without action groups or messages to external recipients.

Verify both the positive and negative probes in the lab README. No telemetry means no proof of firing behavior; use an approved synthetic workload for the optional integration test.

## CP5 — Map pipeline and platform telemetry to owned response actions

Application, infrastructure, and delivery signals have distinct response paths.

Verify both the positive and negative probes in the lab README. Configure VM/Container/Storage/Network Insights only for approved owned resources; avoid collecting credentials or personal request bodies.

## Repair and recovery

```powershell
az monitor metrics alert update --subscription $SubscriptionId --resource-group $ResourceGroup --name "slow-requests-$RunId" --enabled true -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
