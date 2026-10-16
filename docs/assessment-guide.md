# Assessment guide

The bank contains **1,250 original questions**, with 50 in each assessed lab (01–25). Every lab has 15 foundational, 25 applied, and 10 advanced questions. Each question has four alternatives and one best answer. Foundation lab 00 and capstones 26/27 use practical evidence rather than additional quizzes.

Questions independently assess technical decisions, interpretation of configuration and diagnostic evidence, execution behavior, and design constraints. Exhibits include command output, workflow YAML, source snippets, logs, and queries where relevant. Advanced items require reasoning about combined requirements or failure conditions. There is no required number of case studies or repeated five-question form.

On the course site, choose a full 50-question assessment or focused foundational, applied, advanced, or missed-question practice. Select an answer and submit before viewing the explanation and rationale for every alternative. A full completed attempt updates that lab's assessment percentage. Filtered practice is for remediation and does not replace the overall score. The Markdown QUESTIONS.md and ANSWERS.md remain available for offline study.

Interpret the course's score bands as follows:

| Percentage | Learning action |
|---|---|
| Below 70 | Repeat the mapped tasks and review the relevant concepts. |
| 70–84 | Review the missed topics and practise their evidence and failure paths. |
| 85 or above | Assessment mastery for this bank revision; still complete practical validation and cleanup. |

These are course learning bands, not Microsoft's exam scoring rules or a guarantee of exam readiness. Assessment performance does not mark practical work complete.

Answers and resumable attempts stay in a separate browser-local quiz store. They are tied to a question-bank revision, so changed questions reset that lab's old answer selections rather than treating old choices as current. Practical progress remains separate. Clearing quiz attempts does not clear practical completion or the recorded full-assessment score. Export or import practical progress using the [progress dashboard](learner-progress.md); it is not an export of individual quiz answers.

The authoritative file is each lab's questions.yml, using JSON-compatible YAML 1.2 and question schema version 2. Records retain stable IDs, difficulty, checkpoint and objective references, precise primary-documentation sources, answer keys, and explanations. An optional exhibit contains a language and code text. Checkpoint links identify the nearest relevant practical task; the cited source also supports concepts that are explained or compared rather than executed in that task. Counts vary by checkpoint. Metadata must be reviewed against the current curriculum when a question changes.

The verification date records the documentation baseline, not a claim that cloud integrations were executed. Content review checks technical accuracy, one defensible best answer, plausible alternatives within the same decision, difficulty, source support, and checkpoint/objective fit. A successful schema or duplicate check does not establish those editorial judgments.

To maintain the bank, change the authoritative data, validate it, then regenerate the Markdown views:

```sh
python tools/validate_assessments.py
python tools/generate_assessments.py
python tools/generate_assessments.py --check
```

Validation checks counts, difficulty quotas, checkpoint validity, sources and objective references, four-choice answer integrity, repeated stems, and near duplicates independent of answer ordering. Number normalization helps identify nominally different questions created only by changing numeric values. With jsonschema installed, validation also applies [the question schema](../curriculum/question-schema.json). During authoring, repeat `--lab 01` style arguments to validate a selected partition; the full invocation still enforces all 1,250 questions and 86 objectives.

This is original practice material. It contains no recalled exam content and has no affiliation with Microsoft certification exam writers. Use the [validation status](validation-status.md) for the distinction between offline checks and live service verification.
