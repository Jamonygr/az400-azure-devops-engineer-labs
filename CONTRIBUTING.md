# Contributing

Edit `curriculum/blueprint.yml`, `curriculum/lab-content.yml`, or a lab's
`questions.yml` before regenerating their derived documentation. JSON syntax in
these YAML files is intentional: it is a portable YAML 1.2 subset readable by
both PowerShell and Python without an extra PowerShell YAML module.

Install the locked dependencies with `python -m pip install -r requirements.lock.txt`
and `npm ci --ignore-scripts`. Regenerate changed sources before checking drift:

```powershell
python tools/generate_labs.py
python tools/generate_lifecycle.py
python tools/generate_catalog.py
python tools/generate_assessments.py
python tools/check_all.py
node --test tests/*.test.cjs
python -m unittest discover -s tests -p 'test_*.py' -v
Invoke-Pester -Path tests
dotnet test samples/DevOps.slnx --configuration Release --collect:'XPlat Code Coverage' --settings samples/coverage.runsettings --results-directory .cache/TestResults
python tools/preview_docs.py --once
npx playwright install chromium --only-shell
npx playwright test
```

Use `samples/Test-Coverage.ps1` with the new Cobertura report to enforce the
65% line-coverage threshold. With Docker running, build the sample container and
run `samples/Test-Containers.ps1 -Application -SqlServer`; the quality workflow
also executes these checks, PowerShell analysis, Bicep compilation, workflow
validation, secret scanning, and Markdown checks. A hosted CI pass is distinct
from live Azure or Azure DevOps validation.
New commands need an explicit context, an expected result, a negative check,
an ownership boundary, and a cleanup strategy. Add a source URL and verification
date when changing a service contract. Never commit credentials or learner evidence.

Questions must assess a new decision, include plausible distractors, and explain
every option. Rewording an existing question does not constitute new coverage.
Preserve stable question IDs and each lab's 15/25/10 difficulty distribution.
Use four choices and one best answer, precise primary sources, and independent
scenarios. Add exhibits when interpreting code, logs, or output is the skill.
Changing a bank automatically changes its quiz revision and invalidates that
bank's saved answer history.

Checkpoint coverage states whether an objective is explained, practiced, or
integrated; author verification records what was actually executed. Do not use
objective mappings as proof of successful execution. A break/fix contract must
detect its named fault and restore the healthy state. Add regression coverage
for changes to those contracts and to privacy, ownership, and completion rules.
Use `python tools/preview_docs.py` while editing: it restages authoritative
sources and rebuilds strict documentation after changes.
Use issue reports for inaccuracies and pull requests for reviewed fixes.
