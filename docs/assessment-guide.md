# Assessment guide

The bank contains **1,250 original scenario questions**, with 50 in each assessed lab (01–25). Every lab has 15 foundational, 25 applied, and 10 advanced questions. Checkpoint references CP1–CP5 point to the most relevant practical task; question counts vary by checkpoint. Foundation lab 00 and capstones 26/27 use practical evidence rather than extra questions.

Each lab contains ten operational caselets. Five questions examine different decisions within each case: selecting a remedy, diagnosing behavior, verifying the result, implementing safely, and evaluating a design tradeoff. Shared context is deliberate; the questions assess different decisions rather than reordering one answer set.

Attempt QUESTIONS.md before opening ANSWERS.md. Every question uses one best answer; all choices have explanations. Score one point for a correct answer. A suggested local readiness target is 40/50 overall, followed by review of missed topics and successful practical validation. These are course learning targets, not Microsoft's exam scoring rules or a guarantee of readiness.

The authoritative file is each lab's questions.yml. The files use JSON-compatible YAML1.2. They include stable question IDs, checkpoint IDs, objective IDs, difficulty, primary-documentation references, answer keys, explanations, and distractor rationales. The verification date records the documentation baseline, not a claim that every cloud lab has been executed.

To maintain the bank, change the authoritative data, validate it, then regenerate the Markdown views:

```sh
python tools/validate_assessments.py
python tools/generate_assessments.py
python tools/generate_assessments.py --check
```

Validation checks counts, difficulty quotas, checkpoint validity, source and objective references, answer integrity, repeated stems, and repeated case/task decisions independent of answer ordering. Near-duplicate checks compare five-word shingles across different cases, normalizing numbers so numeric substitutions alone do not create new questions. When jsonschema is available, validation also applies [the question schema](../curriculum/question-schema.json). It does not establish pedagogical quality by itself; review changed caselets and their rationales against the cited documentation. The 70 distinct primary-source URLs were checked successfully against the 2026-10-16 baseline. This bank contains no recalled exam content and has no affiliation with Microsoft certification exam writers.
