# Lab 12 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

Compare healthy and failed-job evidence: both must remove their workspace and avoid forwarding credential-like environment variables. Inventory reads cannot prove job capacity.

Author verification: **offline-tested**. All five checkpoint commands, final validators and named policy fault/repair passed. Actual tool inventory and healthy/failed ephemeral worker fixtures executed; provider inventory and HTTPS responses use explicit doubles. No runner/agent registration or hostile-code isolation is claimed.

## CP1 — Inventory the local runner capability baseline

The selected host architecture and required tool versions are explicit.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: OS/architecture and tool versions, excluding machine/user identity.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Select a hosted image or ephemeral self-hosted image with the required SDK; pin important tools.

## CP2 — Read GitHub runner inventory without registering a machine

The repository runner inventory is known; zero self-hosted runners is valid.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Runner count/status with names and IDs redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Repository admin/read access is needed; hosted runners do not appear in this endpoint.

## CP3 — Read Azure DevOps agent pools and hosted availability

Organization pool inventory distinguishes hosted and self-hosted execution.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Pool types and the separate hosted-parallelism gate.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Pool visibility does not prove available parallel jobs; verify the grant or use an approved disposable agent.

## CP4 — Test outbound control-plane reachability

Both exact HTTPS control-plane endpoints respond within the bounded timeout; this does not prove registration, private SQL routing or available parallelism.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Host/port success only; no bearer tokens or proxy credentials.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Ask the sandbox network owner to permit required endpoints; do not disable certificate validation.

## CP5 — Execute and clean up an ephemeral worker fixture

A real temporary job process writes an artifact; success and failure both remove the workspace and omit credential-like environment values.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.2` | practiced | Execute a local one-job worker fixture and observe artifact hash, credential filtering, failed-job cleanup, and workspace removal. |
| `D3.3.7` | explained | Explain private-network/hybrid runner routing from the runner design; provider registration and network isolation are not exercised by this fixture. |

Retain and inspect: Process exit, artifact digest, workspace removal and credential filtering; no provider registration or OS isolation is claimed.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: This process fixture teaches lifetime and failure cleanup. Real private workers additionally need approved registration, hardened images, network boundaries and job isolation.

## Repair and recovery

Expected failure marker: `AZ400-L12-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$r=Get-Content (Join-Path $WorkRoot 'runner-design.json') -Raw|ConvertFrom-Json
if($r.untrustedPR -ne 'hosted ephemeral' -or $r.credentialLifetime -ne 'job'){throw 'AZ400-L12-FAULT'}
```

```powershell
$d=Get-Content (Join-Path $WorkRoot 'runner-design.json') -Raw|ConvertFrom-Json;$d.untrustedPR='hosted ephemeral';$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'runner-design.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
