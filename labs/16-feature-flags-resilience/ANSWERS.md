# Lab 16 — Answers and explanations

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

## L16-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which next change most directly satisfies the stated requirement?

- **A. Use the existing feature flag as a kill switch** Runtime configuration can change exposure quickly. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **B. Remove obsolete flags and simplify the associated code paths** Flags need a complete retirement lifecycle. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **C. Guard exposure with a disabled release feature flag** **Correct.** Deployment and user exposure can be controlled separately. This directly addresses the constraint stated in this case.

**Explanation:** Deployment and user exposure can be controlled separately. The selected answer is guard exposure with a disabled release feature flag.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q002

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which explanation best accounts for the behavior or constraint described?

- **A. Temporary rollout controls accumulated without cleanup** The configuration state space has become unnecessary complexity. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **B. Code presence does not require immediate feature availability** **Correct.** The application can evaluate a release-time switch. This directly addresses the constraint stated in this case.
- **C. The failure is isolated to a flag-controlled capability** A full binary rollback may be unnecessary. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.

**Explanation:** The application can evaluate a release-time switch. The selected answer is code presence does not require immediate feature availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q003

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The supported behavior remains after obsolete branches are removed** Cleanup needs behavioral regression evidence. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **B. The deployed feature stays hidden until the flag is enabled** **Correct.** The test distinguishes deployment from exposure. This directly addresses the constraint stated in this case.
- **C. Disabling the flag restores the defined healthy path** The proof must observe user-facing behavior. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.

**Explanation:** The test distinguishes deployment from exposure. The selected answer is the deployed feature stays hidden until the flag is enabled.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q004

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which execution safeguard most directly addresses the risk in this case?

- **A. Check consumers and configuration references before deleting flags** A shared flag may still control another application. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **B. Validate both flag states before launch** **Correct.** Disabled paths can still contain defects. This directly addresses the constraint stated in this case.
- **C. Restrict flag changes and retain an audit trail** Exposure controls can affect production behavior. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.

**Explanation:** Disabled paths can still contain defects. The selected answer is validate both flag states before launch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q005

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. The team selects this remedy: "Guard exposure with a disabled release feature flag." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Flag propagation and refresh behavior affect response time** A switch is not necessarily observed instantly. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **B. Flag removal is a code and configuration change** It deserves the normal review and release process. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **C. Feature flags need owners and removal dates** **Correct.** Temporary flags create lasting branching complexity. This directly addresses the constraint stated in this case.

**Explanation:** Temporary flags create lasting branching complexity. The selected answer is feature flags need owners and removal dates.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which next change most directly satisfies the stated requirement?

- **A. Guard exposure with a disabled release feature flag** Deployment and user exposure can be controlled separately. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **B. Use the existing feature flag as a kill switch** **Correct.** Runtime configuration can change exposure quickly. This directly addresses the constraint stated in this case.
- **C. Use stable targeting appropriate to the user journey** Consistent assignment supports coherent multi-request behavior. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.

**Explanation:** Runtime configuration can change exposure quickly. The selected answer is use the existing feature flag as a kill switch.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q007

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which explanation best accounts for the behavior or constraint described?

- **A. Random per-request assignment changes experience mid-workflow** A percentage alone does not establish stable cohorts. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. Code presence does not require immediate feature availability** The application can evaluate a release-time switch. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **C. The failure is isolated to a flag-controlled capability** **Correct.** A full binary rollback may be unnecessary. This directly addresses the constraint stated in this case.

**Explanation:** A full binary rollback may be unnecessary. The selected answer is the failure is isolated to a flag-controlled capability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q008

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A selected user keeps the intended variant across the journey** The verification must span several related requests. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. The deployed feature stays hidden until the flag is enabled** The test distinguishes deployment from exposure. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **C. Disabling the flag restores the defined healthy path** **Correct.** The proof must observe user-facing behavior. This directly addresses the constraint stated in this case.

**Explanation:** The proof must observe user-facing behavior. The selected answer is disabling the flag restores the defined healthy path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q009

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid exposing sensitive identity attributes in flag telemetry** Targeting data can reveal user information. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. Validate both flag states before launch** Disabled paths can still contain defects. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **C. Restrict flag changes and retain an audit trail** **Correct.** Exposure controls can affect production behavior. This directly addresses the constraint stated in this case.

**Explanation:** Exposure controls can affect production behavior. The selected answer is restrict flag changes and retain an audit trail.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q010

Advanced · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. The team selects this remedy: "Use the existing feature flag as a kill switch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Feature flags need owners and removal dates** Temporary flags create lasting branching complexity. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **B. Flag propagation and refresh behavior affect response time** **Correct.** A switch is not necessarily observed instantly. This directly addresses the constraint stated in this case.
- **C. Stable targeting requires identity and assignment design** Anonymous or changing identities complicate consistency. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.

**Explanation:** A switch is not necessarily observed instantly. The selected answer is flag propagation and refresh behavior affect response time.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which next change most directly satisfies the stated requirement?

- **A. Implement and verify the intended configuration refresh path** The client must observe updates after startup. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Use the existing feature flag as a kill switch** Runtime configuration can change exposure quickly. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **C. Use stable targeting appropriate to the user journey** **Correct.** Consistent assignment supports coherent multi-request behavior. This directly addresses the constraint stated in this case.

**Explanation:** Consistent assignment supports coherent multi-request behavior. The selected answer is use stable targeting appropriate to the user journey.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which explanation best accounts for the behavior or constraint described?

- **A. Configuration was loaded once without effective refresh** A remote change does not automatically update application memory. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. The failure is isolated to a flag-controlled capability** A full binary rollback may be unnecessary. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **C. Random per-request assignment changes experience mid-workflow** **Correct.** A percentage alone does not establish stable cohorts. This directly addresses the constraint stated in this case.

**Explanation:** A percentage alone does not establish stable cohorts. The selected answer is random per-request assignment changes experience mid-workflow.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q013

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The application observes the new value within the documented interval** The test should measure actual propagation. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Disabling the flag restores the defined healthy path** The proof must observe user-facing behavior. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **C. A selected user keeps the intended variant across the journey** **Correct.** The verification must span several related requests. This directly addresses the constraint stated in this case.

**Explanation:** The verification must span several related requests. The selected answer is a selected user keeps the intended variant across the journey.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q014

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which execution safeguard most directly addresses the risk in this case?

- **A. Choose safe behavior when refresh temporarily fails** Configuration connectivity should not create uncontrolled exposure. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Restrict flag changes and retain an audit trail** Exposure controls can affect production behavior. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **C. Avoid exposing sensitive identity attributes in flag telemetry** **Correct.** Targeting data can reveal user information. This directly addresses the constraint stated in this case.

**Explanation:** Targeting data can reveal user information. The selected answer is avoid exposing sensitive identity attributes in flag telemetry.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q015

Advanced · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. The team selects this remedy: "Use stable targeting appropriate to the user journey." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Faster refresh can increase configuration traffic** Responsiveness and service usage need balance. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Flag propagation and refresh behavior affect response time** A switch is not necessarily observed instantly. That addresses a different requirement: Emergency disable. It does not directly resolve this case's stated constraint.
- **C. Stable targeting requires identity and assignment design** **Correct.** Anonymous or changing identities complicate consistency. This directly addresses the constraint stated in this case.

**Explanation:** Anonymous or changing identities complicate consistency. The selected answer is stable targeting requires identity and assignment design.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q016

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which next change most directly satisfies the stated requirement?

- **A. Use stable targeting appropriate to the user journey** Consistent assignment supports coherent multi-request behavior. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. Implement and verify the intended configuration refresh path** **Correct.** The client must observe updates after startup. This directly addresses the constraint stated in this case.
- **C. Use bounded retries with suitable delay for transient errors** A short transient fault may succeed later. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.

**Explanation:** The client must observe updates after startup. The selected answer is implement and verify the intended configuration refresh path.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q017

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which explanation best accounts for the behavior or constraint described?

- **A. The failure is temporary rather than a permanent invalid request** Retry policy must classify the error correctly. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Random per-request assignment changes experience mid-workflow** A percentage alone does not establish stable cohorts. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **C. Configuration was loaded once without effective refresh** **Correct.** A remote change does not automatically update application memory. This directly addresses the constraint stated in this case.

**Explanation:** A remote change does not automatically update application memory. The selected answer is configuration was loaded once without effective refresh.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q018

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which observation provides the strongest evidence that the requested result was achieved?

- **A. A selected user keeps the intended variant across the journey** The verification must span several related requests. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. The application observes the new value within the documented interval** **Correct.** The test should measure actual propagation. This directly addresses the constraint stated in this case.
- **C. Transient faults recover within the permitted request budget** The test should include an eventual successful response. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.

**Explanation:** The test should measure actual propagation. The selected answer is the application observes the new value within the documented interval.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q019

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which execution safeguard most directly addresses the risk in this case?

- **A. Retry only operations safe to repeat** Repeated nonidempotent actions can duplicate side effects. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Avoid exposing sensitive identity attributes in flag telemetry** Targeting data can reveal user information. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **C. Choose safe behavior when refresh temporarily fails** **Correct.** Configuration connectivity should not create uncontrolled exposure. This directly addresses the constraint stated in this case.

**Explanation:** Configuration connectivity should not create uncontrolled exposure. The selected answer is choose safe behavior when refresh temporarily fails.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q020

Advanced · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. The team selects this remedy: "Implement and verify the intended configuration refresh path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Stable targeting requires identity and assignment design** Anonymous or changing identities complicate consistency. That addresses a different requirement: Unstable cohort. It does not directly resolve this case's stated constraint.
- **B. Faster refresh can increase configuration traffic** **Correct.** Responsiveness and service usage need balance. This directly addresses the constraint stated in this case.
- **C. Retries increase latency and downstream load** Unbounded repetition can worsen an outage. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.

**Explanation:** Responsiveness and service usage need balance. The selected answer is faster refresh can increase configuration traffic.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q021

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which next change most directly satisfies the stated requirement?

- **A. Use a circuit breaker with a recovery probe** Persistent failures require limiting repeated dependency calls. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.
- **B. Implement and verify the intended configuration refresh path** The client must observe updates after startup. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **C. Use bounded retries with suitable delay for transient errors** **Correct.** A short transient fault may succeed later. This directly addresses the constraint stated in this case.

**Explanation:** A short transient fault may succeed later. The selected answer is use bounded retries with suitable delay for transient errors.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q022

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which explanation best accounts for the behavior or constraint described?

- **A. The failure is temporary rather than a permanent invalid request** **Correct.** Retry policy must classify the error correctly. This directly addresses the constraint stated in this case.
- **B. Retries alone amplify sustained unavailability** The application continues spending resources on known failures. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.
- **C. Configuration was loaded once without effective refresh** A remote change does not automatically update application memory. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.

**Explanation:** Retry policy must classify the error correctly. The selected answer is the failure is temporary rather than a permanent invalid request.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q023

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The application observes the new value within the documented interval** The test should measure actual propagation. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Transient faults recover within the permitted request budget** **Correct.** The test should include an eventual successful response. This directly addresses the constraint stated in this case.
- **C. Calls are curtailed while the breaker is open** The evidence should show reduced failing dependency traffic. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.

**Explanation:** The test should include an eventual successful response. The selected answer is transient faults recover within the permitted request budget.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q024

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which execution safeguard most directly addresses the risk in this case?

- **A. Choose safe behavior when refresh temporarily fails** Configuration connectivity should not create uncontrolled exposure. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **B. Retry only operations safe to repeat** **Correct.** Repeated nonidempotent actions can duplicate side effects. This directly addresses the constraint stated in this case.
- **C. Define a safe failure or fallback experience** Stopping calls still leaves user requests to handle. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.

**Explanation:** Repeated nonidempotent actions can duplicate side effects. The selected answer is retry only operations safe to repeat.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q025

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. The team selects this remedy: "Use bounded retries with suitable delay for transient errors." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Circuit breakers add states and recovery tuning** Incorrect thresholds can reject healthy calls unnecessarily. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.
- **B. Faster refresh can increase configuration traffic** Responsiveness and service usage need balance. That addresses a different requirement: Stale flag. It does not directly resolve this case's stated constraint.
- **C. Retries increase latency and downstream load** **Correct.** Unbounded repetition can worsen an outage. This directly addresses the constraint stated in this case.

**Explanation:** Unbounded repetition can worsen an outage. The selected answer is retries increase latency and downstream load.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q026

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which next change most directly satisfies the stated requirement?

- **A. Use bounded retries with suitable delay for transient errors** A short transient fault may succeed later. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Use a circuit breaker with a recovery probe** **Correct.** Persistent failures require limiting repeated dependency calls. This directly addresses the constraint stated in this case.
- **C. Add jitter to bounded backoff** Spread retries to avoid synchronized load spikes. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** Persistent failures require limiting repeated dependency calls. The selected answer is use a circuit breaker with a recovery probe.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q027

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which explanation best accounts for the behavior or constraint described?

- **A. The failure is temporary rather than a permanent invalid request** Retry policy must classify the error correctly. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Retries alone amplify sustained unavailability** **Correct.** The application continues spending resources on known failures. This directly addresses the constraint stated in this case.
- **C. Identical retry timing coordinates the entire client population** Recovery receives a concentrated surge. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** The application continues spending resources on known failures. The selected answer is retries alone amplify sustained unavailability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q028

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Transient faults recover within the permitted request budget** The test should include an eventual successful response. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Calls are curtailed while the breaker is open** **Correct.** The evidence should show reduced failing dependency traffic. This directly addresses the constraint stated in this case.
- **C. Retry traffic is distributed rather than spiking in lockstep** The measurement must observe aggregate timing. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** The evidence should show reduced failing dependency traffic. The selected answer is calls are curtailed while the breaker is open.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q029

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which execution safeguard most directly addresses the risk in this case?

- **A. Retry only operations safe to repeat** Repeated nonidempotent actions can duplicate side effects. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Define a safe failure or fallback experience** **Correct.** Stopping calls still leaves user requests to handle. This directly addresses the constraint stated in this case.
- **C. Keep an overall retry and timeout budget** Random delay should not create unbounded waiting. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** Stopping calls still leaves user requests to handle. The selected answer is define a safe failure or fallback experience.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q030

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. The team selects this remedy: "Use a circuit breaker with a recovery probe." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Retries increase latency and downstream load** Unbounded repetition can worsen an outage. That addresses a different requirement: Transient failure. It does not directly resolve this case's stated constraint.
- **B. Circuit breakers add states and recovery tuning** **Correct.** Incorrect thresholds can reject healthy calls unnecessarily. This directly addresses the constraint stated in this case.
- **C. Jitter improves distribution rather than fixing capacity** The backend still needs sufficient healthy throughput. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** Incorrect thresholds can reject healthy calls unnecessarily. The selected answer is circuit breakers add states and recovery tuning.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q031

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which next change most directly satisfies the stated requirement?

- **A. Add jitter to bounded backoff** **Correct.** Spread retries to avoid synchronized load spikes. This directly addresses the constraint stated in this case.
- **B. Use an idempotency mechanism for the payment operation** Ambiguous outcomes require safe repeat semantics. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **C. Use a circuit breaker with a recovery probe** Persistent failures require limiting repeated dependency calls. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.

**Explanation:** Spread retries to avoid synchronized load spikes. The selected answer is add jitter to bounded backoff.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q032

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which explanation best accounts for the behavior or constraint described?

- **A. Retries alone amplify sustained unavailability** The application continues spending resources on known failures. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.
- **B. Identical retry timing coordinates the entire client population** **Correct.** Recovery receives a concentrated surge. This directly addresses the constraint stated in this case.
- **C. Timeout does not prove the first operation failed** The server may have committed before the response was lost. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.

**Explanation:** Recovery receives a concentrated surge. The selected answer is identical retry timing coordinates the entire client population.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q033

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Repeating one payment identity creates one charge** The evidence must include the ambiguous retry path. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **B. Calls are curtailed while the breaker is open** The evidence should show reduced failing dependency traffic. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.
- **C. Retry traffic is distributed rather than spiking in lockstep** **Correct.** The measurement must observe aggregate timing. This directly addresses the constraint stated in this case.

**Explanation:** The measurement must observe aggregate timing. The selected answer is retry traffic is distributed rather than spiking in lockstep.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q034

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which execution safeguard most directly addresses the risk in this case?

- **A. Keep an overall retry and timeout budget** **Correct.** Random delay should not create unbounded waiting. This directly addresses the constraint stated in this case.
- **B. Persist and validate the idempotency key with operation state** A transient client-only key cannot prevent duplicate server effects. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **C. Define a safe failure or fallback experience** Stopping calls still leaves user requests to handle. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.

**Explanation:** Random delay should not create unbounded waiting. The selected answer is keep an overall retry and timeout budget.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q035

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. The team selects this remedy: "Add jitter to bounded backoff." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Jitter improves distribution rather than fixing capacity** **Correct.** The backend still needs sufficient healthy throughput. This directly addresses the constraint stated in this case.
- **B. Idempotency records need lifecycle and conflict handling** The same key cannot silently identify different operations. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **C. Circuit breakers add states and recovery tuning** Incorrect thresholds can reject healthy calls unnecessarily. That addresses a different requirement: Dependency outage. It does not directly resolve this case's stated constraint.

**Explanation:** The backend still needs sufficient healthy throughput. The selected answer is jitter improves distribution rather than fixing capacity.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q036

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which next change most directly satisfies the stated requirement?

- **A. Use an idempotency mechanism for the payment operation** **Correct.** Ambiguous outcomes require safe repeat semantics. This directly addresses the constraint stated in this case.
- **B. Define a safe default and last-known-good policy** Configuration failure should have deliberate exposure behavior. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **C. Add jitter to bounded backoff** Spread retries to avoid synchronized load spikes. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** Ambiguous outcomes require safe repeat semantics. The selected answer is use an idempotency mechanism for the payment operation.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q037

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which explanation best accounts for the behavior or constraint described?

- **A. Identical retry timing coordinates the entire client population** Recovery receives a concentrated surge. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.
- **B. Timeout does not prove the first operation failed** **Correct.** The server may have committed before the response was lost. This directly addresses the constraint stated in this case.
- **C. An unavailable configuration source creates an ambiguous decision** The application needs a documented fallback. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.

**Explanation:** The server may have committed before the response was lost. The selected answer is timeout does not prove the first operation failed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q038

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The unvalidated feature remains within its safe exposure policy** Test the outage rather than only healthy flag reads. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **B. Retry traffic is distributed rather than spiking in lockstep** The measurement must observe aggregate timing. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.
- **C. Repeating one payment identity creates one charge** **Correct.** The evidence must include the ambiguous retry path. This directly addresses the constraint stated in this case.

**Explanation:** The evidence must include the ambiguous retry path. The selected answer is repeating one payment identity creates one charge.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q039

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which execution safeguard most directly addresses the risk in this case?

- **A. Persist and validate the idempotency key with operation state** **Correct.** A transient client-only key cannot prevent duplicate server effects. This directly addresses the constraint stated in this case.
- **B. Avoid treating all fallback data as permanently fresh** Stale configuration can retain outdated exposure decisions. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **C. Keep an overall retry and timeout budget** Random delay should not create unbounded waiting. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.

**Explanation:** A transient client-only key cannot prevent duplicate server effects. The selected answer is persist and validate the idempotency key with operation state.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q040

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. The team selects this remedy: "Use an idempotency mechanism for the payment operation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Safe defaults may reduce feature availability** The tradeoff should match the feature's risk. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **B. Jitter improves distribution rather than fixing capacity** The backend still needs sufficient healthy throughput. That addresses a different requirement: Retry storm. It does not directly resolve this case's stated constraint.
- **C. Idempotency records need lifecycle and conflict handling** **Correct.** The same key cannot silently identify different operations. This directly addresses the constraint stated in this case.

**Explanation:** The same key cannot silently identify different operations. The selected answer is idempotency records need lifecycle and conflict handling.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q041

Foundational · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which next change most directly satisfies the stated requirement?

- **A. Use an idempotency mechanism for the payment operation** Ambiguous outcomes require safe repeat semantics. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **B. Define a safe default and last-known-good policy** **Correct.** Configuration failure should have deliberate exposure behavior. This directly addresses the constraint stated in this case.
- **C. Remove obsolete flags and simplify the associated code paths** Flags need a complete retirement lifecycle. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.

**Explanation:** Configuration failure should have deliberate exposure behavior. The selected answer is define a safe default and last-known-good policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q042

Foundational · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which explanation best accounts for the behavior or constraint described?

- **A. Temporary rollout controls accumulated without cleanup** The configuration state space has become unnecessary complexity. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **B. Timeout does not prove the first operation failed** The server may have committed before the response was lost. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **C. An unavailable configuration source creates an ambiguous decision** **Correct.** The application needs a documented fallback. This directly addresses the constraint stated in this case.

**Explanation:** The application needs a documented fallback. The selected answer is an unavailable configuration source creates an ambiguous decision.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q043

Applied · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which observation provides the strongest evidence that the requested result was achieved?

- **A. Repeating one payment identity creates one charge** The evidence must include the ambiguous retry path. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **B. The unvalidated feature remains within its safe exposure policy** **Correct.** Test the outage rather than only healthy flag reads. This directly addresses the constraint stated in this case.
- **C. The supported behavior remains after obsolete branches are removed** Cleanup needs behavioral regression evidence. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.

**Explanation:** Test the outage rather than only healthy flag reads. The selected answer is the unvalidated feature remains within its safe exposure policy.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q044

Applied · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which execution safeguard most directly addresses the risk in this case?

- **A. Persist and validate the idempotency key with operation state** A transient client-only key cannot prevent duplicate server effects. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **B. Avoid treating all fallback data as permanently fresh** **Correct.** Stale configuration can retain outdated exposure decisions. This directly addresses the constraint stated in this case.
- **C. Check consumers and configuration references before deleting flags** A shared flag may still control another application. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.

**Explanation:** Stale configuration can retain outdated exposure decisions. The selected answer is avoid treating all fallback data as permanently fresh.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q045

Advanced · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. The team selects this remedy: "Define a safe default and last-known-good policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Flag removal is a code and configuration change** It deserves the normal review and release process. That addresses a different requirement: Expired experiment. It does not directly resolve this case's stated constraint.
- **B. Idempotency records need lifecycle and conflict handling** The same key cannot silently identify different operations. That addresses a different requirement: Duplicate payment. It does not directly resolve this case's stated constraint.
- **C. Safe defaults may reduce feature availability** **Correct.** The tradeoff should match the feature's risk. This directly addresses the constraint stated in this case.

**Explanation:** The tradeoff should match the feature's risk. The selected answer is safe defaults may reduce feature availability.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q046

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which next change most directly satisfies the stated requirement?

- **A. Remove obsolete flags and simplify the associated code paths** **Correct.** Flags need a complete retirement lifecycle. This directly addresses the constraint stated in this case.
- **B. Guard exposure with a disabled release feature flag** Deployment and user exposure can be controlled separately. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **C. Define a safe default and last-known-good policy** Configuration failure should have deliberate exposure behavior. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.

**Explanation:** Flags need a complete retirement lifecycle. The selected answer is remove obsolete flags and simplify the associated code paths.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q047

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which explanation best accounts for the behavior or constraint described?

- **A. An unavailable configuration source creates an ambiguous decision** The application needs a documented fallback. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **B. Temporary rollout controls accumulated without cleanup** **Correct.** The configuration state space has become unnecessary complexity. This directly addresses the constraint stated in this case.
- **C. Code presence does not require immediate feature availability** The application can evaluate a release-time switch. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.

**Explanation:** The configuration state space has become unnecessary complexity. The selected answer is temporary rollout controls accumulated without cleanup.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q048

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which observation provides the strongest evidence that the requested result was achieved?

- **A. The deployed feature stays hidden until the flag is enabled** The test distinguishes deployment from exposure. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.
- **B. The unvalidated feature remains within its safe exposure policy** Test the outage rather than only healthy flag reads. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **C. The supported behavior remains after obsolete branches are removed** **Correct.** Cleanup needs behavioral regression evidence. This directly addresses the constraint stated in this case.

**Explanation:** Cleanup needs behavioral regression evidence. The selected answer is the supported behavior remains after obsolete branches are removed.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q049

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which execution safeguard most directly addresses the risk in this case?

- **A. Avoid treating all fallback data as permanently fresh** Stale configuration can retain outdated exposure decisions. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **B. Check consumers and configuration references before deleting flags** **Correct.** A shared flag may still control another application. This directly addresses the constraint stated in this case.
- **C. Validate both flag states before launch** Disabled paths can still contain defects. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.

**Explanation:** A shared flag may still control another application. The selected answer is check consumers and configuration references before deleting flags.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)

## L16-Q050

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. The team selects this remedy: "Remove obsolete flags and simplify the associated code paths." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A. Safe defaults may reduce feature availability** The tradeoff should match the feature's risk. That addresses a different requirement: Flag service unavailable. It does not directly resolve this case's stated constraint.
- **B. Flag removal is a code and configuration change** **Correct.** It deserves the normal review and release process. This directly addresses the constraint stated in this case.
- **C. Feature flags need owners and removal dates** Temporary flags create lasting branching complexity. That addresses a different requirement: Dark launch. It does not directly resolve this case's stated constraint.

**Explanation:** It deserves the normal review and release process. The selected answer is flag removal is a code and configuration change.

**Sources:** [S1](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-feature-management); [S2](https://learn.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker); [S3](https://learn.microsoft.com/en-us/azure/architecture/patterns/retry)
