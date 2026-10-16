# Permissions matrix

Grant the smallest scope needed for the current lab; do not default to tenant
Global Administrator or subscription Owner.

| Activity | Required authority | Boundary |
|---|---|---|
| Local Git and application tests | Local user write permission | Ignored run directory and sample build outputs |
| Sandbox GitHub repository creation | Personal account repository creation | Authenticated owner, fresh private repository |
| GitHub rules/environments/workflows | Repository administration; applicable plan | Owned disposable repository |
| GitHub user Projects | Projects scope and personal ownership | Record separately; never use an existing real project |
| Azure DevOps project creation/removal | Organization authority to create/delete training projects | Fresh private project |
| Boards, Repos, Pipelines, artifacts | Relevant project permissions and agent/feed entitlements | Owned project |
| Azure workload provisioning | Contributor at the disposable scope | Exact tagged resource group |
| RBAC assignments | Role Based Access Control Administrator at the lab scope | Exact assignment scope; remove explicitly |
| Federated identity bootstrap | Approved managed identity/app permissions plus scoped RBAC | Existing approved identity or explicitly owned lab object |
| Advanced Security/Defender | Appropriate admin role and paid subscription entitlement | Explicitly approved training connector/project |
| Teams/Boards integrations | Required consent and installation authority | Approved sandbox integration only |

The scaffolding does not create a subscription, Azure DevOps organization, Teams
tenant, or privileged credential. Unsupported permissions and paid features are
blocking prerequisites or explicit partial outcomes. Administrative consent is
not silently bypassed by a script.
