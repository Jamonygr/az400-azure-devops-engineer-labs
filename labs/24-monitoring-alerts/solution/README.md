# Lab 24 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The alert drift assertion reads the actual provider rule. A configured rule without incoming data remains configuration evidence and must not be presented as a delivered notification.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Create the owned Log Analytics workspace

A30-day workspace exists in the owned group; ingestion pricing still applies.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Workspace ID locally, retention, pricing tier, and ingestion budget.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Review current workspace billing and approved region; avoid ingesting production/private payloads.

## CP2 — Connect a workspace-based Application Insights component

Application Insights is explicitly connected to the owned workspace.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D5.1.1` | integrated | Create and query the run-owned Azure Monitor/Application Insights resources. |
| `D5.1.2` | practiced | Inspect the actual telemetry component/workspace linkage. |

Retain and inspect: Component/workspace linkage; redact instrumentation/connection values.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Install the pinned application-insights extension during bootstrap; do not auto-install inside read-only preflight.

## CP3 — Inspect supported metric names before selecting alerts

The resource provider defines actual available metric names and units.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Metric name/unit/aggregation; no inference of live application traffic.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use the metric definition unit; avoid applying a millisecond threshold to a count or percent.

## CP4 — Create a silent sandbox response-time alert

A5-minute latency rule exists without action groups or messages to external recipients.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Alert condition/window/severity and empty action list.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: No telemetry means no proof of firing behavior; use an approved synthetic workload for the optional integration test.

## CP5 — Map pipeline and platform telemetry to owned response actions

Application, infrastructure, and delivery signals have distinct response paths.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D1.2.7` | explained | Interpret the operations dashboard and service objective; synthetic workload verification is distinct from live traffic. |
| `D5.1.3` | explained | Compare GitHub usage/runner insights with service telemetry; no organization insight dashboard is configured. |
| `D5.1.4` | explained | Design a delivery-event alert separately from the actual latency metric alert configured in CP4. |

Retain and inspect: Signal-to-owner/action matrix and unverified integration gates.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Configure VM/Container/Storage/Network Insights only for approved owned resources; avoid collecting credentials or personal request bodies.

## Repair and recovery

Expected failure marker: `AZ400-L24-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$a=az monitor metrics alert show --subscription $SubscriptionId --resource-group $ResourceGroup --name "slow-requests-$RunId" -o json|ConvertFrom-Json
if(-not $a.enabled){throw 'AZ400-L24-FAULT'}
```

```powershell
az monitor metrics alert update --subscription $SubscriptionId --resource-group $ResourceGroup --name "slow-requests-$RunId" --enabled true -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
