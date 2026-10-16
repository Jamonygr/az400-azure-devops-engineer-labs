# Security policy

Use GitHub private vulnerability reporting for a vulnerability in these scripts.
For ordinary documentation corrections, open an issue without credentials or
subscription identifiers. Revoke an exposed credential before requesting help.

The active repository workflows build and test this course and publish its
documentation. Deployment examples live inside lab artifact folders and require
deliberate installation into a separate disposable sandbox. Run unknown pull
requests without secrets. Never use `pull_request_target` to execute contributor
code, print tokens, or register an untrusted self-hosted runner.

Lifecycle scripts use preview, ownership journals, exact object IDs, and scoped
cleanup. A compromised local checkout or edited ownership journal is outside that
trust boundary. Inspect scripts before running them and keep state files private.
