# Lab 24 — Scenario questions

<!-- Generated from questions.yml; edit that file and run tools/generate_assessments.py. -->

Verified: 2026-10-16. Original practice material; no recalled exam questions.

Choose the single best answer for every question. Use [the answer guide](ANSWERS.md) after attempting the questions.

## L24-Q001

Foundational · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Pipeline-only health: The build is green while customers receive HTTP errors, and operations has no runtime service telemetry. Which next change most directly satisfies the stated requirement?

- **A.** Check telemetry freshness and collection health
- **B.** Connect runtime monitoring to the delivery feedback loop
- **C.** Instrument the application with supported Application Insights telemetry

## L24-Q002

Foundational · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Pipeline-only health: The build is green while customers receive HTTP errors, and operations has no runtime service telemetry. Which explanation best accounts for the behavior or constraint described?

- **A.** Infrastructure metrics do not describe application call relationships
- **B.** The collection path may have stopped reporting
- **C.** The monitoring design observes automation rather than user experience

## L24-Q003

Applied · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Pipeline-only health: The build is green while customers receive HTTP errors, and operations has no runtime service telemetry. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A recent synthetic request produces timely telemetry
- **B.** A deployed test failure appears in the operational view
- **C.** A test request produces correlated request and dependency records

## L24-Q004

Applied · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Pipeline-only health: The build is green while customers receive HTTP errors, and operations has no runtime service telemetry. Which execution safeguard most directly addresses the risk in this case?

- **A.** Alert on critical collection gaps where appropriate
- **B.** Assign an owner and response procedure to the signal
- **C.** Avoid collecting credentials or sensitive payloads in telemetry

## L24-Q005

Advanced · [CP5](README.md#task-5) · [D5.1.1](../../docs/objective-map.md)

Pipeline-only health: The build is green while customers receive HTTP errors, and operations has no runtime service telemetry. The team selects this remedy: "Connect runtime monitoring to the delivery feedback loop." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Runtime telemetry adds ingestion and retention cost
- **B.** Sampling and instrumentation coverage affect trace completeness
- **C.** Freshness checks add their own monitoring work

## L24-Q006

Foundational · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Missing application trace: VM CPU metrics are available, but a failing API request cannot be followed through application dependencies. Which next change most directly satisfies the stated requirement?

- **A.** Instrument the application with supported Application Insights telemetry
- **B.** Add the appropriate container monitoring collection
- **C.** Connect runtime monitoring to the delivery feedback loop

## L24-Q007

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Missing application trace: VM CPU metrics are available, but a failing API request cannot be followed through application dependencies. Which explanation best accounts for the behavior or constraint described?

- **A.** Application instrumentation does not automatically provide all container signals
- **B.** The monitoring design observes automation rather than user experience
- **C.** Infrastructure metrics do not describe application call relationships

## L24-Q008

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Missing application trace: VM CPU metrics are available, but a failing API request cannot be followed through application dependencies. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A deployed test failure appears in the operational view
- **B.** A test request produces correlated request and dependency records
- **C.** The container's expected resource and health data appears

## L24-Q009

Applied · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Missing application trace: VM CPU metrics are available, but a failing API request cannot be followed through application dependencies. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid collecting credentials or sensitive payloads in telemetry
- **B.** Scope collection and retention to the learning environment
- **C.** Assign an owner and response procedure to the signal

## L24-Q010

Advanced · [CP2](README.md#task-2) · [D5.1.2](../../docs/objective-map.md)

Missing application trace: VM CPU metrics are available, but a failing API request cannot be followed through application dependencies. The team selects this remedy: "Instrument the application with supported Application Insights telemetry." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Runtime telemetry adds ingestion and retention cost
- **B.** Sampling and instrumentation coverage affect trace completeness
- **C.** More detailed container telemetry increases volume and cost

## L24-Q011

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Container blind spot: Application request metrics exist, but operators cannot inspect the resource behavior of the container workload. Which next change most directly satisfies the stated requirement?

- **A.** Instrument the application with supported Application Insights telemetry
- **B.** Add the appropriate container monitoring collection
- **C.** Collect the relevant Azure Storage resource telemetry

## L24-Q012

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Container blind spot: Application request metrics exist, but operators cannot inspect the resource behavior of the container workload. Which explanation best accounts for the behavior or constraint described?

- **A.** Application instrumentation does not automatically provide all container signals
- **B.** Application averages cannot describe every storage-side condition
- **C.** Infrastructure metrics do not describe application call relationships

## L24-Q013

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Container blind spot: Application request metrics exist, but operators cannot inspect the resource behavior of the container workload. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A test request produces correlated request and dependency records
- **B.** The container's expected resource and health data appears
- **C.** The storage resource exposes relevant errors and performance signals

## L24-Q014

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Container blind spot: Application request metrics exist, but operators cannot inspect the resource behavior of the container workload. Which execution safeguard most directly addresses the risk in this case?

- **A.** Avoid collecting credentials or sensitive payloads in telemetry
- **B.** Scope collection and retention to the learning environment
- **C.** Check supported metrics diagnostic settings and access scope

## L24-Q015

Advanced · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Container blind spot: Application request metrics exist, but operators cannot inspect the resource behavior of the container workload. The team selects this remedy: "Add the appropriate container monitoring collection." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** More detailed container telemetry increases volume and cost
- **B.** Resource diagnostics do not automatically explain application intent
- **C.** Sampling and instrumentation coverage affect trace completeness

## L24-Q016

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Storage outage diagnosis: API errors point to storage access, but only application averages are collected and storage behavior is absent. Which next change most directly satisfies the stated requirement?

- **A.** Add the appropriate container monitoring collection
- **B.** Collect the relevant Azure Storage resource telemetry
- **C.** Configure failure alerts with an accountable response destination

## L24-Q017

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Storage outage diagnosis: API errors point to storage access, but only application averages are collected and storage behavior is absent. Which explanation best accounts for the behavior or constraint described?

- **A.** The automation lacks event-to-responder routing
- **B.** Application instrumentation does not automatically provide all container signals
- **C.** Application averages cannot describe every storage-side condition

## L24-Q018

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Storage outage diagnosis: API errors point to storage access, but only application averages are collected and storage behavior is absent. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The storage resource exposes relevant errors and performance signals
- **B.** A controlled failed run reaches the intended responder channel
- **C.** The container's expected resource and health data appears

## L24-Q019

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Storage outage diagnosis: API errors point to storage access, but only application averages are collected and storage behavior is absent. Which execution safeguard most directly addresses the risk in this case?

- **A.** Check supported metrics diagnostic settings and access scope
- **B.** Avoid placing secrets or excessive logs in notifications
- **C.** Scope collection and retention to the learning environment

## L24-Q020

Advanced · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Storage outage diagnosis: API errors point to storage access, but only application averages are collected and storage behavior is absent. The team selects this remedy: "Collect the relevant Azure Storage resource telemetry." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Resource diagnostics do not automatically explain application intent
- **B.** Unfiltered alerts create fatigue
- **C.** More detailed container telemetry increases volume and cost

## L24-Q021

Foundational · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Silent failed run: A production pipeline fails outside working hours, but no responder receives an actionable notification. Which next change most directly satisfies the stated requirement?

- **A.** Repair and test the action group's response path
- **B.** Collect the relevant Azure Storage resource telemetry
- **C.** Configure failure alerts with an accountable response destination

## L24-Q022

Foundational · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Silent failed run: A production pipeline fails outside working hours, but no responder receives an actionable notification. Which explanation best accounts for the behavior or constraint described?

- **A.** The automation lacks event-to-responder routing
- **B.** A fired rule does not prove a human was reached
- **C.** Application averages cannot describe every storage-side condition

## L24-Q023

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Silent failed run: A production pipeline fails outside working hours, but no responder receives an actionable notification. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A controlled failed run reaches the intended responder channel
- **B.** A test alert reaches the current owned destination
- **C.** The storage resource exposes relevant errors and performance signals

## L24-Q024

Applied · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Silent failed run: A production pipeline fails outside working hours, but no responder receives an actionable notification. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review recipients and automation permissions before changing actions
- **B.** Check supported metrics diagnostic settings and access scope
- **C.** Avoid placing secrets or excessive logs in notifications

## L24-Q025

Advanced · [CP5](README.md#task-5) · [D5.1.4](../../docs/objective-map.md)

Silent failed run: A production pipeline fails outside working hours, but no responder receives an actionable notification. The team selects this remedy: "Configure failure alerts with an accountable response destination." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Resource diagnostics do not automatically explain application intent
- **B.** Unfiltered alerts create fatigue
- **C.** Response routing requires ongoing ownership maintenance

## L24-Q026

Foundational · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Alert without action: An Azure Monitor rule fires correctly, but the configured action group contains an obsolete destination. Which next change most directly satisfies the stated requirement?

- **A.** Configure failure alerts with an accountable response destination
- **B.** Repair and test the action group's response path
- **C.** Use project insights with the appropriate project fields

## L24-Q027

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Alert without action: An Azure Monitor rule fires correctly, but the configured action group contains an obsolete destination. Which explanation best accounts for the behavior or constraint described?

- **A.** A fired rule does not prove a human was reached
- **B.** Repository traffic and project work status are different data
- **C.** The automation lacks event-to-responder routing

## L24-Q028

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Alert without action: An Azure Monitor rule fires correctly, but the configured action group contains an obsolete destination. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A controlled failed run reaches the intended responder channel
- **B.** A test alert reaches the current owned destination
- **C.** The chart groups project items by the intended status field

## L24-Q029

Applied · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Alert without action: An Azure Monitor rule fires correctly, but the configured action group contains an obsolete destination. Which execution safeguard most directly addresses the risk in this case?

- **A.** Review recipients and automation permissions before changing actions
- **B.** Document chart filters and access expectations
- **C.** Avoid placing secrets or excessive logs in notifications

## L24-Q030

Advanced · [CP4](README.md#task-4) · [D5.1.1](../../docs/objective-map.md)

Alert without action: An Azure Monitor rule fires correctly, but the configured action group contains an obsolete destination. The team selects this remedy: "Repair and test the action group's response path." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Project chart capabilities depend on supported data and access
- **B.** Unfiltered alerts create fatigue
- **C.** Response routing requires ongoing ownership maintenance

## L24-Q031

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

GitHub project chart: A team wants work-status counts, but expects repository traffic graphs to summarize its project board. Which next change most directly satisfies the stated requirement?

- **A.** Collect the relevant network monitoring signals
- **B.** Repair and test the action group's response path
- **C.** Use project insights with the appropriate project fields

## L24-Q032

Foundational · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

GitHub project chart: A team wants work-status counts, but expects repository traffic graphs to summarize its project board. Which explanation best accounts for the behavior or constraint described?

- **A.** A fired rule does not prove a human was reached
- **B.** Repository traffic and project work status are different data
- **C.** The measured layer does not cover the suspected fault

## L24-Q033

Applied · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

GitHub project chart: A team wants work-status counts, but expects repository traffic graphs to summarize its project board. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** The chart groups project items by the intended status field
- **B.** Network evidence identifies the affected path or resource
- **C.** A test alert reaches the current owned destination

## L24-Q034

Applied · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

GitHub project chart: A team wants work-status counts, but expects repository traffic graphs to summarize its project board. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use authorized bounded connectivity probes
- **B.** Review recipients and automation permissions before changing actions
- **C.** Document chart filters and access expectations

## L24-Q035

Advanced · [CP5](README.md#task-5) · [D5.1.3](../../docs/objective-map.md)

GitHub project chart: A team wants work-status counts, but expects repository traffic graphs to summarize its project board. The team selects this remedy: "Use project insights with the appropriate project fields." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Response routing requires ongoing ownership maintenance
- **B.** Project chart capabilities depend on supported data and access
- **C.** Network monitoring often needs several correlated views

## L24-Q036

Foundational · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Network visibility gap: VM CPU is normal during a service outage, but connection failures point to a networking problem. Which next change most directly satisfies the stated requirement?

- **A.** Tune duration aggregation and meaningful thresholds
- **B.** Use project insights with the appropriate project fields
- **C.** Collect the relevant network monitoring signals

## L24-Q037

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Network visibility gap: VM CPU is normal during a service outage, but connection failures point to a networking problem. Which explanation best accounts for the behavior or constraint described?

- **A.** The rule treats transient normal behavior as an incident
- **B.** Repository traffic and project work status are different data
- **C.** The measured layer does not cover the suspected fault

## L24-Q038

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Network visibility gap: VM CPU is normal during a service outage, but connection failures point to a networking problem. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Normal deployment spikes stay quiet while sustained saturation alerts
- **B.** The chart groups project items by the intended status field
- **C.** Network evidence identifies the affected path or resource

## L24-Q039

Applied · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Network visibility gap: VM CPU is normal during a service outage, but connection failures point to a networking problem. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use authorized bounded connectivity probes
- **B.** Record why the new threshold matches service objectives
- **C.** Document chart filters and access expectations

## L24-Q040

Advanced · [CP3](README.md#task-3) · [D5.1.2](../../docs/objective-map.md)

Network visibility gap: VM CPU is normal during a service outage, but connection failures point to a networking problem. The team selects this remedy: "Collect the relevant network monitoring signals." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Project chart capabilities depend on supported data and access
- **B.** Network monitoring often needs several correlated views
- **C.** Longer evaluation windows increase detection delay

## L24-Q041

Foundational · [CP4](README.md#task-4) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

Noisy threshold: A CPU alert fires briefly on every deployment and responders mute it, missing later sustained saturation. Which next change most directly satisfies the stated requirement?

- **A.** Tune duration aggregation and meaningful thresholds
- **B.** Check telemetry freshness and collection health
- **C.** Collect the relevant network monitoring signals

## L24-Q042

Foundational · [CP4](README.md#task-4) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

Noisy threshold: A CPU alert fires briefly on every deployment and responders mute it, missing later sustained saturation. Which explanation best accounts for the behavior or constraint described?

- **A.** The measured layer does not cover the suspected fault
- **B.** The rule treats transient normal behavior as an incident
- **C.** The collection path may have stopped reporting

## L24-Q043

Applied · [CP4](README.md#task-4) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

Noisy threshold: A CPU alert fires briefly on every deployment and responders mute it, missing later sustained saturation. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** Normal deployment spikes stay quiet while sustained saturation alerts
- **B.** A recent synthetic request produces timely telemetry
- **C.** Network evidence identifies the affected path or resource

## L24-Q044

Applied · [CP4](README.md#task-4) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

Noisy threshold: A CPU alert fires briefly on every deployment and responders mute it, missing later sustained saturation. Which execution safeguard most directly addresses the risk in this case?

- **A.** Use authorized bounded connectivity probes
- **B.** Record why the new threshold matches service objectives
- **C.** Alert on critical collection gaps where appropriate

## L24-Q045

Advanced · [CP4](README.md#task-4) · [D1.2.7](../../docs/objective-map.md), [D5.1.4](../../docs/objective-map.md)

Noisy threshold: A CPU alert fires briefly on every deployment and responders mute it, missing later sustained saturation. The team selects this remedy: "Tune duration aggregation and meaningful thresholds." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Longer evaluation windows increase detection delay
- **B.** Freshness checks add their own monitoring work
- **C.** Network monitoring often needs several correlated views

## L24-Q046

Foundational · [CP1](README.md#task-1) · [D5.1.1](../../docs/objective-map.md), [D5.1.2](../../docs/objective-map.md)

Telemetry stopped: The dashboard is empty after a deployment, and the team assumes the service has no errors. Which next change most directly satisfies the stated requirement?

- **A.** Check telemetry freshness and collection health
- **B.** Connect runtime monitoring to the delivery feedback loop
- **C.** Tune duration aggregation and meaningful thresholds

## L24-Q047

Applied · [CP1](README.md#task-1) · [D5.1.1](../../docs/objective-map.md), [D5.1.2](../../docs/objective-map.md)

Telemetry stopped: The dashboard is empty after a deployment, and the team assumes the service has no errors. Which explanation best accounts for the behavior or constraint described?

- **A.** The monitoring design observes automation rather than user experience
- **B.** The rule treats transient normal behavior as an incident
- **C.** The collection path may have stopped reporting

## L24-Q048

Applied · [CP1](README.md#task-1) · [D5.1.1](../../docs/objective-map.md), [D5.1.2](../../docs/objective-map.md)

Telemetry stopped: The dashboard is empty after a deployment, and the team assumes the service has no errors. Which observation provides the strongest evidence that the requested result was achieved?

- **A.** A deployed test failure appears in the operational view
- **B.** Normal deployment spikes stay quiet while sustained saturation alerts
- **C.** A recent synthetic request produces timely telemetry

## L24-Q049

Applied · [CP1](README.md#task-1) · [D5.1.1](../../docs/objective-map.md), [D5.1.2](../../docs/objective-map.md)

Telemetry stopped: The dashboard is empty after a deployment, and the team assumes the service has no errors. Which execution safeguard most directly addresses the risk in this case?

- **A.** Record why the new threshold matches service objectives
- **B.** Alert on critical collection gaps where appropriate
- **C.** Assign an owner and response procedure to the signal

## L24-Q050

Advanced · [CP1](README.md#task-1) · [D5.1.1](../../docs/objective-map.md), [D5.1.2](../../docs/objective-map.md)

Telemetry stopped: The dashboard is empty after a deployment, and the team assumes the service has no errors. The team selects this remedy: "Check telemetry freshness and collection health." In a design review that must preserve the stated requirement, which residual limitation should be explicitly accepted or mitigated rather than assumed solved?

- **A.** Runtime telemetry adds ingestion and retention cost
- **B.** Longer evaluation windows increase detection delay
- **C.** Freshness checks add their own monitoring work
