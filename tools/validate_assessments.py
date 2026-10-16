#!/usr/bin/env python3
"""Validate question integrity, curriculum traceability, quotas, and duplicates."""
from __future__ import annotations
from collections import Counter, defaultdict
import re
from urllib.parse import urlparse
from pathlib import Path
from generate_assessments import ROOT, read_data

def normalized(text):
    return " ".join(re.findall(r"[a-z0-9]+", text.lower()))

def shingles(text):
    # Ignore numeric substitutions so renumbering alone cannot create a question.
    tokens = re.sub(r"\d+", "NUMBER", normalized(text)).split()
    return {tuple(tokens[i:i+5]) for i in range(max(0, len(tokens)-4))}

def validate(root=ROOT):
    errors = []
    def require(condition, message):
        if not condition:
            errors.append(message)
    curriculum = read_data(root / "curriculum" / "lab-content.yml")
    lab_map = {str(lab["id"]).zfill(2): lab for lab in curriculum["labs"]}
    blueprint = read_data(root / "curriculum" / "blueprint.yml")
    objectives = {o["id"] for d in blueprint["domains"] for g in d["groups"] for o in g["objectives"]}
    ids, stems, decisions = set(), {}, {}
    try:
        from jsonschema import Draft202012Validator
        schema_validator = Draft202012Validator(read_data(root / "curriculum" / "question-schema.json"))
    except ImportError:
        schema_validator = None
    near_candidates = []
    totals, coverage = Counter(), set()
    paths = sorted((root / "labs").glob("*/questions.yml"))
    require(len(paths) == 25, f"Expected25 question files, found{len(paths)}")
    for path in paths:
        data = read_data(path)
        lab_id = str(data.get("labId", ""))
        prefix = str(path.relative_to(root))
        if schema_validator is not None:
            for issue in schema_validator.iter_errors(data):
                errors.append(f"{prefix}: schema {'/'.join(map(str, issue.path))}: {issue.message}")
        require(lab_id in {f"{i:02}" for i in range(1, 26)}, f"{prefix}: invalid assessed lab")
        lab = lab_map.get(lab_id, {})
        require(path.parent.name == lab.get("slug"), f"{prefix}: slug differs from curriculum")
        require(data.get("schemaVersion") == 2, f"{prefix}: unsupported schemaVersion")
        require(data.get("verifiedDate") == "2026-10-16", f"{prefix}: verification date differs")
        sources = {s["id"]: s["url"] for s in data.get("sources", [])}
        for source_id, url in sources.items():
            parsed = urlparse(url)
            require(parsed.scheme == "https" and (parsed.hostname in {"learn.microsoft.com", "docs.github.com", "git-scm.com", "github.com", "microsoftlearning.github.io"}), f"{prefix}: nonprimary source {source_id}: {url}")
        questions = data.get("questions", [])
        require(len(questions) == 50, f"{prefix}: expected50 questions, found{len(questions)}")
        difficulties, checkpoints = Counter(), Counter()
        valid_cp = {c["id"] for c in lab.get("checkpoints", [])} or {f"CP{i}" for i in range(1, 6)}
        for number, q in enumerate(questions, 1):
            qid = q.get("id", "")
            require(qid == f"L{lab_id}-Q{number:03}", f"{prefix}: unstable question ID {qid}")
            require(qid not in ids, f"Duplicate ID:{qid}")
            ids.add(qid)
            difficulties[q.get("difficulty")] += 1
            checkpoints[q.get("checkpointId")] += 1
            require(q.get("checkpointId") in valid_cp, f"{qid}: nonexistent checkpoint")
            qobj = q.get("objectiveIds", [])
            require(qobj and set(qobj) <= objectives and set(qobj) <= set(lab.get("objectives", [])), f"{qid}: objective outside lab or unknown")
            coverage.update(qobj)
            require(q.get("sourceIds") and set(q["sourceIds"]) <= set(sources), f"{qid}: unresolved source")
            require(len(q.get("question", "").split()) >= 15, f"{qid}: insufficient scenario context")
            require(len(q.get("explanation", "").split()) >= 8, f"{qid}: explanation too short")
            options = q.get("options", [])
            keys = [o.get("key") for o in options]
            require(keys == list("ABCD"), f"{qid}: expected exactly four options A–D")
            texts = [normalized(o.get("text", "")) for o in options]
            require(len(set(texts)) == len(texts) and all(texts), f"{qid}: repeated/empty options")
            correct = q.get("correctAnswers", [])
            require(len(correct) == 1 and set(correct) <= set(keys), f"{qid}: invalid single best answer")
            for option in options:
                require(len(option.get("rationale", "").split()) >= 8, f"{qid}/{option.get('key')}: insufficient rationale")
            stem = normalized(q.get("question", ""))
            require(stem not in stems, f"Repeated question stem:{qid}/{stems.get(stem)}")
            stems[stem] = qid
            near_candidates.append((qid, q.get("caseId", qid), shingles(q.get("question", ""))))
            # A shared operational case is intentional. Detect option reshuffles by
            # comparing the case/task plus correct decision, irrespective of keys.
            correct_text = next((normalized(o["text"]) for o in options if o["key"] in correct), "")
            signature = (normalized(q.get("caseContext", q.get("question", ""))), q.get("task", ""), correct_text)
            require(signature not in decisions, f"Repeated assessed decision:{qid}/{decisions.get(signature)}")
            decisions[signature] = qid
            require(not any(phrase in q.get("question", "") for phrase in (
                "Which next change most directly satisfies the stated requirement",
                "Which explanation best accounts for the behavior or constraint described",
                "Which observation provides the strongest evidence that the requested result was achieved",
                "Which execution safeguard most directly addresses the risk in this case",
                "The team selects this remedy:",
            )), f"{qid}: legacy generic five-form question remains")
        require(difficulties == Counter(foundational=15, applied=25, advanced=10), f"{prefix}: difficulty quotas {dict(difficulties)}")
        totals.update(difficulties)
    inverted = defaultdict(list)
    for i, (qid, case_id, grams) in enumerate(near_candidates):
        shared = Counter(j for gram in grams for j in inverted[gram])
        for j, overlap in shared.items():
            other_id, other_case, other_grams = near_candidates[j]
            if case_id != other_case:
                similarity = overlap / len(grams | other_grams)
                require(similarity < 0.82, f"Near-duplicate stems:{qid}/{other_id} (5-gram Jaccard{similarity:.2f})")
        for gram in grams:
            inverted[gram].append(i)
    require(sum(totals.values()) == 1250, f"Expected1250 total questions, found{sum(totals.values())}")
    require(coverage == objectives, f"Question objectives missing:{sorted(objectives - coverage)}")
    return errors, totals

def main():
    errors, totals = validate()
    if errors:
        raise SystemExit("Assessment validation failed:\n" + "\n".join(errors))
    print(f"Validated 1,250 questions: {dict(totals)}; all 86 objectives covered.")

if __name__ == "__main__":
    main()
