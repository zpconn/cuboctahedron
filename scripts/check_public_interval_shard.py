#!/usr/bin/env python3
"""Check public interval shard leaves serially.

The public interval evidence emitter deliberately keeps heavy proof-carrying
leaves outside the default Lake package build.  This helper reads a shard
manifest and checks each generated Lean leaf one at a time with `lake env lean`.
It is intentionally boring: no worker pool, no broad import root, no scheduler
fan-out.
"""

from __future__ import annotations

import argparse
import json
import os
import subprocess
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]


def load_manifest(path: Path) -> dict:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def leaf_paths(manifest: dict) -> list[Path]:
    paths: list[Path] = []
    for record in manifest.get("nonidentity", []):
        paths.append(REPO_ROOT / record["path"]["path"])
    for record in manifest.get("translation", []):
        paths.append(REPO_ROOT / record["path"]["path"])
    return paths


def rank_root_paths(manifest: dict) -> list[Path]:
    paths: list[Path] = []
    for record in manifest.get("translation_rank_roots", []):
        paths.append(REPO_ROOT / record["path"]["path"])
    return paths


def verified_root_path(manifest: dict) -> Path | None:
    record = manifest.get("paths", {}).get("verified_root", {})
    if not record.get("exists"):
        return None
    return REPO_ROOT / record["path"]


def lake_lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return proc.stdout.strip()


def run_lean(
    path: Path,
    *,
    time: bool,
    compile_external: bool,
    lean_path: str | None,
) -> int:
    rel = path.relative_to(REPO_ROOT)
    print(f"checking {rel}", flush=True)
    cmd = ["lake", "env", "lean"]
    if compile_external:
        olean = rel.with_suffix(".olean")
        cmd.extend(["-R", ".", "-o", str(olean)])
    cmd.append(str(rel))
    env = None
    if compile_external:
        env = os.environ.copy()
        env["LEAN_PATH"] = f".:{lean_path or lake_lean_path()}"
    if time:
        cmd = ["/usr/bin/time", "-v", *cmd]
    proc = subprocess.run(cmd, cwd=REPO_ROOT, env=env)
    return proc.returncode


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "manifest",
        type=Path,
        help="path to evidence/public_interval_shards/.../manifest.json",
    )
    parser.add_argument(
        "--limit",
        type=int,
        help="check only the first N heavy leaves",
    )
    parser.add_argument(
        "--include-index",
        action="store_true",
        help="also check the lightweight shard Index.lean after the leaves",
    )
    parser.add_argument(
        "--include-rank-roots",
        action="store_true",
        help="also check generated rank aggregator modules after leaves",
    )
    parser.add_argument(
        "--include-verified-root",
        action="store_true",
        help=(
            "also check the generated verified shard root; implies "
            "--compile-external and rank roots"
        ),
    )
    parser.add_argument(
        "--compile-external",
        action="store_true",
        help=(
            "compile external evidence modules to adjacent .olean files with "
            "`lean -R . -o ...`, allowing generated roots to import them"
        ),
    )
    parser.add_argument(
        "--time",
        action="store_true",
        help="wrap each Lean invocation in /usr/bin/time -v",
    )
    args = parser.parse_args()

    manifest_path = args.manifest
    if not manifest_path.is_absolute():
        manifest_path = REPO_ROOT / manifest_path
    manifest = load_manifest(manifest_path)
    compile_external = args.compile_external or args.include_verified_root
    paths = leaf_paths(manifest)
    if args.limit is not None:
        paths = paths[:args.limit]
    if args.include_rank_roots or args.include_verified_root:
        paths.extend(rank_root_paths(manifest))
    if args.include_verified_root:
        root_path = verified_root_path(manifest)
        if root_path is None:
            print("manifest has no verified root", file=sys.stderr)
            return 2
        paths.append(root_path)
    if args.include_index:
        paths.append(REPO_ROOT / manifest["paths"]["index"]["path"])

    print(f"serial leaf count: {len(paths)}", flush=True)
    lean_path = lake_lean_path() if compile_external else None
    for path in paths:
        code = run_lean(
            path,
            time=args.time,
            compile_external=compile_external,
            lean_path=lean_path,
        )
        if code != 0:
            print(f"failed: {path.relative_to(REPO_ROOT)}", file=sys.stderr)
            return code
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
