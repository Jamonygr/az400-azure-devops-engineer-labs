"""Run the repository's deterministic, non-cloud quality checks."""
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
checks = [
    ["tools/generate_labs.py", "--check"],
    ["tools/generate_lifecycle.py", "--check"],
    ["tools/generate_catalog.py", "--check"],
    ["tools/generate_assessments.py", "--check"],
    ["tools/validate_assessments.py"],
    ["tools/validate_repository.py"],
    ["tools/validate_artifacts.py"],
    ["tools/build_docs_site.py", "--check"],
]
for command in checks:
    print("Checking " + " ".join(command), flush=True)
    subprocess.run([sys.executable] + command, cwd=ROOT, check=True)
print("All repository checks passed; no Azure or Azure DevOps deployment was executed.")
