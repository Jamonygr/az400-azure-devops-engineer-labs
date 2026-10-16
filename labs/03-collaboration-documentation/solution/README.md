# Lab 03 worked solution

Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.

## CP1 — Generate release notes from Git history

Recent committed changes become a reproducible release-note draft.

Verify both the positive and negative probes in the lab README. Create notes from committed sandbox changes and review text before publication.

## CP2 — Author a process diagram and API handoff

Markdown captures both release sequence and a concrete API contract.

Verify both the positive and negative probes in the lab README. Keep Mermaid syntax supported by your renderer and document status codes, not screenshots.

## CP3 — Prepare a least-privilege webhook subscription

An inactive webhook proposal uses HTTPS and one delivery event; no request is sent.

Verify both the positive and negative probes in the lab README. Use an approved receiver with HMAC verification before activating a separately authorized hook.

## CP4 — Create a sandbox project wiki from Markdown

A sandbox wiki contains the process handoff.

Verify both the positive and negative probes in the lab README. Use the fresh project wiki; do not replace an organization knowledge base.

## CP5 — Review Teams and Boards integration before authorization

An explicit integration contract identifies authorization and filters; no Teams message is sent.

Verify both the positive and negative probes in the lab README. Authorize external applications only through the separate account-bootstrap procedure, then test with approved recipients.

## Repair and recovery

```powershell
$h=Get-Content (Join-Path $WorkRoot 'webhook-proposal.json') -Raw|ConvertFrom-Json;$h.config.insecure_ssl='0';$h|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'webhook-proposal.json')
```

Rerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.
