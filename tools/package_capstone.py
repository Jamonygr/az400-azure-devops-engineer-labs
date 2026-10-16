"""Stage a self-contained learner repository; deployment activation is explicit."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKIP_PARTS = {"bin", "obj", "TestResults", "__pycache__"}


def sources(root: Path, platform: str, activate_release: bool = False) -> dict[str, Path]:
    files = {name: root / name for name in ("global.json", "Directory.Build.props")}
    for path in (root / "samples").rglob("*"):
        relative = path.relative_to(root)
        if path.is_file() and not (set(relative.parts) & SKIP_PARTS) and not any(path.name.endswith(suffix) for suffix in (".db", ".db-shm", ".db-wal", ".trx")):
            files[relative.as_posix()] = path
    shared = root / "labs/26-capstone-github/artifacts/deployment"
    for path in shared.rglob("*"):
        if path.is_file() and not (set(path.parts) & SKIP_PARTS):
            files["deployment/" + path.relative_to(shared).as_posix()] = path
    if platform == "github":
        base = root / "labs/26-capstone-github/artifacts"
        files[".github/workflows/ci.yml"] = base / "capstone-ci.yml"
        files["deployment/github-release.yml"] = base / "capstone-github.yml"
        if activate_release:
            files[".github/workflows/release.yml"] = base / "capstone-github.yml"
    elif platform == "azure-devops":
        base = root / "labs/27-capstone-azure-devops/artifacts"
        files["azure-pipelines.yml"] = base / "capstone-ci.yml"
        files["deployment/azure-pipelines-release.yml"] = base / "capstone-azure-pipelines.yml"
        for path in (base / "deployment").rglob("*"):
            if path.is_file():
                files["deployment/" + path.relative_to(base / "deployment").as_posix()] = path
        if activate_release:
            files["azure-pipelines-release.yml"] = base / "capstone-azure-pipelines.yml"
    else:
        raise ValueError("Unsupported platform")
    return files


def stage(destination: Path, platform: str, activate_release: bool = False, root: Path = ROOT) -> dict:
    root, destination = root.resolve(), destination.resolve()
    if destination == root or root in destination.parents and ".state" not in destination.relative_to(root).parts and ".cache" not in destination.relative_to(root).parts:
        raise ValueError("Stage into a disposable workspace, not the tracked course tree")
    if destination.is_symlink() or any(parent.is_symlink() for parent in destination.parents):
        raise ValueError("A staging destination must not contain a symbolic-link boundary")
    pending = sources(root, platform, activate_release)
    for name, source in pending.items():
        if not source.is_file():
            raise ValueError(f"Missing required package source: {source.relative_to(root)}")
        target = destination / name
        if target.is_symlink() or any(parent.is_symlink() for parent in target.parents):
            raise ValueError(f"Refusing symbolic-link output: {name}")
        if target.exists() and (not target.is_file() or target.read_bytes() != source.read_bytes()):
            raise ValueError(f"Preserve learner changes: {name} differs; use a fresh workspace")
    hashes = {}
    for name, source in pending.items():
        target = destination / name
        target.parent.mkdir(parents=True, exist_ok=True)
        data = source.read_bytes()
        target.write_bytes(data)
        hashes[name] = hashlib.sha256(data).hexdigest()
    manifest = {"schemaVersion": "2.0.0", "platform": platform, "releaseActivated": activate_release, "files": dict(sorted(hashes.items()))}
    (destination / "deployment/package-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    return manifest


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--platform", choices=("github", "azure-devops"), required=True)
    parser.add_argument("--destination", type=Path, required=True)
    parser.add_argument("--activate-release", action="store_true", help="After explicit prerequisite approval, stage the protected release entry as an active definition")
    args = parser.parse_args()
    manifest = stage(args.destination, args.platform, args.activate_release)
    print(f"Staged {len(manifest['files'])} source files for {args.platform}; releaseActivated={args.activate_release}. No remote objects were changed.")


if __name__ == "__main__":
    main()
