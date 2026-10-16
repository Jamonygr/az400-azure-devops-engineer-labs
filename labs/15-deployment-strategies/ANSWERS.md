# Lab 15 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L15-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which next change most directly satisfies the stated requirement?

- **A. Use a blue-green traffic-switch strategy** **Correct.** Parallel environments separate candidate validation from live traffic. This directly addresses the constraint stated in this case.
- **B. Halt expansion and restore the cohort to the healthy baseline** Canary health should control further exposure. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **C. Rehearse rollback with explicit health and completion criteria** A recovery option needs demonstrated operational behavior. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** Parallel environments separate candidate validation from live traffic. The selected answer is use a blue-green traffic-switch strategy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q002

Foundational · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which explanation best accounts for the behavior or constraint described?

- **A. The design maintains two release environments** **Correct.** That topology enables a controlled switch between versions. This directly addresses the constraint stated in this case.
- **B. The candidate fails the defined comparative health criteria** A successful deployment task does not imply safe behavior. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **C. Retaining old capacity is not proof of recoverability** Dependencies and configuration may have changed. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** That topology enables a controlled switch between versions. The selected answer is the design maintains two release environments.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q003

Applied · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Exposure stops and cohort errors return to acceptable levels** The evidence must include user-facing service behavior. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **B. A failed candidate is replaced by the healthy baseline within target time** The rehearsal measures the actual recovery objective. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.
- **C. Traffic moves to the validated environment and the old one remains recoverable** **Correct.** The test should verify routing and recovery options. This directly addresses the constraint stated in this case.

**Explanation:** The test should verify routing and recovery options. The selected answer is traffic moves to the validated environment and the old one remains recoverable.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q004

Applied · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate shared dependencies before switching traffic** **Correct.** A separate application environment may still share state. This directly addresses the constraint stated in this case.
- **B. Define thresholds and observation time before rollout** Ad hoc criteria can rationalize an unsafe expansion. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **C. Confirm data and schema compatibility before rollback** Older application code may not understand new state. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** A separate application environment may still share state. The selected answer is validate shared dependencies before switching traffic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q005

Advanced · [CP1](README.md#task-1) · [D3.4.1](../../docs/objective-map.md)

Blue-green candidate: The team provisions a separate complete environment and wants a rapid traffic switch after validation. The team selects this remedy: "Use a blue-green traffic-switch strategy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Small cohorts may produce statistically weak signals** Observation needs enough representative traffic. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **B. Rollback can be constrained by irreversible changes** Some failures require forward repair instead. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.
- **C. Parallel environments increase resource cost** **Correct.** Fast switching trades capacity for reduced cutover risk. This directly addresses the constraint stated in this case.

**Explanation:** Fast switching trades capacity for reduced cutover risk. The selected answer is parallel environments increase resource cost.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which next change most directly satisfies the stated requirement?

- **A. Use ordered deployment rings with validation between rings** Cohorts advance through deliberate exposure stages. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **B. Use a blue-green traffic-switch strategy** Parallel environments separate candidate validation from live traffic. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **C. Halt expansion and restore the cohort to the healthy baseline** **Correct.** Canary health should control further exposure. This directly addresses the constraint stated in this case.

**Explanation:** Canary health should control further exposure. The selected answer is halt expansion and restore the cohort to the healthy baseline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q007

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which explanation best accounts for the behavior or constraint described?

- **A. Different risk cohorts require controlled promotion order** A single global release lacks the requested staging. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **B. The design maintains two release environments** That topology enables a controlled switch between versions. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **C. The candidate fails the defined comparative health criteria** **Correct.** A successful deployment task does not imply safe behavior. This directly addresses the constraint stated in this case.

**Explanation:** A successful deployment task does not imply safe behavior. The selected answer is the candidate fails the defined comparative health criteria.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q008

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Exposure stops and cohort errors return to acceptable levels** **Correct.** The evidence must include user-facing service behavior. This directly addresses the constraint stated in this case.
- **B. Each ring advances only after its acceptance evidence passes** The progression must match the intended population sequence. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **C. Traffic moves to the validated environment and the old one remains recoverable** The test should verify routing and recovery options. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence must include user-facing service behavior. The selected answer is exposure stops and cohort errors return to acceptable levels.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q009

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate shared dependencies before switching traffic** A separate application environment may still share state. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **B. Define thresholds and observation time before rollout** **Correct.** Ad hoc criteria can rationalize an unsafe expansion. This directly addresses the constraint stated in this case.
- **C. Keep cohort definitions and emergency stop controls explicit** Incorrect membership can expose unintended users. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.

**Explanation:** Ad hoc criteria can rationalize an unsafe expansion. The selected answer is define thresholds and observation time before rollout.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q010

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Canary regression: A candidate is routed to a small production cohort and shows a higher error rate than the baseline. The team selects this remedy: "Halt expansion and restore the cohort to the healthy baseline." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel environments increase resource cost** Fast switching trades capacity for reduced cutover risk. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **B. Small cohorts may produce statistically weak signals** **Correct.** Observation needs enough representative traffic. This directly addresses the constraint stated in this case.
- **C. Ring management adds operational complexity** More cohorts require more policy and observability. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.

**Explanation:** Observation needs enough representative traffic. The selected answer is small cohorts may produce statistically weak signals.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which next change most directly satisfies the stated requirement?

- **A. Run an A-B experiment with stable assignment and business metrics** The goal is comparative product evidence. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **B. Halt expansion and restore the cohort to the healthy baseline** Canary health should control further exposure. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **C. Use ordered deployment rings with validation between rings** **Correct.** Cohorts advance through deliberate exposure stages. This directly addresses the constraint stated in this case.

**Explanation:** Cohorts advance through deliberate exposure stages. The selected answer is use ordered deployment rings with validation between rings.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which explanation best accounts for the behavior or constraint described?

- **A. Different risk cohorts require controlled promotion order** **Correct.** A single global release lacks the requested staging. This directly addresses the constraint stated in this case.
- **B. This is an experimentation question rather than only rollout safety** Both variants need meaningful measured outcomes. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **C. The candidate fails the defined comparative health criteria** A successful deployment task does not imply safe behavior. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.

**Explanation:** A single global release lacks the requested staging. The selected answer is different risk cohorts require controlled promotion order.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q013

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Comparable cohorts produce the specified conversion measurements** The result must support the experiment's business hypothesis. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **B. Exposure stops and cohort errors return to acceptable levels** The evidence must include user-facing service behavior. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **C. Each ring advances only after its acceptance evidence passes** **Correct.** The progression must match the intended population sequence. This directly addresses the constraint stated in this case.

**Explanation:** The progression must match the intended population sequence. The selected answer is each ring advances only after its acceptance evidence passes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q014

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep cohort definitions and emergency stop controls explicit** **Correct.** Incorrect membership can expose unintended users. This directly addresses the constraint stated in this case.
- **B. Avoid changing assignment mid-session or mixing incompatible data** Unstable cohorts contaminate the comparison. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **C. Define thresholds and observation time before rollout** Ad hoc criteria can rationalize an unsafe expansion. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.

**Explanation:** Incorrect membership can expose unintended users. The selected answer is keep cohort definitions and emergency stop controls explicit.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q015

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

Ring rollout: Internal users should receive a release before pilot customers and the remaining production population. The team selects this remedy: "Use ordered deployment rings with validation between rings." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Small cohorts may produce statistically weak signals** Observation needs enough representative traffic. That addresses a different requirement: Canary regression. It does not directly resolve this case's stated constraint.
- **B. Ring management adds operational complexity** **Correct.** More cohorts require more policy and observability. This directly addresses the constraint stated in this case.
- **C. Experiments need sufficient sample size and bias control** A short noisy comparison may not justify conclusions. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.

**Explanation:** More cohorts require more policy and observability. The selected answer is ring management adds operational complexity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q016

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which next change most directly satisfies the stated requirement?

- **A. Warm and validate the staging slot before cutover** The candidate should be ready before serving users. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **B. Use ordered deployment rings with validation between rings** Cohorts advance through deliberate exposure stages. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **C. Run an A-B experiment with stable assignment and business metrics** **Correct.** The goal is comparative product evidence. This directly addresses the constraint stated in this case.

**Explanation:** The goal is comparative product evidence. The selected answer is run an A-B experiment with stable assignment and business metrics.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q017

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which explanation best accounts for the behavior or constraint described?

- **A. Different risk cohorts require controlled promotion order** A single global release lacks the requested staging. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **B. This is an experimentation question rather than only rollout safety** **Correct.** Both variants need meaningful measured outcomes. This directly addresses the constraint stated in this case.
- **C. Startup readiness was not established before routing traffic** Deployment completion and application readiness differ. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.

**Explanation:** Both variants need meaningful measured outcomes. The selected answer is this is an experimentation question rather than only rollout safety.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q018

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The candidate passes readiness checks before traffic moves** The proof should exercise the actual startup path. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **B. Each ring advances only after its acceptance evidence passes** The progression must match the intended population sequence. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **C. Comparable cohorts produce the specified conversion measurements** **Correct.** The result must support the experiment's business hypothesis. This directly addresses the constraint stated in this case.

**Explanation:** The result must support the experiment's business hypothesis. The selected answer is comparable cohorts produce the specified conversion measurements.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q019

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. Which execution safeguard most directly addresses the risk in this case?

- **A. Use health checks representative of critical dependencies** A shallow ping can miss an unusable application. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **B. Keep cohort definitions and emergency stop controls explicit** Incorrect membership can expose unintended users. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **C. Avoid changing assignment mid-session or mixing incompatible data** **Correct.** Unstable cohorts contaminate the comparison. This directly addresses the constraint stated in this case.

**Explanation:** Unstable cohorts contaminate the comparison. The selected answer is avoid changing assignment mid-session or mixing incompatible data.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q020

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md)

A-B experiment: Product owners need to compare conversion between two variants while controlling for user assignment. The team selects this remedy: "Run an A-B experiment with stable assignment and business metrics." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Ring management adds operational complexity** More cohorts require more policy and observability. That addresses a different requirement: Ring rollout. It does not directly resolve this case's stated constraint.
- **B. Experiments need sufficient sample size and bias control** **Correct.** A short noisy comparison may not justify conclusions. This directly addresses the constraint stated in this case.
- **C. Warmup increases release time and resource use** The overhead reduces user-facing startup risk. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.

**Explanation:** A short noisy comparison may not justify conclusions. The selected answer is experiments need sufficient sample size and bias control.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q021

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which next change most directly satisfies the stated requirement?

- **A. Run an A-B experiment with stable assignment and business metrics** The goal is comparative product evidence. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **B. Warm and validate the staging slot before cutover** **Correct.** The candidate should be ready before serving users. This directly addresses the constraint stated in this case.
- **C. Review slot-specific settings and swap behavior** Configuration movement must match the intended environment boundary. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.

**Explanation:** The candidate should be ready before serving users. The selected answer is warm and validate the staging slot before cutover.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q022

Foundational · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which explanation best accounts for the behavior or constraint described?

- **A. This is an experimentation question rather than only rollout safety** Both variants need meaningful measured outcomes. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **B. Startup readiness was not established before routing traffic** **Correct.** Deployment completion and application readiness differ. This directly addresses the constraint stated in this case.
- **C. Not every setting has the desired stickiness behavior** A correct binary can run against the wrong service. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Deployment completion and application readiness differ. The selected answer is startup readiness was not established before routing traffic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q023

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Comparable cohorts produce the specified conversion measurements** The result must support the experiment's business hypothesis. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **B. The candidate passes readiness checks before traffic moves** **Correct.** The proof should exercise the actual startup path. This directly addresses the constraint stated in this case.
- **C. After a rehearsal each slot retains its intended backend configuration** The test must inspect configuration after the swap. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.

**Explanation:** The proof should exercise the actual startup path. The selected answer is the candidate passes readiness checks before traffic moves.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q024

Applied · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. Which execution safeguard most directly addresses the risk in this case?

- **A. Use nonproduction validation targets during the rehearsal** Wrong-backend tests must not modify production data. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.
- **B. Avoid changing assignment mid-session or mixing incompatible data** Unstable cohorts contaminate the comparison. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.
- **C. Use health checks representative of critical dependencies** **Correct.** A shallow ping can miss an unusable application. This directly addresses the constraint stated in this case.

**Explanation:** A shallow ping can miss an unusable application. The selected answer is use health checks representative of critical dependencies.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q025

Advanced · [CP4](README.md#task-4) · [D3.4.3](../../docs/objective-map.md)

Cold slot: A staged App Service version receives traffic immediately after swap and shows startup failures. The team selects this remedy: "Warm and validate the staging slot before cutover." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Warmup increases release time and resource use** **Correct.** The overhead reduces user-facing startup risk. This directly addresses the constraint stated in this case.
- **B. Slot swap is not equivalent to full environment isolation** Shared resources and setting behavior need separate review. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.
- **C. Experiments need sufficient sample size and bias control** A short noisy comparison may not justify conclusions. That addresses a different requirement: A-B experiment. It does not directly resolve this case's stated constraint.

**Explanation:** The overhead reduces user-facing startup risk. The selected answer is warmup increases release time and resource use.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q026

Foundational · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which next change most directly satisfies the stated requirement?

- **A. Use the documented supported-release hotfix path** The patch should exclude unrelated unready changes. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **B. Warm and validate the staging slot before cutover** The candidate should be ready before serving users. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **C. Review slot-specific settings and swap behavior** **Correct.** Configuration movement must match the intended environment boundary. This directly addresses the constraint stated in this case.

**Explanation:** Configuration movement must match the intended environment boundary. The selected answer is review slot-specific settings and swap behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q027

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which explanation best accounts for the behavior or constraint described?

- **A. Startup readiness was not established before routing traffic** Deployment completion and application readiness differ. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **B. Not every setting has the desired stickiness behavior** **Correct.** A correct binary can run against the wrong service. This directly addresses the constraint stated in this case.
- **C. The default branch does not represent the deployed baseline** Releasing it would broaden emergency scope. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.

**Explanation:** A correct binary can run against the wrong service. The selected answer is not every setting has the desired stickiness behavior.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q028

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The candidate passes readiness checks before traffic moves** The proof should exercise the actual startup path. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **B. After a rehearsal each slot retains its intended backend configuration** **Correct.** The test must inspect configuration after the swap. This directly addresses the constraint stated in this case.
- **C. The patch fixes production and is reconciled into future development** Both immediate repair and forward consistency matter. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.

**Explanation:** The test must inspect configuration after the swap. The selected answer is after a rehearsal each slot retains its intended backend configuration.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q029

Applied · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. Which execution safeguard most directly addresses the risk in this case?

- **A. Use nonproduction validation targets during the rehearsal** **Correct.** Wrong-backend tests must not modify production data. This directly addresses the constraint stated in this case.
- **B. Retain required review and targeted regression tests** Urgency should not remove all quality evidence. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **C. Use health checks representative of critical dependencies** A shallow ping can miss an unusable application. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.

**Explanation:** Wrong-backend tests must not modify production data. The selected answer is use nonproduction validation targets during the rehearsal.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q030

Advanced · [CP3](README.md#task-3) · [D3.4.3](../../docs/objective-map.md)

Wrong configuration: A slot swap moves environment-specific connection information unexpectedly and the candidate contacts the wrong backend. The team selects this remedy: "Review slot-specific settings and swap behavior." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel hotfix branches increase reconciliation work** The fix must not be lost in the next release. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **B. Warmup increases release time and resource use** The overhead reduces user-facing startup risk. That addresses a different requirement: Cold slot. It does not directly resolve this case's stated constraint.
- **C. Slot swap is not equivalent to full environment isolation** **Correct.** Shared resources and setting behavior need separate review. This directly addresses the constraint stated in this case.

**Explanation:** Shared resources and setting behavior need separate review. The selected answer is slot swap is not equivalent to full environment isolation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q031

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which next change most directly satisfies the stated requirement?

- **A. Review slot-specific settings and swap behavior** Configuration movement must match the intended environment boundary. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.
- **B. Use the documented supported-release hotfix path** **Correct.** The patch should exclude unrelated unready changes. This directly addresses the constraint stated in this case.
- **C. Use a controlled rolling deployment with readiness checks** Healthy capacity should remain while instances change. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.

**Explanation:** The patch should exclude unrelated unready changes. The selected answer is use the documented supported-release hotfix path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q032

Foundational · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which explanation best accounts for the behavior or constraint described?

- **A. The default branch does not represent the deployed baseline** **Correct.** Releasing it would broaden emergency scope. This directly addresses the constraint stated in this case.
- **B. The rollout removes all serving capacity at once** Parallel replacement violates the availability requirement. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **C. Not every setting has the desired stickiness behavior** A correct binary can run against the wrong service. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.

**Explanation:** Releasing it would broaden emergency scope. The selected answer is the default branch does not represent the deployed baseline.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q033

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which observation provides the strongest evidence that the requested result was achieved?

- **A. After a rehearsal each slot retains its intended backend configuration** The test must inspect configuration after the swap. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.
- **B. The patch fixes production and is reconciled into future development** **Correct.** Both immediate repair and forward consistency matter. This directly addresses the constraint stated in this case.
- **C. Some healthy instances serve traffic throughout the update** The evidence should cover the transition interval. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.

**Explanation:** Both immediate repair and forward consistency matter. The selected answer is the patch fixes production and is reconciled into future development.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q034

Applied · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. Which execution safeguard most directly addresses the risk in this case?

- **A. Set capacity and failure thresholds for the actual workload** Too aggressive a rollout can exhaust remaining capacity. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **B. Use nonproduction validation targets during the rehearsal** Wrong-backend tests must not modify production data. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.
- **C. Retain required review and targeted regression tests** **Correct.** Urgency should not remove all quality evidence. This directly addresses the constraint stated in this case.

**Explanation:** Urgency should not remove all quality evidence. The selected answer is retain required review and targeted regression tests.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q035

Advanced · [CP5](README.md#task-5) · [D3.4.4](../../docs/objective-map.md)

Emergency patch: Main contains unfinished next-release work, but a production defect needs a narrow tested correction today. The team selects this remedy: "Use the documented supported-release hotfix path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel hotfix branches increase reconciliation work** **Correct.** The fix must not be lost in the next release. This directly addresses the constraint stated in this case.
- **B. Rolling updates temporarily run mixed application versions** Compatibility is required during the transition. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **C. Slot swap is not equivalent to full environment isolation** Shared resources and setting behavior need separate review. That addresses a different requirement: Wrong configuration. It does not directly resolve this case's stated constraint.

**Explanation:** The fix must not be lost in the next release. The selected answer is parallel hotfix branches increase reconciliation work.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q036

Foundational · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which next change most directly satisfies the stated requirement?

- **A. Externalize or deliberately handle session state across the cutover** Application state must survive the chosen routing change. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **B. Use the documented supported-release hotfix path** The patch should exclude unrelated unready changes. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **C. Use a controlled rolling deployment with readiness checks** **Correct.** Healthy capacity should remain while instances change. This directly addresses the constraint stated in this case.

**Explanation:** Healthy capacity should remain while instances change. The selected answer is use a controlled rolling deployment with readiness checks.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q037

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which explanation best accounts for the behavior or constraint described?

- **A. Session data is tied to the old instances** Traffic switching does not transfer process memory. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **B. The default branch does not represent the deployed baseline** Releasing it would broaden emergency scope. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **C. The rollout removes all serving capacity at once** **Correct.** Parallel replacement violates the availability requirement. This directly addresses the constraint stated in this case.

**Explanation:** Parallel replacement violates the availability requirement. The selected answer is the rollout removes all serving capacity at once.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q038

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A representative user session remains valid through cutover** The test must include stateful user behavior. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **B. The patch fixes production and is reconciled into future development** Both immediate repair and forward consistency matter. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **C. Some healthy instances serve traffic throughout the update** **Correct.** The evidence should cover the transition interval. This directly addresses the constraint stated in this case.

**Explanation:** The evidence should cover the transition interval. The selected answer is some healthy instances serve traffic throughout the update.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q039

Applied · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. Which execution safeguard most directly addresses the risk in this case?

- **A. Retain required review and targeted regression tests** Urgency should not remove all quality evidence. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **B. Set capacity and failure thresholds for the actual workload** **Correct.** Too aggressive a rollout can exhaust remaining capacity. This directly addresses the constraint stated in this case.
- **C. Assess security and expiry rules for shared session storage** Availability should not weaken session protection. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.

**Explanation:** Too aggressive a rollout can exhaust remaining capacity. The selected answer is set capacity and failure thresholds for the actual workload.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q040

Advanced · [CP3](README.md#task-3) · [D3.4.7](../../docs/objective-map.md)

Rolling update failure: Replacing every instance simultaneously produces downtime even though the service normally has spare capacity. The team selects this remedy: "Use a controlled rolling deployment with readiness checks." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel hotfix branches increase reconciliation work** The fix must not be lost in the next release. That addresses a different requirement: Emergency patch. It does not directly resolve this case's stated constraint.
- **B. Rolling updates temporarily run mixed application versions** **Correct.** Compatibility is required during the transition. This directly addresses the constraint stated in this case.
- **C. Shared state introduces another dependency** Its cost and reliability become part of release design. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.

**Explanation:** Compatibility is required during the transition. The selected answer is rolling updates temporarily run mixed application versions.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q041

Foundational · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which next change most directly satisfies the stated requirement?

- **A. Externalize or deliberately handle session state across the cutover** **Correct.** Application state must survive the chosen routing change. This directly addresses the constraint stated in this case.
- **B. Rehearse rollback with explicit health and completion criteria** A recovery option needs demonstrated operational behavior. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.
- **C. Use a controlled rolling deployment with readiness checks** Healthy capacity should remain while instances change. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.

**Explanation:** Application state must survive the chosen routing change. The selected answer is externalize or deliberately handle session state across the cutover.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q042

Foundational · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which explanation best accounts for the behavior or constraint described?

- **A. The rollout removes all serving capacity at once** Parallel replacement violates the availability requirement. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **B. Session data is tied to the old instances** **Correct.** Traffic switching does not transfer process memory. This directly addresses the constraint stated in this case.
- **C. Retaining old capacity is not proof of recoverability** Dependencies and configuration may have changed. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** Traffic switching does not transfer process memory. The selected answer is session data is tied to the old instances.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q043

Applied · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Some healthy instances serve traffic throughout the update** The evidence should cover the transition interval. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **B. A representative user session remains valid through cutover** **Correct.** The test must include stateful user behavior. This directly addresses the constraint stated in this case.
- **C. A failed candidate is replaced by the healthy baseline within target time** The rehearsal measures the actual recovery objective. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** The test must include stateful user behavior. The selected answer is a representative user session remains valid through cutover.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q044

Applied · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. Which execution safeguard most directly addresses the risk in this case?

- **A. Confirm data and schema compatibility before rollback** Older application code may not understand new state. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.
- **B. Set capacity and failure thresholds for the actual workload** Too aggressive a rollout can exhaust remaining capacity. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **C. Assess security and expiry rules for shared session storage** **Correct.** Availability should not weaken session protection. This directly addresses the constraint stated in this case.

**Explanation:** Availability should not weaken session protection. The selected answer is assess security and expiry rules for shared session storage.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q045

Advanced · [CP4](README.md#task-4) · [D3.4.1](../../docs/objective-map.md), [D3.4.3](../../docs/objective-map.md)

Session disruption: Switching to the new environment loses in-memory sessions and users must restart important workflows. The team selects this remedy: "Externalize or deliberately handle session state across the cutover." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Rolling updates temporarily run mixed application versions** Compatibility is required during the transition. That addresses a different requirement: Rolling update failure. It does not directly resolve this case's stated constraint.
- **B. Shared state introduces another dependency** **Correct.** Its cost and reliability become part of release design. This directly addresses the constraint stated in this case.
- **C. Rollback can be constrained by irreversible changes** Some failures require forward repair instead. That addresses a different requirement: Rollback confidence. It does not directly resolve this case's stated constraint.

**Explanation:** Its cost and reliability become part of release design. The selected answer is shared state introduces another dependency.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q046

Foundational · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which next change most directly satisfies the stated requirement?

- **A. Externalize or deliberately handle session state across the cutover** Application state must survive the chosen routing change. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **B. Rehearse rollback with explicit health and completion criteria** **Correct.** A recovery option needs demonstrated operational behavior. This directly addresses the constraint stated in this case.
- **C. Use a blue-green traffic-switch strategy** Parallel environments separate candidate validation from live traffic. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.

**Explanation:** A recovery option needs demonstrated operational behavior. The selected answer is rehearse rollback with explicit health and completion criteria.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q047

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which explanation best accounts for the behavior or constraint described?

- **A. Session data is tied to the old instances** Traffic switching does not transfer process memory. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **B. Retaining old capacity is not proof of recoverability** **Correct.** Dependencies and configuration may have changed. This directly addresses the constraint stated in this case.
- **C. The design maintains two release environments** That topology enables a controlled switch between versions. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.

**Explanation:** Dependencies and configuration may have changed. The selected answer is retaining old capacity is not proof of recoverability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q048

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A failed candidate is replaced by the healthy baseline within target time** **Correct.** The rehearsal measures the actual recovery objective. This directly addresses the constraint stated in this case.
- **B. Traffic moves to the validated environment and the old one remains recoverable** The test should verify routing and recovery options. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **C. A representative user session remains valid through cutover** The test must include stateful user behavior. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.

**Explanation:** The rehearsal measures the actual recovery objective. The selected answer is a failed candidate is replaced by the healthy baseline within target time.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q049

Applied · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. Which execution safeguard most directly addresses the risk in this case?

- **A. Validate shared dependencies before switching traffic** A separate application environment may still share state. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **B. Assess security and expiry rules for shared session storage** Availability should not weaken session protection. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **C. Confirm data and schema compatibility before rollback** **Correct.** Older application code may not understand new state. This directly addresses the constraint stated in this case.

**Explanation:** Older application code may not understand new state. The selected answer is confirm data and schema compatibility before rollback.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)

## L15-Q050

Advanced · [CP5](README.md#task-5) · [D3.4.1](../../docs/objective-map.md), [D3.4.4](../../docs/objective-map.md)

Rollback confidence: The team keeps the old application environment but has never tested routing traffic back after a failed release. The team selects this remedy: "Rehearse rollback with explicit health and completion criteria." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Parallel environments increase resource cost** Fast switching trades capacity for reduced cutover risk. That addresses a different requirement: Blue-green candidate. It does not directly resolve this case's stated constraint.
- **B. Shared state introduces another dependency** Its cost and reliability become part of release design. That addresses a different requirement: Session disruption. It does not directly resolve this case's stated constraint.
- **C. Rollback can be constrained by irreversible changes** **Correct.** Some failures require forward repair instead. This directly addresses the constraint stated in this case.

**Explanation:** Some failures require forward repair instead. The selected answer is rollback can be constrained by irreversible changes.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots); [S2](https://learn.microsoft.com/en-us/azure/well-architected/operational-excellence/safe-deployments); [S3](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops)
