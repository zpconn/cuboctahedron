#!/usr/bin/env python3
"""Check generated family-interval evidence roots.

The family-interval backend is deliberately separate from the archived
singleton shard path.  This checker enforces that separation by scanning the
generated Lean root for singleton-emitter fingerprints, then optionally
compiling the root into an external `.olean` cache.
"""

from __future__ import annotations

import argparse
import json
import os
import resource
import subprocess
import sys
import time
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_CACHE_DIR = REPO_ROOT / "evidence" / ".external_olean_cache"
DEFAULT_REPORT = REPO_ROOT / "evidence" / "family_interval_shards" / "check_report.json"


def load_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def repo_path(path: Path) -> str:
    try:
        return str(path.relative_to(REPO_ROOT))
    except ValueError:
        return str(path)


def lake_lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return proc.stdout.strip()


def memory_limiter(limit_gib: float):
    if limit_gib <= 0:
        return None

    limit_bytes = int(limit_gib * 1024**3)

    def apply_limit() -> None:
        resource.setrlimit(resource.RLIMIT_AS, (limit_bytes, limit_bytes))

    return apply_limit


def run_command(
    label: str,
    command: list[str],
    *,
    env: dict[str, str] | None = None,
    memory_limit_gib: float = 0,
) -> dict[str, Any]:
    started = time.monotonic()
    print(f"running {label}: {' '.join(command)}", flush=True)
    proc = subprocess.run(
        command,
        cwd=REPO_ROOT,
        env=env,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        preexec_fn=memory_limiter(memory_limit_gib),
    )
    elapsed = time.monotonic() - started
    if proc.stdout:
        print(proc.stdout, end="", flush=True)
    if proc.stderr:
        print(proc.stderr, end="", file=sys.stderr, flush=True)
    status = "ok" if proc.returncode == 0 else "failed"
    print(f"{status} {label} {elapsed:.1f}s", flush=True)
    return {
        "label": label,
        "command": command,
        "exit_code": proc.returncode,
        "elapsed_seconds": elapsed,
    }


def path_from_record(record: dict[str, Any]) -> Path:
    if "verified_root" in record:
        return path_from_record(record["verified_root"])
    raw = record.get("path")
    if not raw:
        raise ValueError("path record does not name a path")
    path = Path(raw)
    if not path.is_absolute():
        path = REPO_ROOT / path
    return path


def generated_roots_from_manifest(manifest: dict[str, Any]) -> list[Path]:
    paths = manifest.get("paths", {})
    if "verified_roots" in paths:
        return [path_from_record(record) for record in paths["verified_roots"]]
    if "verified_root" in paths:
        return [path_from_record(paths["verified_root"])]
    raise ValueError("manifest does not name paths.verified_root or paths.verified_roots")


def scan_for_forbidden_patterns(
    root: Path,
    patterns: list[str],
) -> dict[str, Any]:
    if not root.exists():
        return {
            "ok": False,
            "missing": repo_path(root),
            "matches": [],
        }
    text = root.read_text(encoding="utf-8")
    matches = [
        {
            "path": repo_path(root),
            "pattern": pattern,
        }
        for pattern in patterns
        if pattern in text
    ]
    return {
        "ok": len(matches) == 0,
        "matches": matches,
        "bytes": root.stat().st_size,
    }


def cache_output_path(path: Path, cache_dir: Path) -> Path:
    rel = path.relative_to(REPO_ROOT)
    return cache_dir / rel.with_suffix(".olean")


def compile_external_lean(
    path: Path,
    *,
    cache_dir: Path,
    lean_path: str,
    memory_limit_gib: float,
) -> dict[str, Any]:
    olean = cache_output_path(path, cache_dir)
    olean.parent.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    env["LEAN_PATH"] = f"{cache_dir}:{REPO_ROOT}:{lean_path}"
    return run_command(
        f"compile {repo_path(path)}",
        [
            "lake",
            "env",
            "lean",
            "-R",
            ".",
            "-o",
            str(olean),
            repo_path(path),
        ],
        env=env,
        memory_limit_gib=memory_limit_gib,
    )


def check_manifest(
    manifest_path: Path,
    *,
    compile_external: bool,
    cache_dir: Path,
    lean_memory_limit_gib: float,
) -> dict[str, Any]:
    manifest = load_json(manifest_path)
    roots = generated_roots_from_manifest(manifest)
    patterns = list(manifest.get("forbidden_active_patterns", []))
    scans = [scan_for_forbidden_patterns(root, patterns) for root in roots]
    results: list[dict[str, Any]] = []
    complete = all(scan["ok"] for scan in scans)
    failed_at = None if complete else "forbidden-pattern-scan"

    if complete and compile_external:
        lean_path = lake_lean_path()
        for root in roots:
            result = compile_external_lean(
                root,
                cache_dir=cache_dir,
                lean_path=lean_path,
                memory_limit_gib=lean_memory_limit_gib,
            )
            results.append(result)
            if result["exit_code"] != 0:
                complete = False
                failed_at = result["label"]
                break

    return {
        "schema_version": 2,
        "complete": complete,
        "failed_at": failed_at,
        "manifest": repo_path(manifest_path),
        "start_rank": manifest.get("start_rank"),
        "end_rank": manifest.get("end_rank"),
        "template_count": manifest.get("template_count"),
        "rank_count": manifest.get("rank_count"),
        "mode": manifest.get("mode"),
        "verified_roots": [repo_path(root) for root in roots],
        "forbidden_pattern_scans": scans,
        "compile_external": compile_external,
        "external_cache_dir": repo_path(cache_dir),
        "results": results,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "manifest",
        type=Path,
        help="path to evidence/family_interval_shards/manifest.json",
    )
    parser.add_argument("--compile-external", action="store_true")
    parser.add_argument(
        "--lean-memory-limit-gib",
        type=float,
        default=44.0,
        help="per-Lean-process address-space guard; set to 0 to disable",
    )
    parser.add_argument("--external-cache-dir", type=Path, default=DEFAULT_CACHE_DIR)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    manifest_path = args.manifest
    if not manifest_path.is_absolute():
        manifest_path = REPO_ROOT / manifest_path
    cache_dir = args.external_cache_dir
    if not cache_dir.is_absolute():
        cache_dir = REPO_ROOT / cache_dir
    report_path = args.report
    if not report_path.is_absolute():
        report_path = REPO_ROOT / report_path

    report = check_manifest(
        manifest_path,
        compile_external=args.compile_external,
        cache_dir=cache_dir,
        lean_memory_limit_gib=args.lean_memory_limit_gib,
    )
    write_json(report_path, report)
    print(f"wrote report: {repo_path(report_path)}")
    return 0 if report["complete"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
