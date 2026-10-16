# Lab 03 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L03-Q001

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

An operations runbook is edited without review and now names the wrong service. Which repository practice best improves accountability for future edits?

- **A.** Edit the rendered page directly and keep the repository unchanged
- **B.** Review version-controlled documentation changes through pull requests
- **C.** Replace the wiki page after every incident without preserving earlier versions
- **D.** Allow only emailed copies of the runbook

## L03-Q002

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A GitHub Markdown page should render a Mermaid diagram. Which fenced-code language identifies the diagram source for supported rendering?

- **A.** mermaid
- **B.** markdown
- **C.** svg
- **D.** yaml

## L03-Q003

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

A package release removes a public API operation. What information do consumers need beyond the new version number?

- **A.** Only the maintainer's local branch name
- **B.** Only the previous release's successful build badge
- **C.** The breaking change and the steps required to migrate
- **D.** Only the total number of commits in the release

## L03-Q004

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

A responder needs to determine who changed a dangerous wiki instruction. Which evidence is most useful?

- **A.** The current page title and its navigation category
- **B.** The number of people with read access
- **C.** The newest release tag in an unrelated application repository
- **D.** The page's source revision and associated change discussion

## L03-Q005

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

The diagram code block appears, but the graph does not render after a syntax edit. What is the first targeted diagnosis?

```mermaid
flowchart LR
  API --> Database
  Database --> API[unterminated label
```

- **A.** Check the Mermaid syntax accepted by the destination renderer
- **B.** Assume the repository needs a new Git branch
- **C.** Convert every node label into a Markdown heading
- **D.** Change the page's file extension to a pipeline YAML file

## L03-Q006

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Automatically generated notes include a pull-request title describing an internal investigation. What should happen before publication?

- **A.** Replace all entries with the latest commit hash only
- **B.** Review the draft for accuracy customer relevance and sensitive content
- **C.** Publish it unchanged because generation guarantees editorial suitability
- **D.** Remove the entire release version identifier

## L03-Q007

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

A documentation fix reintroduces an older command by mistake. What should the maintainer inspect before reverting the page?

- **A.** The page's total word count
- **B.** The relevant page diff and the intended operational behavior
- **C.** Only the date of the most recent edit
- **D.** Only the number of changed lines

## L03-Q008

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A diagram renders but its arrow points from the database to the API when the API initiates the request. What review is still required?

- **A.** Check that the displayed relationships match the intended architecture
- **B.** Check only that all component names are present
- **C.** Check only that Mermaid syntax validation passes
- **D.** Check only that the SVG and Mermaid show identical arrows

## L03-Q009

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Which release-note entry best supports a consumer upgrading across a renamed API field?

- **A.** The author's editor version and operating system
- **B.** The old field the new field and the required client migration
- **C.** A list of every test that ran without the interface change
- **D.** A statement that the release contains several improvements

## L03-Q010

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

The runbook contains a shell command that restarts a service. Which check complements editorial review before publication?

- **A.** Exercise the command against an authorized representative sandbox
- **B.** Spell-check only the service description
- **C.** Remove the code block language label
- **D.** Copy the command from an older page without checking its current context

## L03-Q011

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A process diagram is stored in a public repository. Which content should be removed from its source before publishing?

- **A.** A documented arrow showing which service calls storage
- **B.** An explanatory legend for dashed integration boundaries
- **C.** An embedded real access token copied into an example label
- **D.** A generic service name such as API

## L03-Q012

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

The team publishes versioned API documentation but overwrites the older version with each release. What reader need is lost?

- **A.** The source repository can no longer create pull requests
- **B.** The release artifact automatically changes its compiled API
- **C.** Users of supported older releases cannot reliably find their interface contract
- **D.** Every caller loses its runtime authentication token

## L03-Q013

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

An incident demands a runbook correction before the normal review meeting. The team must retain accountability and avoid publishing an untested restart command. Which process best fits?

- **A.** Edit production instructions immediately and delete the prior page version
- **B.** Delay every correction until the next monthly documentation review
- **C.** Publish the command in chat and treat the wiki as permanently obsolete
- **D.** Use an expedited reviewed change, validate the command in a safe target, and retain the resulting revision

## L03-Q014

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A diagram works in one local editor but fails in the site's supported renderer. The course needs editable source and an accessible published picture. Which plan preserves both?

- **A.** Use destination-supported Mermaid syntax, retain the editable source, and verify the published rendering with a text description
- **B.** Keep the editor-only syntax and publish a screenshot without describing its relationships
- **C.** Remove the diagram source and retain only a filename in the README
- **D.** Assume every Mermaid renderer supports the newest syntax at the same time

## L03-Q015

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

A release has generated notes, a breaking API change, and an older supported version. Which publication strategy meets the needs of both upgrading and existing consumers?

- **A.** Publish only the breaking-change title and delete the release's source identity
- **B.** Delay all documentation until every user has upgraded
- **C.** Review the generated draft, describe the breaking migration, and publish docs tied to each supported release
- **D.** Publish the generated titles unchanged and replace every old API page with main

## L03-Q016

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A changelog must describe changes shipped between v1.2.0 and v1.3.0. What source range should its generation use?

- **A.** Only commits whose messages contain the new version number
- **B.** The intended release references for those two versions
- **C.** The latest one hundred commits on whichever branch is checked out
- **D.** All commits authored during the current calendar month

## L03-Q017

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook receiver accepts any HTTP POST as a release event. Which validation establishes that a delivery was signed with the configured secret?

- **A.** Verify the provider's signature against the received payload bytes
- **B.** Check that the JSON body contains a repository name
- **C.** Check only that Content-Type is application/json
- **D.** Accept requests whose URL contains the repository slug

## L03-Q018

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The same webhook delivery is retried after a timeout and creates two release requests. Which receiver property is missing?

- **A.** A longer HTTP timeout without event identity tracking
- **B.** A unique release-request title generated for every retry
- **C.** More parallel workers with independent process-local event lists
- **D.** Idempotent processing for a repeated delivery identity

## L03-Q019

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

Boards no longer receives GitHub pull-request activity after installation permissions change. Which repair is best targeted?

- **A.** Recreate the Boards connection without checking its selected repositories
- **B.** Increase polling frequency while retaining the denied repository access
- **C.** Add AB references repeatedly while retaining the unauthorized connector
- **D.** Restore the supported connector's scoped access to the participating repository

## L03-Q020

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A Teams incident channel receives every routine issue update and misses failed releases in the noise. Which subscription change fits its purpose?

- **A.** Disable the integration without creating another failure-response path
- **B.** Filter to actionable release events and route them to the responsible responders
- **C.** Subscribe to every repository event to maximize message count
- **D.** Forward full build logs into every chat message

## L03-Q021

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A hotfix was cherry-picked from main into a supported release branch. Why can notes generated from today's main be wrong for that hotfix?

- **A.** The hotfix automatically updates every unreleased feature on main
- **B.** Main can contain unrelated changes not present in the supported release
- **C.** A cherry-picked change can never appear in Git history
- **D.** Git log cannot inspect release branches

## L03-Q022

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Why should a GitHub webhook signature be checked against the original request body rather than reserialized parsed JSON?

```json
{"repository":{"full_name":"example/service"},"ref":"refs/heads/main"}
```

- **A.** Reserialization can change the byte sequence covered by the signature
- **B.** Parsed JSON always contains the signing secret
- **C.** JSON parsing automatically authenticates repository ownership
- **D.** A signature applies only to the HTTP status code

## L03-Q023

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Which header is suitable for recognizing repeated attempts of the same GitHub webhook delivery?

```http
X-GitHub-Delivery: 3f01d6b0-example
Content-Type: application/json
User-Agent: GitHub-Hookshot/example
```

- **A.** Content-Length
- **B.** X-GitHub-Delivery
- **C.** Content-Type
- **D.** User-Agent

## L03-Q024

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

A correctly formatted work-item reference fails to create a development link. The connector lacks repository access. What explains the result?

- **A.** The branch must be named exactly like the work-item title
- **B.** Supported link syntax and connector authorization are both required
- **C.** Every GitHub pull-request link requires a public repository
- **D.** The work-item number must equal the pull-request number

## L03-Q025

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

What should an integration owner verify when testing a release-failure notification to Teams?

- **A.** Only that the integration settings page loads
- **B.** Only that the channel has a large membership
- **C.** Only that a healthy build sends a routine message
- **D.** The right event reaches the intended channel with useful context and an accountable response path

## L03-Q026

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A CI checkout is shallow and the prior release reference is unavailable. What should the documentation job do before relying on the range?

```text
Checkout: depth 1
Required prior boundary: refs/tags/v1.2.0
Local refs: v1.3.0 only
Generated note count: 0
```

- **A.** Fetch the required history and references then verify the intended range
- **B.** Treat an empty range as proof that the release has no changes
- **C.** Replace the prior tag with the oldest locally visible commit without recording the change
- **D.** Generate notes from the working-directory file timestamps

## L03-Q027

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The receiver receives a correctly formatted event with an invalid signature. What should occur before enqueueing deployment work?

- **A.** Mark the signature optional when the receiver is busy
- **B.** Reject the unauthenticated delivery
- **C.** Queue the deployment and validate only after it completes
- **D.** Accept the event if its repository name matches

## L03-Q028

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

What negative test directly validates duplicate-event handling at the receiver?

- **A.** Change the repository name and confirm a 404 response
- **B.** Count how many worker processes are running
- **C.** Replay the same delivery identity and confirm one intended side effect
- **D.** Send two unrelated valid releases and expect only one deployment

## L03-Q029

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

Which test best validates a repaired repository connection rather than only its configuration page?

- **A.** Count all work items in the project
- **B.** Create a supported fresh work-item reference and inspect its recognized development relationship
- **C.** Take a screenshot of the connection name
- **D.** Confirm that an old plain-text URL still opens in a browser

## L03-Q030

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A Teams integration stops working when the employee who created it leaves. Which maintenance practice addresses the underlying dependency?

- **A.** Rename the channel after each employee departure
- **B.** Copy the old access token into the repository README
- **C.** Retry every notification more frequently without inspecting authorization
- **D.** Document supported ownership authorization and recovery procedures for the integration

## L03-Q031

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

What makes a generated changelog reproducible after the default branch advances?

- **A.** Record only the day the page was viewed
- **B.** Record the number of lines in the generated document
- **C.** Retain the exact source revisions used as its release boundaries
- **D.** Record only the branch name main

## L03-Q032

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook signing secret was committed to source and then removed in a later commit. Which response restores the signing trust?

- **A.** Keep the same secret because the current file no longer shows it
- **B.** Encode the exposed secret before storing it in another tracked file
- **C.** Accept unsigned events until the next release
- **D.** Rotate the compromised secret and coordinate sender and receiver configuration

## L03-Q033

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Where should critical deduplication state live when several receiver workers can process the same event?

- **A.** In a shared durable mechanism with an atomic claim or equivalent concurrency control
- **B.** Only in the memory of the first worker
- **C.** Only in the browser used by the release author
- **D.** In a log message written after all side effects finish

## L03-Q034

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

The connector is being reauthorized after a repository transfer. Which scope avoids unnecessary access expansion?

- **A.** The repositories that actually participate in the project integration
- **B.** All repositories under every organization the administrator can access
- **C.** Every repository whose name contains Azure
- **D.** An unrestricted employee token shared by every project

## L03-Q035

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A notification template includes deployment environment variables. Which content rule best protects secrets while retaining diagnostic value?

- **A.** Assume private Teams membership makes every environment value safe
- **B.** Base 64-encode environment values and include them all
- **C.** Include only variables whose names do not contain SECRET
- **D.** Publish a sanitized summary and links to access-controlled execution evidence

## L03-Q036

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A pipeline generates release notes from a moving tag after building an artifact, and the tag is changed before publication. Which change best preserves documentation-to-artifact consistency?

- **A.** Use the artifact filename as the only source reference
- **B.** Resolve and record the released commit once, then generate and publish notes against that same immutable revision and prior boundary
- **C.** Regenerate both notes and the version label from the current main branch
- **D.** Keep the original artifact but accept whichever tag target exists during publication

## L03-Q037

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A receiver's middleware parses and rewrites JSON before the handler sees it, and valid GitHub signatures fail. Which repair maintains authenticity rather than weakening it?

- **A.** Trust the request's repository field whenever raw-body access is inconvenient
- **B.** Preserve the raw body for signature verification, compare safely, and process the parsed event only after validation
- **C.** Disable signature checking for deliveries that contain valid JSON
- **D.** Recompute signatures using the receiver's normalized JSON and accept either result

## L03-Q038

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A handler records an event as processed before performing work, then crashes; retries are skipped and the release is lost. Which design change best handles both loss and duplicate risk?

```text
1. Mark evt-42 DONE
2. Enqueue deployment
Observed: worker crash between 1 and 2
Retry: skip because DONE
```

- **A.** Delete delivery identifiers immediately after acknowledging transport
- **B.** Return success before persisting anything and disable receiver error logs
- **C.** Track a durable processing state and make the side effect retry-safe with recoverable completion handling
- **D.** Move the done flag to the end and rely on one worker forever

## L03-Q039

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

The repository move is complete and fresh links work. Older items still contain pretransfer references. Which release checklist is most defensible?

- **A.** Replace every old item with a newly created copy
- **B.** Remove historical source references from the audit record
- **C.** Verify historical link continuity separately and reconcile only confirmed broken relationships
- **D.** Declare all historical evidence repaired because one new event succeeded

## L03-Q040

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A release notification design must be low-noise, survive ownership changes, and avoid exposing credentials. Which acceptance test set covers those constraints?

- **A.** Check only the total message count and the channel name
- **B.** Send raw environment output once and delete the message after testing
- **C.** Test a failed release and a routine event, verify sanitized content and destination, and document supported integration ownership
- **D.** Verify one healthy-build message and infer that failure routing works

## L03-Q041

Advanced · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A hotfix artifact is built from release/1.x, but notes generated from main include an unreleased API removal. The source checkout is shallow. What publication repair covers both accuracy and reproducibility?

- **A.** Rebuild the hotfix from main so the existing notes become accurate
- **B.** Publish the notes unchanged with a generic accuracy disclaimer
- **C.** Fetch the required release boundaries and regenerate notes from the artifact's exact source revision and prior supported release
- **D.** Delete only the API-removal sentence and keep generating from moving main

## L03-Q042

Advanced · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A release-failure notification reaches Teams, but its link opens a different environment and the message exposes an environment variable. Routine events also flood the channel. Which test plan fits these defects?

- **A.** Test only that an HTTP success response is returned by the channel endpoint
- **B.** Remove all evidence links while continuing to publish every event
- **C.** Increase channel membership until someone can recognize the correct environment
- **D.** Test event filtering, environment-specific evidence links, sanitized payloads, and the assigned response route

## L03-Q043

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook receiver sees valid signatures fail after middleware parses and serializes the body. The same deployment is also occasionally queued twice. Which design handles both failures?

- **A.** Skip signature checks for retries and keep a per-process list of titles
- **B.** Accept every signed-looking header and deduplicate only after deployment completes
- **C.** Verify the signature against retained original bytes and atomically deduplicate the authenticated delivery identity
- **D.** Verify the signature against the parsed object and deduplicate by deployment title

## L03-Q044

Advanced · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Generated release notes use pull request labels to classify breaking changes. A critical breaking change has the wrong label, while private incident details appear in another title. What publication gate is appropriate?

- **A.** Publish automatically because labels are machine-readable
- **B.** Remove all labels and publish only commit hashes
- **C.** Delay all notes until every historical pull request has perfect labels
- **D.** Review the generated draft against shipped changes, migration requirements, and sensitive-content rules

## L03-Q045

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The receiver acknowledges a release event after writing a durable queue record. A worker deploys successfully, crashes before recording completion, then retries. Which additional control prevents duplicate deployment while allowing recovery?

```text
queue: event E persisted
worker: deploy operation E succeeded
worker: process terminated before completion write
queue: E retry scheduled
```

- **A.** Give each retry a new operation identity
- **B.** A stable operation identity and an idempotent or reconciled deployment side effect
- **C.** Mark the queue record complete before invoking deployment
- **D.** Delete retry support once the first attempt starts

## L03-Q046

Advanced · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

Two maintained product versions ship on the same day from different branches. Both documentation jobs use the latest tag and overwrite one common API directory. What design meets supported-version and provenance needs?

- **A.** Use branch names in page titles while keeping one overwritten body
- **B.** Generate each version from its exact release revision and publish to a stable version-specific location
- **C.** Serialize the jobs but keep the shared latest source and output directory
- **D.** Publish only the newer major version's docs and link older users there

## L03-Q047

Advanced · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md), [D1.3.2](../../docs/objective-map.md)

A supported Mermaid diagram renders locally but not in the published documentation site. The SVG fallback lacks a description, and both disagree with the current topology. What correction is strongest?

- **A.** Correct the architecture source, use destination-supported syntax, and verify the rendered fallback with an equivalent text description
- **B.** Publish only the local screenshot because it proves the source syntax is valid somewhere
- **C.** Keep the outdated SVG because the site can display it reliably
- **D.** Remove the diagram and leave only its filename in the runbook

## L03-Q048

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A valid signed webhook for a repository outside the approved release scope reaches the receiver. Its action is supported and its delivery ID is new. What should happen?

- **A.** Change its repository field to the approved repository and continue
- **B.** Deduplicate it by matching the release title to an approved event
- **C.** Reject or quarantine it under the source authorization policy before creating deployment work
- **D.** Enqueue it because a valid signature authorizes every repository action

## L03-Q049

Advanced · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

A repository transfer preserves Git history, but new Boards development links fail and old release links may redirect. What acceptance plan distinguishes integration recovery from historical continuity?

- **A.** Reconnect every repository in the destination organization and stop testing old links
- **B.** Rewrite all historical work-item text before checking whether existing links resolve
- **C.** Reauthorize the exact moved repository, test a fresh supported link, and audit historical release relationships separately
- **D.** Treat preserved commit hashes as proof that the connector still receives events

## L03-Q050

Advanced · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Release v2 is built from commit b, then its tag is moved to c before notes are generated. v1 remains supported, and commit c changes the API. What is the best publication decision?

```text
v1 -> a111 (supported)
v2 tag at build -> b222
artifact source -> b222
v2 tag at note generation -> c333
```

- **A.** Overwrite v1 docs with c's content to reduce ambiguity
- **B.** Stop publication, reconcile the release source identity, and generate version-specific notes from the approved immutable boundaries
- **C.** Generate notes from c because the current tag name is authoritative regardless of the built artifact
- **D.** Publish b's artifact with c's notes but call the discrepancy cosmetic
