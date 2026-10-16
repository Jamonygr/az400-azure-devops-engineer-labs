# Lab 14 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L14-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The build has already tested and packaged the sample. What should later release stages promote to preserve build-once delivery?

- **A.** Any archive whose friendly name matches
- **B.** The same identified immutable application artifact
- **C.** Only a newly rebuilt output from the same source label
- **D.** A fresh build from the latest moving branch

## L14-Q002

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A learner generates an idempotent SQL migration script without connecting to Azure SQL. What does this demonstrate?

- **A.** SQL generation and inspectable migration intent
- **B.** A verified production backup restore
- **C.** A completed live database migration
- **D.** An approved private network route to SQL

## L14-Q003

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The new application requires a new nullable database column. Which release sequence supports the reviewed expand-first strategy?

- **A.** Drop the old column before checking the current application
- **B.** Run all schema and application changes in arbitrary order
- **C.** Deploy the new application then ignore schema errors
- **D.** Compatible schema expansion before new application promotion

## L14-Q004

Foundational · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The app rollback plan redeploys an older compatible binary after an additive migration. What database action should it avoid automatically?

```text
Schema: additive column retained
Current binary: failed
Baseline: explicitly compatible
Rollback plan: redeploy baseline; no automatic Down
```

- **A.** Checking whether the old binary remains schema-compatible
- **B.** Retaining the successful migration evidence
- **C.** A destructive Down migration during binary rollback
- **D.** Identifying the exact baseline artifact revision

## L14-Q005

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration helper previews by default and requires Apply for execution. Why is that switch important?

- **A.** It makes generated SQL automatically harmless
- **B.** It separates inspectable intent from database mutation
- **C.** It grants the runtime identity database administration
- **D.** It proves a private SQL connection exists

## L14-Q006

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

An application package is rebuilt independently in staging and production. Which intended guarantee is missing?

- **A.** Both environments receive the same validated artifact bytes
- **B.** Production automatically receives an independent reviewer
- **C.** Every environment necessarily uses a different programming language
- **D.** The pipeline must have no tests at all

## L14-Q007

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An idempotent EF migration script consults migration history. What is that history used to determine?

- **A.** Which deployment operator can bypass environment approval
- **B.** Which recorded migrations still need application
- **C.** Which application package source revision passed its tests
- **D.** Which schema migrations were reviewed in the last pull request

## L14-Q008

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The runtime application needs ordinary Todos reads and writes, while migration needs schema changes. Which identity design matches that distinction?

- **A.** A different artifact filename for each SQL statement
- **B.** No identity checks because the database is private
- **C.** Separate narrow runtime and migration principals
- **D.** One shared unrestricted administrator credential for every process

## L14-Q009

Foundational · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The release graph lists application before its required migration. What should the order validator report?

```json
["build","deploy","migrate","verify"]
```

- **A.** A passing release because all step names are present
- **B.** The required database-before-application dependency is violated
- **C.** A warning only about artifact compression
- **D.** Automatic repair by renaming the app job

## L14-Q010

Foundational · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A package archive is retained, but its old binary no longer supports the current schema. Is it a valid automatic rollback target?

- **A.** No; retention does not establish schema compatibility
- **B.** Yes; a matching artifact filename repairs compatibility
- **C.** No; all binary rollback is impossible after any migration
- **D.** Yes; every older artifact is automatically backward compatible

## L14-Q011

Foundational · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The generated migration SQL contains a destructive column drop. What should happen before a live release applies it?

- **A.** Hide the statement from the retained review script
- **B.** Assume idempotent means no data can be lost
- **C.** Review data impact, compatibility and the explicit recovery plan
- **D.** Apply it using the ordinary runtime identity for convenience

## L14-Q012

Foundational · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A release package should identify the source it was built from. Which value is a stable provenance reference?

- **A.** The exact producing commit SHA
- **B.** Only the requesting developer display name
- **C.** Only the moving main branch name
- **D.** Only the archive creation time in local timezone

## L14-Q013

Foundational · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A migration preview displays its target but no SQL connection is attempted. What additional prerequisite remains before execution?

- **A.** A successful Azure management-plane login alone
- **B.** A successful SQL script syntax inspection alone
- **C.** An existing database target string in the preview JSON
- **D.** Authorized database connectivity and reviewed identity permissions

## L14-Q014

Foundational · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The application deployment succeeds but verification never runs because it was omitted from the dependency graph. Which release claim is unsupported?

- **A.** The package was selected as an input
- **B.** The deployed candidate passed its post-deployment acceptance gate
- **C.** The graph is missing a required verification stage
- **D.** The application deployment operation returned success

## L14-Q015

Foundational · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The migration fails before app promotion. What should the ordered release do by default with the new binary?

- **A.** Block promotion and preserve the database failure evidence
- **B.** Automatically run every Down migration without owner review
- **C.** Deploy anyway because the application archive exists
- **D.** Delete migration history to make the next attempt look fresh

## L14-Q016

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The SQL script is generated successfully, but the learner never inspects target provider settings. Which mismatch could still invalidate deployment?

- **A.** The generated provider or connection targets differ from the intended database
- **B.** A source tag always supplies the correct connection target
- **C.** A readable SQL filename necessarily implies compatible provider syntax
- **D.** A passing application unit test proves every database DDL statement valid

## L14-Q017

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The build generates an app folder, SQL script and migration bundle. Why should one manifest bind all these outputs?

- **A.** It proves production traffic already passed latency gates
- **B.** It removes the need for SQL permission review
- **C.** It lets any future build reuse the same release identity
- **D.** They must represent one coherent reviewed source candidate

## L14-Q018

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration principal authenticates successfully but lacks schema alteration rights. What should diagnosis distinguish from a network failure?

- **A.** The application package must have the wrong archive name
- **B.** The database hostname cannot have resolved
- **C.** Authorization denied after successful identity and connection establishment
- **D.** The runtime identity should receive unrestricted administration immediately

## L14-Q019

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A release plan says rollback means latest successful build, but that build is newer than the deployed candidate. What is wrong?

- **A.** Every successful build is guaranteed to be an older version
- **B.** No recovery evidence is needed after tests pass
- **C.** The artifact must be renamed to rollback
- **D.** The selector does not identify the intended compatible baseline

## L14-Q020

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Two independent checks follow build, but migration must wait for both before app promotion. Which graph preserves the contract?

- **A.** Only list the steps in a preferred comment order
- **B.** Build then both checks, then migration, then app
- **C.** Migration before build to reduce critical-path time
- **D.** Build then app while checks run independently

## L14-Q021

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The database already records migration M1. An idempotent script contains M1 and M2. What intended behavior should review verify?

```text
Migration history: M1 applied
Script transitions: M1, M2
```

- **A.** Run M1 repeatedly regardless of history
- **B.** Apply required M2 while preserving already-applied M1 state
- **C.** Infer M2 applied from the application filename
- **D.** Drop all tables so both migrations begin cleanly

## L14-Q022

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The reviewed migration connection uses Entra identity rather than a stored SQL password. What remains necessary despite avoiding a password?

- **A.** Every worker can reach the private database automatically
- **B.** No database permissions are required for federated identities
- **C.** The SQL migration becomes a read-only operation
- **D.** Correct trust, SQL user grants and network access

## L14-Q023

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The manifest expected SHA256 differs from the downloaded migration bundle hash. What should the release do?

- **A.** Refuse execution and investigate the content mismatch
- **B.** Ignore it because the source branch is called main
- **C.** Run it first and check the hash afterward
- **D.** Replace the expected hash with the downloaded hash

## L14-Q024

Applied · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

An additive migration is applied, then app verification fails. Which recovery action can preserve data while testing the compatible baseline?

- **A.** Declare rollback complete before the old binary becomes healthy
- **B.** Redeploy the reviewed old binary and reverify without automatic Down
- **C.** Drop the added column immediately before reviewing compatibility
- **D.** Delete failed verification evidence after redeployment

## L14-Q025

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

The order file reports migrate, deploy, verify but the actual DAG allows deploy before migrate. Which final validation requirement matters?

```text
order.txt: migrate, deploy, verify
DAG: build -> migrate; build -> deploy -> verify
```

- **A.** Check executable dependencies rather than only the order declaration
- **B.** Rename deploy to after-migrate without changing edges
- **C.** Trust whichever text file was written most recently
- **D.** Ignore the mismatch when all three node names exist

## L14-Q026

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An EF migration bundle is built ahead of release to avoid SDK compilation on the SQL worker. What must still match its intended execution target?

- **A.** Compatible bundle platform and reviewed database configuration
- **B.** Only a successful compile on the author development machine
- **C.** Only the application source revision in a friendly release label
- **D.** Only the generated SQL review script being nonempty

## L14-Q027

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration command prints its connection string into a retained log. Which evidence handling repair preserves useful diagnosis?

- **A.** Keep the full value because the lab repository is private
- **B.** Copy the value into the committed manifest instead
- **C.** Remove sensitive logging and retain only redacted target/result metadata
- **D.** Disable all execution result reporting permanently

## L14-Q028

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

The older binary reads a column that the proposed contraction removes. What sequence should the team plan before that removal?

- **A.** Assume semantic version numbers guarantee schema compatibility
- **B.** Retire dependent old binaries before the reviewed contraction phase
- **C.** Drop it before testing either executable version
- **D.** Keep the old rollback artifact and ignore its reads

## L14-Q029

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A deploy job runs dotnet publish again using a floating dependency range after CI passed. What risk enters the promoted candidate?

- **A.** The deployed bytes can differ from those validated in CI
- **B.** A repeated build necessarily proves stronger source provenance
- **C.** The production environment approval automatically expires all packages
- **D.** The source commit is rewritten by every publish command

## L14-Q030

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

The graph validator throws because Azure CLI is missing rather than because app precedes migration. Does this prove its order fault detection?

- **A.** No; the rejection must match the injected dependency failure
- **B.** No; negative tests must never throw errors
- **C.** Yes; every exception demonstrates the required safe release ordering
- **D.** Yes; the graph is safe whenever no app was deployed

## L14-Q031

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A migration script generated for one model is paired with a binary built from another commit. Which release property is inconsistent?

- **A.** The bundle and binary are both individually readable archives
- **B.** The migration and app jobs run on the same machine
- **C.** Application and schema artifacts lack shared candidate provenance
- **D.** The package uses a unique filename for each output

## L14-Q032

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A private worker authenticates to Azure but cannot resolve the SQL FQDN. What gate should fail before migration execution?

- **A.** Only whether the SQL execution command contains the correct migration name
- **B.** Only artifact naming policy
- **C.** The required database network and DNS prerequisite
- **D.** Only the application coverage threshold

## L14-Q033

Applied · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

The rollback plan includes an old binary but no evidence of compatibility with newly written data. What must recovery review add?

- **A.** Use the same archive filename for all versions
- **B.** Validate retained binary behavior against current schema and data
- **C.** Delete the new data automatically without owner review
- **D.** Assume older timestamps always mean safe recovery

## L14-Q034

Applied · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

An application verification stage succeeds before the database migration starts. Why is that insufficient for the intended release completion?

- **A.** Migration is always a documentation-only operation
- **B.** The application verification must ignore subsequent database changes
- **C.** Any earlier green check permanently validates every later state
- **D.** It did not verify the final ordered deployed state

## L14-Q035

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A source SHA in a manifest is correct, but one packaged application file was replaced afterward. What verification catches this drift?

- **A.** Count only the number of extracted directories
- **B.** Compare packaged file hashes with the trusted manifest
- **C.** Compare only the manifest filename
- **D.** Read only the source branch display name

## L14-Q036

Applied · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

The generated SQL is idempotent at migration level but includes a destructive operation when not yet applied. What does idempotence not guarantee?

- **A.** That a script can be generated for inspection
- **B.** That already-recorded migrations can be skipped
- **C.** That migration history influences transition selection
- **D.** That applying the new transition preserves all existing data

## L14-Q037

Applied · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

A reviewer approves a migration script but the execution helper runs a different downloaded bundle. Which boundary should stop execution?

- **A.** A successful Azure login overrides the artifact mismatch
- **B.** A shared friendly release name makes both automatically equivalent
- **C.** Artifact identity must agree with the reviewed migration candidate
- **D.** The SQL server name alone identifies all migration behavior

## L14-Q038

Applied · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

Database recovery requires a backup restore, but the application operator lacks authority over the external database. What should the runbook specify?

- **A.** Automatic deletion and recreation of the external database
- **B.** A broader learner subscription role as the only recovery step
- **C.** Escalation to the authorized database owner and validated recovery procedure
- **D.** A green local JSON flag declaring database recovered

## L14-Q039

Applied · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Release A migration and release B migration target the same database concurrently. Which extra control addresses the shared mutation risk?

- **A.** Only unique artifact names for the two runs
- **B.** Only a code comment naming the preferred deployment order
- **C.** Only longer network timeouts for every SQL request
- **D.** A protected serialization boundary covering the database operations

## L14-Q040

Applied · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

The package includes an app, SQL script and bundle, but only the app checksum is verified. What integrity gap remains?

- **A.** The app checksum automatically covers every unrelated file
- **B.** The source repository name proves all bundle content
- **C.** The executable schema artifact is not covered by verification
- **D.** The database migration no longer needs approval

## L14-Q041

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

A new binary passes health, but telemetry shows the release exceeds its error gate after an additive migration. Which recovery preserves the intended boundaries?

- **A.** Declare success because readiness had once returned HTTP 200
- **B.** Drop all added schema before deciding which binary is compatible
- **C.** Rebuild current main and call any successful upload rollback
- **D.** Use the protected compatible baseline lane and remeasure without automatic schema reversal

## L14-Q042

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

A migration adds a nonnullable field without a safe backfill while old code still creates rows. What should expand/contract review address?

```text
Old writer omits NewField
Migration: ADD NewField NOT NULL
Backfill/default: none
```

- **A.** Only whether the migration identity can apply the new constraint
- **B.** Only whether the generated SQL is syntactically valid
- **C.** Only the artifact retention setting
- **D.** Compatibility of writes and data backfill during mixed-version operation

## L14-Q043

Advanced · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

A baseline binary can read the expanded schema but writes an enum value the new version interprets differently. What does rollback qualification need?

- **A.** Only migration history showing the latest ID
- **B.** Only the baseline source timestamp being earlier
- **C.** Behavioral compatibility with current data semantics as well as schema
- **D.** Only successful extraction of the old archive

## L14-Q044

Advanced · [CP4](README.md#task-4) · [D3.3.6](../../docs/objective-map.md)

Both schema and app jobs depend on build, but neither depends on the other. The app requires the new schema. What specific edge is missing?

- **A.** The build must depend on app verification
- **B.** The migration should depend on cleanup
- **C.** The app must depend on successful migration
- **D.** The artifact filename should contain migrate-first

## L14-Q045

Advanced · [CP3](README.md#task-3) · [D3.4.8](../../docs/objective-map.md)

The migration identity can alter schema while the runtime only needs data reads/writes and migration-history reads. Which permission outcome is correct?

- **A.** Runtime denied DDL while migration can perform the reviewed schema operation
- **B.** Both principals share the same password permanently
- **C.** Runtime granted unrestricted administration to simplify readiness
- **D.** Neither principal needs database user mapping after federation

## L14-Q046

Advanced · [CP1](README.md#task-1) · [D3.4.7](../../docs/objective-map.md)

A release reconstructs the migration bundle from source on a worker with a different SDK after approval. What must the review avoid claiming?

- **A.** That producing source identity is useful provenance
- **B.** That the executed bundle is the originally approved immutable output
- **C.** That source files can be reviewed before execution
- **D.** That a worker needs compatible tooling for compilation

## L14-Q047

Advanced · [CP5](README.md#task-5) · [D3.4.2](../../docs/objective-map.md)

After rollback dispatch, the provider reports success but the version endpoint still returns the failed current revision. What completion decision is justified?

```text
Provider upload: success
Expected baseline revision: A
Live /version revision: B
```

- **A.** Rollback remains unverified because the selected baseline was not observed
- **B.** Rename the baseline reference to the observed current revision
- **C.** Delete version evidence and rely only on upload logs
- **D.** Rollback passed because any successful operation is sufficient

## L14-Q048

Advanced · [CP2](README.md#task-2) · [D3.4.8](../../docs/objective-map.md)

An idempotent migration failed after some provider operations, and its transactional guarantees are uncertain. What should a retry assess first?

- **A.** Delete history so all migrations appear unapplied
- **B.** Actual schema/history state and the reviewed provider recovery behavior
- **C.** Assume every failure means no database state changed
- **D.** Apply every Down script before inspecting current state

## L14-Q049

Advanced · [CP4](README.md#task-4) · [D3.4.2](../../docs/objective-map.md)

An exclusive lock covers application upload only, but database mutations occur earlier outside it. What release concurrency risk remains?

- **A.** Only the migration filename should be changed
- **B.** No risk remains because the final upload is serialized
- **C.** The artifact digest becomes automatically invalid
- **D.** Concurrent runs can still mutate shared schema before serialization

## L14-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.8](../../docs/objective-map.md)

A compatible baseline artifact expired, and the only available older package uses a schema the team no longer supports. What should recovery do?

- **A.** Drop current schema to fit whichever package is available
- **B.** Rebuild the expired version and label it the original without validation
- **C.** Use any available old package because age implies safety
- **D.** Stop automatic rollback and invoke the reviewed owner-led recovery plan
