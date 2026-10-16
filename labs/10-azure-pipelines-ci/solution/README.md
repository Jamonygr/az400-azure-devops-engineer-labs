# Lab 10 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Resolve the disposable Azure Repos repository

The project default repository is resolved by exact ID and cloned through approved credentials.

Verify both the positive and negative probes in the lab README. Configure Git Credential Manager through bootstrap instead of putting a PAT in a command or URL.

## CP2 — Stage the sample and YAML definition

The sample and Azure Pipelines YAML exist in the sandbox clone.

Verify both the positive and negative probes in the lab README. Keep service connections out of a build-only definition.

## CP3 — Commit and push the pipeline definition

Main contains one reviewed CI source revision.

Verify both the positive and negative probes in the lab README. Resolve credential/bootstrap failures before retrying the push; never switch projects implicitly.

## CP4 — Register the YAML pipeline without an automatic first run

A pipeline definition references the exact sandbox repository and YAML path.

Verify both the positive and negative probes in the lab README. Hosted parallelism may require an Azure DevOps grant or an approved self-hosted agent; record this external gate.

## CP5 — Queue and inspect the CI build

One build is queued; validation remains partial until the build actually succeeds.

Verify both the positive and negative probes in the lab README. Inspect agent availability and task logs; queued, canceled, and partially succeeded results do not satisfy completion.

## Repair and recovery

```powershell
$p=Join-Path $WorkRoot 'azure-ci';git -C $p restore azure-pipelines.yml
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
