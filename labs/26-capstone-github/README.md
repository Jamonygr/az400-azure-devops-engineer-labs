# Lab 26: Capstone: deliver securely through GitHub

[Previous: Lab 25](../25-kql-distributed-tracing/README.md) · [Catalog](../../docs/lab-catalog.md) · [Next: Lab 27](../27-capstone-azure-devops/README.md)

## Scenario, role, and outcome

Deliver the sample through a fresh GitHub repository with accepted work, local gates, hosted provenance, reviewed deployment controls, and a recovery dossier.

Learner role: **GitHub delivery owner**. Outcome: Capstone: deliver securely through GitHub.

| Item | Value |
|---|---|
| Time | 180 minutes |
| Domain | capstone |
| Platforms | local, github |
| Cost | none — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification | Authored and checked offline; no live Azure deployment is claimed |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab 26 service architecture: GitHub delivery evidence and the protected live extension](diagrams/architecture.svg)

The core connects accepted GitHub work to the exact sandbox source revision, passing hosted CI, and retained quality/artifact provenance. The protected environment and workload federation form the boundary for the optional live extension. App/SQL/telemetry deployment, progressive rollout, and recovery need their explicit prerequisites and evidence; the core dossier reports cloudDeployed=false.

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Official objective topic IDs: `D1.1.1`, `D1.1.2`, `D1.1.3`, `D1.1.4`, `D1.2.1`, `D1.2.2`, `D1.2.3`, `D1.2.4`, `D1.2.5`, `D1.2.6`, `D1.2.7`, `D1.3.1`, `D1.3.2`, `D1.3.3`, `D1.3.4`, `D1.3.5`, `D1.3.6`, `D2.1.1`, `D2.1.2`, `D2.1.3`, `D2.2.1`, `D2.2.2`, `D2.2.3`, `D2.2.4`, `D2.2.5`, `D2.2.6`, `D3.1.1`, `D3.1.2`, `D3.1.3`, `D3.1.4`, `D3.2.1`, `D3.2.2`, `D3.2.3`, `D3.2.4`, `D3.3.1`, `D3.3.2`, `D3.3.3`, `D3.3.4`, `D3.3.5`, `D3.3.6`, `D3.3.7`, `D3.3.8`, `D3.3.9`, `D3.4.1`, `D3.4.2`, `D3.4.3`, `D3.4.4`, `D3.4.5`, `D3.4.6`, `D3.4.7`, `D3.4.8`, `D3.5.1`, `D3.5.2`, `D3.5.3`, `D3.5.4`, `D3.5.5`, `D3.6.1`, `D3.6.2`, `D3.6.3`, `D3.6.4`, `D3.6.5`, `D4.1.1`, `D4.1.2`, `D4.1.3`, `D4.1.4`, `D4.1.5`, `D4.1.6`, `D4.1.7`, `D4.2.1`, `D4.2.2`, `D4.2.3`, `D4.2.4`, `D4.3.1`, `D4.3.2`, `D4.3.3`, `D4.3.4`, `D4.3.5`, `D4.3.6`, `D5.1.1`, `D5.1.2`, `D5.1.3`, `D5.1.4`, `D5.2.1`, `D5.2.2`, `D5.2.3`, `D5.2.4`

| Checkpoint | Measurable behavior |
|---|---|
| [CP1](#task-1) | Establish GitHub source and accepted work traceability |
| [CP2](#task-2) | Pass the local quality and coverage gates |
| [CP3](#task-3) | Publish CI while preserving the dormant deployment gate |
| [CP4](#task-4) | Verify hosted CI provenance and successful completion |
| [CP5](#task-5) | Produce the operational release and recovery dossier |

The [objective map](../../docs/objective-map.md) traces every official topic to
labs. The [Microsoft study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)
controls authoritative objective wording and domain weighting.

## Inputs, permissions, and read-only preflight

Use PowerShell 7.4+, .NET 10, Git, GitHub CLI, Azure CLI with the Azure DevOps
extension, and the pinned repository validation dependencies. Read the
[permissions matrix](../../docs/permissions-matrix.md) and [evidence policy](../../docs/evidence-handling.md).
Supply only the accounts needed by this lab. Never put a token, connection
string, or private key into a command log, committed YAML, or progress export.

The examples run from the repository root. Choose a fresh lowercase run ID;
`demo01` is an example, not a reusable shared sandbox. Set bootstrap environment
variables for the approved GitHub owner, DevOps organization, subscription, and
region. Do not run both guided and automated lanes with the same run ID.

```powershell
$lab = './labs/26-capstone-github/scripts/cli'
& "$lab/Preflight.ps1" -RunId 'demo01'
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly
# After reviewing context, permissions, cost, and cleanup:
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly -Execute -AcknowledgeCost -AcknowledgeTenantChange
. "$lab/Context.ps1" -RunId 'demo01'
```

Preflight performs reads only. Provisioning creates fresh run-owned top-level
sandboxes and records their exact IDs. Context establishes `$RepoRoot`,
`$LabRoot`, `$WorkRoot`, `$RunId`, `$GhRepo`, `$AdoOrganization`, `$AdoProject`,
`$SubscriptionId`, `$Location`, and `$ResourceGroup`. A missing prerequisite or
ownership mismatch must stop execution. Local build commands may restore
packages and write ignored build output.

## Concept primer and design decisions

End-to-end evidence links accepted work, exact source, immutable artifacts, execution identity, environment authorization, telemetry, and cleanup. The core proves CI; optional live release has explicit integration gates.

## Task 1 — Establish GitHub source and accepted work traceability

<a id="task-1"></a>

Checkpoint: `CP1`

```powershell
$p=Join-Path $WorkRoot 'capstone'
if(Test-Path (Join-Path $p '.git')){
 $origin=git -C $p remote get-url origin
 $expected='^(https://github\.com/|git@github\.com:)'+[regex]::Escape($GhRepo)+'(?:\.git)?$'
 if($origin -notmatch $expected){throw 'Existing working copy points to a different GitHub repository; refusing to reuse it.'}
}else{gh repo clone $GhRepo $p}
git -C $p config user.name 'AZ400 Learner';git -C $p config user.email 'learner@example.invalid'
 $source=Join-Path $RepoRoot 'samples'
 Get-ChildItem $source -File -Recurse|Where-Object FullName -NotMatch '[\/](bin|obj)[\/]'|ForEach-Object { $rel=[IO.Path]::GetRelativePath($RepoRoot,$_.FullName);$dest=Join-Path $p $rel;New-Item -ItemType Directory -Force (Split-Path $dest)|Out-Null;Copy-Item $_.FullName $dest }
 foreach ($name in @('global.json','Directory.Build.props')) { if (Test-Path (Join-Path $RepoRoot $name)) { Copy-Item (Join-Path $RepoRoot $name) $p } }
 @('**/bin/','**/obj/','.state/')|Set-Content (Join-Path $p '.gitignore')
 $issueTitle="[$RunId] Ship observable todo API"
$existing=@(gh issue list --repo $GhRepo --state all --limit 100 --json number,title,url|ConvertFrom-Json|Where-Object title -eq $issueTitle)
if($existing.Count -gt 1){throw 'Duplicate run-owned issue titles; inspect before retrying.'}
$issueUrl=if($existing.Count -eq 1){$existing[0].url}else{gh issue create --repo $GhRepo --title $issueTitle --body 'Acceptance: locked dependencies, passing API tests, measured coverage, successful CI for exact commit, reviewed gated deployment contract, rollback and cleanup evidence.'}
$issueUrl|Set-Content (Join-Path $WorkRoot 'capstone-issue.txt')
```

Expected state: The disposable GitHub repository has source and a measurable work item.

Positive validation:

```powershell
$url=Get-Content (Join-Path $WorkRoot 'capstone-issue.txt');$i=gh issue view $url --repo $GhRepo --json body,state|ConvertFrom-Json
 if($i.state -ne 'OPEN' -or $i.body -notmatch 'exact commit'){throw 'Capstone acceptance/issue absent.'}
```

Negative validation:

```powershell
$p=Join-Path $WorkRoot 'capstone'
 if((git -C $p remote get-url origin) -notmatch [regex]::Escape($GhRepo)){throw 'Capstone source escaped sandbox repository.'}
```

Evidence to retain: Issue, repository boundary, and copied source allowlist.

Common failure and safe retry: Use a new sandbox; integrate work tracking before delivery evidence is produced.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 2 — Pass the local quality and coverage gates

<a id="task-2"></a>

Checkpoint: `CP2`

```powershell
$p=Join-Path $WorkRoot 'capstone';dotnet restore (Join-Path $p 'samples/DevOps.slnx') --locked-mode
 dotnet test (Join-Path $p 'samples/DevOps.slnx') --configuration Release --settings (Join-Path $p 'samples/coverage.runsettings') --collect 'XPlat Code Coverage' --logger "trx;LogFileName=capstone.trx" --results-directory (Join-Path $WorkRoot 'quality')
 if($LASTEXITCODE -ne 0){throw 'Capstone quality gate failed.'}
 $coverage=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter coverage.cobertura.xml -Recurse|Select-Object -First 1
 & (Join-Path $p 'samples/Test-Coverage.ps1') -CoverageFile $coverage.FullName
```

Expected state: The sample passes tests and the shared 65% coverage gate.

Positive validation:

```powershell
$f=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter coverage.cobertura.xml -Recurse|Select-Object -First 1;$x=[xml](Get-Content $f.FullName -Raw)
 if([double]$x.coverage.'line-rate' -lt 0.65){throw 'Capstone coverage insufficient.'}
```

Negative validation:

```powershell
$f=Get-ChildItem (Join-Path $WorkRoot 'quality') -Filter '*.trx' -Recurse|Select-Object -First 1;$x=[xml](Get-Content $f.FullName -Raw)
 if([int]$x.TestRun.ResultSummary.Counters.failed -gt 0 -or [int]$x.TestRun.ResultSummary.Counters.passed -lt 1){throw 'Capstone tests not passing.'}
```

Evidence to retain: TRX counts, coverage, lock hashes, and SDK.

Common failure and safe retry: Repair failures without suppressing tests or weakening coverage; check the code under test is in the measured scope.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 3 — Publish CI while preserving the dormant deployment gate

<a id="task-3"></a>

Checkpoint: `CP3`

```powershell
$p=Join-Path $WorkRoot 'capstone';$wf=Join-Path $p '.github/workflows';New-Item -ItemType Directory -Force $wf|Out-Null
 Copy-Item (Join-Path $LabRoot 'artifacts/capstone-ci.yml') (Join-Path $wf 'ci.yml')
 New-Item -ItemType Directory -Force (Join-Path $p 'deployment-review')|Out-Null
 Copy-Item (Join-Path $LabRoot 'artifacts/capstone-github.yml') (Join-Path $p 'deployment-review/capstone-github.yml')
 git -C $p add .;$staged=@(git -C $p diff --cached --name-only)
if($staged.Count -gt 0){git -C $p commit -m "[$RunId] Deliver tested observable API and gated deployment review"}else{Write-Output 'Reviewed files already committed; reusing the current source revision.'};git -C $p branch -M main;git -C $p push -u origin main
 (git -C $p rev-parse HEAD)|Set-Content (Join-Path $WorkRoot 'capstone-sha.txt')
```

Expected state: A reviewed commit enables CI; cloud deployment remains outside the active workflow directory.

Positive validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'capstone/.github/workflows/ci.yml') -Raw
 if($t -notmatch 'dotnet' -or $t -notmatch 'contents: read'){throw 'Capstone CI lacks build/read permission contract.'}
```

Negative validation:

```powershell
$t=Get-Content (Join-Path $WorkRoot 'capstone/.github/workflows/ci.yml') -Raw
 if($t -match 'azure/login|az deployment|pull_request_target'){throw 'Publishing capstone CI must not start cloud deployment.'}
```

Evidence to retain: Exact commit SHA and active-versus-dormant file locations.

Common failure and safe retry: Activate a separately reviewed deployment only after federation, SQL/network prerequisites, environment approval, and costs are authorized.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 4 — Verify hosted CI provenance and successful completion

<a id="task-4"></a>

Checkpoint: `CP4`

```powershell
$sha=Get-Content (Join-Path $WorkRoot 'capstone-sha.txt')
 $r=@(gh run list --repo $GhRepo --commit $sha --json databaseId,status,conclusion|ConvertFrom-Json)|Select-Object -First 1
 if(-not $r){throw 'Run not visible yet; retry this read-only checkpoint.'}
 gh run watch $r.databaseId --repo $GhRepo --exit-status
 if($LASTEXITCODE -ne 0){throw 'Capstone hosted CI failed.'}
 $r.databaseId|Set-Content (Join-Path $WorkRoot 'capstone-run-id.txt')
```

Expected state: A successful hosted run proves the exact published source revision.

Positive validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-run-id.txt');$r=gh run view $id --repo $GhRepo --json conclusion,headSha|ConvertFrom-Json
 if($r.conclusion -ne 'success' -or $r.headSha -ne (Get-Content (Join-Path $WorkRoot 'capstone-sha.txt'))){throw 'Capstone provenance gate failed.'}
```

Negative validation:

```powershell
$id=Get-Content (Join-Path $WorkRoot 'capstone-run-id.txt');$r=gh run view $id --repo $GhRepo --json status|ConvertFrom-Json
 if($r.status -ne 'completed'){throw 'In-flight capstone cannot pass.'}
```

Evidence to retain: Run URL, commit SHA, test artifact, and final result.

Common failure and safe retry: Check runner availability, permissions, and task failure; canceled/skipped runs are not completion.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Task 5 — Produce the operational release and recovery dossier

<a id="task-5"></a>

Checkpoint: `CP5`

```powershell
$sha=Get-Content (Join-Path $WorkRoot 'capstone-sha.txt')
 $d=[ordered]@{issue=(Get-Content (Join-Path $WorkRoot 'capstone-issue.txt'));commit=$sha;run=(Get-Content (Join-Path $WorkRoot 'capstone-run-id.txt'));deploymentTemplateSha=(Get-FileHash (Join-Path $LabRoot 'artifacts/capstone-github.yml')).Hash;rollback='redeploy last compatible immutable artifact';telemetry='trace spans and health endpoints tested locally';cloudDeployed=$false;cleanupRequired=$true}
 $d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Expected state: The dossier connects work, source, CI, deployment review, recovery, and cleanup without inventing a deployment.

Positive validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json
 if(-not $d.issue -or $d.commit.Length -ne 40 -or -not $d.cleanupRequired){throw 'Release traceability dossier incomplete.'}
```

Negative validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json
 if($d.cloudDeployed){throw 'This core capstone validates CI; optional cloud deployment must supply separate evidence.'}
```

Evidence to retain: release-dossier.json, recovery reasoning, and final cleanup audit.

Common failure and safe retry: State verified and pending integration behavior separately; preserve evidence until sandbox deletion is proven.

Cleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary.

## Deterministic break/fix

Inject this fault only in the recorded sandbox or local run directory.

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.commit='0'*40;$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Diagnose the precise difference:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$id=$d.run;gh run view $id --repo $GhRepo --json headSha,conclusion;Get-Content (Join-Path $WorkRoot 'release-dossier.json')
```

Repair, then repeat the affected checkpoint validation:

```powershell
$d=Get-Content (Join-Path $WorkRoot 'release-dossier.json') -Raw|ConvertFrom-Json;$d.commit=Get-Content (Join-Path $WorkRoot 'capstone-sha.txt');$d|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'release-dossier.json')
```

## Optional job-style challenge

Complete the dormant GitHub deployment with approved WIF, protected environment, SQL identity/network prerequisites, an observed canary, trace correlation, rollback, and complete residual audit. Each unavailable gate remains partial.

## Final validation and result interpretation

```powershell
& './labs/26-capstone-github/scripts/cli/Validate.ps1' -RunId 'demo01'
```

A complete result requires five passing read-only assertions. Pending hosted runs, missing licensed features, and unexecuted integration challenges remain visible. Review `validation.json`; a command exiting successfully is not enough if the asserted behavior is absent.

## Troubleshooting

- **401/403:** inspect the explicit account/project/repository scope and required role; do not broaden a token reflexively.
- **Resource or artifact missing:** confirm the exact run ID and prerequisite checkpoint; retry reads after eventual consistency.
- **Unsupported SKU/runtime/tool:** consult the specific current source, record the gate, and obtain approval before changing cost or architecture.
- **Validation mismatch:** inspect the positive and negative assertions separately, repair the named fault, and rerun validation.
- **Ownership refusal:** stop; never edit a manifest to claim an unrelated resource.

## Cleanup and residual checks

```powershell
& './labs/26-capstone-github/scripts/cli/Cleanup.ps1' -RunId 'demo01'
# Review the exact owned-object deletion plan first.
& './labs/26-capstone-github/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute
```

Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.

## Exam debrief and assessment

Explain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. This foundation/capstone is hands-on only; use its validation and recovery evidence for assessment.

## Microsoft and platform sources

- [Primary source 1](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-net) — reviewed 2026-10-16.
- [Primary source 2](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure) — reviewed 2026-10-16.
- [Primary source 3](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments) — reviewed 2026-10-16.

## Lifecycle scripts and worked solution

Use `scripts/cli/Preflight.ps1`, `Setup.ps1`, `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning.
