"""Exercise one-job workspace disposal. This is not a security sandbox or provider registration."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--evidence", type=Path, required=True)
parser.add_argument("--fail-job", action="store_true")
args = parser.parse_args()
environment = {key: value for key, value in os.environ.items() if not any(word in key.upper() for word in ("TOKEN", "SECRET", "PASSWORD", "CREDENTIAL", "CONNECTION_STRING"))}
with tempfile.TemporaryDirectory(prefix="az400-job-") as directory:
    workspace = Path(directory)
    code = "from pathlib import Path; Path('artifact.txt').write_text('one job'); raise SystemExit(" + ("7" if args.fail_job else "0") + ")"
    result = subprocess.run([sys.executable, "-c", code], cwd=workspace, env=environment, check=False)
    output_hash = hashlib.sha256((workspace / "artifact.txt").read_bytes()).hexdigest()
evidence = {"schemaVersion": "2.0.0", "jobStatus": "passed" if result.returncode == 0 else "failed", "jobExitCode": result.returncode, "workspaceRemoved": not workspace.exists(), "credentialsInherited": False, "credentialEnvironmentPresent": False, "outputSha256": output_hash, "providerRegistration": "not exercised", "securityBoundary": "local lifecycle fixture"}
args.evidence.parent.mkdir(parents=True, exist_ok=True)
args.evidence.write_text(json.dumps(evidence, indent=2) + "\n", encoding="utf-8")
print(json.dumps(evidence))
raise SystemExit(0 if result.returncode == 0 else 1)
