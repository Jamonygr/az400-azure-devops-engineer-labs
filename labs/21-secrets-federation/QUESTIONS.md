# Lab 21 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L21-Q001

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A GitHub deployment job needs Azure access without storing a long-lived client secret. Which authentication pattern should be selected?

- **A.** A personal administrator token in workflow source
- **B.** An App Service publish profile for every Azure operation
- **C.** OIDC workload identity federation
- **D.** A shared client secret in repository settings

## L21-Q002

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The Azure login action cannot request a GitHub OIDC token because the job lacks permission. Which permission is required?

- **A.** packages write
- **B.** id-token write
- **C.** contents write
- **D.** actions write

## L21-Q003

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A GitHub job uses environment production. Which default subject should its Azure federated credential match for repository owner/course?

```yaml
repository: owner/course
job:
  environment: production
  permissions:
    contents: read
    id-token: write
```

- **A.** repo:owner/course:environment:production
- **B.** repo:owner/course:ref:refs/heads/main
- **C.** repo:owner/course:pull_request
- **D.** repo:other/course:environment:production

## L21-Q004

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The workflow can request an OIDC token but Azure rejects the exchange. Which fields should be compared to the federated credential?

- **A.** Issuer, subject and audience
- **B.** Only the Azure client ID and resource group
- **C.** Only the Azure role names assigned to the principal
- **D.** Only the token expiry time and issuance time

## L21-Q005

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The workflow adds environment production after federation was configured for main's branch subject. Token issuance succeeds but exchange fails. Which correction preserves protected-environment trust?

```text
Configured trust subject: repo:owner/course:ref:refs/heads/main
New job configuration: environment: production
Token issuance: succeeded
Azure exchange: subject mismatch
```

- **A.** Trust every repository subject broadly
- **B.** Add repository contents write permission
- **C.** Configure the exact production-environment subject
- **D.** Remove the environment and bypass its approval

## L21-Q006

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The repository is renamed while its production credential still trusts the previous default subject. What should federation maintenance review?

- **A.** Only the client's existing Azure role assignments
- **B.** Only the workflow artifact expiration date
- **C.** Only whether package restore succeeds
- **D.** The exact current subject and configured trust

## L21-Q007

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

The token exchange succeeds, but creating an Azure resource returns authorization denied. Which control should be checked next?

- **A.** The repository's package publish permission
- **B.** The identity's role assignment and target scope
- **C.** The GitHub OIDC issuer alone
- **D.** The action's id-token permission alone

## L21-Q008

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

An Azure Pipelines connection should use short-lived workload authentication rather than a reusable secret. Which connection capability should be evaluated?

- **A.** Workload identity federation
- **B.** A service principal secret without expiration
- **C.** A user's interactive password
- **D.** A stored publish profile for all resource operations

## L21-Q009

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

A WIF service connection should be usable by only one approved release definition. Which authorization setting fits?

- **A.** Copy connection credentials into variable groups
- **B.** Remove environment checks after enabling federation
- **C.** Authorize the specific pipeline
- **D.** Grant access to every pipeline

## L21-Q010

Advanced · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A migration identity needs database schema rights while an application deployment identity must not migrate SQL. Which design preserves federation and separation of duties?

```json
{"migration":{"stage":"production-database","rights":"reviewed schema changes"},"application":{"stage":"production","rights":"deploy application only"}}
```

- **A.** Use one broadly privileged identity for both
- **B.** Use two connection names pointing to the same broad principal
- **C.** Trust all repositories to both identities
- **D.** Separate trusted identities and scoped protected stages

## L21-Q011

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

The GitHub federation job grants contents read and id-token write. What does id-token write itself permit?

- **A.** Reading every environment secret automatically
- **B.** Requesting the job's OIDC token
- **C.** Writing any Azure resource directly
- **D.** Editing the repository's protected branch directly

## L21-Q012

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A protected production identity must not be available to an unrelated repository's workflow. What trust boundary is most important?

- **A.** Match only the public GitHub issuer
- **B.** Grant fewer Azure CLI command arguments
- **C.** Match the intended repository and protected subject exactly
- **D.** Match only the production environment label without repository context

## L21-Q013

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A pipeline identity cannot create its own role assignment during setup. Which bootstrap decision respects separation of privilege?

- **A.** Have an authorized operator grant the reviewed narrow scope
- **B.** Grant subscription Owner permanently to the workload
- **C.** Skip the assignment and claim deployment is ready
- **D.** Put an administrator password in the pipeline file

## L21-Q014

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

An OIDC trust entry exists in Azure, but only a local JSON syntax check ran. What remains unverified?

- **A.** Actual exchange and protected resource authorization
- **B.** Whether the trust document parses locally
- **C.** Whether the workflow text contains a client ID
- **D.** Whether environment names can be written as strings

## L21-Q015

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

Federation works for deployment, but a fork pull request would run on a trusted private runner with access to credential caches. Which control preserves both identity and runner boundaries?

```text
Trusted private runner: persistent workspace; Azure CLI cache present
Proposed workload: arbitrary fork pull-request source
Deployment protection: production environment approval
```

- **A.** Keep the private runner and hide the connection name
- **B.** Grant id-token write to every pull request
- **C.** Replace federation with a permanent secret
- **D.** Separate untrusted CI from protected ephemeral deployment runners

## L21-Q016

Foundational · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.2](../../docs/objective-map.md)

A federated credential uses the expected subject but an unintended audience. What should be corrected before changing Azure resource permissions?

- **A.** The test coverage threshold
- **B.** The audience in the trust configuration
- **C.** The target resource's Reader assignment
- **D.** The application package's output path

## L21-Q017

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

An old secret-based connection is retained during WIF migration for rollback. Which lifecycle control should accompany that temporary fallback?

- **A.** Authorize the fallback connection for every pipeline
- **B.** Explicit expiry, access limits and a removal plan
- **C.** Remove all expiration and monitoring
- **D.** Commit the fallback secret beside the new YAML

## L21-Q018

Applied · [CP1](README.md#task-1) · [D4.2.2](../../docs/objective-map.md)

A deployment identity has the correct production subject, but the workflow deploys an app outside the journal-owned group. Which check should block promotion?

- **A.** Only a matching app-name prefix
- **B.** Only whether the identity has any Contributor grant
- **C.** Exact subscription, group and resource ownership assertions
- **D.** Only successful azure login output

## L21-Q019

Applied · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md), [D4.1.3](../../docs/objective-map.md)

A connection is configured with WIF, and its pipeline consumer is authorized. Which additional prerequisite still affects real deployment execution?

- **A.** Unlimited artifact retention as authentication
- **B.** An automatically inherited production environment approval
- **C.** Agent routing and protected-resource access
- **D.** A copied user password in every job

## L21-Q020

Advanced · [CP2](README.md#task-2) · [D4.2.2](../../docs/objective-map.md)

Token exchange succeeds on the protected runner, but the migration stage cannot reach private SQL and the app stage lacks schema rights by design. Which response respects both constraints?

```text
Migration WIF token exchange: passed
Private SQL DNS: unresolved from current worker
App deployment identity: deliberately lacks schema-alter permission
```

- **A.** Move migration to a public hosted runner because token exchange works
- **B.** Treat token exchange as proof the migration passed
- **C.** Fix migration routing while keeping identities separate
- **D.** Run schema changes under the app identity

## L21-Q021

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

An app setting should reference a Key Vault secret instead of containing plaintext. Which reference scheme should validation accept?

- **A.** An HTTPS vault secret URI
- **B.** An HTTP vault secret URI
- **C.** A plaintext secret value with the same name
- **D.** A relative local filesystem path

## L21-Q022

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A URI's hostname begins with a valid vault name but ends with an attacker-controlled suffix. Which parser behavior is correct?

- **A.** Accept it if HTTPS is present
- **B.** Accept it if the path contains secrets
- **C.** Reject the spoofed hostname
- **D.** Accept any hostname containing vault.azure.net

## L21-Q023

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The service should follow secret rotation without changing its reference whenever a new version is published. Which URI form supports that intent?

- **A.** A versionless secret reference
- **B.** A reference pinned to one version
- **C.** The current secret's plaintext value
- **D.** A URI pointing to a specific old backup file

## L21-Q024

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A deployment must retain one tested secret version until a reviewed configuration update. Which reference form meets that requirement?

- **A.** A version-pinned secret URI
- **B.** A versionless secret URI
- **C.** A URI without a secret name
- **D.** A reference copied from another environment's vault

## L21-Q025

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Rotation publishes a new secret version, but the app intentionally pins the old tested version. Which update preserves controlled adoption while acknowledging service refresh behavior?

```text
Configured URI: https://training.vault.azure.net/secrets/signing-key/version-a
Vault now contains: version-a, version-b
Policy: reviewed adoption only; no plaintext configuration
```

- **A.** Wait indefinitely for the pinned URI to select latest
- **B.** Change only the app role assignment while keeping the pinned URI
- **C.** Refresh the reference without changing the pinned version
- **D.** Review the new version and update the pinned reference explicitly

## L21-Q026

Foundational · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The local reference parser accepts a valid HTTPS URI but never contacts Key Vault. Which conclusion is justified?

- **A.** Secret value successfully retrieved from the vault
- **B.** Application rotation behavior fully verified
- **C.** Vault access granted to the app automatically
- **D.** Reference syntax accepted; live resolution unverified

## L21-Q027

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

The app has a valid secret URI but no managed identity permission to read the secret. Which change addresses actual resolution authorization?

- **A.** Change HTTPS to HTTP
- **B.** Append the secret value to the URI
- **C.** Give the pipeline repository write permission
- **D.** Grant the intended identity narrow secret-read access

## L21-Q028

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A versionless reference points to the correct vault, but a new secret version is not visible immediately. What should operations consider before declaring rotation broken?

- **A.** The service's documented cache and refresh behavior
- **B.** Versionless always means permanent first-version pinning
- **C.** Every cached value proves the new version is absent
- **D.** Changing repository roles forces immediate vault refresh

## L21-Q029

Applied · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

A secret URI passes syntax checks but private endpoint DNS fails on the app's network. Which prerequisite still needs validation?

- **A.** Runtime network path to the vault
- **B.** Only the local URI parser's regex
- **C.** Only the secret reference's version-pinning format
- **D.** Only the secret name's letter case in documentation

## L21-Q030

Advanced · [CP3](README.md#task-3) · [D4.2.1](../../docs/objective-map.md)

Two references are accepted locally, one versioned and one versionless, but no identity exchange or service reads occurred. Which evidence fields avoid overstating coverage?

```json
{"accepted":2,"rejected":3,"versioned":1,"fixtureOnly":true,"resolvedLive":false}
```

- **A.** providerAuthorizationVerified true after parsing
- **B.** rotationPassed true after inspecting the URI
- **C.** fixtureOnly true and resolvedLive false
- **D.** resolvedLive true whenever HTTPS is present

## L21-Q031

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A pipeline needs a signing certificate as a protected file rather than source-controlled contents. Which Azure Pipelines facility fits?

- **A.** Secure files with authorized pipeline access
- **B.** A normal repository source file
- **C.** A public pipeline artifact containing the key
- **D.** A plain-text variable containing the complete binary

## L21-Q032

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A secure file exists in Library, but a pipeline cannot use it. Which control should be checked before copying it elsewhere?

- **A.** Only whether the agent has extra disk space
- **B.** The file's authorized pipelines and approvals
- **C.** Only the repository's default branch name
- **D.** Only the artifact's retention setting

## L21-Q033

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The signing step downloads a private file into the agent workspace. When should the script remove its temporary working copy?

- **A.** Only during the next unrelated pipeline run
- **B.** Never because Library is encrypted
- **C.** In guaranteed cleanup after consumption
- **D.** Only after a fully successful release

## L21-Q034

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A synthetic secure-file fixture verifies a hash before consumption. What does the hash check establish?

- **A.** The file's private key cannot be copied
- **B.** The consumed bytes match the expected fixture
- **C.** The pipeline is authorized in Azure DevOps
- **D.** The file was never present on disk

## L21-Q035

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The consumer throws after reading the temporary signing file. What implementation ensures cleanup still runs while preserving the failure?

```powershell
try {
  $bytes = Get-Content -LiteralPath $temporaryFile -AsByteStream
  Invoke-SigningConsumer $bytes # throws
}
finally { Remove-Item -LiteralPath $temporaryFile }
```

- **A.** Delete only after the consumer returns normally
- **B.** Catch the error and report a successful signing result
- **C.** Leave the file for a future agent job
- **D.** Remove the file in finally and retain the error

## L21-Q036

Foundational · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The local fixture consumes harmless input and deletes it on normal and failing paths. Which provider capability remains unverified?

- **A.** Azure DevOps secure-file authorization and delivery
- **B.** Whether finally executes after the injected failure
- **C.** Whether the expected harmless bytes were hash-checked
- **D.** Whether the temporary local copy was removed

## L21-Q037

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A script emits the complete downloaded certificate bytes for troubleshooting. What diagnostic alternative reduces unnecessary disclosure?

- **A.** Print contents only after failure
- **B.** Store contents inside the evidence JSON
- **C.** Record digest and lifecycle status without contents
- **D.** Encode bytes as Base64 in logs

## L21-Q038

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

The agent directory is reused between jobs and a temporary secure-file copy remains. Which response should the lifecycle require?

- **A.** Pass because the signing step succeeded
- **B.** Delete every file across the agent's home
- **C.** Hide the directory listing from evidence
- **D.** Fail cleanup validation and remove the exact owned residual

## L21-Q039

Applied · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

A team wants a real private key for the local lifecycle exercise. Which choice provides meaningful test coverage without unnecessary secret handling?

- **A.** Report provider authorization from a local file read
- **B.** Use a harmless synthetic file with the same lifecycle
- **C.** Use the production signing key and print it
- **D.** Skip the failure path because input is synthetic

## L21-Q040

Advanced · [CP4](README.md#task-4) · [D4.2.3](../../docs/objective-map.md)

Secure-file access is correctly authorized, but the consuming tool fails after opening it on a persistent agent. Which evidence is required before reporting safe consumption?

```json
{"libraryAuthorized":true,"consumerOpenedFile":true,"consumerFailed":true,"temporaryFileExists":true}
```

- **A.** Only the Library authorization record
- **B.** Only the consumer's stdout
- **C.** Only a passing hash check before execution
- **D.** Both the original failure and verified temporary-file removal

## L21-Q041

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A pipeline needs a secret value during one step but currently prints its environment for debugging. Which logging change should be made?

- **A.** Rely only on masking every possible transformation
- **B.** Print secrets only in pull requests
- **C.** Move the dump into a downloadable artifact
- **D.** Remove broad environment dumps and log safe metadata

## L21-Q042

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A leaked credential is found in a committed file and is still valid. What should happen before treating Git history cleanup as sufficient?

- **A.** Rewrite history and leave the credential valid
- **B.** Rename the file containing the credential
- **C.** Add the file to gitignore only
- **D.** Revoke or rotate the credential promptly

## L21-Q043

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A token is Base64-encoded before being printed, and the raw token is registered for masking. Which conclusion is safest?

- **A.** Base64 encryption makes publication harmless
- **B.** A private repository eliminates the need for redaction
- **C.** The encoded output can still leak the token
- **D.** Masking the raw token guarantees all encodings are hidden

## L21-Q044

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The exercise searches generated evidence for a synthetic leakage marker. What should validation establish before recording the negative check as passed?

- **A.** The marker is absent from the intended output paths
- **B.** The marker variable exists in memory
- **C.** The evidence directory's name contains private
- **D.** No real token was used anywhere

## L21-Q045

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A secret was removed from current source, but remains in CI logs and a retained artifact. Which response covers the complete observed exposure?

```json
{"currentSourceClean":true,"credentialStillValid":true,"exposurePaths":["previous CI log","retained artifact"]}
```

- **A.** Disable the scanner to avoid duplicate findings
- **B.** Shorten future log retention without rotating
- **C.** Rotate it and address the affected retained evidence
- **D.** Commit another source deletion only

## L21-Q046

Foundational · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A scanner fixture uses a recognizable fake token string while evidence intentionally records only counts. What is the best assertion for the redaction path?

- **A.** Assert that the output JSON is valid
- **B.** Assert that at least one log exists
- **C.** Assert the marker appears in every result
- **D.** Search output files for the exact synthetic marker

## L21-Q047

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A pipeline author wants to commit learner identifiers and secret-resolution responses as proof of completion. Which evidence format is preferable?

- **A.** Full raw service responses including tokens
- **B.** A screenshot showing the complete connection string
- **C.** A reusable production password beside the status
- **D.** Redacted statuses, hashes and scoped nonsecret observations

## L21-Q048

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

A redaction function masks a known token but includes an unknown password under another JSON key. What limitation should the test address?

- **A.** Only whether the known token was masked in stdout
- **B.** Coverage across sensitive fields and structured outputs
- **C.** Only whether one exact token string was replaced
- **D.** Only whether the JSON remains pretty-printed

## L21-Q049

Applied · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The pipeline enables shell command tracing while passing a secret to a command argument. Which change reduces log exposure most directly?

- **A.** Encode the argument before tracing it
- **B.** Publish the trace only after successful deployment
- **C.** Avoid tracing secrets and use supported protected input mechanisms
- **D.** Increase trace verbosity to improve masking

## L21-Q050

Advanced · [CP5](README.md#task-5) · [D4.2.4](../../docs/objective-map.md)

The local exercise rejects unsafe references, removes synthetic files on both paths and finds no leakage marker. Federation, vault resolution and Library authorization were not executed. Which final status is accurate?

```json
{"unsafeReferencesRejected":true,"bothFilePathsCleaned":true,"leakMarkerAbsent":true,"federationExecuted":false,"vaultResolvedLive":false,"libraryAuthorizationVerified":false}
```

- **A.** Mark secure-file provider validation passed after local temporary-file cleanup
- **B.** Local handling verified; provider integrations remain unverified
- **C.** All live secrets integrations passed
- **D.** Provider failures proven by synthetic tests
