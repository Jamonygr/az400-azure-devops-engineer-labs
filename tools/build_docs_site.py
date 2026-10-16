"""Stage the authoritative course for MkDocs and check built accessibility signals."""
from __future__ import annotations

import argparse
import json
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


def check_sources():
    required = [ROOT / "README.md", ROOT / "docs/visuals/az400-cover.svg", ROOT / "docs/site-assets/progress.js", ROOT / "samples/README.md"]
    missing = [str(p.relative_to(ROOT)) for p in required if not p.is_file()]
    if missing:
        raise SystemExit("Missing site source: " + ", ".join(missing))
    progress = (ROOT / "docs/site-assets/progress.js").read_text(encoding="utf-8")
    assert "az400LearnerProgress.v1" in progress and "maximumImportBytes" in progress
    assert "az104" not in progress.lower()
    assert "validationPassed" in progress and "cleanupPassed" in progress


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--check-built-site", type=Path)
    args = parser.parse_args()
    check_sources()
    if args.check_built_site:
        for relative in ("index.html", "docs/learner-progress/index.html", "labs/09-github-actions-ci/index.html", "search/search_index.json"):
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
        # This exact output directory is the only recursively replaced path.
        if STAGE.resolve() != ROOT.resolve() / ".site-docs":
            raise SystemExit("Refusing unexpected documentation staging path")
        if STAGE.exists():
            shutil.rmtree(STAGE)
        STAGE.mkdir()
        for relative, source in sources().items():
            target = STAGE / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source, target)
        (STAGE / "index.md").write_text((ROOT / "README.md").read_text(encoding="utf-8"), encoding="utf-8")
        for relative, content in domain_pages().items():
            target = STAGE / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(content, encoding="utf-8")
        print("Staged authoritative course in .site-docs")


if __name__ == "__main__":
    main()
