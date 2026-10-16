# Lab 16 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Inspect the sample feature-management defaults

Feature defaults are separated from deployment artifact identity.

Verify both the positive and negative probes in the lab README. Keep flags in configuration; do not rebuild the application merely to alter exposure.

## CP2 — Run the feature behavior tests

Tests exercise enabled and disabled feature behavior.

Verify both the positive and negative probes in the lab README. Use the exact test names in the sample; zero tests is a failed gate.

## CP3 — Create an Entra-only store and scoped data role

A Developer store uses Entra authentication, zero-day soft-delete retention, and a data role at the store scope.

Verify both the positive and negative probes in the lab README. Developer pricing and role-assignment permission are explicit gates; do not switch to key auth if RBAC propagation takes time.

## CP4 — Create and enable TodoWrites through identity-based CLI

The store contains the same TodoWrites flag used by the tested application; an enabled-state observation is retained.

Verify both the positive and negative probes in the lab README. Allow scoped data RBAC to propagate and retry the read; a management-plane Contributor role alone does not grant feature writes.

## CP5 — Exercise the kill switch and bounded resilience decision

The real flag is off, and the synthetic60%failure window opens a breaker with a bounded retry budget.

Verify both the positive and negative probes in the lab README. A configured store flag does not prove application refresh; the optional challenge wires the tested app endpoint and proves both live states.

## Repair and recovery

```powershell
az appconfig feature disable --subscription $SubscriptionId --name "flags-l16-$RunId" --feature TodoWrites --auth-mode login --yes -o none
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
