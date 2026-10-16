"""Exercise staged learner repositories and immutable artifact failure paths without providers."""
import hashlib
import importlib.util
import io
import json
from pathlib import Path
import re
import tempfile
import unittest
from unittest.mock import patch
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    value = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(value)
    return value


packaging = module("capstone_packaging", ROOT / "tools/package_capstone.py")
release = module("release_artifact", ROOT / "labs/26-capstone-github/artifacts/deployment/scripts/release_artifact.py")
REVISION = "a" * 40


def archive(*, revision=REVISION, extra=None, tamper=False):
    files = {"app/DevOps.Api.dll": b"compiled-example", "efbundle": b"migration-example", "migration.sql": b"CREATE TABLE"}
    manifest = {"schemaVersion": "2.0.0", "revision": revision, "configuration": "Release", "runtime": "linux-x64", "files": {name: hashlib.sha256(value).hexdigest() for name, value in files.items()}}
    stream = io.BytesIO()
    with zipfile.ZipFile(stream, "w") as result:
        for name, value in files.items():
            result.writestr(name, b"tampered" if tamper and name.endswith(".dll") else value)
        result.writestr("release-manifest.json", json.dumps(manifest))
        if extra:
            result.writestr(extra, "unreviewed")
    return stream.getvalue()


class PackagingTests(unittest.TestCase):
    def test_both_staged_repositories_have_complete_dormant_deployment_dependencies(self):
        for platform in ("github", "azure-devops"):
            with self.subTest(platform=platform), tempfile.TemporaryDirectory() as temp:
                destination = Path(temp) / "learner"
                result = packaging.stage(destination, platform)
                self.assertFalse(result["releaseActivated"])
                for name, digest in result["files"].items():
                    self.assertEqual(hashlib.sha256((destination / name).read_bytes()).hexdigest(), digest)
                for name in ("samples/Build-Release.ps1", "samples/.config/dotnet-tools.json", "deployment/scripts/release_artifact.py", "deployment/scripts/Apply-Migration.ps1", "deployment/scripts/Verify-Release.ps1", "deployment/templates/main.bicep", "deployment/templates/monitoring.bicep"):
                    self.assertTrue((destination / name).is_file(), name)
                for path in (destination / "deployment").glob("*.yml"):
                    for match in re.finditer(r"(?:\./)?(deployment/scripts/[A-Za-z0-9_.-]+)", path.read_text(encoding="utf-8-sig")):
                        self.assertTrue((destination / match[1]).is_file(), match[1])
                active = destination / (".github/workflows/release.yml" if platform == "github" else "azure-pipelines-release.yml")
                self.assertFalse(active.exists())
                packaging.stage(destination, platform, activate_release=True)
                self.assertTrue(active.exists())

    def test_all_bicep_module_references_are_self_contained(self):
        with tempfile.TemporaryDirectory() as temp:
            target = Path(temp) / "learner"
            packaging.stage(target, "github")
            for template in (target / "deployment/templates").glob("*.bicep"):
                for reference in re.findall(r"module \w+ '([^']+)'", template.read_text()):
                    resolved = (template.parent / reference).resolve()
                    self.assertTrue(resolved.is_relative_to(target), reference)
                    self.assertTrue(resolved.is_file(), reference)

    def test_retry_is_idempotent_and_preserves_learner_edits(self):
        with tempfile.TemporaryDirectory() as temp:
            target = Path(temp) / "learner"
            first = packaging.stage(target, "github")
            self.assertEqual(first, packaging.stage(target, "github"))
            (target / "samples/DevOps.Api/Program.cs").write_text("learner change")
            with self.assertRaisesRegex(ValueError, "Preserve learner changes"):
                packaging.stage(target, "github")
            self.assertEqual((target / "samples/DevOps.Api/Program.cs").read_text(), "learner change")

    def test_refuses_tracked_course_destination(self):
        with self.assertRaisesRegex(ValueError, "tracked course tree"):
            packaging.stage(ROOT / "docs", "github")


class ReleaseIntegrityTests(unittest.TestCase):
    def test_extracts_matching_release_and_verifies_every_file(self):
        data = archive()
        with tempfile.TemporaryDirectory() as temp:
            manifest = release.extract(data, Path(temp) / "release", REVISION, "sha256:" + hashlib.sha256(data).hexdigest())
            self.assertEqual(manifest["revision"], REVISION)

    def test_rejects_tampering_wrong_revision_and_unrecorded_paths(self):
        for data, revision, message in ((archive(tamper=True), REVISION, "hash verification"), (archive(), "b" * 40, "revision"), (archive(extra="extra.txt"), REVISION, "unrecorded"), (archive(extra="../escape.txt"), REVISION, "Unsafe")):
            with self.subTest(message=message), tempfile.TemporaryDirectory() as temp:
                with self.assertRaisesRegex(ValueError, message):
                    release.extract(data, Path(temp) / "release", revision)

    def test_rejects_platform_digest_mismatch(self):
        with tempfile.TemporaryDirectory() as temp, self.assertRaisesRegex(ValueError, "digest mismatch"):
            release.extract(archive(), Path(temp) / "release", REVISION, "sha256:" + "0" * 64)

    def test_rejects_failed_or_pull_request_github_sources(self):
        for event, conclusion in (("pull_request", "success"), ("push", "failure")):
            run = {"head_sha": REVISION, "head_branch": "main", "event": event, "conclusion": conclusion, "path": ".github/workflows/ci.yml"}
            with patch.object(release, "request", return_value=json.dumps(run).encode()), self.assertRaisesRegex(ValueError, "successful reviewed"):
                release.fetch_github("learner/sandbox", "42", REVISION, "not-a-credential")

    def test_rejects_azure_artifact_from_another_definition_or_repository(self):
        run = {"status": "completed", "result": "succeeded", "sourceVersion": REVISION, "sourceBranch": "refs/heads/main", "reason": "manual", "definition": {"id": 5}, "repository": {"id": "other-repo"}}
        with patch.object(release, "request", return_value=json.dumps(run).encode()), self.assertRaisesRegex(ValueError, "selected CI definition"):
            release.fetch_azure("https://dev.azure.com/training", "sandbox", "42", REVISION, "not-a-credential", "5", "owned-repo")


if __name__ == "__main__":
    unittest.main()
