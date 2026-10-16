# Lab 10 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## Interpretation and reasoning

The invalid solution path should fail an actual referenced-path assertion. A queued, in-progress or partially successful build cannot satisfy the final provenance gate.

Author verification: **offline-tested**. The complete five-checkpoint sequence, final-state revalidation, fault detection and repair run with real local Git/.NET/package/file operations and fail-closed synthetic GitHub/Azure DevOps responses. Provider operations remain unverified live.

## CP1 — Resolve the disposable Azure Repos repository

The project default repository is resolved by exact ID and cloned through approved credentials.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.3` | explained | Use Azure Repos as the concrete source; connecting GitHub/Bitbucket service resources remains a separately authorized bootstrap. |

Retain and inspect: Repository ID/project and remote URL redacted.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Configure Git Credential Manager through bootstrap instead of putting a PAT in a command or URL.

## CP2 — Stage the sample and YAML definition

The sample and Azure Pipelines YAML exist in the sandbox clone.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.1` | practiced | Stage the Azure Pipelines CI definition. |
| `D3.3.5` | practiced | Parse build/test/coverage/artifact tasks in the checked-in pipeline YAML. |

Retain and inspect: Pipeline YAML and sample source allowlist.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Keep service connections out of a build-only definition.

## CP3 — Commit and push the pipeline definition

Main contains one reviewed CI source revision.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.3.4` | practiced | Commit and push the owned main-branch definition and inspect its trigger. |

Retain and inspect: Commit SHA and changed files.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Resolve credential/bootstrap failures before retrying the push; never switch projects implicitly.

## CP4 — Register the YAML pipeline without an automatic first run

A pipeline definition references the exact sandbox repository and YAML path.

Foundation/supporting task; no additional exam-objective coverage is claimed.

Retain and inspect: Pipeline ID and source path.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Hosted parallelism may require an Azure DevOps grant or an approved self-hosted agent; record this external gate.

## CP5 — Queue and inspect the CI build

One build is queued; validation remains partial until the build actually succeeds.

| Objective | Evidence level | Observation and limits |
|---|---|---|
| `D3.1.4` | integrated | Correlate the Azure Pipelines build and artifact with the exact source SHA. |
| `D3.2.3` | integrated | Read the exact Azure Pipelines build result for the source commit. |

Retain and inspect: Build ID, final result, source SHA, and test summary.

Interpret both the passing behavior and denied path in the README. If they disagree, command success does not resolve the discrepancy. Recovery: Inspect agent availability and task logs; queued, canceled, and partially succeeded results do not satisfy completion.

## Repair and recovery

Expected failure marker: `AZ400-L10-FAULT`. Prove the assertion rejects the trigger and accepts the repair; the journaled BreakFix operation records these transitions.

```powershell
$p=Join-Path $WorkRoot 'azure-ci';$t=Get-Content (Join-Path $p 'azure-pipelines.yml') -Raw
$paths=@([regex]::Matches($t,'samples/[A-Za-z0-9._/-]+\.ps1')|ForEach-Object Value)
if($paths.Count -lt 1 -or @($paths|Where-Object {-not (Test-Path (Join-Path $p $_))}).Count){throw 'AZ400-L10-FAULT'}
```

```powershell
$p=Join-Path $WorkRoot 'azure-ci';git -C $p restore azure-pipelines.yml
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
