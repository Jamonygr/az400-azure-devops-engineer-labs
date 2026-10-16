"""Validate training artifact syntax and local safety contracts; never contact cloud APIs."""
from __future__ import annotations

import argparse
import json
import importlib.util
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

import yaml


def validate(root: Path) -> list[str]:
    errors: list[str] = []
    artifacts = sorted((root / "labs").glob("*/artifacts"))
    if len(artifacts) != 28:
        errors.append(f"Expected 28 lab artifact directories, found {len(artifacts)}")
    yaml_count = json_count = 0
    for directory in artifacts:
        if not any(directory.rglob("*.*")):
            errors.append(f"Empty artifact directory: {directory.relative_to(root)}")
        for path in directory.rglob("*"):
            if not path.is_file() or "__pycache__" in path.parts:
                continue
            relative = path.relative_to(root)
            text = path.read_text(encoding="utf-8-sig")
            try:
                if path.suffix in {".yml", ".yaml"}:
                    data = yaml.safe_load(text)
                    yaml_count += 1
                    if not isinstance(data, dict):
                        errors.append(f"{relative}: YAML root must be a mapping")
                    for action in re.findall(r"uses:\s*([^\s#]+)", text):
                        if not action.startswith("./") and not re.search(r"@[a-f0-9]{40}$", action):
                            errors.append(f"{relative}: external action is not pinned to a full commit: {action}")
                    for template in re.findall(r"template:\s*([^\s#]+\.yml)", text):
                        if not (path.parent / template).is_file():
                            errors.append(f"{relative}: missing Azure Pipelines template {template}")
                    if "pull_request_target:" in text:
                        errors.append(f"{relative}: privileged pull_request_target is forbidden in training workflows")
                elif path.suffix == ".json":
                    json.loads(text)
                    json_count += 1
                elif path.suffix == ".runsettings":
                    ET.fromstring(text)
            except (ValueError, yaml.YAMLError, ET.ParseError) as exception:
                errors.append(f"{relative}: {exception}")
    docker = (root / "samples/Dockerfile").read_text(encoding="utf-8")
    for contract in ["AS build", "AS runtime", "--locked-mode", "USER $APP_UID", "/p:UseAppHost=false"]:
        if contract not in docker:
            errors.append(f"Dockerfile is missing {contract}")
    for project in (root / "samples").rglob("*.csproj"):
        for package in ET.parse(project).getroot().iter("PackageReference"):
            if not re.fullmatch(r"\d+\.\d+\.\d+", package.get("Version", "")):
                errors.append(f"{project.relative_to(root)}: package must have an exact stable version")
        lock = project.parent / "packages.lock.json"
        if not lock.is_file():
            errors.append(f"{project.relative_to(root)}: missing transitive package lock")
    for workflow in (root / ".github/workflows").glob("*.yml"):
        text = workflow.read_text(encoding="utf-8")
        if re.search(r"uses:\s*azure/(?:login|webapps-deploy|arm-deploy)@|az\s+(?:deployment\s+group\s+create|group\s+create|webapp\s+(?:create|deploy))", text):
            errors.append(f"Active course workflow can deploy lab resources: {workflow.name}")
    bicep = (root / "labs/17-bicep-infrastructure/artifacts/main.bicep").read_text(encoding="utf-8")
    for contract in ["httpsOnly: true", "ftpsState: 'Disabled'", "Authentication=Active Directory Managed Identity", "enablePurgeProtection: true", "param labRunId string"]:
        if contract not in bicep:
            errors.append(f"Workload Bicep is missing {contract}")
    # Validate package closure from the exact learner paths, not only the course tree.
    spec = importlib.util.spec_from_file_location("capstone_package_contract", root / "tools/package_capstone.py")
    packaging = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(packaging)
    for platform in ("github", "azure-devops"):
        packaged = packaging.sources(root, platform)
        required = {"samples/Build-Release.ps1", "samples/.config/dotnet-tools.json", "deployment/scripts/Apply-Migration.ps1", "deployment/scripts/Verify-Release.ps1", "deployment/scripts/release_artifact.py", "deployment/templates/main.bicep", "deployment/templates/monitoring.bicep"}
        for missing in required - packaged.keys():
            errors.append(f"{platform}: missing packaged dependency {missing}")
        for name, source in packaged.items():
            if not source.is_file():
                errors.append(f"{platform}: missing package source {name}")
    for lab, filename in ((26, "capstone-github.yml"), (27, "capstone-azure-pipelines.yml")):
        workflow = next((root / "labs").glob(f"{lab}-*/artifacts/{filename}"))
        text = workflow.read_text()
        for contract in ("production-database", "production", "Apply-Migration.ps1", "Verify-Release.ps1", "release_artifact.py", "baselineArtifactRunId", "baselineRevision"):
            if contract not in text:
                errors.append(f"{workflow.relative_to(root)}: protected immutable delivery contract missing {contract}")
        if "dotnet publish" in text or "dotnet build" in text:
            errors.append(f"{workflow.relative_to(root)}: release must promote CI bytes without rebuilding")
    grants = (root / "labs/14-ordered-releases-databases/artifacts/database-identities.sql").read_text()
    if "GRANT SELECT ON OBJECT::dbo.__EFMigrationsHistory" not in grants:
        errors.append("SQL runtime readiness needs narrowly scoped migration-history SELECT")
    for copy in ("samples/DevOps.Sql.Tests/database-identities.sql", "labs/26-capstone-github/artifacts/deployment/database-identities.sql"):
        if (root / copy).read_text() != grants:
            errors.append(f"SQL permission fixture drift: {copy}")
    quality = (root / ".github/workflows/quality.yml").read_text()
    for contract in ("Test-Coverage.ps1", "Test-Containers.ps1 -Application -SqlServer", "python -m unittest discover -s tests -p 'test_*.py'"):
        if contract not in quality:
            errors.append(f"Offline CI is missing executable contract {contract}")
    print(f"Artifacts: {len(artifacts)} labs, {yaml_count} YAML documents, {json_count} JSON fixtures; syntax and static contracts inspected.")
    print("External execution remains unverified here: Azure deployments, SQL connectivity, GitHub environment approvals, Azure Pipelines service connections, paid security entitlements, and private-agent routing.")
    return errors


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, default=Path(__file__).resolve().parents[1])
    args = parser.parse_args()
    errors = validate(args.repo.resolve())
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    if not errors:
        print("PASS: artifact static validation")
    return bool(errors)


if __name__ == "__main__":
    raise SystemExit(main())
