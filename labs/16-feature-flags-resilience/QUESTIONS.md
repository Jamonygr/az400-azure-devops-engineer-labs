# Lab 16 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L16-Q001

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which next change most directly satisfies the stated requirement?

- **A.** Use the existing feature flag as a kill switch
- **B.** Remove obsolete flags and simplify the associated code paths
- **C.** Guard exposure with a disabled release feature flag

## L16-Q002

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which explanation best accounts for the behavior or constraint described?

- **A.** Temporary rollout controls accumulated without cleanup
- **B.** Code presence does not require immediate feature availability
- **C.** The failure is isolated to a flag-controlled capability

## L16-Q003

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The supported behavior remains after obsolete branches are removed
- **B.** The deployed feature stays hidden until the flag is enabled
- **C.** Disabling the flag restores the defined healthy path

## L16-Q004

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check consumers and configuration references before deleting flags
- **B.** Validate both flag states before launch
- **C.** Restrict flag changes and retain an audit trail

## L16-Q005

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Dark launch: Code is deployed successfully, but product owners want the new checkout hidden until a planned launch. The team selects this remedy: "Guard exposure with a disabled release feature flag." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Flag propagation and refresh behavior affect response time
- **B.** Flag removal is a code and configuration change
- **C.** Feature flags need owners and removal dates

## L16-Q006

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which next change most directly satisfies the stated requirement?

- **A.** Guard exposure with a disabled release feature flag
- **B.** Use the existing feature flag as a kill switch
- **C.** Use stable targeting appropriate to the user journey

## L16-Q007

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which explanation best accounts for the behavior or constraint described?

- **A.** Random per-request assignment changes experience mid-workflow
- **B.** Code presence does not require immediate feature availability
- **C.** The failure is isolated to a flag-controlled capability

## L16-Q008

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A selected user keeps the intended variant across the journey
- **B.** The deployed feature stays hidden until the flag is enabled
- **C.** Disabling the flag restores the defined healthy path

## L16-Q009

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid exposing sensitive identity attributes in flag telemetry
- **B.** Validate both flag states before launch
- **C.** Restrict flag changes and retain an audit trail

## L16-Q010

Advanced · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Emergency disable: A new recommendation feature increases errors, and responders need to stop exposure without rebuilding the application. The team selects this remedy: "Use the existing feature flag as a kill switch." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Feature flags need owners and removal dates
- **B.** Flag propagation and refresh behavior affect response time
- **C.** Stable targeting requires identity and assignment design

## L16-Q011

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which next change most directly satisfies the stated requirement?

- **A.** Implement and verify the intended configuration refresh path
- **B.** Use the existing feature flag as a kill switch
- **C.** Use stable targeting appropriate to the user journey

## L16-Q012

Foundational · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which explanation best accounts for the behavior or constraint described?

- **A.** Configuration was loaded once without effective refresh
- **B.** The failure is isolated to a flag-controlled capability
- **C.** Random per-request assignment changes experience mid-workflow

## L16-Q013

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The application observes the new value within the documented interval
- **B.** Disabling the flag restores the defined healthy path
- **C.** A selected user keeps the intended variant across the journey

## L16-Q014

Applied · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. Which execution safeguard most directly addresses the risk in this case?

- **A.** Choose safe behavior when refresh temporarily fails
- **B.** Restrict flag changes and retain an audit trail
- **C.** Avoid exposing sensitive identity attributes in flag telemetry

## L16-Q015

Advanced · [CP5](README.md#task-5) · [D3.4.6](../../docs/objective-map.md)

Unstable cohort: A percentage rollout gives the same user different behavior on successive requests and breaks a multi-step workflow. The team selects this remedy: "Use stable targeting appropriate to the user journey." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Faster refresh can increase configuration traffic
- **B.** Flag propagation and refresh behavior affect response time
- **C.** Stable targeting requires identity and assignment design

## L16-Q016

Foundational · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which next change most directly satisfies the stated requirement?

- **A.** Use stable targeting appropriate to the user journey
- **B.** Implement and verify the intended configuration refresh path
- **C.** Use bounded retries with suitable delay for transient errors

## L16-Q017

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which explanation best accounts for the behavior or constraint described?

- **A.** The failure is temporary rather than a permanent invalid request
- **B.** Random per-request assignment changes experience mid-workflow
- **C.** Configuration was loaded once without effective refresh

## L16-Q018

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A selected user keeps the intended variant across the journey
- **B.** The application observes the new value within the documented interval
- **C.** Transient faults recover within the permitted request budget

## L16-Q019

Applied · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retry only operations safe to repeat
- **B.** Avoid exposing sensitive identity attributes in flag telemetry
- **C.** Choose safe behavior when refresh temporarily fails

## L16-Q020

Advanced · [CP4](README.md#task-4) · [D3.4.6](../../docs/objective-map.md)

Stale flag: Operators change a feature in App Configuration, but the running application continues using its startup value. The team selects this remedy: "Implement and verify the intended configuration refresh path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Stable targeting requires identity and assignment design
- **B.** Faster refresh can increase configuration traffic
- **C.** Retries increase latency and downstream load

## L16-Q021

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which next change most directly satisfies the stated requirement?

- **A.** Use a circuit breaker with a recovery probe
- **B.** Implement and verify the intended configuration refresh path
- **C.** Use bounded retries with suitable delay for transient errors

## L16-Q022

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which explanation best accounts for the behavior or constraint described?

- **A.** The failure is temporary rather than a permanent invalid request
- **B.** Retries alone amplify sustained unavailability
- **C.** Configuration was loaded once without effective refresh

## L16-Q023

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The application observes the new value within the documented interval
- **B.** Transient faults recover within the permitted request budget
- **C.** Calls are curtailed while the breaker is open

## L16-Q024

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. Which execution safeguard most directly addresses the risk in this case?

- **A.** Choose safe behavior when refresh temporarily fails
- **B.** Retry only operations safe to repeat
- **C.** Define a safe failure or fallback experience

## L16-Q025

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Transient failure: An external dependency occasionally returns a temporary failure, and the application immediately fails every affected request. The team selects this remedy: "Use bounded retries with suitable delay for transient errors." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Circuit breakers add states and recovery tuning
- **B.** Faster refresh can increase configuration traffic
- **C.** Retries increase latency and downstream load

## L16-Q026

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which next change most directly satisfies the stated requirement?

- **A.** Use bounded retries with suitable delay for transient errors
- **B.** Use a circuit breaker with a recovery probe
- **C.** Add jitter to bounded backoff

## L16-Q027

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which explanation best accounts for the behavior or constraint described?

- **A.** The failure is temporary rather than a permanent invalid request
- **B.** Retries alone amplify sustained unavailability
- **C.** Identical retry timing coordinates the entire client population

## L16-Q028

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Transient faults recover within the permitted request budget
- **B.** Calls are curtailed while the breaker is open
- **C.** Retry traffic is distributed rather than spiking in lockstep

## L16-Q029

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. Which execution safeguard most directly addresses the risk in this case?

- **A.** Retry only operations safe to repeat
- **B.** Define a safe failure or fallback experience
- **C.** Keep an overall retry and timeout budget

## L16-Q030

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Dependency outage: A backend remains unavailable for ten minutes, but every request repeatedly retries it and saturates resources. The team selects this remedy: "Use a circuit breaker with a recovery probe." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Retries increase latency and downstream load
- **B.** Circuit breakers add states and recovery tuning
- **C.** Jitter improves distribution rather than fixing capacity

## L16-Q031

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which next change most directly satisfies the stated requirement?

- **A.** Add jitter to bounded backoff
- **B.** Use an idempotency mechanism for the payment operation
- **C.** Use a circuit breaker with a recovery probe

## L16-Q032

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which explanation best accounts for the behavior or constraint described?

- **A.** Retries alone amplify sustained unavailability
- **B.** Identical retry timing coordinates the entire client population
- **C.** Timeout does not prove the first operation failed

## L16-Q033

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Repeating one payment identity creates one charge
- **B.** Calls are curtailed while the breaker is open
- **C.** Retry traffic is distributed rather than spiking in lockstep

## L16-Q034

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. Which execution safeguard most directly addresses the risk in this case?

- **A.** Keep an overall retry and timeout budget
- **B.** Persist and validate the idempotency key with operation state
- **C.** Define a safe failure or fallback experience

## L16-Q035

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Retry storm: Thousands of clients retry at exactly the same interval after a short dependency outage. The team selects this remedy: "Add jitter to bounded backoff." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Jitter improves distribution rather than fixing capacity
- **B.** Idempotency records need lifecycle and conflict handling
- **C.** Circuit breakers add states and recovery tuning

## L16-Q036

Foundational · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which next change most directly satisfies the stated requirement?

- **A.** Use an idempotency mechanism for the payment operation
- **B.** Define a safe default and last-known-good policy
- **C.** Add jitter to bounded backoff

## L16-Q037

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which explanation best accounts for the behavior or constraint described?

- **A.** Identical retry timing coordinates the entire client population
- **B.** Timeout does not prove the first operation failed
- **C.** An unavailable configuration source creates an ambiguous decision

## L16-Q038

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The unvalidated feature remains within its safe exposure policy
- **B.** Retry traffic is distributed rather than spiking in lockstep
- **C.** Repeating one payment identity creates one charge

## L16-Q039

Applied · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. Which execution safeguard most directly addresses the risk in this case?

- **A.** Persist and validate the idempotency key with operation state
- **B.** Avoid treating all fallback data as permanently fresh
- **C.** Keep an overall retry and timeout budget

## L16-Q040

Advanced · [CP5](README.md#task-5) · [D3.4.5](../../docs/objective-map.md)

Duplicate payment: A timeout leads a client to repeat a payment request, and the customer is charged twice. The team selects this remedy: "Use an idempotency mechanism for the payment operation." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Safe defaults may reduce feature availability
- **B.** Jitter improves distribution rather than fixing capacity
- **C.** Idempotency records need lifecycle and conflict handling

## L16-Q041

Foundational · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which next change most directly satisfies the stated requirement?

- **A.** Use an idempotency mechanism for the payment operation
- **B.** Define a safe default and last-known-good policy
- **C.** Remove obsolete flags and simplify the associated code paths

## L16-Q042

Foundational · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which explanation best accounts for the behavior or constraint described?

- **A.** Temporary rollout controls accumulated without cleanup
- **B.** Timeout does not prove the first operation failed
- **C.** An unavailable configuration source creates an ambiguous decision

## L16-Q043

Applied · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Repeating one payment identity creates one charge
- **B.** The unvalidated feature remains within its safe exposure policy
- **C.** The supported behavior remains after obsolete branches are removed

## L16-Q044

Applied · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. Which execution safeguard most directly addresses the risk in this case?

- **A.** Persist and validate the idempotency key with operation state
- **B.** Avoid treating all fallback data as permanently fresh
- **C.** Check consumers and configuration references before deleting flags

## L16-Q045

Advanced · [CP2](README.md#task-2) · [D3.4.5](../../docs/objective-map.md), [D3.4.6](../../docs/objective-map.md)

Flag service unavailable: A configuration outage occurs during rollout, and an unknown flag value would expose an unvalidated feature. The team selects this remedy: "Define a safe default and last-known-good policy." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Flag removal is a code and configuration change
- **B.** Idempotency records need lifecycle and conflict handling
- **C.** Safe defaults may reduce feature availability

## L16-Q046

Foundational · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which next change most directly satisfies the stated requirement?

- **A.** Remove obsolete flags and simplify the associated code paths
- **B.** Guard exposure with a disabled release feature flag
- **C.** Define a safe default and last-known-good policy

## L16-Q047

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which explanation best accounts for the behavior or constraint described?

- **A.** An unavailable configuration source creates an ambiguous decision
- **B.** Temporary rollout controls accumulated without cleanup
- **C.** Code presence does not require immediate feature availability

## L16-Q048

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The deployed feature stays hidden until the flag is enabled
- **B.** The unvalidated feature remains within its safe exposure policy
- **C.** The supported behavior remains after obsolete branches are removed

## L16-Q049

Applied · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid treating all fallback data as permanently fresh
- **B.** Check consumers and configuration references before deleting flags
- **C.** Validate both flag states before launch

## L16-Q050

Advanced · [CP1](README.md#task-1) · [D3.4.6](../../docs/objective-map.md)

Expired experiment: Several old flags remain after launch, creating hard-to-test combinations that no team owns. The team selects this remedy: "Remove obsolete flags and simplify the associated code paths." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Safe defaults may reduce feature availability
- **B.** Flag removal is a code and configuration change
- **C.** Feature flags need owners and removal dates
