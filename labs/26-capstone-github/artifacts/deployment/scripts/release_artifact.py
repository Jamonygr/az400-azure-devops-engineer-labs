"""Download a successful main-branch CI artifact and verify its immutable release manifest."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil
import stat
import tempfile
from urllib.error import HTTPError
from urllib.parse import quote, urlparse
from urllib.request import HTTPRedirectHandler, Request, build_opener, urlopen
import zipfile

MAX_BYTES = 512 * 1024 * 1024


class NoRedirect(HTTPRedirectHandler):
    def redirect_request(self, req, fp, code, msg, headers, newurl):
        return None


def request(url: str, token: str, *, binary: bool = False) -> bytes:
    if urlparse(url).scheme != "https":
        raise ValueError("Artifact API URLs must use HTTPS")
    headers = {"Authorization": f"Bearer {token}", "Accept": "application/octet-stream" if binary else "application/json", "User-Agent": "AZ400-release/2"}
    try:
        response = build_opener(NoRedirect).open(Request(url, headers=headers), timeout=60)
    except HTTPError as error:
        if error.code not in (301, 302, 303, 307, 308):
            raise ValueError(f"Artifact API request failed with HTTP {error.code}") from None
        location = error.headers.get("Location", "")
        if urlparse(location).scheme != "https":
            raise ValueError("Artifact redirect must use HTTPS") from None
        # Signed blob URLs need no credentials. Never forward the API bearer token.
        response = urlopen(Request(location, headers={"User-Agent": "AZ400-release/2"}), timeout=60)
    with response:
        data = response.read(MAX_BYTES + 1)
    if len(data) > MAX_BYTES:
        raise ValueError("Artifact exceeds the bounded training size")
    return data


def verify_directory(directory: Path, expected_revision: str) -> dict:
    manifest_path = directory / "release-manifest.json"
    manifest = json.loads(manifest_path.read_text(encoding="utf-8-sig"))
    if manifest.get("schemaVersion") != "2.0.0" or manifest.get("revision") != expected_revision.lower() or manifest.get("runtime") != "linux-x64" or manifest.get("configuration") != "Release":
        raise ValueError("Release manifest schema, revision, or runtime does not match the reviewed artifact")
    files = manifest.get("files")
    if not isinstance(files, dict) or not {"app/DevOps.Api.dll", "efbundle", "migration.sql"}.issubset(files):
        raise ValueError("Release is missing application or migration payloads")
    for relative, digest in files.items():
        path = PurePosixPath(relative)
        if path.is_absolute() or ".." in path.parts or "\\" in relative or ":" in relative or not re.fullmatch(r"[a-f0-9]{64}", digest):
            raise ValueError("Unsafe release path or hash")
        target = directory / relative
        if target.is_symlink() or not target.is_file() or hashlib.sha256(target.read_bytes()).hexdigest() != digest:
            raise ValueError(f"Release content failed hash verification: {relative}")
    actual = {path.relative_to(directory).as_posix() for path in directory.rglob("*") if path.is_file()}
    if actual != set(files) | {"release-manifest.json"}:
        raise ValueError("Release contains unrecorded files")
    return manifest


def extract(archive: bytes, destination: Path, expected_revision: str, archive_digest: str | None = None) -> dict:
    if archive_digest and hashlib.sha256(archive).hexdigest() != archive_digest.removeprefix("sha256:"):
        raise ValueError("Platform archive digest mismatch")
    if destination.exists() and any(destination.iterdir()):
        raise ValueError("Release destination must be empty")
    with tempfile.TemporaryDirectory(prefix="az400-release-") as temp:
        zip_path = Path(temp) / "artifact.zip"
        zip_path.write_bytes(archive)
        unpacked = Path(temp) / "unpacked"
        with zipfile.ZipFile(zip_path) as bundle:
            if sum(item.file_size for item in bundle.infolist()) > MAX_BYTES:
                raise ValueError("Unpacked artifact exceeds the bounded training size")
            for item in bundle.infolist():
                path = PurePosixPath(item.filename)
                if path.is_absolute() or ".." in path.parts or "\\" in item.filename or ":" in item.filename or stat.S_ISLNK(item.external_attr >> 16):
                    raise ValueError("Unsafe artifact archive path")
            bundle.extractall(unpacked)
        manifests = list(unpacked.rglob("release-manifest.json"))
        if len(manifests) != 1:
            raise ValueError("Artifact must contain one release manifest")
        source = manifests[0].parent
        manifest = verify_directory(source, expected_revision)
        destination.mkdir(parents=True, exist_ok=True)
        shutil.copytree(source, destination, dirs_exist_ok=True)
    return manifest


def fetch_github(repo: str, run_id: str, revision: str, token: str) -> tuple[bytes, str | None]:
    if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", repo):
        raise ValueError("Use the exact owner/repository")
    base = f"https://api.github.com/repos/{repo}"
    run = json.loads(request(f"{base}/actions/runs/{run_id}", token))
    if run.get("conclusion") != "success" or run.get("head_sha") != revision or run.get("head_branch") != "main" or run.get("event") != "push" or run.get("path") != ".github/workflows/ci.yml":
        raise ValueError("Only the successful reviewed main-branch CI workflow may supply a release")
    artifacts = json.loads(request(f"{base}/actions/runs/{run_id}/artifacts?per_page=100", token))
    matches = [item for item in artifacts.get("artifacts", []) if item.get("name") == "todo-api" and not item.get("expired")]
    if len(matches) != 1 or not matches[0].get("digest"):
        raise ValueError("Expected one retained artifact with a platform digest")
    return request(matches[0]["archive_download_url"], token, binary=True), matches[0]["digest"]


def fetch_azure(organization: str, project: str, run_id: str, revision: str, token: str, definition_id: str, repository_id: str) -> tuple[bytes, None]:
    if not re.fullmatch(r"https://dev\.azure\.com/[A-Za-z0-9-]+/?", organization):
        raise ValueError("Use an explicit dev.azure.com organization")
    base = f"{organization.rstrip('/')}/{quote(project, safe='')}/_apis/build/builds/{run_id}"
    run = json.loads(request(f"{base}?api-version=7.1", token))
    if run.get("status") != "completed" or run.get("result") != "succeeded" or run.get("sourceVersion") != revision or run.get("sourceBranch") != "refs/heads/main" or run.get("reason") == "pullRequest":
        raise ValueError("Only a successful reviewed main-branch CI build may supply a release")
    if not re.fullmatch(r"[1-9][0-9]*", definition_id) or str(run.get("definition", {}).get("id")) != definition_id or not repository_id or run.get("repository", {}).get("id") != repository_id:
        raise ValueError("The artifact must come from the explicitly selected CI definition and current sandbox repository")
    artifacts = json.loads(request(f"{base}/artifacts?api-version=7.1", token))
    matches = [item for item in artifacts.get("value", []) if item.get("name") == "todo-api"]
    if len(matches) != 1:
        raise ValueError("Expected one retained CI artifact")
    url = matches[0]["resource"]["downloadUrl"]
    if urlparse(url).hostname not in {"dev.azure.com", "vsblob.dev.azure.com"}:
        raise ValueError("Unexpected Azure DevOps artifact API host")
    return request(url, token, binary=True), None


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--platform", choices=("github", "azure-devops", "local"), required=True)
    parser.add_argument("--run-id", default="")
    parser.add_argument("--expected-revision", required=True)
    parser.add_argument("--repo", default=os.environ.get("GITHUB_REPOSITORY", ""))
    parser.add_argument("--organization", default=os.environ.get("SYSTEM_COLLECTIONURI", ""))
    parser.add_argument("--project", default=os.environ.get("SYSTEM_TEAMPROJECT", ""))
    parser.add_argument("--definition-id", default=os.environ.get("CI_DEFINITION_ID", ""))
    parser.add_argument("--repository-id", default=os.environ.get("BUILD_REPOSITORY_ID", ""))
    parser.add_argument("--archive", type=Path)
    parser.add_argument("--directory", type=Path, help="Verify a previously downloaded directory without any network request")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if not re.fullmatch(r"[a-fA-F0-9]{40}", args.expected_revision):
        raise ValueError("Expected revision must be an exact 40-character commit SHA")
    revision = args.expected_revision.lower()
    if args.directory is not None:
        verify_directory(args.directory, revision)
        print(json.dumps({"status": "verified", "platform": "local", "revision": revision}))
        return
    if args.platform != "local" and not re.fullmatch(r"[1-9][0-9]*", args.run_id):
        raise ValueError("Artifact run ID must be a positive integer")
    if args.platform == "github":
        archive, digest = fetch_github(args.repo, args.run_id, revision, os.environ["GH_TOKEN"])
    elif args.platform == "azure-devops":
        archive, digest = fetch_azure(args.organization, args.project, args.run_id, revision, os.environ["AZDO_TOKEN"], args.definition_id, args.repository_id)
    else:
        if args.archive is None:
            raise ValueError("Local validation needs --archive")
        archive, digest = args.archive.read_bytes(), None
    extract(archive, args.output, revision, digest)
    print(json.dumps({"status": "verified", "platform": args.platform, "artifactRunId": args.run_id, "revision": revision, "archiveSha256": hashlib.sha256(archive).hexdigest()}))


if __name__ == "__main__":
    main()
