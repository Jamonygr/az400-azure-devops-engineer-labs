# Explicit configuration

Copy `learner.config.example.json` to the ignored `learner.config.json` for your
own planning notes. Lifecycle scripts take parameters or the environment
variables below; they do not silently load or apply that file.

```powershell
$env:AZ400_GITHUB_OWNER = 'your-personal-login'
$env:AZ400_ADO_ORGANIZATION = 'https://dev.azure.com/your-training-organization'
$env:AZ400_SUBSCRIPTION_ID = '<your-disposable-subscription-guid>'
```

Pass `-Location` to override the default `westeurope`. Choose an available region
and confirm price/quotas before using any service. `-RunId` must start with a
lowercase letter and contain 3–24 lowercase letters, digits, or hyphens.

For lab `09` and run `first-run`, the owned boundaries are:

- GitHub: `your-personal-login/az400-09-first-run`, private.
- Azure DevOps project: `az400-09-first-run`, private, inside the selected organization.
- Azure resource group, when needed: `rg-az400-09-first-run`.
- Private local journal/evidence: `.state/09/first-run/`.

The journal records a random ownership marker and exact remote IDs. Context
changes are refused; use a new run ID to change owner, organization, subscription,
or location. Keep the journal after partial setup so cleanup can recover.

Dot-source a lab's `Context.ps1` after provisioning its boundaries to populate
`$RepoRoot`, `$LabRoot`, `$WorkRoot`, `$GhRepo`, `$AdoProject`, `$ResourceGroup`,
`$RunId`, `$AdoOrganization`, `$SubscriptionId`, and `$Location` in the guided lane.
All names refer to the isolated run, not the course's public repository.
