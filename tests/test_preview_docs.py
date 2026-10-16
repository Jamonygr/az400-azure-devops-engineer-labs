"""Authoring previews must copy changed sources, not keep an old staged tree."""
import importlib.util
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))
import build_docs_site
import preview_docs


class PreviewTests(unittest.TestCase):
    def test_changed_source_refreshes_the_staged_documentation(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "docs").mkdir()
            source = root / "docs/lesson.md"
            source.write_text("Original instructions", encoding="utf-8")
            for name in ("HOME.md", "README.md", "mkdocs.yml"):
                (root / name).write_text("Preview fixture", encoding="utf-8")
            (root / "tools").mkdir()
            (root / "tools/build_docs_site.py").write_text("# Fixture", encoding="utf-8")
            with patch.object(build_docs_site, "ROOT", root), patch.object(build_docs_site, "STAGE", root / ".site-docs"), patch.object(preview_docs, "ROOT", root), patch.object(build_docs_site, "domain_pages", return_value={}), patch.object(build_docs_site, "interactive_data", return_value={}):
                before = preview_docs.fingerprint()
                build_docs_site.stage()
                source.write_text("Revised commands and expected output", encoding="utf-8")
                self.assertNotEqual(before, preview_docs.fingerprint())
                build_docs_site.stage()
                self.assertEqual((root / ".site-docs/docs/lesson.md").read_text(), "Revised commands and expected output")

    def test_strict_build_uses_the_same_python_and_root(self):
        with patch.object(preview_docs.subprocess, "run") as run:
            preview_docs.rebuild()
            self.assertEqual(run.call_count, 2)
            self.assertEqual(run.call_args_list[1].args[0], [sys.executable, "-m", "mkdocs", "build", "--strict"])
            self.assertTrue(all(call.kwargs["check"] for call in run.call_args_list))


if __name__ == "__main__":
    unittest.main()
