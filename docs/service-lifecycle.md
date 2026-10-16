# Dated service changes

Verified **October 16, 2026** against primary product documentation. Objective
inclusion and recommended new implementation are recorded separately.

| Topic | Exam and implementation treatment | Official source |
|---|---|---|
| Azure Deployment Environments | Still in this exam baseline; retires February 22, 2027. Study its model and bounded exercise, then use Bicep plus a gated self-service pipeline as the continuing alternative. | [Retirement guide](https://learn.microsoft.com/en-us/azure/deployment-environments/deployment-environments-retirement-guide) |
| Automation State Configuration | Still in the baseline; retires September 30, 2027. Compare the legacy approach with Azure Machine Configuration and use the latter for current designs. Linux Automation DSC has already retired. | [Overview](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview) |
| Azure Pipelines WIF | Prefer federation; new applicable public-cloud connections use Microsoft Entra issuer values. The affected legacy issuer retires July 1, 2027. Obtain current generated values instead of hardcoding the old issuer. | [Service connection guidance](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops) |
| Advanced Security on Azure DevOps | Billed active-committer entitlement applies; use paid gates and record partial results when unavailable. | [Billing](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security-billing) |
| .NET | Use the pinned .NET 10 LTS SDK and supported patch packages; dependency changes require restore, tests, and refreshed lock files. | [Support policy](https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-core) |

Update this register, the source verification date, affected labs, and assessments
together when product behavior changes. Course coverage does not promise perpetual
availability of a retiring service. There is no recurring automation configured
by this repository.
