# Troubleshooting

| Symptom | Diagnose | Safe recovery |
|---|---|---|
| Context mismatch | Compare the original journal with explicit parameters | Reuse original parameters or start a fresh run ID; do not edit ownership IDs |
| Existing sandbox name | Inspect exact object, remote marker, and creation history | Choose a fresh run; never adopt an unowned object |
| Azure DevOps 401/403 | Confirm organization URL, identity, extension, token audience, and project permission | Authenticate through approved flow; do not broaden permissions globally |
| Pipeline waits indefinitely | Check hosted parallel-job entitlement, queue, agent demands and connectivity | Obtain entitlement or use an approved isolated agent |
| OIDC login fails | Compare actual issuer, subject, audience, environment/ref, and identity scope | Correct the specific federated credential and retry; do not fall back to a long-lived secret automatically |
| YAML parses but pipeline fails | Inspect task/schema support and runtime expressions on that platform | Follow the lab's documented runtime checks; static parsing is not a service execution |
| Deployment SKU unavailable | Check region, quota, registered providers, service retirement, and allowed SKUs | Select a supported disposable option and reevaluate cost |
| Tests fail after package change | Check locked restore, SDK pin and provider compatibility | Restore the pinned inputs or update locks with a reviewed dependency change |
| Cleanup is partial | Read residuals; distinguish pending deletion from authentication failure | Preserve the journal, inspect IDs/markers, then repeat cleanup |
| Progress import rejected | Check schema, allowed fields, lab IDs, size, and completion prerequisites | Import a valid course export; keep platform evidence out of progress |

Use the lab-specific troubleshooting and source links for service behavior.
Record the actual failure before changing configuration. An untested workaround
must not be described as a verified repair.
