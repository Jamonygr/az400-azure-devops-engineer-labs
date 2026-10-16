# Lab 15 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create a slot-capable App Service sandbox

A billable S1 Linux plan supports a .NET10 app and deployment slots.

Verify both the positive and negative probes in the lab README. Review current pricing/quotas before -Execute; never silently replace S1 with a larger SKU.

## CP2 — Publish and package the application once

An immutable ZIP contains the app at its root.

Verify both the positive and negative probes in the lab README. Zip the published file contents, not their enclosing directory.

## CP3 — Deploy identical bytes to production and staging

Both slots receive the same reviewed artifact before progressive routing.

Verify both the positive and negative probes in the lab README. Wait for deployment completion and review startup logs before routing traffic.

## CP4 — Verify readiness before changing exposure

Production and staging return HTTP200 for readiness.

Verify both the positive and negative probes in the lab README. Retry the read-only readiness request after warmup; a running process alone is not readiness.

## CP5 — Route ten percent and preview controlled promotion

The canary receives10%; promotion script previews a readiness-checked slot swap.

Verify both the positive and negative probes in the lab README. Clear traffic routing to return to production; promote only after health/error/latency review.

## Repair and recovery

```powershell
$app=Get-Content (Join-Path $WorkRoot 'app-name.txt');az webapp traffic-routing set --subscription $SubscriptionId --resource-group $ResourceGroup --name $app --distribution staging=10 -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
