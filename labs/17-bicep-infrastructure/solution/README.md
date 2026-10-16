# Lab 17 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Compare every output ID with the expected resource-group prefix. The named fault changes a real run tag and must be detected by a fresh service read.

Author verification: **not-run**. All checkpoint/fault scripts parse; the named fault lifecycle is independently tested with explicit provider doubles. Full normal provider execution and live cloud delivery have not run.

## CP1 — Compile the independent core infrastructure

The core template compiles to exactly a storage account and an RG-contained identity.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Compiled template SHA and resource-type allowlist.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use core.bicep for the independent lane; main.bicep is the advanced SQL-integrated workload.

## CP2 — Validate and preview the exact owned-group changes

ARM validates the core inputs and what-if lists only changes scoped to the run-owned group.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: What-if resource IDs/change types and validation outcome.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Stop on unexpected deletes, SKU changes, or scope. A successful what-if is a preview, not deployment authorization.

## CP3 — Deploy the reviewed storage and identity core

The declared two-resource core reaches Succeeded inside the owned group.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.3` | integrated | Apply the reviewed Bicep deployment and assert exact owned resource IDs and outputs. |

Retain and inspect: Deployment ID, result, template digest, and explicit parameter/run identity.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Inspect deployment operations before retry; retain owned group so cleanup can recover partial resource creation.

## CP4 — Assert the deployed security properties from service reads

Storage enforces HTTPS/TLS, disables shared keys/public networking, and matches the declared identity output.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Queried storage settings and identity principal, with IDs redacted for sharing.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Control-plane assertions need no storage data access; public-network denial is intentional.

## CP5 — Check declared identity and capture post-deployment drift preview

Independent identity reads agree with outputs, and post-deployment what-if is available for drift review.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.5.4` | practiced | Read the storage account run tag and detect actual drift against the desired run ownership. |

Retain and inspect: Before/after what-if, output assertions, and explicit advanced-lane status.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Investigate noisy provider defaults separately from real drift; never treat all Modify output as harmless.

## Repair and recovery

Expected failure marker: `AZ400-L17-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'core-deployment.json') -Raw|ConvertFrom-Json;$s=az storage account show --subscription $SubscriptionId --ids $d.properties.outputs.storageAccountId.value -o json|ConvertFrom-Json
if($s.tags.'az400-run' -ne $RunId){throw 'AZ400-L17-FAULT'}
```

```powershell
az deployment group create --subscription $SubscriptionId --resource-group $ResourceGroup --name "repair-$RunId" --template-file (Join-Path $LabRoot 'artifacts/core.bicep') --parameters "labRunId=$RunId" -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
