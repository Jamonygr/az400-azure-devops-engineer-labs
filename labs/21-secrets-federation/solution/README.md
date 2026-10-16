# Lab 21 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The synthetic leakage check must reject its marker without emitting credential material. Confirm federation scope before troubleshooting a token audience or subject failure.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named fault/repair executed in CourseSecurityTelemetry.Tests.ps1 with fail-closed provider doubles. Local calculations, permission/reference/secure-file fixtures and .NET trace behavior are real; live provider calls, federation and telemetry export have not run.

## CP1 — Create the run-owned federation identity

A managed identity provides a federation target without creating a client secret.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Managed identity ID and explicitly nonsecret client/tenant metadata.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Use an RG-contained managed identity and least-privilege role, never a copied application password.

## CP2 — Bind the exact GitHub environment subject

Federation accepts one repository/environment subject and the Azure token-exchange audience.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.2` | explained | Read the exact GitHub environment-subject federation contract; exchanging a live OIDC token occurs in the capstone integration. |
| `D4.2.2` | practiced | Create and query the managed-identity federated credential with exact issuer, audience and repository subject. |

Retain and inspect: Issuer, subject, audience; no assertion JWT is retained.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Environment-bound and branch-bound subjects differ; copy the exact emitted subject and keep audience exact.

## CP3 — Parse and reject unsafe Key Vault references

Two HTTPS references are accepted; HTTP, an attacker-suffix hostname, and a plaintext value are rejected. Only one accepted reference pins a version.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.1` | explained | Parse versioned and versionless Key Vault reference fixtures and reject insecure or misleading syntax; live secret resolution is explained separately. |

Retain and inspect: reference-results.json records counts without secret values.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Read the full vault hostname and SecretUri path. Versionless references follow rotation after the service refresh interval; a pinned version requires an explicit update.

## CP4 — Consume and remove a synthetic secure file

The harmless input is hash-checked and consumed twice. A normal run and an injected consumer failure both remove the temporary file in finally.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.2.3` | explained | Exercise synthetic secure-file consumption and finally cleanup on both success and failure; provider Library authorization is explained, not emulated. |

Retain and inspect: secure-file-results.json plus an empty residual file search; no real key is used.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Cleanup belongs in finally, including consumer failure. Azure DevOps Library authorization, approvals, and agent filesystem permissions remain separate prerequisite checks.

## CP5 — Check evidence for a synthetic leakage marker

The evidence contains a redaction marker and no synthetic secret.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D4.1.3` | explained | Compare the DevOps service-connection federation issuer/subject with GitHub OIDC; connection provisioning is a bootstrap prerequisite. |
| `D4.2.4` | practiced | Scan nonsecret fixture material and reject the deterministic synthetic leak marker. |

Retain and inspect: Pass/fail leakage check only; never include the real credential being checked.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Masking can miss transformed values; minimize secret exposure and avoid debug tracing around token exchange.

## Repair and recovery

Expected failure marker: `AZ400-L21-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
if(Select-String -Path (Join-Path $WorkRoot 'redacted-log.txt') -SimpleMatch 'AZ400_SYNTHETIC_SECRET_DO_NOT_USE'){throw 'AZ400-L21-FAULT'}
```

```powershell
Set-Content (Join-Path $WorkRoot 'redacted-log.txt') 'status=complete; value=<redacted>'
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
