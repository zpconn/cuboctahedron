#!/usr/bin/env python3
"""Check semantic symmetry evidence batches with external Lean caches."""

from __future__ import annotations

import argparse
import json
import os
import subprocess
import sys
import time
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_CACHE_DIR = REPO_ROOT / "evidence" / ".external_olean_cache"
DEFAULT_REPORT = REPO_ROOT / "evidence" / "symmetry_semantic_shards" / "check_report.json"


def load_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def lake_lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return proc.stdout.strip()


def run_command(label: str, command: list[str], *, env: dict[str, str] | None = None) -> dict[str, Any]:
    started = time.monotonic()
    print(f"running {label}: {' '.join(command)}", flush=True)
    proc = subprocess.run(
        command,
        cwd=REPO_ROOT,
        env=env,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
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


def cache_output_path(path: Path, cache_dir: Path) -> Path:
    rel = path.relative_to(REPO_ROOT)
    return cache_dir / rel.with_suffix(".olean")


def compile_external_lean(
    path: Path,
    *,
    cache_dir: Path,
    lean_path: str,
) -> dict[str, Any]:
    olean = cache_output_path(path, cache_dir)
    olean.parent.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    env["LEAN_PATH"] = f"{cache_dir}:{REPO_ROOT}:{lean_path}"
    return run_command(
        str(path.relative_to(REPO_ROOT)),
        [
            "lake",
            "env",
            "lean",
            "-R",
            ".",
            "-o",
            str(olean),
            str(path.relative_to(REPO_ROOT)),
        ],
        env=env,
    )


def public_shard_check_command(
    manifest_path: str,
    *,
    jobs: str,
    memory_budget_gib: float,
    lean_memory_limit_gib: float,
    time_enabled: bool,
    compile_external: bool,
) -> list[str]:
    command = [
        "python3",
        "scripts/check_public_interval_shard.py",
        manifest_path,
        "--include-rank-roots",
        "--include-verified-root",
        "--jobs",
        jobs,
        "--memory-budget-gib",
        str(memory_budget_gib),
    ]
    if lean_memory_limit_gib > 0:
        command.extend(["--lean-memory-limit-gib", str(lean_memory_limit_gib)])
    if compile_external:
        command.append("--compile-external")
    if time_enabled:
        command.append("--time")
    return command


def check_batch(
    manifest: dict[str, Any],
    *,
    jobs: str,
    memory_budget_gib: float,
    lean_memory_limit_gib: float,
    time_enabled: bool,
    compile_external: bool,
    cache_dir: Path,
) -> dict[str, Any]:
    results: list[dict[str, Any]] = []
    for shard in manifest["shards"]:
        command = public_shard_check_command(
            shard["public_manifest"],
            jobs=jobs,
            memory_budget_gib=memory_budget_gib,
            lean_memory_limit_gib=lean_memory_limit_gib,
            time_enabled=time_enabled,
            compile_external=compile_external,
        )
        result = run_command(f"public-shard-{shard['shard_name']}", command)
        results.append(result)
        if result["exit_code"] != 0:
            return {
                "complete": False,
                "failed_at": result["label"],
                "results": results,
            }

    lean_path = lake_lean_path()
    for shard in manifest["shards"]:
        path = REPO_ROOT / shard["symmetry_wrapper_root"]
        result = compile_external_lean(path, cache_dir=cache_dir, lean_path=lean_path)
        results.append(result)
        if result["exit_code"] != 0:
            return {
                "complete": False,
                "failed_at": result["label"],
                "results": results,
            }

    group_path = REPO_ROOT / manifest["group_root"]
    result = compile_external_lean(group_path, cache_dir=cache_dir, lean_path=lean_path)
    results.append(result)
    if result["exit_code"] != 0:
        return {
            "complete": False,
            "failed_at": result["label"],
            "results": results,
        }
    return {
        "complete": True,
        "failed_at": None,
        "results": results,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "manifest",
        type=Path,
        help="path to evidence/symmetry_semantic_shards/manifest.json",
    )
    parser.add_argument("--jobs", default="1")
    parser.add_argument("--memory-budget-gib", type=float, default=45.0)
    parser.add_argument(
        "--lean-memory-limit-gib",
        type=float,
        default=42.0,
        help=(
            "per-Lean-process crash guard passed to the public shard checker; "
            "set to 0 to disable"
        ),
    )
    parser.add_argument("--compile-external", action="store_true")
    parser.add_argument("--time", action="store_true")
    parser.add_argument("--external-cache-dir", type=Path, default=DEFAULT_CACHE_DIR)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()
    manifest_path = args.manifest
    if not manifest_path.is_absolute():
        manifest_path = REPO_ROOT / manifest_path
    cache_dir = args.external_cache_dir
    if not cache_dir.is_absolute():
        cache_dir = REPO_ROOT / cache_dir
    manifest = load_json(manifest_path)
    started = time.monotonic()
    report = check_batch(
        manifest,
        jobs=args.jobs,
        memory_budget_gib=args.memory_budget_gib,
        lean_memory_limit_gib=args.lean_memory_limit_gib,
        time_enabled=args.time,
        compile_external=args.compile_external,
        cache_dir=cache_dir,
    )
    report.update({
        "schema_version": 1,
        "manifest": str(manifest_path.relative_to(REPO_ROOT)),
        "elapsed_seconds": time.monotonic() - started,
        "start_rank": manifest["start_rank"],
        "end_rank": manifest["end_rank"],
        "group_root": manifest["group_root"],
    })
    write_json(args.report if args.report.is_absolute() else REPO_ROOT / args.report, report)
    print(f"wrote report: {(args.report if args.report.is_absolute() else REPO_ROOT / args.report).relative_to(REPO_ROOT)}")
    return 0 if report["complete"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
