"""Stage the authoritative course for MkDocs and check built accessibility signals."""
from __future__ import annotations

import argparse
import json
import hashlib
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
STAGE = ROOT / ".site-docs"
IGNORED = {".git", ".state", ".cache", ".packages", "bin", "obj", "TestResults", "__pycache__"}


def sources():
    files = {}
    for directory in ("docs", "labs", "samples", "curriculum", "tools"):
        for path in (ROOT / directory).rglob("*"):
            if path.is_file() and not (set(path.relative_to(ROOT).parts) & IGNORED):
                files[path.relative_to(ROOT)] = path
    for name in ("LICENSE", "CONTRIBUTING.md", "SECURITY.md", "CHANGELOG.md", "global.json", "learner.config.example.json"):
        path = ROOT / name
        if path.exists():
            files[Path(name)] = path
    return files


def domain_pages():
    course = json.loads((ROOT / "curriculum/lab-content.yml").read_text(encoding="utf-8"))
    domains = {"foundation": "Foundation", "process": "Processes and communications", "source": "Source control",
               "pipelines": "Build and release pipelines", "security": "Security and compliance",
               "instrumentation": "Instrumentation", "capstone": "Capstones"}
    pages = {}
    for key, title in domains.items():
        labs = [lab for lab in course["labs"] if lab["domain"] == key]
        identifiers = ",".join("LAB-" + lab["id"] for lab in labs)
        text = f'# {title}\n\n<div data-az400-domain-labs="{identifiers}"></div>\n\n'
        text += "| Lab | Duration | Platforms |\n|---|---:|---|\n"
        for lab in labs:
            text += f'| [{lab["id"]}: {lab["title"]}](../labs/{lab["slug"]}/README.md) | {lab["minutes"]} min | {", ".join(lab["platforms"])} |\n'
        pages[Path("domains") / (key + ".md")] = text
    return pages


def interactive_data():
    labs = json.loads((ROOT / "curriculum/lab-content.yml").read_text(encoding="utf-8"))["labs"]
    files, catalog = {}, []
    for lab in labs:
        verification = lab.get("verification", {})
        prerequisites = ["PowerShell 7.4+, Git, .NET 10"]
        prerequisites += [{"github": "Authenticated GitHub sandbox owner", "azure-devops": "Azure DevOps organization and agent access", "azure": "Azure subscription and cost acknowledgement"}[p] for p in lab["platforms"] if p != "local"]
        catalog.append({k: lab[k] for k in ("id", "slug", "title", "domain", "platforms", "minutes", "cost", "scenario")} | {
            "prerequisites": prerequisites,
            "verification": verification.get("status", "not-run") + " — " + verification.get("scope", "See the validation report; live cloud paths unverified")})
        bank_path = ROOT / "labs" / lab["slug"] / "questions.yml"
        if bank_path.exists():
            raw = bank_path.read_bytes()
            bank = json.loads(raw)
            bank.update(revision=hashlib.sha256(raw).hexdigest(), slug=lab["slug"], title=lab["title"])
            files[Path(f"docs/site-assets/data/quiz-{lab['id']}.json")] = json.dumps(bank, ensure_ascii=False) + "\n"
    files[Path("docs/site-assets/data/catalog.json")] = json.dumps(catalog, ensure_ascii=False) + "\n"
    return files


def stage():
    # Only the exact generated directory is replaced; source and runtime state are excluded.
    if STAGE.resolve() != ROOT.resolve() / ".site-docs":
        raise SystemExit("Refusing unexpected documentation staging path")
    if STAGE.exists():
        shutil.rmtree(STAGE)
    STAGE.mkdir()
    for relative, source in sources().items():
        target = STAGE / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
    (STAGE / "index.md").write_text((ROOT / "HOME.md").read_text(encoding="utf-8"), encoding="utf-8")
    for relative, content in (domain_pages() | interactive_data()).items():
        target = STAGE / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(content, encoding="utf-8")


def check_sources():
    required = [ROOT / "README.md", ROOT / "HOME.md", ROOT / "docs/visuals/az400-cover.svg", ROOT / "docs/site-assets/progress.js", ROOT / "samples/README.md"]
    missing = [str(p.relative_to(ROOT)) for p in required if not p.is_file()]
    if missing:
        raise SystemExit("Missing site source: " + ", ".join(missing))
    progress = (ROOT / "docs/site-assets/progress.js").read_text(encoding="utf-8")
    assert "az400LearnerProgress.v2" in progress and "maximumImportBytes" in progress
    assert "az104" not in progress.lower()
    assert "validationPassed" in progress and "cleanupPassed" in progress


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--check-built-site", type=Path)
    args = parser.parse_args()
    check_sources()
    if args.check_built_site:
        for relative in ("index.html", "docs/learner-progress/index.html", "docs/practice/index.html", "docs/lab-explorer/index.html", "docs/site-assets/data/quiz-01.json", "labs/09-github-actions-ci/index.html", "search/search_index.json"):
            path = args.check_built_site / relative
            assert path.is_file(), f"Missing built output: {relative}"
            if path.suffix == ".html":
                content = path.read_text(encoding="utf-8")
                assert '<html lang="en"' in content and "<main" in content and "<h1" in content
                assert "progress.js" in content and "progress.css" in content
        print("Built documentation includes representative pages, search, language, headings, and progress assets")
    elif args.check:
        assert len(domain_pages()) == 7
        print(f"Documentation sources checked: {len(sources())} files and seven generated domain pages")
    else:
        stage()
        print("Staged authoritative course in .site-docs")


if __name__ == "__main__":
    main()
