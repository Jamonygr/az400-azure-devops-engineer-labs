"""Rebuild authoritative sources on change and serve the preview on localhost."""
import argparse
import functools
import http.server
import subprocess
import sys
import threading
import time

from build_docs_site import ROOT, sources


def fingerprint():
    paths = list(sources().values()) + [ROOT / "HOME.md", ROOT / "README.md", ROOT / "mkdocs.yml", ROOT / "tools/build_docs_site.py"]
    return {str(path): (path.stat().st_mtime_ns, path.stat().st_size) for path in paths}


def rebuild():
    subprocess.run([sys.executable, str(ROOT / "tools/build_docs_site.py")], cwd=ROOT, check=True)
    subprocess.run([sys.executable, "-m", "mkdocs", "build", "--strict"], cwd=ROOT, check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", type=int, default=8000)
    parser.add_argument("--once", action="store_true", help="Build once without starting the server")
    args = parser.parse_args()
    rebuild()
    if args.once:
        return
    handler = functools.partial(http.server.SimpleHTTPRequestHandler, directory=str(ROOT / "site"))
    server = http.server.ThreadingHTTPServer(("127.0.0.1", args.port), handler)
    threading.Thread(target=server.serve_forever, daemon=True).start()
    print(f"Preview: http://127.0.0.1:{args.port}/ — sources rebuild automatically; refresh the browser after changes.", flush=True)
    previous = fingerprint()
    try:
        while True:
            time.sleep(1)
            current = fingerprint()
            if current != previous:
                previous = current
                try:
                    rebuild()
                except subprocess.CalledProcessError:
                    print("Preview build failed. Fix the reported source error; watching continues.", flush=True)
    except KeyboardInterrupt:
        server.shutdown()


if __name__ == "__main__":
    main()
