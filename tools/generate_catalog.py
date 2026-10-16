"""Build the root lab catalog from the authoritative curriculum."""
import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    labs = json.loads((ROOT / "curriculum/lab-content.yml").read_text(encoding="utf-8"))["labs"]
    text = "# Lab catalog\n\n28 labs, two delivery platforms, one sample application. Start with [readiness](../docs/prerequisites.md) and [account setup](../docs/account-bootstrap.md).\n\n"
    text += "| Lab | Topic | Domain | Duration | Assessment |\n|---|---|---|---:|---|\n"
    for lab in labs:
        assessment = f"[50 questions]({lab['slug']}/QUESTIONS.md)" if 1 <= int(lab["id"]) <= 25 else "Hands-on only"
        text += f"| {lab['id']} | [{lab['title']}]({lab['slug']}/README.md) | {lab['domain']} | {lab['minutes']} min | {assessment} |\n"
    text += "\nSee the [full objective map](../docs/objective-map.md), [assessment guide](../docs/assessment-guide.md), and [service lifecycle notes](../docs/service-lifecycle.md).\n"
    target = ROOT / "labs/README.md"
    if args.check:
        assert target.exists() and target.read_text(encoding="utf-8") == text, "Stale labs/README.md"
    else:
        target.write_text(text, encoding="utf-8", newline="\n")
    print("Root lab catalog verified" if args.check else "Root lab catalog generated")


if __name__ == "__main__":
    main()
