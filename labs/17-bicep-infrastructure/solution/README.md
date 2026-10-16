# Lab 17 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Compile the independent core infrastructure

The core template compiles to exactly a storage account and an RG-contained identity.

Verify both the positive and negative probes in the lab README. Use core.bicep for the independent lane; main.bicep is the advanced SQL-integrated workload.

## CP2 — Validate and preview the exact owned-group changes

ARM validates the core inputs and what-if lists only changes scoped to the run-owned group.

Verify both the positive and negative probes in the lab README. Stop on unexpected deletes, SKU changes, or scope. A successful what-if is a preview, not deployment authorization.

## CP3 — Deploy the reviewed storage and identity core

The declared two-resource core reaches Succeeded inside the owned group.

Verify both the positive and negative probes in the lab README. Inspect deployment operations before retry; retain owned group so cleanup can recover partial resource creation.

## CP4 — Assert the deployed security properties from service reads

Storage enforces HTTPS/TLS, disables shared keys/public networking, and matches the declared identity output.

Verify both the positive and negative probes in the lab README. Control-plane assertions need no storage data access; public-network denial is intentional.

## CP5 — Check declared identity and capture post-deployment drift preview

Independent identity reads agree with outputs, and post-deployment what-if is available for drift review.

Verify both the positive and negative probes in the lab README. Investigate noisy provider defaults separately from real drift; never treat all Modify output as harmless.

## Repair and recovery

```powershell
az deployment group create --subscription $SubscriptionId --resource-group $ResourceGroup --name "repair-$RunId" --template-file (Join-Path $LabRoot 'artifacts/core.bicep') --parameters "labRunId=$RunId" -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
