"""Calculate reference results for the synthetic dataset; does not execute KQL."""
import argparse
import json
import math
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--input", type=Path, required=True)
parser.add_argument("--output", type=Path, required=True)
args = parser.parse_args()
fixture = json.loads(args.input.read_text(encoding="utf-8"))
requests = fixture["requests"]
dependencies = {item["operationId"]: item for item in fixture["dependencies"]}
durations = sorted(item["durationMs"] for item in requests)
values = {"requests": len(requests), "failures": sum(not item["success"] for item in requests), "p95Ms": durations[math.ceil(len(durations) * 0.95) - 1], "joinedRows": len(requests), "dependencyRows": sum(item["operationId"] in dependencies for item in requests)}
for field in ("cpuPercent", "memoryBytes", "diskLatencyMs", "networkBytesPerSecond"):
    values["max" + field[0].upper() + field[1:]] = max(item[field] for item in fixture["resources"])
joined = [{**item, "dependency": dependencies.get(item["operationId"])} for item in requests]
if values != fixture["expected"]:
    raise SystemExit("Reference result differs from the independently recorded expected fixture")
result = {"schemaVersion": "2.0.0", "engine": "Python reference calculations; KQL execution unverified", "results": values, "counts": {key: values[key] for key in ("requests", "failures", "p95Ms")}, "correlations": joined, "resourceMaxima": {key: max(item[key] for item in fixture["resources"]) for key in ("cpuPercent", "memoryPercent", "diskLatencyMs", "networkErrorRate")}}
args.output.parent.mkdir(parents=True, exist_ok=True)
args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
print(json.dumps(result))

