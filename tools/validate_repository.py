"""Validate the curriculum, lifecycle schemas, links, and publication boundary."""
from __future__ import annotations

import json
import re
from pathlib import Path
from urllib.parse import unquote
from xml.etree import ElementTree

import yaml
from jsonschema import Draft202012Validator

ROOT = Path(__file__).resolve().parents[1]


def load(path):
    return yaml.safe_load(path.read_text(encoding="utf-8"))


def main():
    blueprint = load(ROOT / "curriculum/blueprint.yml")
    labs = load(ROOT / "curriculum/lab-content.yml")["labs"]
    assert [lab["id"] for lab in labs] == [f"{i:02}" for i in range(28)], "Lab IDs must be exactly 00–27"
    domains = blueprint["domains"]
    groups = [g for d in domains for g in d["groups"]]
    objectives = [o for g in groups for o in g["objectives"]]
    assert (len(domains), len(groups), len(objectives)) == (5, 16, 86)
    assert len({o["id"] for o in objectives}) == 86
    objectives_by_id = {o["id"]: o for o in objectives}
    schema = load(ROOT / "curriculum/lab-schema.json")
    validator = Draft202012Validator(schema)
    definitions = []
    for lab in labs:
        folder = ROOT / "labs" / lab["slug"]
        definition = load(folder / "lab.yml")
        validator.validate(definition)
        assert definition == {"schemaVersion": "1.0.0", **lab}, f"Stale definition: {lab['slug']}"
        assert [c["id"] for c in lab["checkpoints"]] == [f"CP{i}" for i in range(1, 6)]
        for objective in lab["objectives"]:
            assert objective in objectives_by_id, f"Unknown objective {objective}"
            assert lab["id"] in objectives_by_id[objective]["labs"], f"Non-reciprocal objective {objective}"
        for checkpoint in lab["checkpoints"]:
            assert len(checkpoint["commands"].strip()) >= 30, f"Empty command task {lab['id']}/{checkpoint['id']}"
            assert checkpoint.get("validate", "").strip(), f"Missing validator {lab['id']}/{checkpoint['id']}"
            assert not re.search(r"(?im)^\s*(?:az\s+\S+\s+(?:create|delete|update)|gh\s+\S+\s+(?:create|delete)|Set-Content|Remove-Item|New-Item)\b", checkpoint["validate"]), f"Mutating validator {lab['id']}/{checkpoint['id']}"
        for name in ("Preflight", "Setup", "Validate", "Cleanup", "Context"):
            assert (folder / "scripts/cli" / (name + ".ps1")).is_file()
        for name in ("README.md", "solution/README.md", "diagrams/architecture.mmd", "diagrams/architecture.svg"):
            assert (folder / name).is_file(), f"Missing lab asset {folder.name}/{name}"
        svg = ElementTree.parse(folder / "diagrams/architecture.svg").getroot()
        assert svg.find("{http://www.w3.org/2000/svg}title") is not None
        assert svg.find("{http://www.w3.org/2000/svg}desc") is not None
        for fixture, schema_name in (("validation.sample.json", "validation-schema.json"), ("cleanup.sample.json", "cleanup-schema.json"), ("run.sample.json", "run-manifest-schema.json")):
            Draft202012Validator(load(ROOT / "curriculum" / schema_name)).validate(load(folder / "tests/fixtures" / fixture))
        definitions.append(definition)
    for objective in objectives:
        assert objective["labs"], f"Unmapped objective {objective['id']}"
        for lab_id in objective["labs"]:
            matching = next(lab for lab in labs if lab["id"] == lab_id)
            assert objective["id"] in matching["objectives"], "Coverage map and lab metadata disagree"
    for path in (ROOT / ".github/workflows").glob("*.yml"):
        content = path.read_text(encoding="utf-8")
        assert not re.search(r"(?i)azure/login|az\s+(?:deployment|group\s+create)|az\s+devops\s+project\s+create|gh\s+repo\s+create|pull_request_target", content), f"Unsafe publication workflow {path.name}"
        for action in re.findall(r"uses:\s*([^\s]+)", content):
            if not action.startswith("./"):
                assert re.search(r"@[0-9a-f]{40}$", action), f"Action must use full SHA: {action}"
    broken = []
    markdowns = [ROOT / "README.md"] + list((ROOT / "docs").rglob("*.md")) + list((ROOT / "labs").rglob("*.md"))
    for path in markdowns:
        text = re.sub(r"```.*?```", "", path.read_text(encoding="utf-8"), flags=re.S)
        for target in re.findall(r"!?\[[^\]]*\]\(([^\s)]+)(?:\s+[^)]*)?\)", text):
            if target.startswith(("https://", "http://", "mailto:", "#")):
                continue
            file_part = unquote(target.split("#")[0]).strip("<>")
            resolved = (path.parent / file_part).resolve()
            if not resolved.exists():
                broken.append(f"{path.relative_to(ROOT)} -> {target}")
    assert not broken, "Broken local links:\n" + "\n".join(broken[:30])
    print("Repository valid: 28 labs, 86 reciprocal objectives, 140 checkpoint validators, safe publication boundary")


if __name__ == "__main__":
    main()
