# Lab 21 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Create the run-owned federation identity

A managed identity provides a federation target without creating a client secret.

Verify both the positive and negative probes in the lab README. Use an RG-contained managed identity and least-privilege role, never a copied application password.

## CP2 — Bind the exact GitHub environment subject

Federation accepts one repository/environment subject and the Azure token-exchange audience.

Verify both the positive and negative probes in the lab README. Environment-bound and branch-bound subjects differ; copy the exact emitted subject and keep audience exact.

## CP3 — Review Key Vault reference handling

Vault references and runtime retrieval are distinct from storing secret values in Git.

Verify both the positive and negative probes in the lab README. Key Vault uses separate data-plane RBAC; RG Contributor alone cannot read secret values.

## CP4 — Model secure-file access and deletion after use

A synthetic file contract narrows pipeline authorization and cleanup lifetime.

Verify both the positive and negative probes in the lab README. Store real certificates only in approved protected secure-file/key facilities; never echo their bytes.

## CP5 — Check evidence for a synthetic leakage marker

The evidence contains a redaction marker and no synthetic secret.

Verify both the positive and negative probes in the lab README. Masking can miss transformed values; minimize secret exposure and avoid debug tracing around token exchange.

## Repair and recovery

```powershell
Set-Content (Join-Path $WorkRoot 'redacted-log.txt') 'status=complete; value=<redacted>'
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
