# AZ-400 objective map

Blueprint effective **2026-07-27**; reviewed **2026-10-16**. The 86 names below are concise paraphrases. Consult the [official study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400) for authoritative wording.

**Explained** means a reasoned concept or reviewed contract. **Practiced** means an observable isolated skill, including explicitly labelled local fixtures. **Integrated** connects delivery components and requires its stated external gates. An authored level does not claim that an author or learner executed it. Every linked checkpoint states observations and limits; each lab records its verification scope separately. Capstone integration claims remain pending until the protected lane passes.

## Processes and communications (10-15%)

| Topic ID | Topic | Explained | Practiced | Integrated |
|---|---|---|---|---|
| `D1.1.1` | Workflow structure | [01/CP1](../labs/01-work-tracking-traceability/README.md#task-1) | — | — |
| `D1.1.2` | Feedback loops | — | [01/CP4](../labs/01-work-tracking-traceability/README.md#task-4) | — |
| `D1.1.3` | Tracking integration | — | [26/CP1](../labs/26-capstone-github/README.md#task-1), [27/CP1](../labs/27-capstone-azure-devops/README.md#task-1) | [01/CP3](../labs/01-work-tracking-traceability/README.md#task-3) |
| `D1.1.4` | Quality traceability | [01/CP5](../labs/01-work-tracking-traceability/README.md#task-5) | — | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D1.2.1` | Flow dashboards | [02/CP5](../labs/02-devops-metrics/README.md#task-5) | — | — |
| `D1.2.2` | Planning metrics | [02/CP1](../labs/02-devops-metrics/README.md#task-1) | — | — |
| `D1.2.3` | Development metrics | — | [02/CP2](../labs/02-devops-metrics/README.md#task-2) | — |
| `D1.2.4` | Testing metrics | — | [02/CP3](../labs/02-devops-metrics/README.md#task-3), [08/CP2](../labs/08-tests-coverage-gates/README.md#task-2) | — |
| `D1.2.5` | Security metrics | — | [02/CP3](../labs/02-devops-metrics/README.md#task-3), [22/CP2](../labs/22-security-scanning/README.md#task-2) | — |
| `D1.2.6` | Delivery metrics | — | [02/CP2](../labs/02-devops-metrics/README.md#task-2), [19/CP3](../labs/19-pipeline-optimization/README.md#task-3) | — |
| `D1.2.7` | Operations metrics | [02/CP5](../labs/02-devops-metrics/README.md#task-5), [24/CP5](../labs/24-monitoring-alerts/README.md#task-5) | — | — |
| `D1.3.1` | Wiki diagrams | — | [03/CP4](../labs/03-collaboration-documentation/README.md#task-4) | — |
| `D1.3.2` | Release documentation | — | [03/CP2](../labs/03-collaboration-documentation/README.md#task-2) | — |
| `D1.3.3` | History documentation | — | [03/CP1](../labs/03-collaboration-documentation/README.md#task-1) | — |
| `D1.3.4` | Webhook integration | — | [03/CP3](../labs/03-collaboration-documentation/README.md#task-3) | — |
| `D1.3.5` | Boards integration | [03/CP5](../labs/03-collaboration-documentation/README.md#task-5) | — | [01/CP3](../labs/01-work-tracking-traceability/README.md#task-3) |
| `D1.3.6` | Teams integration | [03/CP5](../labs/03-collaboration-documentation/README.md#task-5) | — | — |

## Source control (10-15%)

| Topic ID | Topic | Explained | Practiced | Integrated |
|---|---|---|---|---|
| `D2.1.1` | Branch models | — | [04/CP1](../labs/04-branching-pull-requests/README.md#task-1) | — |
| `D2.1.2` | Review workflow | — | — | [04/CP3](../labs/04-branching-pull-requests/README.md#task-3) |
| `D2.1.3` | Merge restrictions | — | [04/CP4](../labs/04-branching-pull-requests/README.md#task-4) | — |
| `D2.2.1` | Large files | — | [05/CP2](../labs/05-repository-administration/README.md#task-2) | — |
| `D2.2.2` | Repository scaling | — | [05/CP4](../labs/05-repository-administration/README.md#task-4) | — |
| `D2.2.3` | Repository permissions | [05/CP1](../labs/05-repository-administration/README.md#task-1), [20/CP1](../labs/20-identity-permissions/README.md#task-1) | — | — |
| `D2.2.4` | Release tags | [07/CP4](../labs/07-packages-versioning/README.md#task-4) | [05/CP3](../labs/05-repository-administration/README.md#task-3) | — |
| `D2.2.5` | Data recovery | — | [06/CP2](../labs/06-git-recovery-history/README.md#task-2) | — |
| `D2.2.6` | History removal | — | [06/CP5](../labs/06-git-recovery-history/README.md#task-5) | — |

## Build and release pipelines (50-55%)

| Topic ID | Topic | Explained | Practiced | Integrated |
|---|---|---|---|---|
| `D3.1.1` | Package platforms | [07/CP5](../labs/07-packages-versioning/README.md#task-5) | — | — |
| `D3.1.2` | Feed topology | [07/CP5](../labs/07-packages-versioning/README.md#task-5) | — | — |
| `D3.1.3` | Dependency versions | — | [07/CP3](../labs/07-packages-versioning/README.md#task-3) | — |
| `D3.1.4` | Artifact versions | — | [07/CP4](../labs/07-packages-versioning/README.md#task-4) | [09/CP5](../labs/09-github-actions-ci/README.md#task-5), [10/CP5](../labs/10-azure-pipelines-ci/README.md#task-5), [26/CP4](../labs/26-capstone-github/README.md#task-4), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D3.2.1` | Quality gates | — | [08/CP4](../labs/08-tests-coverage-gates/README.md#task-4), [13/CP2](../labs/13-environments-approvals/README.md#task-2) | — |
| `D3.2.2` | Test strategy | [08/CP5](../labs/08-tests-coverage-gates/README.md#task-5) | — | — |
| `D3.2.3` | Pipeline tests | — | [08/CP2](../labs/08-tests-coverage-gates/README.md#task-2), [26/CP2](../labs/26-capstone-github/README.md#task-2), [27/CP2](../labs/27-capstone-azure-devops/README.md#task-2) | [09/CP5](../labs/09-github-actions-ci/README.md#task-5), [10/CP5](../labs/10-azure-pipelines-ci/README.md#task-5) |
| `D3.2.4` | Coverage analysis | — | [08/CP3](../labs/08-tests-coverage-gates/README.md#task-3) | — |
| `D3.3.1` | Automation selection | — | [09/CP2](../labs/09-github-actions-ci/README.md#task-2), [10/CP2](../labs/10-azure-pipelines-ci/README.md#task-2) | — |
| `D3.3.2` | Agent infrastructure | — | [12/CP5](../labs/12-runners-agents/README.md#task-5) | — |
| `D3.3.3` | Repository integration | [10/CP1](../labs/10-azure-pipelines-ci/README.md#task-1) | — | — |
| `D3.3.4` | Trigger rules | — | [09/CP4](../labs/09-github-actions-ci/README.md#task-4), [10/CP3](../labs/10-azure-pipelines-ci/README.md#task-3) | — |
| `D3.3.5` | YAML authoring | — | [09/CP2](../labs/09-github-actions-ci/README.md#task-2), [10/CP2](../labs/10-azure-pipelines-ci/README.md#task-2), [11/CP2](../labs/11-reusable-yaml/README.md#task-2), [26/CP3](../labs/26-capstone-github/README.md#task-3), [27/CP3](../labs/27-capstone-azure-devops/README.md#task-3) | — |
| `D3.3.6` | Execution ordering | — | [11/CP4](../labs/11-reusable-yaml/README.md#task-4), [14/CP4](../labs/14-ordered-releases-databases/README.md#task-4) | — |
| `D3.3.7` | Hybrid execution | [12/CP5](../labs/12-runners-agents/README.md#task-5) | — | — |
| `D3.3.8` | Reusable elements | — | [11/CP1](../labs/11-reusable-yaml/README.md#task-1) | — |
| `D3.3.9` | Environment approvals | — | [13/CP2](../labs/13-environments-approvals/README.md#task-2) | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D3.4.1` | Exposure strategies | — | — | [15/CP5](../labs/15-deployment-strategies/README.md#task-5) |
| `D3.4.2` | Dependency ordering | — | [14/CP4](../labs/14-ordered-releases-databases/README.md#task-4) | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D3.4.3` | Downtime reduction | — | [15/CP3](../labs/15-deployment-strategies/README.md#task-3) | — |
| `D3.4.4` | Hotfix paths | [15/CP5](../labs/15-deployment-strategies/README.md#task-5) | — | — |
| `D3.4.5` | Deployment resilience | — | [16/CP5](../labs/16-feature-flags-resilience/README.md#task-5) | — |
| `D3.4.6` | Feature management | — | [16/CP4](../labs/16-feature-flags-resilience/README.md#task-4) | — |
| `D3.4.7` | Application delivery | — | [14/CP1](../labs/14-ordered-releases-databases/README.md#task-1), [15/CP4](../labs/15-deployment-strategies/README.md#task-4) | — |
| `D3.4.8` | Database tasks | — | [14/CP2](../labs/14-ordered-releases-databases/README.md#task-2) | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D3.5.1` | Configuration technologies | [18/CP5](../labs/18-configuration-self-service/README.md#task-5) | — | — |
| `D3.5.2` | Configuration strategy | — | [18/CP3](../labs/18-configuration-self-service/README.md#task-3) | — |
| `D3.5.3` | IaC delivery | — | — | [17/CP3](../labs/17-bicep-infrastructure/README.md#task-3) |
| `D3.5.4` | Desired state | — | [17/CP5](../labs/17-bicep-infrastructure/README.md#task-5), [18/CP3](../labs/18-configuration-self-service/README.md#task-3) | — |
| `D3.5.5` | Self-service environments | — | [18/CP4](../labs/18-configuration-self-service/README.md#task-4) | — |
| `D3.6.1` | Health monitoring | [19/CP1](../labs/19-pipeline-optimization/README.md#task-1) | — | — |
| `D3.6.2` | Delivery optimization | — | [19/CP3](../labs/19-pipeline-optimization/README.md#task-3) | — |
| `D3.6.3` | Concurrency efficiency | — | [19/CP3](../labs/19-pipeline-optimization/README.md#task-3) | — |
| `D3.6.4` | Artifact retention | — | [19/CP4](../labs/19-pipeline-optimization/README.md#task-4) | — |
| `D3.6.5` | YAML migration | — | [19/CP5](../labs/19-pipeline-optimization/README.md#task-5) | — |

## Security and compliance (10-15%)

| Topic ID | Topic | Explained | Practiced | Integrated |
|---|---|---|---|---|
| `D4.1.1` | Azure identities | — | [20/CP3](../labs/20-identity-permissions/README.md#task-3) | — |
| `D4.1.2` | GitHub authentication | [20/CP1](../labs/20-identity-permissions/README.md#task-1), [21/CP2](../labs/21-secrets-federation/README.md#task-2) | — | — |
| `D4.1.3` | DevOps connections | [20/CP5](../labs/20-identity-permissions/README.md#task-5), [21/CP5](../labs/21-secrets-federation/README.md#task-5) | — | [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D4.1.4` | GitHub roles | [20/CP1](../labs/20-identity-permissions/README.md#task-1) | — | — |
| `D4.1.5` | DevOps groups | [20/CP2](../labs/20-identity-permissions/README.md#task-2) | — | — |
| `D4.1.6` | Access levels | [20/CP5](../labs/20-identity-permissions/README.md#task-5) | — | — |
| `D4.1.7` | Project teams | [20/CP2](../labs/20-identity-permissions/README.md#task-2) | — | — |
| `D4.2.1` | Vault material | [21/CP3](../labs/21-secrets-federation/README.md#task-3) | — | — |
| `D4.2.2` | Federated access | — | [21/CP2](../labs/21-secrets-federation/README.md#task-2) | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D4.2.3` | Secure files | [21/CP4](../labs/21-secrets-federation/README.md#task-4) | — | — |
| `D4.2.4` | Leak prevention | — | [21/CP5](../labs/21-secrets-federation/README.md#task-5), [22/CP3](../labs/22-security-scanning/README.md#task-3) | — |
| `D4.3.1` | Scan strategy | — | [22/CP3](../labs/22-security-scanning/README.md#task-3) | — |
| `D4.3.2` | DevOps Defender | [23/CP3](../labs/23-advanced-security-defender/README.md#task-3) | — | — |
| `D4.3.3` | Advanced security | [23/CP2](../labs/23-advanced-security-defender/README.md#task-2) | — | — |
| `D4.3.4` | Defender integration | — | [23/CP4](../labs/23-advanced-security-defender/README.md#task-4) | — |
| `D4.3.5` | Container analysis | — | [22/CP4](../labs/22-security-scanning/README.md#task-4) | — |
| `D4.3.6` | Dependency alerts | [22/CP5](../labs/22-security-scanning/README.md#task-5) | — | — |

## Instrumentation (5-10%)

| Topic ID | Topic | Explained | Practiced | Integrated |
|---|---|---|---|---|
| `D5.1.1` | Monitor integration | — | — | [24/CP2](../labs/24-monitoring-alerts/README.md#task-2), [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D5.1.2` | Service telemetry | — | [24/CP2](../labs/24-monitoring-alerts/README.md#task-2), [25/CP3](../labs/25-kql-distributed-tracing/README.md#task-3) | — |
| `D5.1.3` | GitHub insights | [24/CP5](../labs/24-monitoring-alerts/README.md#task-5) | — | — |
| `D5.1.4` | Delivery alerts | [24/CP5](../labs/24-monitoring-alerts/README.md#task-5) | — | — |
| `D5.2.1` | Infrastructure signals | — | [25/CP5](../labs/25-kql-distributed-tracing/README.md#task-5) | — |
| `D5.2.2` | Application metrics | — | [25/CP2](../labs/25-kql-distributed-tracing/README.md#task-2) | — |
| `D5.2.3` | Trace correlation | — | [25/CP4](../labs/25-kql-distributed-tracing/README.md#task-4) | [26/CP5](../labs/26-capstone-github/README.md#task-5), [27/CP5](../labs/27-capstone-azure-devops/README.md#task-5) |
| `D5.2.4` | Kusto queries | — | [25/CP2](../labs/25-kql-distributed-tracing/README.md#task-2) | — |
