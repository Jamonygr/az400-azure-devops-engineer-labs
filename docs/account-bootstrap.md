# One-time account setup

Create or obtain an approved disposable Azure subscription, a personal GitHub
account, and an Azure DevOps Services organization. Organization creation,
consent, billing activation, and mandatory MFA can require a browser; complete
these prerequisites before the command-first labs. Never use an employer's
production organization or subscription for this course.

## Authenticate deliberately

```powershell
gh auth login
gh auth status
az login
az account list --query '[].{Name:name,Id:id}' --output table
az extension add --name azure-devops
# Use your organization's approved Entra sign-in flow for Azure DevOps.
az devops project list --organization $env:AZ400_ADO_ORGANIZATION --output table
```

GitHub Projects exercises may require `gh auth refresh --scopes project`.
Repository deletion requires the `delete_repo` scope for OAuth-token CLI sessions;
request only the scopes the current exercise needs. Do not print tokens. A
fine-grained token or organization policy can intentionally deny a command;
record the denied prerequisite and use the organization's approved method.

The Azure DevOps profile read (`profiles/me`, API 7.1) pins the authenticated
learner identity in the private run journal. It requires profile-read access;
an identity change blocks absence checks, rather than hiding an existing project
and incorrectly reporting successful cleanup.
For a narrowly scoped Azure DevOps PAT, this is the User Profile Read
(`vso.profile`) permission. This course's bootstrap assumes a personal human
learner identity; service-principal profile support is not claimed.

Use existing credentials only to create isolated lab containers. The lifecycle
never deletes the bootstrap account, Azure DevOps organization, subscription, or
an existing repository/project. GitHub sandbox ownership is restricted to the
explicitly authenticated personal account.

## Agent and integration prerequisites

Verify the Azure DevOps organization has Microsoft-hosted parallel jobs or an
approved disposable agent. A queue that never starts is an entitlement issue,
not a broken YAML trigger. A self-hosted runner must not receive untrusted public
pull requests or have long-lived privileged credentials.

OAuth connections between Boards and GitHub, Teams installation, Defender
connectors, and paid Advanced Security can require administrator consent. The
course provides bounded configuration and validation steps; granting that consent
is a separate organization prerequisite. Do not send test notifications to real
teams or change organization-wide policy during a lab.

Use workload identity federation for Azure pipeline service connections and
GitHub OIDC. Capture current generated issuer/subject values from the platform;
do not assume legacy issuer strings. Authorize only the specific training
pipeline and resource-group scope. See [permissions](permissions-matrix.md).
