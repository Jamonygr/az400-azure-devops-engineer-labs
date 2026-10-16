# Contributing

Edit `curriculum/blueprint.yml`, `curriculum/lab-content.yml`, or a lab's
`questions.yml` before regenerating their derived documentation. JSON syntax in
these YAML files is intentional: it is a portable YAML 1.2 subset readable by
both PowerShell and Python without an extra PowerShell YAML module.

Run `python tools/check_all.py` and `dotnet test samples/DevOps.slnx --configuration Release`
before opening a pull request. The quality workflow also checks all generated
files, PowerShell safety contracts, Bicep, workflow syntax, and the strict docs build.
New commands need an explicit context, an expected result, a negative check,
an ownership boundary, and a cleanup strategy. Add a source URL and verification
date when changing a service contract. Never commit credentials or learner evidence.

Questions must assess a new decision, include plausible distractors, and explain
every option. Rewording an existing question does not constitute new coverage.
Use issue reports for inaccuracies and pull requests for reviewed fixes.
