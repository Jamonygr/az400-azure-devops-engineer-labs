# Lab 14 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L14-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The build has already tested and packaged the sample. What should later release stages promote to preserve build-once delivery?

- **A. Any archive whose friendly name matches** Reused names do not establish identical content or producing source provenance.
- **B. The same identified immutable application artifact** **Correct.** Promotion should retain the validated bytes rather than create a different output later.
- **C. Only a newly rebuilt output from the same source label** A fresh build can resolve changed inputs and does not preserve the previously validated output bytes.
- **D. A fresh build from the latest moving branch** Rebuilding can resolve changed inputs beyond the original approved candidate.

**Explanation:** A fresh build can resolve changed inputs and does not preserve the previously validated output bytes. Reused names do not establish identical content or producing source provenance. Promotion should retain the validated bytes rather than create a different output later. Rebuilding can resolve changed inputs beyond the original approved candidate.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A learner generates an idempotent SQL migration script without connecting to Azure SQL. What does this demonstrate?

- **A. SQL generation and inspectable migration intent** **Correct.** Generating a script does not establish that a database accepted its schema changes.
- **B. A verified production backup restore** Script generation does not create or test database recovery from a backup.
- **C. A completed live database migration** No database execution or service observation proves the schema was actually changed.
- **D. An approved private network route to SQL** Local generation does not test database DNS, routing or connection authorization.

**Explanation:** Generating a script does not establish that a database accepted its schema changes. No database execution or service observation proves the schema was actually changed. Script generation does not create or test database recovery from a backup. Local generation does not test database DNS, routing or connection authorization.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q003

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The new application requires a new nullable database column. Which release sequence supports the reviewed expand-first strategy?

- **A. Drop the old column before checking the current application** Destructive contraction can break the old binary before a compatible transition exists.
- **B. Run all schema and application changes in arbitrary order** Unordered execution cannot preserve the stated schema prerequisite for the new binary.
- **C. Deploy the new application then ignore schema errors** The binary cannot reliably use a required schema change that has not been applied.
- **D. Compatible schema expansion before new application promotion** **Correct.** The required schema should exist before the new binary depends on it.

**Explanation:** The required schema should exist before the new binary depends on it. Destructive contraction can break the old binary before a compatible transition exists. The binary cannot reliably use a required schema change that has not been applied. Unordered execution cannot preserve the stated schema prerequisite for the new binary.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q004

Foundational · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The app rollback plan redeploys an older compatible binary after an additive migration. What database action should it avoid automatically?

```text
Schema: additive column retained
Current binary: failed
Baseline: explicitly compatible
Rollback plan: redeploy baseline; no automatic Down
```

- **A. Checking whether the old binary remains schema-compatible** Compatibility verification is necessary before treating retained application bytes as a safe rollback.
- **B. Retaining the successful migration evidence** Preserved evidence helps establish which schema state the application must support.
- **C. A destructive Down migration during binary rollback** **Correct.** Reverting schema can destroy data and is a separate reviewed recovery decision.
- **D. Identifying the exact baseline artifact revision** A safe binary rollback still needs the reviewed compatible retained candidate identity.

**Explanation:** Reverting schema can destroy data and is a separate reviewed recovery decision. Compatibility verification is necessary before treating retained application bytes as a safe rollback. Preserved evidence helps establish which schema state the application must support. A safe binary rollback still needs the reviewed compatible retained candidate identity.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q005

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration helper previews by default and requires Apply for execution. Why is that switch important?

- **A. It makes generated SQL automatically harmless** An execution switch cannot make arbitrary SQL safe without review and authorization.
- **B. It separates inspectable intent from database mutation** **Correct.** A preview should not silently apply schema changes merely because the helper was invoked.
- **C. It grants the runtime identity database administration** A command option does not automatically authorize an Azure SQL principal.
- **D. It proves a private SQL connection exists** A preview flag does not establish network access or database permissions.

**Explanation:** A preview should not silently apply schema changes merely because the helper was invoked. An execution switch cannot make arbitrary SQL safe without review and authorization. A preview flag does not establish network access or database permissions. A command option does not automatically authorize an Azure SQL principal.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q006

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

An application package is rebuilt independently in staging and production. Which intended guarantee is missing?

- **A. Both environments receive the same validated artifact bytes** **Correct.** Separate builds can create different outputs even when source labels look similar.
- **B. Production automatically receives an independent reviewer** Build behavior does not itself establish resource owner approval configuration.
- **C. Every environment necessarily uses a different programming language** Rebuilding the same application does not inherently change its implementation language.
- **D. The pipeline must have no tests at all** Multiple builds can still execute tests while losing immutable promotion identity.

**Explanation:** Separate builds can create different outputs even when source labels look similar. Rebuilding the same application does not inherently change its implementation language. Multiple builds can still execute tests while losing immutable promotion identity. Build behavior does not itself establish resource owner approval configuration.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q007

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An idempotent EF migration script consults migration history. What is that history used to determine?

- **A. Which deployment operator can bypass environment approval** Migration records do not grant provider release authorization or bypass rights.
- **B. Which recorded migrations still need application** **Correct.** The history supports selecting schema transitions not already recorded as applied.
- **C. Which application package source revision passed its tests** Schema transition records do not establish the producing application build or its separate quality results.
- **D. Which schema migrations were reviewed in the last pull request** Database history records applied migration state rather than every source review decision or pending PR.

**Explanation:** Database history records applied migration state rather than every source review decision or pending PR. Migration records do not grant provider release authorization or bypass rights. Schema transition records do not establish the producing application build or its separate quality results. The history supports selecting schema transitions not already recorded as applied.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q008

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The runtime application needs ordinary Todos reads and writes, while migration needs schema changes. Which identity design matches that distinction?

- **A. A different artifact filename for each SQL statement** Output naming does not constrain the effective rights of executing identities.
- **B. No identity checks because the database is private** Network placement does not replace database authentication and authorization requirements.
- **C. Separate narrow runtime and migration principals** **Correct.** Application data access should not automatically include broader schema alteration privileges.
- **D. One shared unrestricted administrator credential for every process** That exposes schema authority to runtime paths that do not need it.

**Explanation:** Application data access should not automatically include broader schema alteration privileges. That exposes schema authority to runtime paths that do not need it. Network placement does not replace database authentication and authorization requirements. Output naming does not constrain the effective rights of executing identities.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q009

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The release graph lists application before its required migration. What should the order validator report?

```json
["build","deploy","migrate","verify"]
```

- **A. A passing release because all step names are present** Node existence does not establish correct executable prerequisite ordering.
- **B. The required database-before-application dependency is violated** **Correct.** A new binary cannot assume a schema prerequisite that the graph schedules afterward.
- **C. A warning only about artifact compression** Packaging format does not explain the reversed database and application dependency.
- **D. Automatic repair by renaming the app job** A label change cannot establish the missing required execution relationship.

**Explanation:** A new binary cannot assume a schema prerequisite that the graph schedules afterward. Node existence does not establish correct executable prerequisite ordering. Packaging format does not explain the reversed database and application dependency. A label change cannot establish the missing required execution relationship.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q010

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A package archive is retained, but its old binary no longer supports the current schema. Is it a valid automatic rollback target?

- **A. No; retention does not establish schema compatibility** **Correct.** Available old bytes can still fail against a schema they were not designed to support.
- **B. Yes; a matching artifact filename repairs compatibility** Friendly naming cannot change executable expectations about database structure.
- **C. No; all binary rollback is impossible after any migration** Compatible additive schema changes can support a reviewed older application binary.
- **D. Yes; every older artifact is automatically backward compatible** Version age alone cannot establish compatibility with current schema and data behavior.

**Explanation:** Available old bytes can still fail against a schema they were not designed to support. Version age alone cannot establish compatibility with current schema and data behavior. Friendly naming cannot change executable expectations about database structure. Compatible additive schema changes can support a reviewed older application binary.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q011

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The generated migration SQL contains a destructive column drop. What should happen before a live release applies it?

- **A. Hide the statement from the retained review script** Removing evidence does not remove the destructive operation from actual execution.
- **B. Assume idempotent means no data can be lost** Idempotent application logic does not guarantee that a schema operation preserves data.
- **C. Review data impact, compatibility and the explicit recovery plan** **Correct.** A destructive schema operation needs more than a successful script generation result.
- **D. Apply it using the ordinary runtime identity for convenience** Runtime data access should not gain broad schema authority to bypass review.

**Explanation:** A destructive schema operation needs more than a successful script generation result. Idempotent application logic does not guarantee that a schema operation preserves data. Runtime data access should not gain broad schema authority to bypass review. Removing evidence does not remove the destructive operation from actual execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q012

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A release package should identify the source it was built from. Which value is a stable provenance reference?

- **A. The exact producing commit SHA** **Correct.** An immutable source identity binds the package to the candidate actually built and tested.
- **B. Only the requesting developer display name** One developer can create many distinct unrelated application source revisions.
- **C. Only the moving main branch name** A branch can advance after the selected output was originally produced.
- **D. Only the archive creation time in local timezone** A timestamp does not uniquely identify the actual source tree used for compilation.

**Explanation:** An immutable source identity binds the package to the candidate actually built and tested. A branch can advance after the selected output was originally produced. One developer can create many distinct unrelated application source revisions. A timestamp does not uniquely identify the actual source tree used for compilation.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q013

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A migration preview displays its target but no SQL connection is attempted. What additional prerequisite remains before execution?

- **A. A successful Azure management-plane login alone** Azure authentication does not automatically supply database connectivity or the required SQL user permissions.
- **B. A successful SQL script syntax inspection alone** Local syntax review does not establish private DNS, network routing or effective database identity grants.
- **C. An existing database target string in the preview JSON** A declared target does not prove that the actual worker can connect with the necessary schema permission.
- **D. Authorized database connectivity and reviewed identity permissions** **Correct.** A target declaration does not establish that the selected principal can reach and modify it.

**Explanation:** A declared target does not prove that the actual worker can connect with the necessary schema permission. A target declaration does not establish that the selected principal can reach and modify it. Local syntax review does not establish private DNS, network routing or effective database identity grants. Azure authentication does not automatically supply database connectivity or the required SQL user permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q014

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The application deployment succeeds but verification never runs because it was omitted from the dependency graph. Which release claim is unsupported?

- **A. The package was selected as an input** The deployment could consume its package even without a later verification job.
- **B. The deployed candidate passed its post-deployment acceptance gate** **Correct.** Successful transfer alone cannot establish the absent health and revision verification behavior.
- **C. The graph is missing a required verification stage** Inspection can establish this actual absence without pretending the gate executed.
- **D. The application deployment operation returned success** That observation can be true while independent acceptance remains untested.

**Explanation:** Successful transfer alone cannot establish the absent health and revision verification behavior. The deployment could consume its package even without a later verification job. That observation can be true while independent acceptance remains untested. Inspection can establish this actual absence without pretending the gate executed.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q015

Foundational · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The migration fails before app promotion. What should the ordered release do by default with the new binary?

- **A. Block promotion and preserve the database failure evidence** **Correct.** The required schema prerequisite did not pass and needs diagnosis before dependent application execution.
- **B. Automatically run every Down migration without owner review** Destructive reversal is not a safe universal response to a failed schema transition.
- **C. Deploy anyway because the application archive exists** Artifact availability cannot compensate for a failed required database prerequisite.
- **D. Delete migration history to make the next attempt look fresh** Removing schema state evidence can create unsafe repeated or inconsistent migration behavior.

**Explanation:** The required schema prerequisite did not pass and needs diagnosis before dependent application execution. Artifact availability cannot compensate for a failed required database prerequisite. Removing schema state evidence can create unsafe repeated or inconsistent migration behavior. Destructive reversal is not a safe universal response to a failed schema transition.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q016

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The SQL script is generated successfully, but the learner never inspects target provider settings. Which mismatch could still invalidate deployment?

- **A. The generated provider or connection targets differ from the intended database** **Correct.** Local generation alone does not prove the executable target and schema assumptions match.
- **B. A source tag always supplies the correct connection target** Repository references do not configure database network names or identities automatically.
- **C. A readable SQL filename necessarily implies compatible provider syntax** File naming cannot establish compatibility with the chosen database engine.
- **D. A passing application unit test proves every database DDL statement valid** Unit assertions do not necessarily execute or validate live schema provider behavior.

**Explanation:** Local generation alone does not prove the executable target and schema assumptions match. File naming cannot establish compatibility with the chosen database engine. Unit assertions do not necessarily execute or validate live schema provider behavior. Repository references do not configure database network names or identities automatically.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q017

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The build generates an app folder, SQL script and migration bundle. Why should one manifest bind all these outputs?

- **A. It proves production traffic already passed latency gates** Packaging observations do not establish post-deployment application telemetry.
- **B. It removes the need for SQL permission review** Content correlation does not authorize the selected database execution principal.
- **C. It lets any future build reuse the same release identity** Different outputs should retain distinguishable producing identities rather than overwrite an approved record.
- **D. They must represent one coherent reviewed source candidate** **Correct.** A shared content record prevents accidentally promoting application and schema artifacts from different builds.

**Explanation:** A shared content record prevents accidentally promoting application and schema artifacts from different builds. Different outputs should retain distinguishable producing identities rather than overwrite an approved record. Content correlation does not authorize the selected database execution principal. Packaging observations do not establish post-deployment application telemetry.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q018

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration principal authenticates successfully but lacks schema alteration rights. What should diagnosis distinguish from a network failure?

- **A. The application package must have the wrong archive name** Output labels do not confer schema rights on the authenticated database principal.
- **B. The database hostname cannot have resolved** A permission denial after connection does not establish a DNS resolution failure.
- **C. Authorization denied after successful identity and connection establishment** **Correct.** A reachable authenticated database can still refuse operations outside the principal allowed permissions.
- **D. The runtime identity should receive unrestricted administration immediately** Broadening the wrong identity avoids the intended narrow separation of responsibilities.

**Explanation:** A reachable authenticated database can still refuse operations outside the principal allowed permissions. A permission denial after connection does not establish a DNS resolution failure. Output labels do not confer schema rights on the authenticated database principal. Broadening the wrong identity avoids the intended narrow separation of responsibilities.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q019

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A release plan says rollback means latest successful build, but that build is newer than the deployed candidate. What is wrong?

- **A. Every successful build is guaranteed to be an older version** Success does not establish chronological or schema compatibility relationships between candidates.
- **B. No recovery evidence is needed after tests pass** Predeployment tests cannot replace an operationally valid rollback selection and verification plan.
- **C. The artifact must be renamed to rollback** A friendly label does not make a candidate the approved compatible baseline.
- **D. The selector does not identify the intended compatible baseline** **Correct.** Recovery needs a reviewed retained artifact identity rather than an ambiguous recency rule.

**Explanation:** Recovery needs a reviewed retained artifact identity rather than an ambiguous recency rule. Success does not establish chronological or schema compatibility relationships between candidates. A friendly label does not make a candidate the approved compatible baseline. Predeployment tests cannot replace an operationally valid rollback selection and verification plan.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q020

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Two independent checks follow build, but migration must wait for both before app promotion. Which graph preserves the contract?

- **A. Only list the steps in a preferred comment order** Prose does not establish executable prerequisite relationships among jobs.
- **B. Build then both checks, then migration, then app** **Correct.** Every mandatory validation must precede schema mutation and its dependent binary promotion.
- **C. Migration before build to reduce critical-path time** The release cannot validate and identify its candidate before mutating the schema.
- **D. Build then app while checks run independently** The app could be promoted before required quality and database prerequisites finish.

**Explanation:** Every mandatory validation must precede schema mutation and its dependent binary promotion. The app could be promoted before required quality and database prerequisites finish. The release cannot validate and identify its candidate before mutating the schema. Prose does not establish executable prerequisite relationships among jobs.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q021

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The database already records migration M1. An idempotent script contains M1 and M2. What intended behavior should review verify?

```text
Migration history: M1 applied
Script transitions: M1, M2
```

- **A. Run M1 repeatedly regardless of history** Blind repetition defeats the purpose of checking previously applied migration records.
- **B. Apply required M2 while preserving already-applied M1 state** **Correct.** Migration history should prevent rerunning transitions already recorded as applied.
- **C. Infer M2 applied from the application filename** A friendly binary name does not establish database schema migration application state.
- **D. Drop all tables so both migrations begin cleanly** That destroys existing data rather than respecting the recorded migration state.

**Explanation:** Migration history should prevent rerunning transitions already recorded as applied. That destroys existing data rather than respecting the recorded migration state. Blind repetition defeats the purpose of checking previously applied migration records. A friendly binary name does not establish database schema migration application state.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q022

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The reviewed migration connection uses Entra identity rather than a stored SQL password. What remains necessary despite avoiding a password?

- **A. Every worker can reach the private database automatically** Identity federation does not establish private network routing or DNS.
- **B. No database permissions are required for federated identities** Authentication method does not automatically grant schema alteration or data access authority.
- **C. The SQL migration becomes a read-only operation** Authentication mechanism does not change the mutating semantics of the SQL commands.
- **D. Correct trust, SQL user grants and network access** **Correct.** Removing long-lived credentials does not eliminate the underlying identity authorization and connectivity prerequisites.

**Explanation:** Removing long-lived credentials does not eliminate the underlying identity authorization and connectivity prerequisites. Authentication method does not automatically grant schema alteration or data access authority. Identity federation does not establish private network routing or DNS. Authentication mechanism does not change the mutating semantics of the SQL commands.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q023

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The manifest expected SHA256 differs from the downloaded migration bundle hash. What should the release do?

- **A. Refuse execution and investigate the content mismatch** **Correct.** The executable schema tool must match the reviewed immutable artifact record before use.
- **B. Ignore it because the source branch is called main** Branch naming does not establish integrity of the downloaded executable bundle.
- **C. Run it first and check the hash afterward** Execution crosses the mutation boundary before establishing the expected content identity.
- **D. Replace the expected hash with the downloaded hash** Accepting arbitrary new bytes defeats the original integrity verification boundary.

**Explanation:** The executable schema tool must match the reviewed immutable artifact record before use. Execution crosses the mutation boundary before establishing the expected content identity. Accepting arbitrary new bytes defeats the original integrity verification boundary. Branch naming does not establish integrity of the downloaded executable bundle.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q024

Applied · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

An additive migration is applied, then app verification fails. Which recovery action can preserve data while testing the compatible baseline?

- **A. Declare rollback complete before the old binary becomes healthy** A deployment request does not establish successful operational recovery.
- **B. Redeploy the reviewed old binary and reverify without automatic Down** **Correct.** Compatible application rollback can retain expanded schema while preserving newly written data.
- **C. Drop the added column immediately before reviewing compatibility** Destructive contraction can lose data and break recovery assumptions without explicit authorization.
- **D. Delete failed verification evidence after redeployment** Failure observations remain necessary to assess and diagnose the recovery decision.

**Explanation:** Compatible application rollback can retain expanded schema while preserving newly written data. Destructive contraction can lose data and break recovery assumptions without explicit authorization. A deployment request does not establish successful operational recovery. Failure observations remain necessary to assess and diagnose the recovery decision.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q025

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The order file reports migrate, deploy, verify but the actual DAG allows deploy before migrate. Which final validation requirement matters?

```text
order.txt: migrate, deploy, verify
DAG: build -> migrate; build -> deploy -> verify
```

- **A. Check executable dependencies rather than only the order declaration** **Correct.** A friendly recorded sequence cannot enforce the source graph actually used for execution.
- **B. Rename deploy to after-migrate without changing edges** A label cannot create the missing scheduling dependency on schema completion.
- **C. Trust whichever text file was written most recently** Recency does not establish that the executable graph honors the required prerequisite.
- **D. Ignore the mismatch when all three node names exist** Node membership does not prove the required order among those operations.

**Explanation:** A friendly recorded sequence cannot enforce the source graph actually used for execution. Recency does not establish that the executable graph honors the required prerequisite. A label cannot create the missing scheduling dependency on schema completion. Node membership does not prove the required order among those operations.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q026

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An EF migration bundle is built ahead of release to avoid SDK compilation on the SQL worker. What must still match its intended execution target?

- **A. Compatible bundle platform and reviewed database configuration** **Correct.** Prebuilding removes compilation work but not runtime platform, target or identity requirements.
- **B. Only a successful compile on the author development machine** Build success on one platform does not prove executable runtime and database target prerequisites on another worker.
- **C. Only the application source revision in a friendly release label** Source correlation alone does not make a platform-specific migration executable compatible with the selected worker.
- **D. Only the generated SQL review script being nonempty** Script content does not establish the prebuilt bundle platform, connection target or execution identity readiness.

**Explanation:** Prebuilding removes compilation work but not runtime platform, target or identity requirements. Source correlation alone does not make a platform-specific migration executable compatible with the selected worker. Build success on one platform does not prove executable runtime and database target prerequisites on another worker. Script content does not establish the prebuilt bundle platform, connection target or execution identity readiness.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q027

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration command prints its connection string into a retained log. Which evidence handling repair preserves useful diagnosis?

- **A. Keep the full value because the lab repository is private** Repository visibility does not authorize unnecessary disclosure of sensitive execution inputs.
- **B. Copy the value into the committed manifest instead** A source-controlled provenance record is not an appropriate secret container.
- **C. Remove sensitive logging and retain only redacted target/result metadata** **Correct.** Database troubleshooting should not expose credential or confidential connection material in evidence.
- **D. Disable all execution result reporting permanently** Useful redacted outcome evidence can remain without exposing sensitive connection values.

**Explanation:** Database troubleshooting should not expose credential or confidential connection material in evidence. Repository visibility does not authorize unnecessary disclosure of sensitive execution inputs. A source-controlled provenance record is not an appropriate secret container. Useful redacted outcome evidence can remain without exposing sensitive connection values.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q028

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

The older binary reads a column that the proposed contraction removes. What sequence should the team plan before that removal?

- **A. Assume semantic version numbers guarantee schema compatibility** Version labels do not establish actual runtime database field dependencies.
- **B. Retire dependent old binaries before the reviewed contraction phase** **Correct.** Destructive schema reduction must wait until supported executable versions no longer require the field.
- **C. Drop it before testing either executable version** That can break the currently supported application and remove required data prematurely.
- **D. Keep the old rollback artifact and ignore its reads** Availability of old bytes does not make their removed schema requirements disappear.

**Explanation:** Destructive schema reduction must wait until supported executable versions no longer require the field. That can break the currently supported application and remove required data prematurely. Version labels do not establish actual runtime database field dependencies. Availability of old bytes does not make their removed schema requirements disappear.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q029

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A deploy job runs dotnet publish again using a floating dependency range after CI passed. What risk enters the promoted candidate?

- **A. The deployed bytes can differ from those validated in CI** **Correct.** A fresh dependency resolution can change the executable output after candidate approval.
- **B. A repeated build necessarily proves stronger source provenance** More executions do not automatically establish identity with the originally approved bytes.
- **C. The production environment approval automatically expires all packages** Environment authorization does not define external package retention or dependency lifecycle.
- **D. The source commit is rewritten by every publish command** Building application output does not inherently mutate Git commit history.

**Explanation:** A fresh dependency resolution can change the executable output after candidate approval. More executions do not automatically establish identity with the originally approved bytes. Building application output does not inherently mutate Git commit history. Environment authorization does not define external package retention or dependency lifecycle.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q030

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph validator throws because Azure CLI is missing rather than because app precedes migration. Does this prove its order fault detection?

- **A. No; the rejection must match the injected dependency failure** **Correct.** An unrelated tool prerequisite failure cannot establish that the order assertion caught the intended defect.
- **B. No; negative tests must never throw errors** A meaningful negative contract should reject its named violated behavior explicitly.
- **C. Yes; every exception demonstrates the required safe release ordering** A missing executable and an invalid dependency graph are different observed failure causes.
- **D. Yes; the graph is safe whenever no app was deployed** Lack of execution does not validate the correctness of the configured prerequisite graph.

**Explanation:** An unrelated tool prerequisite failure cannot establish that the order assertion caught the intended defect. A missing executable and an invalid dependency graph are different observed failure causes. Lack of execution does not validate the correctness of the configured prerequisite graph. A meaningful negative contract should reject its named violated behavior explicitly.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q031

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A migration script generated for one model is paired with a binary built from another commit. Which release property is inconsistent?

- **A. The bundle and binary are both individually readable archives** File readability does not establish common source provenance or mutual application/schema compatibility.
- **B. The migration and app jobs run on the same machine** Shared execution location does not reconcile the differing source models used to produce the artifacts.
- **C. Application and schema artifacts lack shared candidate provenance** **Correct.** Their compatibility must be established for one reviewed source and output set.
- **D. The package uses a unique filename for each output** Distinct names can coexist with application and schema artifacts built from incoherent source candidates.

**Explanation:** Distinct names can coexist with application and schema artifacts built from incoherent source candidates. Their compatibility must be established for one reviewed source and output set. File readability does not establish common source provenance or mutual application/schema compatibility. Shared execution location does not reconcile the differing source models used to produce the artifacts.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q032

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A private worker authenticates to Azure but cannot resolve the SQL FQDN. What gate should fail before migration execution?

- **A. Only whether the SQL execution command contains the correct migration name** A correctly named operation cannot establish DNS resolution or reachability of the actual private database endpoint.
- **B. Only artifact naming policy** A friendly output label cannot make the target database hostname resolvable.
- **C. The required database network and DNS prerequisite** **Correct.** Azure login alone does not establish a route or name resolution for private SQL.
- **D. Only the application coverage threshold** Test coverage does not provide a missing private network resolution path.

**Explanation:** A correctly named operation cannot establish DNS resolution or reachability of the actual private database endpoint. Azure login alone does not establish a route or name resolution for private SQL. Test coverage does not provide a missing private network resolution path. A friendly output label cannot make the target database hostname resolvable.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q033

Applied · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The rollback plan includes an old binary but no evidence of compatibility with newly written data. What must recovery review add?

- **A. Use the same archive filename for all versions** Naming cannot make incompatible application behaviors safe against new database state.
- **B. Validate retained binary behavior against current schema and data** **Correct.** Schema presence alone may not capture changes in values, semantics or old-version assumptions.
- **C. Delete the new data automatically without owner review** Destructive data operations require an explicit authorized recovery decision and validated plan.
- **D. Assume older timestamps always mean safe recovery** Chronology does not establish compatibility with the current database data model.

**Explanation:** Schema presence alone may not capture changes in values, semantics or old-version assumptions. Chronology does not establish compatibility with the current database data model. Naming cannot make incompatible application behaviors safe against new database state. Destructive data operations require an explicit authorized recovery decision and validated plan.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q034

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

An application verification stage succeeds before the database migration starts. Why is that insufficient for the intended release completion?

- **A. Migration is always a documentation-only operation** Applying schema changes can materially alter the service state and behavior.
- **B. The application verification must ignore subsequent database changes** Later schema mutations can alter the running service beyond the state observed by the earlier verification.
- **C. Any earlier green check permanently validates every later state** Subsequent mutations can change behavior beyond what earlier evidence observed.
- **D. It did not verify the final ordered deployed state** **Correct.** Acceptance should observe the actual candidate after its required schema and binary transitions.

**Explanation:** Later schema mutations can alter the running service beyond the state observed by the earlier verification. Acceptance should observe the actual candidate after its required schema and binary transitions. Subsequent mutations can change behavior beyond what earlier evidence observed. Applying schema changes can materially alter the service state and behavior.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q035

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A source SHA in a manifest is correct, but one packaged application file was replaced afterward. What verification catches this drift?

- **A. Count only the number of extracted directories** Directory counts cannot identify changed bytes within an existing application file.
- **B. Compare packaged file hashes with the trusted manifest** **Correct.** Source labels do not prevent content tampering after the original output was built.
- **C. Compare only the manifest filename** A filename can remain unchanged while its associated executable content is replaced.
- **D. Read only the source branch display name** Branch identity does not establish integrity of every packaged file.

**Explanation:** Source labels do not prevent content tampering after the original output was built. Branch identity does not establish integrity of every packaged file. A filename can remain unchanged while its associated executable content is replaced. Directory counts cannot identify changed bytes within an existing application file.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q036

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The generated SQL is idempotent at migration level but includes a destructive operation when not yet applied. What does idempotence not guarantee?

- **A. That a script can be generated for inspection** Generation remains a supported local operation independent of live mutation.
- **B. That already-recorded migrations can be skipped** That is the intended role of the script history-aware behavior.
- **C. That migration history influences transition selection** History-aware selection is distinct from whether an individual transition is destructive.
- **D. That applying the new transition preserves all existing data** **Correct.** Avoiding repeated recorded migrations does not make each initial schema change nondestructive.

**Explanation:** Avoiding repeated recorded migrations does not make each initial schema change nondestructive. That is the intended role of the script history-aware behavior. Generation remains a supported local operation independent of live mutation. History-aware selection is distinct from whether an individual transition is destructive.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q037

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A reviewer approves a migration script but the execution helper runs a different downloaded bundle. Which boundary should stop execution?

- **A. A successful Azure login overrides the artifact mismatch** Authentication establishes identity rather than approval of arbitrary downloaded executable content.
- **B. A shared friendly release name makes both automatically equivalent** Labels do not establish identical content or coherent producing source provenance.
- **C. Artifact identity must agree with the reviewed migration candidate** **Correct.** Approval of one schema program cannot authorize an unrelated executable bundle implicitly.
- **D. The SQL server name alone identifies all migration behavior** One target can receive many materially different schema programs and versions.

**Explanation:** Approval of one schema program cannot authorize an unrelated executable bundle implicitly. Labels do not establish identical content or coherent producing source provenance. Authentication establishes identity rather than approval of arbitrary downloaded executable content. One target can receive many materially different schema programs and versions.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q038

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

Database recovery requires a backup restore, but the application operator lacks authority over the external database. What should the runbook specify?

- **A. Automatic deletion and recreation of the external database** The course sandbox ownership does not authorize destructive operations on separately owned data.
- **B. A broader learner subscription role as the only recovery step** General Azure authority does not replace database owner approval or tested restoration procedures.
- **C. Escalation to the authorized database owner and validated recovery procedure** **Correct.** An app rollback does not confer permission to restore or destroy an external database.
- **D. A green local JSON flag declaring database recovered** A declaration cannot establish an executed validated service recovery outcome.

**Explanation:** An app rollback does not confer permission to restore or destroy an external database. The course sandbox ownership does not authorize destructive operations on separately owned data. General Azure authority does not replace database owner approval or tested restoration procedures. A declaration cannot establish an executed validated service recovery outcome.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q039

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Release A migration and release B migration target the same database concurrently. Which extra control addresses the shared mutation risk?

- **A. Only unique artifact names for the two runs** Output labels do not serialize simultaneous operations against shared database state.
- **B. Only a code comment naming the preferred deployment order** Prose does not enforce cross-run resource mutual exclusion during schema changes.
- **C. Only longer network timeouts for every SQL request** More waiting does not prevent incompatible concurrent schema mutation attempts.
- **D. A protected serialization boundary covering the database operations** **Correct.** Correct order within each run does not prevent conflicting schema transitions across concurrent runs.

**Explanation:** Correct order within each run does not prevent conflicting schema transitions across concurrent runs. Output labels do not serialize simultaneous operations against shared database state. More waiting does not prevent incompatible concurrent schema mutation attempts. Prose does not enforce cross-run resource mutual exclusion during schema changes.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q040

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The package includes an app, SQL script and bundle, but only the app checksum is verified. What integrity gap remains?

- **A. The app checksum automatically covers every unrelated file** A digest of one file does not bind other files unless a manifest explicitly does.
- **B. The source repository name proves all bundle content** Naming cannot establish integrity of unverified packaged executable migration bytes.
- **C. The executable schema artifact is not covered by verification** **Correct.** A coherent release must establish the expected identity of every executable mutation input.
- **D. The database migration no longer needs approval** Integrity coverage does not replace independent permission for schema mutation.

**Explanation:** A coherent release must establish the expected identity of every executable mutation input. Integrity coverage does not replace independent permission for schema mutation. A digest of one file does not bind other files unless a manifest explicitly does. Naming cannot establish integrity of unverified packaged executable migration bytes.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A new binary passes health, but telemetry shows the release exceeds its error gate after an additive migration. Which recovery preserves the intended boundaries?

- **A. Declare success because readiness had once returned HTTP 200** A momentary health response cannot override the required observed release error gate.
- **B. Drop all added schema before deciding which binary is compatible** Destructive reversal can lose data and needs its own reviewed recovery authorization.
- **C. Rebuild current main and call any successful upload rollback** A new output is not the selected retained compatible baseline being recovered.
- **D. Use the protected compatible baseline lane and remeasure without automatic schema reversal** **Correct.** Operational rollback must verify the retained binary while respecting database recovery ownership.

**Explanation:** Operational rollback must verify the retained binary while respecting database recovery ownership. A momentary health response cannot override the required observed release error gate. Destructive reversal can lose data and needs its own reviewed recovery authorization. A new output is not the selected retained compatible baseline being recovered.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q042

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A migration adds a nonnullable field without a safe backfill while old code still creates rows. What should expand/contract review address?

```text
Old writer omits NewField
Migration: ADD NewField NOT NULL
Backfill/default: none
```

- **A. Only whether the migration identity can apply the new constraint** Permission to apply DDL does not establish backfill correctness or compatibility with old application writes.
- **B. Only whether the generated SQL is syntactically valid** Valid DDL syntax can still reject old-version writes that omit a newly required nonnullable field.
- **C. Only the artifact retention setting** Keeping old bytes cannot repair their incompatibility with a new required field.
- **D. Compatibility of writes and data backfill during mixed-version operation** **Correct.** Schema evolution must support the actual old and new application behaviors during transition.

**Explanation:** Schema evolution must support the actual old and new application behaviors during transition. Valid DDL syntax can still reject old-version writes that omit a newly required nonnullable field. Keeping old bytes cannot repair their incompatibility with a new required field. Permission to apply DDL does not establish backfill correctness or compatibility with old application writes.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

A baseline binary can read the expanded schema but writes an enum value the new version interprets differently. What does rollback qualification need?

- **A. Only migration history showing the latest ID** Migration identity cannot fully establish every application-level semantic compatibility assumption.
- **B. Only the baseline source timestamp being earlier** Chronology does not prove behavioral compatibility with the current data model.
- **C. Behavioral compatibility with current data semantics as well as schema** **Correct.** A matching table structure does not prove old and new binaries agree on value meaning.
- **D. Only successful extraction of the old archive** Archive readability cannot establish application interpretation of current database values.

**Explanation:** A matching table structure does not prove old and new binaries agree on value meaning. Archive readability cannot establish application interpretation of current database values. Chronology does not prove behavioral compatibility with the current data model. Migration identity cannot fully establish every application-level semantic compatibility assumption.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Both schema and app jobs depend on build, but neither depends on the other. The app requires the new schema. What specific edge is missing?

- **A. The build must depend on app verification** That reverses a prerequisite and can create an invalid execution cycle.
- **B. The migration should depend on cleanup** Deleting resources before schema mutation does not satisfy the intended release ordering.
- **C. The app must depend on successful migration** **Correct.** A shared upstream build does not order the two sibling mutation jobs.
- **D. The artifact filename should contain migrate-first** Naming does not create the required executable job dependency relationship.

**Explanation:** A shared upstream build does not order the two sibling mutation jobs. That reverses a prerequisite and can create an invalid execution cycle. Deleting resources before schema mutation does not satisfy the intended release ordering. Naming does not create the required executable job dependency relationship.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q045

Advanced · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration identity can alter schema while the runtime only needs data reads/writes and migration-history reads. Which permission outcome is correct?

- **A. Runtime denied DDL while migration can perform the reviewed schema operation** **Correct.** Different execution responsibilities should result in different effective database operation permissions.
- **B. Both principals share the same password permanently** A shared unrestricted credential erases distinct identity responsibility and lifecycle boundaries.
- **C. Runtime granted unrestricted administration to simplify readiness** Readiness does not justify granting all schema and administrative operations to the app.
- **D. Neither principal needs database user mapping after federation** Authentication to Entra does not automatically create required SQL user permissions.

**Explanation:** Different execution responsibilities should result in different effective database operation permissions. Readiness does not justify granting all schema and administrative operations to the app. A shared unrestricted credential erases distinct identity responsibility and lifecycle boundaries. Authentication to Entra does not automatically create required SQL user permissions.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q046

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A release reconstructs the migration bundle from source on a worker with a different SDK after approval. What must the review avoid claiming?

- **A. That producing source identity is useful provenance** A source reference remains useful while not guaranteeing rebuilt byte identity.
- **B. That the executed bundle is the originally approved immutable output** **Correct.** Reconstruction creates a new executable whose content must not be assumed identical.
- **C. That source files can be reviewed before execution** Source inspection remains possible even when the immutable promotion contract is broken.
- **D. That a worker needs compatible tooling for compilation** The observed rebuild does require a suitable compilation environment and dependencies.

**Explanation:** Reconstruction creates a new executable whose content must not be assumed identical. Source inspection remains possible even when the immutable promotion contract is broken. The observed rebuild does require a suitable compilation environment and dependencies. A source reference remains useful while not guaranteeing rebuilt byte identity.

**Sources:** [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)

## L14-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

After rollback dispatch, the provider reports success but the version endpoint still returns the failed current revision. What completion decision is justified?

```text
Provider upload: success
Expected baseline revision: A
Live /version revision: B
```

- **A. Rollback remains unverified because the selected baseline was not observed** **Correct.** Provider transfer success must agree with actual deployed revision and behavioral acceptance evidence.
- **B. Rename the baseline reference to the observed current revision** Changing expectations conceals failure to restore the reviewed recovery candidate.
- **C. Delete version evidence and rely only on upload logs** Removing contradictory observations does not establish successful operational recovery.
- **D. Rollback passed because any successful operation is sufficient** A successful request does not prove the required baseline bytes serve traffic.

**Explanation:** Provider transfer success must agree with actual deployed revision and behavioral acceptance evidence. A successful request does not prove the required baseline bytes serve traffic. Changing expectations conceals failure to restore the reviewed recovery candidate. Removing contradictory observations does not establish successful operational recovery.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q048

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An idempotent migration failed after some provider operations, and its transactional guarantees are uncertain. What should a retry assess first?

- **A. Delete history so all migrations appear unapplied** Erasing evidence can cause repeated destructive operations and inconsistent state assumptions.
- **B. Actual schema/history state and the reviewed provider recovery behavior** **Correct.** Partial execution cannot safely be treated as either wholly applied or wholly absent without inspection.
- **C. Assume every failure means no database state changed** Some operations can persist despite a later error depending on transaction behavior.
- **D. Apply every Down script before inspecting current state** Automatic destructive reversal is not a universally safe recovery from uncertain partial execution.

**Explanation:** Partial execution cannot safely be treated as either wholly applied or wholly absent without inspection. Some operations can persist despite a later error depending on transaction behavior. Erasing evidence can cause repeated destructive operations and inconsistent state assumptions. Automatic destructive reversal is not a universally safe recovery from uncertain partial execution.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying)

## L14-Q049

Advanced · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

An exclusive lock covers application upload only, but database mutations occur earlier outside it. What release concurrency risk remains?

- **A. Only the migration filename should be changed** Naming does not move executable operations inside the actual protected lock boundary.
- **B. No risk remains because the final upload is serialized** Later serialization cannot prevent earlier simultaneous database mutation attempts.
- **C. The artifact digest becomes automatically invalid** A concurrency placement error does not inherently change stored output bytes.
- **D. Concurrent runs can still mutate shared schema before serialization** **Correct.** Lock placement must include the shared mutation operations it is intended to protect.

**Explanation:** Lock placement must include the shared mutation operations it is intended to protect. A concurrency placement error does not inherently change stored output bytes. Later serialization cannot prevent earlier simultaneous database mutation attempts. Naming does not move executable operations inside the actual protected lock boundary.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops)

## L14-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

A compatible baseline artifact expired, and the only available older package uses a schema the team no longer supports. What should recovery do?

- **A. Drop current schema to fit whichever package is available** Destructive database changes require explicit authorization and a validated data recovery strategy.
- **B. Rebuild the expired version and label it the original without validation** Newly reconstructed bytes need their own provenance and compatibility checks.
- **C. Use any available old package because age implies safety** Older output can be incompatible with current schema, data or operating prerequisites.
- **D. Stop automatic rollback and invoke the reviewed owner-led recovery plan** **Correct.** Unavailable qualified bytes cannot be replaced by an unverified incompatible historical artifact.

**Explanation:** Unavailable qualified bytes cannot be replaced by an unverified incompatible historical artifact. Older output can be incompatible with current schema, data or operating prerequisites. Newly reconstructed bytes need their own provenance and compatibility checks. Destructive database changes require explicit authorization and a validated data recovery strategy.

**Sources:** [S1](https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying); [S2](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops)
