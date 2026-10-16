# Cost and cleanup

Use a disposable non-production subscription. Preview every setup, estimate its
service/SKU/region costs, set an Azure budget, and stop resources promptly. The
example learner budget is EUR 10 per session; it is a planning ceiling rather
than an enforced Azure spending cap. Budgets and alerts do not stop charges.

GitHub private-runner minutes, Azure hosted parallel jobs, package storage,
App Service tiers, Azure SQL, Log Analytics ingestion, Key Vault operations,
container registries, feature stores, and security subscriptions can incur costs.
Paid Advanced Security/Defender prerequisites require deliberate opt-in.

## Lifecycle contract

`Preflight.ps1` is read-only. `Setup.ps1` and `Cleanup.ps1` preview unless passed
`-Execute`; nonzero cost labs require `-AcknowledgeCost` for setup. Identity labs
also require `-AcknowledgeTenantChange`. `-ProvisionOnly` prepares ownership
boundaries without executing the five learning checkpoints.

`-AllowPaidFeatures` acknowledges a documented platform entitlement. Private
GitHub branch protection requires an appropriate paid plan; required environment
reviewers on private repositories require Enterprise. These gated checkpoints
remain skipped/partial when the prerequisite is unavailable. Acknowledgement
does not purchase or enable a plan.

Use the complete automated lane or the guided lane for a given run ID. Inspect
the source before executing; preview reports intended targets, while the README
contains the exact commands. Validators issue read-only queries and produce a
local report. The engine never treats a network error as proof of deletion.

## Cleanup sequence

1. Stop queued or executing sandbox pipelines and agents.
2. Preserve redacted evidence locally.
3. Preview the lab's cleanup using the original context and run ID.
4. Run cleanup with `-Execute`; it checks exact remote IDs and ownership markers.
5. Read `.state/<lab>/<run>/cleanup.json`. Any refused or pending object is a residual.
6. Audit separately documented external/tenant objects and retained service records.

Parent boundaries are removed in reverse provisioning order. Child resources
must stay within those boundaries. External tenant identities, organization-wide
connectors, user credentials, global policy, GitHub user Projects, and agent hosts
need explicit separate treatment in the relevant lab; the generic cleanup engine
does not guess their ownership. Never admit such objects by editing a journal.

Repeated cleanup is safe. A failed request or asynchronous deletion yields a
partial result; preserve state, inspect the service, and retry. Azure DevOps
projects can remain recoverable in soft-delete retention; they are recorded as
service-retained records, not active managed resources. Do not delete local
journals as a substitute for deleting cloud resources.

An object disappearing from a permission-filtered listing before any successful
delete is recorded is **unknown**, not proof of cleanup. Ask an authorized owner
to audit the exact ID and retain that evidence. The engine preserves the journal
and returns partial; it never broadens credentials to force a result.
