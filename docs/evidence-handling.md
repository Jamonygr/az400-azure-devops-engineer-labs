# Evidence handling

Keep run journals and unredacted command results inside the ignored `.state/`
directory. Journals need exact object IDs for safe recovery; assessment and
progress exports do not. Never upload a run journal as a public issue attachment.

Retain command name, UTC time, expected versus observed outcome, assertion
result, artifact digest/version, and the checkpoint being proved. Remove account
names, tenant/subscription IDs, bearer tokens, webhook URLs, connection strings,
secrets, personal data, and sensitive request bodies before sharing.

Do not enable shell tracing around authentication. Prefer selected fields to full
API responses. Masking in pipeline logs is a secondary control: transformed,
split, or structured secrets can escape masking. Use synthetic data for tests and
short retention for sandbox logs. Do not retrieve a production secret just to
prove that a permission exists.

`validation.json` and `cleanup.json` are machine-readable local outcomes, not
certificates. A partial/skipped checkpoint is not a pass. Live verification also
requires the guided path, deliberate failure, repair, cleanup, and residual audit.
