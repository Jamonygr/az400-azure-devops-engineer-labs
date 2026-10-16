# Prerequisites

You should understand Git, Azure subscriptions/resource groups, HTTP APIs, and
basic PowerShell. The course teaches DevOps decisions rather than application
development from scratch. Earning the expert credential also has Microsoft's
certification prerequisites; completing this repository does not award it.

| Tool | Required capability | Official installation |
|---|---|---|
| PowerShell | 7.4+; native command failure handling | [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell) |
| Git | Branches, tags, worktrees; LFS/Scalar for their specific exercises | [Git](https://git-scm.com/downloads) |
| git-filter-repo | 2.47.0 for disposable history-rewrite practice in Lab 06; included in repository Python requirements | [Official project](https://github.com/newren/git-filter-repo) |
| GitHub CLI | Authenticated personal sandbox owner; Projects scope for Projects exercises | [GitHub CLI](https://cli.github.com/manual/installation) |
| Azure CLI | `az`, `az rest`, Bicep, explicit subscription arguments | [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) |
| Azure DevOps extension | Explicit organization and project on every command | [Extension](https://learn.microsoft.com/en-us/azure/devops/cli/) |
| .NET SDK | 10.0.402, as pinned in `global.json` | [.NET 10](https://dotnet.microsoft.com/en-us/download/dotnet/10.0) |
| Python | 3.12+ and the pinned repository requirements | [Python](https://www.python.org/downloads/) |
| Docker | Linux containers and a running daemon, for container exercises | [Docker](https://docs.docker.com/get-started/get-docker/) |

The readiness script reports availability; it never installs or authenticates.
Install the Azure DevOps extension deliberately with `az extension add --name
azure-devops` and verify `az bicep version`. Authenticate interactively yourself;
read [account bootstrap](account-bootstrap.md) first. Do not supply credentials
as command-line values or paste them into tracked YAML.

Hosted agent availability, GitHub plan features, tenant policies, providers,
quotas, regional SKUs, and paid-service access vary. Each lab's preflight and
permission notes must pass before live execution. A missing feature is a
prerequisite failure, not proof that the exercise passed.
