# Runners and agents

Use a Microsoft-hosted agent or GitHub-hosted runner for the first build. Private networking exercises require an ephemeral, dedicated VM in the workload network. Hosted parallelism grants and Microsoft-hosted minutes are organization entitlements; a queued job is not a successful exercise.

1. Download the current supported agent from your **own** organization settings. Verify its published hash before extracting. Do not bake a registration token into an image.
2. Register an ephemeral GitHub runner (`config.sh --ephemeral`) or a one-job Azure Pipelines agent (`run.sh --once`) using a short-lived bootstrap credential. Grant only the sandbox repository/project access.
3. Label it `az400-private` and target it explicitly. For Azure Pipelines use `pool: { name: az400-private }`; for GitHub use `runs-on: [self-hosted, linux, az400-private]`.
4. Deny fork PR jobs access to this pool. Keep deployment identity unavailable until its protected environment is approved. Permit outbound HTTPS to documented platform endpoints and your package feed; private SQL/App Configuration use private DNS and routing.
5. Run one job, collect sanitized diagnostic logs, remove the registration, destroy the VM, and verify the platform reports no surviving agent.

Never run untrusted pull requests on a persistent runner with a managed identity or cached credentials. A reusable work directory cannot establish isolation. For a negative check, target a nonexistent label and cancel the queued job after recording its state. Do not leave it consuming a concurrency slot.

Sources: [GitHub ephemeral runners](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/autoscaling-with-self-hosted-runners), [Azure Pipelines agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops).
