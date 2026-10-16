# Lab 03 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L03-Q001

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

An operations runbook is edited without review and now names the wrong service. Which repository practice best improves accountability for future edits?

- **A. Edit the rendered page directly and keep the repository unchanged** The published instructions would diverge from the maintained source of truth.
- **B. Review version-controlled documentation changes through pull requests** **Correct.** The proposed change receives review and retains an attributable revision history.
- **C. Replace the wiki page after every incident without preserving earlier versions** That removes the revision evidence needed to understand and reverse a bad edit.
- **D. Allow only emailed copies of the runbook** Email copies fragment the source and do not establish a reviewed shared version.

**Explanation:** The published instructions would diverge from the maintained source of truth. The proposed change receives review and retains an attributable revision history. That removes the revision evidence needed to understand and reverse a bad edit. Email copies fragment the source and do not establish a reviewed shared version.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops)

## L03-Q002

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A GitHub Markdown page should render a Mermaid diagram. Which fenced-code language identifies the diagram source for supported rendering?

- **A. mermaid** **Correct.** The supported diagram renderer recognizes the mermaid fenced-code identifier.
- **B. markdown** That identifies Markdown source rather than requesting Mermaid diagram rendering.
- **C. svg** An SVG code fence does not interpret Mermaid graph syntax.
- **D. yaml** YAML highlighting does not invoke the Mermaid diagram renderer.

**Explanation:** The supported diagram renderer recognizes the mermaid fenced-code identifier. That identifies Markdown source rather than requesting Mermaid diagram rendering. An SVG code fence does not interpret Mermaid graph syntax. YAML highlighting does not invoke the Mermaid diagram renderer.

**Sources:** [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q003

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

A package release removes a public API operation. What information do consumers need beyond the new version number?

- **A. Only the maintainer's local branch name** A branch name is not a consumer-facing compatibility contract.
- **B. Only the previous release's successful build badge** Earlier build success does not explain the new API behavior.
- **C. The breaking change and the steps required to migrate** **Correct.** Consumers need to understand the compatibility impact and their required action.
- **D. Only the total number of commits in the release** Commit volume does not explain which interface changed or how callers should adapt.

**Explanation:** A branch name is not a consumer-facing compatibility contract. Earlier build success does not explain the new API behavior. Consumers need to understand the compatibility impact and their required action. Commit volume does not explain which interface changed or how callers should adapt.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q004

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

A responder needs to determine who changed a dangerous wiki instruction. Which evidence is most useful?

- **A. The current page title and its navigation category** Those identify presentation structure rather than the person or revision responsible.
- **B. The number of people with read access** Reader inventory does not identify who changed the instruction.
- **C. The newest release tag in an unrelated application repository** That tag does not establish the wiki page's editing history.
- **D. The page's source revision and associated change discussion** **Correct.** Version history connects the exact instruction change to its author and review context.

**Explanation:** Those identify presentation structure rather than the person or revision responsible. Reader inventory does not identify who changed the instruction. That tag does not establish the wiki page's editing history. Version history connects the exact instruction change to its author and review context.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops)

## L03-Q005

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

The diagram code block appears, but the graph does not render after a syntax edit. What is the first targeted diagnosis?

```mermaid
flowchart LR
  API --> Database
  Database --> API[unterminated label
```

- **A. Check the Mermaid syntax accepted by the destination renderer** **Correct.** A supported fence still needs a valid diagram for that renderer.
- **B. Assume the repository needs a new Git branch** Branch creation does not repair invalid graph syntax.
- **C. Convert every node label into a Markdown heading** Heading markup is not a replacement for valid Mermaid graph structure.
- **D. Change the page's file extension to a pipeline YAML file** That changes the document type without correcting diagram syntax.

**Explanation:** A supported fence still needs a valid diagram for that renderer. Branch creation does not repair invalid graph syntax. Heading markup is not a replacement for valid Mermaid graph structure. That changes the document type without correcting diagram syntax.

**Sources:** [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q006

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Automatically generated notes include a pull-request title describing an internal investigation. What should happen before publication?

- **A. Replace all entries with the latest commit hash only** A hash alone does not communicate behavior or migration impact.
- **B. Review the draft for accuracy customer relevance and sensitive content** **Correct.** Generated metadata can contain internal language or information unsuitable for release communication.
- **C. Publish it unchanged because generation guarantees editorial suitability** Automation collects configured metadata rather than judging every disclosure or reader need.
- **D. Remove the entire release version identifier** Removing provenance does not correct the draft's content.

**Explanation:** A hash alone does not communicate behavior or migration impact. Generated metadata can contain internal language or information unsuitable for release communication. Automation collects configured metadata rather than judging every disclosure or reader need. Removing provenance does not correct the draft's content.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q007

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

A documentation fix reintroduces an older command by mistake. What should the maintainer inspect before reverting the page?

- **A. The page's total word count** Document length does not identify the faulty operation or safe repair.
- **B. The relevant page diff and the intended operational behavior** **Correct.** A targeted review distinguishes the erroneous instruction from other valid improvements.
- **C. Only the date of the most recent edit** Recency alone does not identify which content is wrong.
- **D. Only the number of changed lines** Change size cannot establish whether the command is operationally correct.

**Explanation:** Document length does not identify the faulty operation or safe repair. A targeted review distinguishes the erroneous instruction from other valid improvements. Recency alone does not identify which content is wrong. Change size cannot establish whether the command is operationally correct.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops)

## L03-Q008

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A diagram renders but its arrow points from the database to the API when the API initiates the request. What review is still required?

- **A. Check that the displayed relationships match the intended architecture** **Correct.** Successful parsing establishes renderability rather than semantic correctness.
- **B. Check only that all component names are present** Correct names do not establish that the arrows express the actual initiating relationship.
- **C. Check only that Mermaid syntax validation passes** The parser cannot determine whether the represented architecture matches the intended interaction.
- **D. Check only that the SVG and Mermaid show identical arrows** Consistency between two incorrect versions does not establish semantic accuracy.

**Explanation:** Successful parsing establishes renderability rather than semantic correctness. Correct names do not establish that the arrows express the actual initiating relationship. The parser cannot determine whether the represented architecture matches the intended interaction. Consistency between two incorrect versions does not establish semantic accuracy.

**Sources:** [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q009

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Which release-note entry best supports a consumer upgrading across a renamed API field?

- **A. The author's editor version and operating system** Authoring environment details do not describe the consumer API contract.
- **B. The old field the new field and the required client migration** **Correct.** The entry identifies the interface change and the action needed to remain compatible.
- **C. A list of every test that ran without the interface change** Execution details alone do not tell consumers how to update their clients.
- **D. A statement that the release contains several improvements** That description hides the specific compatibility obligation.

**Explanation:** Authoring environment details do not describe the consumer API contract. The entry identifies the interface change and the action needed to remain compatible. Execution details alone do not tell consumers how to update their clients. That description hides the specific compatibility obligation.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q010

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

The runbook contains a shell command that restarts a service. Which check complements editorial review before publication?

- **A. Exercise the command against an authorized representative sandbox** **Correct.** A safe functional check can expose a syntactically valid but operationally wrong instruction.
- **B. Spell-check only the service description** Correct spelling does not prove that the command targets the intended service.
- **C. Remove the code block language label** Formatting changes do not validate the command's behavior.
- **D. Copy the command from an older page without checking its current context** An earlier instruction can contain outdated service or environment assumptions.

**Explanation:** A safe functional check can expose a syntactically valid but operationally wrong instruction. Correct spelling does not prove that the command targets the intended service. Formatting changes do not validate the command's behavior. An earlier instruction can contain outdated service or environment assumptions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops)

## L03-Q011

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A process diagram is stored in a public repository. Which content should be removed from its source before publishing?

- **A. A documented arrow showing which service calls storage** A nonsecret relationship is the purpose of the diagram.
- **B. An explanatory legend for dashed integration boundaries** A nonsensitive legend helps readers interpret the architecture.
- **C. An embedded real access token copied into an example label** **Correct.** Diagram source is versioned text and can disclose the credential.
- **D. A generic service name such as API** A nonsensitive generic component label is appropriate architectural context.

**Explanation:** A nonsecret relationship is the purpose of the diagram. A nonsensitive legend helps readers interpret the architecture. Diagram source is versioned text and can disclose the credential. A nonsensitive generic component label is appropriate architectural context.

**Sources:** [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q012

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

The team publishes versioned API documentation but overwrites the older version with each release. What reader need is lost?

- **A. The source repository can no longer create pull requests** Documentation replacement does not disable repository collaboration.
- **B. The release artifact automatically changes its compiled API** Changing documentation does not modify existing application binaries.
- **C. Users of supported older releases cannot reliably find their interface contract** **Correct.** Versioned consumers may need documentation matching the software they still run.
- **D. Every caller loses its runtime authentication token** Documentation publication does not itself revoke application credentials.

**Explanation:** Documentation replacement does not disable repository collaboration. Changing documentation does not modify existing application binaries. Versioned consumers may need documentation matching the software they still run. Documentation publication does not itself revoke application credentials.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q013

Foundational · [CP4](README.md#task-4) · [D1.3.1](../../docs/objective-map.md)

An incident demands a runbook correction before the normal review meeting. The team must retain accountability and avoid publishing an untested restart command. Which process best fits?

- **A. Edit production instructions immediately and delete the prior page version** That removes both validation and an auditable recovery path.
- **B. Delay every correction until the next monthly documentation review** That leaves responders with a known dangerous instruction during the incident.
- **C. Publish the command in chat and treat the wiki as permanently obsolete** Competing instruction sources increase confusion without establishing a governed replacement.
- **D. Use an expedited reviewed change, validate the command in a safe target, and retain the resulting revision** **Correct.** An emergency path can shorten coordination while preserving technical evidence and attribution.

**Explanation:** That removes both validation and an auditable recovery path. That leaves responders with a known dangerous instruction during the incident. Competing instruction sources increase confusion without establishing a governed replacement. An emergency path can shorten coordination while preserving technical evidence and attribution.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops)

## L03-Q014

Foundational · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md)

A diagram works in one local editor but fails in the site's supported renderer. The course needs editable source and an accessible published picture. Which plan preserves both?

- **A. Use destination-supported Mermaid syntax, retain the editable source, and verify the published rendering with a text description** **Correct.** The plan addresses renderer compatibility and preserves meaningful information for different readers.
- **B. Keep the editor-only syntax and publish a screenshot without describing its relationships** That discards editable destination support and makes the architecture harder to access.
- **C. Remove the diagram source and retain only a filename in the README** A filename does not communicate the architecture or preserve a useful editable representation.
- **D. Assume every Mermaid renderer supports the newest syntax at the same time** Renderer versions and supported features can differ between destinations.

**Explanation:** The plan addresses renderer compatibility and preserves meaningful information for different readers. That discards editable destination support and makes the architecture harder to access. A filename does not communicate the architecture or preserve a useful editable representation. Renderer versions and supported features can differ between destinations.

**Sources:** [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q015

Foundational · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

A release has generated notes, a breaking API change, and an older supported version. Which publication strategy meets the needs of both upgrading and existing consumers?

- **A. Publish only the breaking-change title and delete the release's source identity** Consumers would lose both migration detail and a reliable version association.
- **B. Delay all documentation until every user has upgraded** Users need the compatibility information in order to plan that upgrade.
- **C. Review the generated draft, describe the breaking migration, and publish docs tied to each supported release** **Correct.** The strategy separates source-derived inventory from consumer explanation and version-specific interface reference.
- **D. Publish the generated titles unchanged and replace every old API page with main** That can omit migration guidance and describe behavior absent from supported releases.

**Explanation:** Consumers would lose both migration detail and a reliable version association. Users need the compatibility information in order to plan that upgrade. The strategy separates source-derived inventory from consumer explanation and version-specific interface reference. That can omit migration guidance and describe behavior absent from supported releases.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q016

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A changelog must describe changes shipped between v1.2.0 and v1.3.0. What source range should its generation use?

- **A. Only commits whose messages contain the new version number** Many shipped changes may not mention the final release label.
- **B. The intended release references for those two versions** **Correct.** The range should correspond to the revisions defining the actual release boundary.
- **C. The latest one hundred commits on whichever branch is checked out** A fixed count and arbitrary branch can include unshipped or omit shipped changes.
- **D. All commits authored during the current calendar month** Author dates need not match which changes the release contains.

**Explanation:** Many shipped changes may not mention the final release label. The range should correspond to the revisions defining the actual release boundary. A fixed count and arbitrary branch can include unshipped or omit shipped changes. Author dates need not match which changes the release contains.

**Sources:** [S6](https://git-scm.com/docs/git-log)

## L03-Q017

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook receiver accepts any HTTP POST as a release event. Which validation establishes that a delivery was signed with the configured secret?

- **A. Verify the provider's signature against the received payload bytes** **Correct.** Signature verification binds the received content to the shared signing secret.
- **B. Check that the JSON body contains a repository name** An arbitrary caller can include that ordinary payload field.
- **C. Check only that Content-Type is application/json** A content-type header does not authenticate the sender.
- **D. Accept requests whose URL contains the repository slug** A public route name is not proof that the sender is authorized.

**Explanation:** Signature verification binds the received content to the shared signing secret. An arbitrary caller can include that ordinary payload field. A content-type header does not authenticate the sender. A public route name is not proof that the sender is authorized.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q018

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The same webhook delivery is retried after a timeout and creates two release requests. Which receiver property is missing?

- **A. A longer HTTP timeout without event identity tracking** More waiting may reduce some retries but does not prevent duplicate effects when retries occur.
- **B. A unique release-request title generated for every retry** A new identity per retry hides that the event represents the same logical work.
- **C. More parallel workers with independent process-local event lists** Independent workers can each accept the same delivery and create duplicate side effects.
- **D. Idempotent processing for a repeated delivery identity** **Correct.** A repeated transport event should not repeat the same intended side effect.

**Explanation:** More waiting may reduce some retries but does not prevent duplicate effects when retries occur. A new identity per retry hides that the event represents the same logical work. Independent workers can each accept the same delivery and create duplicate side effects. A repeated transport event should not repeat the same intended side effect.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q019

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

Boards no longer receives GitHub pull-request activity after installation permissions change. Which repair is best targeted?

- **A. Recreate the Boards connection without checking its selected repositories** A replacement can retain the same missing source scope and disrupt a connection that needs a narrower repair.
- **B. Increase polling frequency while retaining the denied repository access** More frequent requests do not restore the permission needed to observe source activity.
- **C. Add AB references repeatedly while retaining the unauthorized connector** Supported text cannot substitute for the connector source authorization.
- **D. Restore the supported connector's scoped access to the participating repository** **Correct.** The integration needs authorization to observe the relevant source activity.

**Explanation:** A replacement can retain the same missing source scope and disrupt a connection that needs a narrower repair. More frequent requests do not restore the permission needed to observe source activity. Supported text cannot substitute for the connector source authorization. The integration needs authorization to observe the relevant source activity.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q020

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A Teams incident channel receives every routine issue update and misses failed releases in the noise. Which subscription change fits its purpose?

- **A. Disable the integration without creating another failure-response path** That removes useful feedback along with unwanted messages.
- **B. Filter to actionable release events and route them to the responsible responders** **Correct.** The channel's operational purpose should determine its useful event scope.
- **C. Subscribe to every repository event to maximize message count** More low-value messages preserve the reported signal problem.
- **D. Forward full build logs into every chat message** Verbose payloads increase noise and may disclose sensitive execution details.

**Explanation:** That removes useful feedback along with unwanted messages. The channel's operational purpose should determine its useful event scope. More low-value messages preserve the reported signal problem. Verbose payloads increase noise and may disclose sensitive execution details.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q021

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A hotfix was cherry-picked from main into a supported release branch. Why can notes generated from today's main be wrong for that hotfix?

- **A. The hotfix automatically updates every unreleased feature on main** Selecting one patch does not imply releasing all current development work.
- **B. Main can contain unrelated changes not present in the supported release** **Correct.** Documentation must follow the delivered revision rather than a newer development branch.
- **C. A cherry-picked change can never appear in Git history** Cherry-picking produces a commit that can be inspected like other history.
- **D. Git log cannot inspect release branches** Git history inspection supports explicit revisions and ranges.

**Explanation:** Selecting one patch does not imply releasing all current development work. Documentation must follow the delivered revision rather than a newer development branch. Cherry-picking produces a commit that can be inspected like other history. Git history inspection supports explicit revisions and ranges.

**Sources:** [S6](https://git-scm.com/docs/git-log)

## L03-Q022

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Why should a GitHub webhook signature be checked against the original request body rather than reserialized parsed JSON?

```json
{"repository":{"full_name":"example/service"},"ref":"refs/heads/main"}
```

- **A. Reserialization can change the byte sequence covered by the signature** **Correct.** The signature authenticates the exact delivered payload representation.
- **B. Parsed JSON always contains the signing secret** The secret is configured separately rather than embedded for the receiver to read.
- **C. JSON parsing automatically authenticates repository ownership** Valid syntax does not establish who sent the payload.
- **D. A signature applies only to the HTTP status code** The validation concerns payload integrity and secret possession, not the response code.

**Explanation:** The signature authenticates the exact delivered payload representation. The secret is configured separately rather than embedded for the receiver to read. Valid syntax does not establish who sent the payload. The validation concerns payload integrity and secret possession, not the response code.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q023

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Which header is suitable for recognizing repeated attempts of the same GitHub webhook delivery?

```http
X-GitHub-Delivery: 3f01d6b0-example
Content-Type: application/json
User-Agent: GitHub-Hookshot/example
```

- **A. Content-Length** Unrelated events can have equal payload lengths.
- **B. X-GitHub-Delivery** **Correct.** GitHub supplies a delivery identifier suitable for tracking the delivery across processing attempts.
- **C. Content-Type** Many different deliveries share the same content type.
- **D. User-Agent** The sender's client identification is not a unique event identity.

**Explanation:** Unrelated events can have equal payload lengths. GitHub supplies a delivery identifier suitable for tracking the delivery across processing attempts. Many different deliveries share the same content type. The sender's client identification is not a unique event identity.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q024

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

A correctly formatted work-item reference fails to create a development link. The connector lacks repository access. What explains the result?

- **A. The branch must be named exactly like the work-item title** A matching branch name is not the repository-authorization mechanism.
- **B. Supported link syntax and connector authorization are both required** **Correct.** Correct reference text cannot compensate for a disconnected or unauthorized integration.
- **C. Every GitHub pull-request link requires a public repository** The connected integration can support appropriately authorized private repositories.
- **D. The work-item number must equal the pull-request number** The two systems have independent identifiers rather than a required numeric equality.

**Explanation:** A matching branch name is not the repository-authorization mechanism. Correct reference text cannot compensate for a disconnected or unauthorized integration. The connected integration can support appropriately authorized private repositories. The two systems have independent identifiers rather than a required numeric equality.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q025

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

What should an integration owner verify when testing a release-failure notification to Teams?

- **A. Only that the integration settings page loads** Configuration availability does not test an actual message path.
- **B. Only that the channel has a large membership** Recipient count does not establish correct routing or actionability.
- **C. Only that a healthy build sends a routine message** The operational requirement concerns release failures rather than healthy-run noise.
- **D. The right event reaches the intended channel with useful context and an accountable response path** **Correct.** Transport delivery is useful only when the recipient can identify and act on the failure.

**Explanation:** Configuration availability does not test an actual message path. Recipient count does not establish correct routing or actionability. The operational requirement concerns release failures rather than healthy-run noise. Transport delivery is useful only when the recipient can identify and act on the failure.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q026

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A CI checkout is shallow and the prior release reference is unavailable. What should the documentation job do before relying on the range?

```text
Checkout: depth 1
Required prior boundary: refs/tags/v1.2.0
Local refs: v1.3.0 only
Generated note count: 0
```

- **A. Fetch the required history and references then verify the intended range** **Correct.** Range-based generation needs the boundary revisions to be present locally.
- **B. Treat an empty range as proof that the release has no changes** Missing history can cause incomplete evidence rather than a genuinely empty release.
- **C. Replace the prior tag with the oldest locally visible commit without recording the change** That silently changes the release boundary and can misstate shipped changes.
- **D. Generate notes from the working-directory file timestamps** Filesystem timestamps do not identify the Git commit range delivered.

**Explanation:** Range-based generation needs the boundary revisions to be present locally. Missing history can cause incomplete evidence rather than a genuinely empty release. That silently changes the release boundary and can misstate shipped changes. Filesystem timestamps do not identify the Git commit range delivered.

**Sources:** [S6](https://git-scm.com/docs/git-log)

## L03-Q027

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The receiver receives a correctly formatted event with an invalid signature. What should occur before enqueueing deployment work?

- **A. Mark the signature optional when the receiver is busy** Load does not remove the need for authentication before sensitive processing.
- **B. Reject the unauthenticated delivery** **Correct.** Event formatting does not override failure of the configured authenticity check.
- **C. Queue the deployment and validate only after it completes** Privileged side effects would occur before the sender is trusted.
- **D. Accept the event if its repository name matches** A matching ordinary field can be forged by an untrusted sender.

**Explanation:** Load does not remove the need for authentication before sensitive processing. Event formatting does not override failure of the configured authenticity check. Privileged side effects would occur before the sender is trusted. A matching ordinary field can be forged by an untrusted sender.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q028

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

What negative test directly validates duplicate-event handling at the receiver?

- **A. Change the repository name and confirm a 404 response** That checks routing rather than whether a valid event repeats its side effect.
- **B. Count how many worker processes are running** Worker inventory does not establish duplicate suppression behavior.
- **C. Replay the same delivery identity and confirm one intended side effect** **Correct.** The repeated input exercises the actual retry safety property.
- **D. Send two unrelated valid releases and expect only one deployment** Distinct releases may legitimately require separate processing.

**Explanation:** That checks routing rather than whether a valid event repeats its side effect. Worker inventory does not establish duplicate suppression behavior. The repeated input exercises the actual retry safety property. Distinct releases may legitimately require separate processing.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q029

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

Which test best validates a repaired repository connection rather than only its configuration page?

- **A. Count all work items in the project** The total does not reveal whether repository relationships now work.
- **B. Create a supported fresh work-item reference and inspect its recognized development relationship** **Correct.** A new event verifies the authorized path through to visible work tracking.
- **C. Take a screenshot of the connection name** A name does not prove event delivery and association.
- **D. Confirm that an old plain-text URL still opens in a browser** URL reachability does not demonstrate recognized integration processing.

**Explanation:** The total does not reveal whether repository relationships now work. A new event verifies the authorized path through to visible work tracking. A name does not prove event delivery and association. URL reachability does not demonstrate recognized integration processing.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q030

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A Teams integration stops working when the employee who created it leaves. Which maintenance practice addresses the underlying dependency?

- **A. Rename the channel after each employee departure** A name change does not restore authorization or service ownership.
- **B. Copy the old access token into the repository README** Publishing a credential creates exposure without a sound service lifecycle.
- **C. Retry every notification more frequently without inspecting authorization** Additional retries cannot fix revoked or missing integration access.
- **D. Document supported ownership authorization and recovery procedures for the integration** **Correct.** Account-linked integrations need explicit lifecycle responsibility rather than an assumed permanent creator.

**Explanation:** A name change does not restore authorization or service ownership. Publishing a credential creates exposure without a sound service lifecycle. Additional retries cannot fix revoked or missing integration access. Account-linked integrations need explicit lifecycle responsibility rather than an assumed permanent creator.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q031

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

What makes a generated changelog reproducible after the default branch advances?

- **A. Record only the day the page was viewed** Viewing time does not identify which commits were included.
- **B. Record the number of lines in the generated document** Document size is not a source-range identity.
- **C. Retain the exact source revisions used as its release boundaries** **Correct.** Immutable revision identity allows the same intended history to be inspected later.
- **D. Record only the branch name main** A moving branch can identify different source content in the future.

**Explanation:** Viewing time does not identify which commits were included. Document size is not a source-range identity. Immutable revision identity allows the same intended history to be inspected later. A moving branch can identify different source content in the future.

**Sources:** [S6](https://git-scm.com/docs/git-log)

## L03-Q032

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook signing secret was committed to source and then removed in a later commit. Which response restores the signing trust?

- **A. Keep the same secret because the current file no longer shows it** Historical or copied values remain usable until the credential changes.
- **B. Encode the exposed secret before storing it in another tracked file** Encoding does not invalidate or protect the already disclosed signing value.
- **C. Accept unsigned events until the next release** That removes the authenticity boundary instead of restoring it.
- **D. Rotate the compromised secret and coordinate sender and receiver configuration** **Correct.** Deleting current text does not revoke an exposed value still usable for signatures.

**Explanation:** Historical or copied values remain usable until the credential changes. Encoding does not invalidate or protect the already disclosed signing value. That removes the authenticity boundary instead of restoring it. Deleting current text does not revoke an exposed value still usable for signatures.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q033

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

Where should critical deduplication state live when several receiver workers can process the same event?

- **A. In a shared durable mechanism with an atomic claim or equivalent concurrency control** **Correct.** Independent workers need a coordinated decision about whether processing already occurred.
- **B. Only in the memory of the first worker** Another worker cannot reliably observe that private state.
- **C. Only in the browser used by the release author** Server retries do not share that browser-local state.
- **D. In a log message written after all side effects finish** A late uncoordinated record leaves a window for concurrent duplicates.

**Explanation:** Independent workers need a coordinated decision about whether processing already occurred. Another worker cannot reliably observe that private state. Server retries do not share that browser-local state. A late uncoordinated record leaves a window for concurrent duplicates.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q034

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

The connector is being reauthorized after a repository transfer. Which scope avoids unnecessary access expansion?

- **A. The repositories that actually participate in the project integration** **Correct.** The repair should restore intended consumers without authorizing unrelated private sources.
- **B. All repositories under every organization the administrator can access** That exceeds the participating project boundary.
- **C. Every repository whose name contains Azure** A naming match does not establish an approved integration requirement.
- **D. An unrestricted employee token shared by every project** That broadens privilege and couples service availability to personal credential ownership.

**Explanation:** The repair should restore intended consumers without authorizing unrelated private sources. That exceeds the participating project boundary. A naming match does not establish an approved integration requirement. That broadens privilege and couples service availability to personal credential ownership.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q035

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A notification template includes deployment environment variables. Which content rule best protects secrets while retaining diagnostic value?

- **A. Assume private Teams membership makes every environment value safe** A private channel is still broader distribution of potentially sensitive credentials.
- **B. Base 64-encode environment values and include them all** Reversible encoding does not make secrets safe to distribute.
- **C. Include only variables whose names do not contain SECRET** Sensitive values do not always use that naming convention.
- **D. Publish a sanitized summary and links to access-controlled execution evidence** **Correct.** Responders receive context without copying raw secret-bearing state into chat.

**Explanation:** A private channel is still broader distribution of potentially sensitive credentials. Reversible encoding does not make secrets safe to distribute. Sensitive values do not always use that naming convention. Responders receive context without copying raw secret-bearing state into chat.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q036

Applied · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A pipeline generates release notes from a moving tag after building an artifact, and the tag is changed before publication. Which change best preserves documentation-to-artifact consistency?

- **A. Use the artifact filename as the only source reference** A human-assigned filename does not establish the originating commit range.
- **B. Resolve and record the released commit once, then generate and publish notes against that same immutable revision and prior boundary** **Correct.** A shared immutable identity prevents a later reference movement from changing the documented release contents.
- **C. Regenerate both notes and the version label from the current main branch** That can document changes absent from the artifact already built.
- **D. Keep the original artifact but accept whichever tag target exists during publication** The release record would combine two potentially different source states.

**Explanation:** A human-assigned filename does not establish the originating commit range. A shared immutable identity prevents a later reference movement from changing the documented release contents. That can document changes absent from the artifact already built. The release record would combine two potentially different source states.

**Sources:** [S6](https://git-scm.com/docs/git-log); [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q037

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A receiver's middleware parses and rewrites JSON before the handler sees it, and valid GitHub signatures fail. Which repair maintains authenticity rather than weakening it?

- **A. Trust the request's repository field whenever raw-body access is inconvenient** A caller-controlled field cannot substitute for signature verification.
- **B. Preserve the raw body for signature verification, compare safely, and process the parsed event only after validation** **Correct.** The receiver needs the exact signed bytes while retaining validation before any side effect.
- **C. Disable signature checking for deliveries that contain valid JSON** Syntax validity is not sender authentication.
- **D. Recompute signatures using the receiver's normalized JSON and accept either result** Accepting an alternate unauthenticated representation weakens the provider's exact-payload trust contract.

**Explanation:** A caller-controlled field cannot substitute for signature verification. The receiver needs the exact signed bytes while retaining validation before any side effect. Syntax validity is not sender authentication. Accepting an alternate unauthenticated representation weakens the provider's exact-payload trust contract.

**Sources:** [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q038

Applied · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A handler records an event as processed before performing work, then crashes; retries are skipped and the release is lost. Which design change best handles both loss and duplicate risk?

```text
1. Mark evt-42 DONE
2. Enqueue deployment
Observed: worker crash between 1 and 2
Retry: skip because DONE
```

- **A. Delete delivery identifiers immediately after acknowledging transport** That removes the evidence needed to recognize later repeated attempts.
- **B. Return success before persisting anything and disable receiver error logs** That can lose work silently and provides no recoverable processing record.
- **C. Track a durable processing state and make the side effect retry-safe with recoverable completion handling** **Correct.** A single early done flag cannot distinguish completed work from a crashed attempt.
- **D. Move the done flag to the end and rely on one worker forever** A crash after the side effect but before the flag can still duplicate work.

**Explanation:** That removes the evidence needed to recognize later repeated attempts. That can lose work silently and provides no recoverable processing record. A single early done flag cannot distinguish completed work from a crashed attempt. A crash after the side effect but before the flag can still duplicate work.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q039

Applied · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

The repository move is complete and fresh links work. Older items still contain pretransfer references. Which release checklist is most defensible?

- **A. Replace every old item with a newly created copy** That can fragment identity and history even where existing links remain valid.
- **B. Remove historical source references from the audit record** Deleting evidence avoids rather than resolves the continuity requirement.
- **C. Verify historical link continuity separately and reconcile only confirmed broken relationships** **Correct.** Restoring current event processing does not establish that all historical references remain usable.
- **D. Declare all historical evidence repaired because one new event succeeded** A fresh-event test covers a different part of the integration lifecycle.

**Explanation:** That can fragment identity and history even where existing links remain valid. Deleting evidence avoids rather than resolves the continuity requirement. Restoring current event processing does not establish that all historical references remain usable. A fresh-event test covers a different part of the integration lifecycle.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q040

Applied · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A release notification design must be low-noise, survive ownership changes, and avoid exposing credentials. Which acceptance test set covers those constraints?

- **A. Check only the total message count and the channel name** Aggregates do not verify content safety, event relevance, or durable ownership.
- **B. Send raw environment output once and delete the message after testing** Temporary disclosure is still disclosure and does not validate a sanitized design.
- **C. Test a failed release and a routine event, verify sanitized content and destination, and document supported integration ownership** **Correct.** Positive and negative event tests plus ownership evidence cover the stated behavior and lifecycle risks.
- **D. Verify one healthy-build message and infer that failure routing works** A healthy event does not exercise the important failure or noise-exclusion paths.

**Explanation:** Aggregates do not verify content safety, event relevance, or durable ownership. Temporary disclosure is still disclosure and does not validate a sanitized design. Positive and negative event tests plus ownership evidence cover the stated behavior and lifecycle risks. A healthy event does not exercise the important failure or noise-exclusion paths.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q041

Advanced · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

A hotfix artifact is built from release/1.x, but notes generated from main include an unreleased API removal. The source checkout is shallow. What publication repair covers both accuracy and reproducibility?

- **A. Rebuild the hotfix from main so the existing notes become accurate** That changes the approved hotfix candidate and can introduce unsupported next-version behavior.
- **B. Publish the notes unchanged with a generic accuracy disclaimer** A disclaimer does not establish the actual hotfix contents consumers need.
- **C. Fetch the required release boundaries and regenerate notes from the artifact's exact source revision and prior supported release** **Correct.** The correct retained range aligns notes with what shipped and makes the generation reproducible.
- **D. Delete only the API-removal sentence and keep generating from moving main** One manual removal does not correct other unrelated changes or the unstable source range.

**Explanation:** That changes the approved hotfix candidate and can introduce unsupported next-version behavior. A disclaimer does not establish the actual hotfix contents consumers need. The correct retained range aligns notes with what shipped and makes the generation reproducible. One manual removal does not correct other unrelated changes or the unstable source range.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes); [S6](https://git-scm.com/docs/git-log)

## L03-Q042

Advanced · [CP5](README.md#task-5) · [D1.3.6](../../docs/objective-map.md)

A release-failure notification reaches Teams, but its link opens a different environment and the message exposes an environment variable. Routine events also flood the channel. Which test plan fits these defects?

- **A. Test only that an HTTP success response is returned by the channel endpoint** Transport acceptance does not verify message content, destination relevance, or response ownership.
- **B. Remove all evidence links while continuing to publish every event** That reduces diagnostic value and leaves the noise and sensitive-content generation problems unresolved.
- **C. Increase channel membership until someone can recognize the correct environment** More recipients do not correct event selection, misdirected links, or exposed data.
- **D. Test event filtering, environment-specific evidence links, sanitized payloads, and the assigned response route** **Correct.** Delivery alone is insufficient when routing, content privacy, and diagnostic identity are wrong.

**Explanation:** Transport acceptance does not verify message content, destination relevance, or response ownership. That reduces diagnostic value and leaves the noise and sensitive-content generation problems unresolved. More recipients do not correct event selection, misdirected links, or exposed data. Delivery alone is insufficient when routing, content privacy, and diagnostic identity are wrong.

**Sources:** [S3](https://learn.microsoft.com/en-us/azure/devops/boards/integrations/boards-teams?view=azure-devops)

## L03-Q043

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A webhook receiver sees valid signatures fail after middleware parses and serializes the body. The same deployment is also occasionally queued twice. Which design handles both failures?

- **A. Skip signature checks for retries and keep a per-process list of titles** Retries still need authentication, and local lists do not coordinate multiple receiver instances.
- **B. Accept every signed-looking header and deduplicate only after deployment completes** A header is not a verified signature, and late duplicate detection can allow repeated side effects.
- **C. Verify the signature against retained original bytes and atomically deduplicate the authenticated delivery identity** **Correct.** Byte-preserving authentication and shared duplicate control address different observed failure modes.
- **D. Verify the signature against the parsed object and deduplicate by deployment title** Serialization may change signed bytes, and titles do not provide stable delivery identity.

**Explanation:** Retries still need authentication, and local lists do not coordinate multiple receiver instances. A header is not a verified signature, and late duplicate detection can allow repeated side effects. Byte-preserving authentication and shared duplicate control address different observed failure modes. Serialization may change signed bytes, and titles do not provide stable delivery identity.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks); [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q044

Advanced · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Generated release notes use pull request labels to classify breaking changes. A critical breaking change has the wrong label, while private incident details appear in another title. What publication gate is appropriate?

- **A. Publish automatically because labels are machine-readable** Machine-readable input can still be wrong or contain inappropriate public text.
- **B. Remove all labels and publish only commit hashes** Hashes provide provenance but do not communicate the migration consumers require.
- **C. Delay all notes until every historical pull request has perfect labels** The release needs an accurate reviewed draft for its actual shipped scope, not a complete historical cleanup first.
- **D. Review the generated draft against shipped changes, migration requirements, and sensitive-content rules** **Correct.** Label-driven generation can assist drafting but cannot establish classification accuracy or safe consumer-facing wording.

**Explanation:** Machine-readable input can still be wrong or contain inappropriate public text. Hashes provide provenance but do not communicate the migration consumers require. The release needs an accurate reviewed draft for its actual shipped scope, not a complete historical cleanup first. Label-driven generation can assist drafting but cannot establish classification accuracy or safe consumer-facing wording.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)

## L03-Q045

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

The receiver acknowledges a release event after writing a durable queue record. A worker deploys successfully, crashes before recording completion, then retries. Which additional control prevents duplicate deployment while allowing recovery?

```text
queue: event E persisted
worker: deploy operation E succeeded
worker: process terminated before completion write
queue: E retry scheduled
```

- **A. Give each retry a new operation identity** Different identities prevent the destination from recognizing the repeated logical operation.
- **B. A stable operation identity and an idempotent or reconciled deployment side effect** **Correct.** Durable queueing prevents event loss but does not alone resolve the crash between an external side effect and completion recording.
- **C. Mark the queue record complete before invoking deployment** A crash before the side effect would then lose the required deployment.
- **D. Delete retry support once the first attempt starts** A worker failure could leave unfinished work permanently abandoned.

**Explanation:** Different identities prevent the destination from recognizing the repeated logical operation. Durable queueing prevents event loss but does not alone resolve the crash between an external side effect and completion recording. A crash before the side effect would then lose the required deployment. A worker failure could leave unfinished work permanently abandoned.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks)

## L03-Q046

Advanced · [CP1](README.md#task-1) · [D1.3.3](../../docs/objective-map.md)

Two maintained product versions ship on the same day from different branches. Both documentation jobs use the latest tag and overwrite one common API directory. What design meets supported-version and provenance needs?

- **A. Use branch names in page titles while keeping one overwritten body** A title does not preserve distinct version-specific content or source provenance.
- **B. Generate each version from its exact release revision and publish to a stable version-specific location** **Correct.** Independent source boundaries and destinations preserve each supported interface contract.
- **C. Serialize the jobs but keep the shared latest source and output directory** Job ordering alone does not prevent one version from replacing the other's contract.
- **D. Publish only the newer major version's docs and link older users there** Older supported consumers may require a different interface and migration path.

**Explanation:** A title does not preserve distinct version-specific content or source provenance. Independent source boundaries and destinations preserve each supported interface contract. Job ordering alone does not prevent one version from replacing the other's contract. Older supported consumers may require a different interface and migration path.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes); [S6](https://git-scm.com/docs/git-log)

## L03-Q047

Advanced · [CP2](README.md#task-2) · [D1.3.1](../../docs/objective-map.md), [D1.3.2](../../docs/objective-map.md)

A supported Mermaid diagram renders locally but not in the published documentation site. The SVG fallback lacks a description, and both disagree with the current topology. What correction is strongest?

- **A. Correct the architecture source, use destination-supported syntax, and verify the rendered fallback with an equivalent text description** **Correct.** Accuracy, renderer compatibility, and accessible interpretation each need explicit verification.
- **B. Publish only the local screenshot because it proves the source syntax is valid somewhere** A local screenshot does not establish destination compatibility or correct the stale architecture and inaccessible description.
- **C. Keep the outdated SVG because the site can display it reliably** Rendering success does not make the topology accurate or understandable to nonvisual readers.
- **D. Remove the diagram and leave only its filename in the runbook** A filename does not communicate the operational relationships users need.

**Explanation:** Accuracy, renderer compatibility, and accessible interpretation each need explicit verification. A local screenshot does not establish destination compatibility or correct the stale architecture and inaccessible description. Rendering success does not make the topology accurate or understandable to nonvisual readers. A filename does not communicate the operational relationships users need.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-create-repo?view=azure-devops); [S4](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)

## L03-Q048

Advanced · [CP3](README.md#task-3) · [D1.3.4](../../docs/objective-map.md)

A valid signed webhook for a repository outside the approved release scope reaches the receiver. Its action is supported and its delivery ID is new. What should happen?

- **A. Change its repository field to the approved repository and continue** Altering identity would misrepresent provenance and deploy unintended content.
- **B. Deduplicate it by matching the release title to an approved event** Title similarity is not source authorization and can suppress or misroute distinct work.
- **C. Reject or quarantine it under the source authorization policy before creating deployment work** **Correct.** Authenticity and uniqueness do not authorize an otherwise out-of-scope repository deployment.
- **D. Enqueue it because a valid signature authorizes every repository action** A signing secret establishes origin but does not replace the deployment scope policy.

**Explanation:** Altering identity would misrepresent provenance and deploy unintended content. Title similarity is not source authorization and can suppress or misroute distinct work. Authenticity and uniqueness do not authorize an otherwise out-of-scope repository deployment. A signing secret establishes origin but does not replace the deployment scope policy.

**Sources:** [S2](https://docs.github.com/en/webhooks/using-webhooks/best-practices-for-using-webhooks); [S7](https://docs.github.com/en/webhooks/using-webhooks/validating-webhook-deliveries)

## L03-Q049

Advanced · [CP5](README.md#task-5) · [D1.3.5](../../docs/objective-map.md)

A repository transfer preserves Git history, but new Boards development links fail and old release links may redirect. What acceptance plan distinguishes integration recovery from historical continuity?

- **A. Reconnect every repository in the destination organization and stop testing old links** That broadens access without verifying either the intended connection or historical references.
- **B. Rewrite all historical work-item text before checking whether existing links resolve** Mass rewriting can damage valid history and skips diagnosis of actual broken relationships.
- **C. Reauthorize the exact moved repository, test a fresh supported link, and audit historical release relationships separately** **Correct.** Fresh event processing and historical link resolution are distinct evidence boundaries after a transfer.
- **D. Treat preserved commit hashes as proof that the connector still receives events** Git content identity does not establish current app installation authorization.

**Explanation:** That broadens access without verifying either the intended connection or historical references. Mass rewriting can damage valid history and skips diagnosis of actual broken relationships. Fresh event processing and historical link resolution are distinct evidence boundaries after a transfer. Git content identity does not establish current app installation authorization.

**Sources:** [S8](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)

## L03-Q050

Advanced · [CP2](README.md#task-2) · [D1.3.2](../../docs/objective-map.md)

Release v2 is built from commit b, then its tag is moved to c before notes are generated. v1 remains supported, and commit c changes the API. What is the best publication decision?

```text
v1 -> a111 (supported)
v2 tag at build -> b222
artifact source -> b222
v2 tag at note generation -> c333
```

- **A. Overwrite v1 docs with c's content to reduce ambiguity** Removing another supported version's contract does not reconcile the v2 source mismatch.
- **B. Stop publication, reconcile the release source identity, and generate version-specific notes from the approved immutable boundaries** **Correct.** The artifact, label, and documentation must agree before consumers can rely on the release contract.
- **C. Generate notes from c because the current tag name is authoritative regardless of the built artifact** That can describe code absent from the artifact actually shipped.
- **D. Publish b's artifact with c's notes but call the discrepancy cosmetic** An API difference affects the consumer contract and is not merely cosmetic.

**Explanation:** Removing another supported version's contract does not reconcile the v2 source mismatch. The artifact, label, and documentation must agree before consumers can rely on the release contract. That can describe code absent from the artifact actually shipped. An API difference affects the consumer contract and is not merely cosmetic.

**Sources:** [S5](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes); [S6](https://git-scm.com/docs/git-log)
