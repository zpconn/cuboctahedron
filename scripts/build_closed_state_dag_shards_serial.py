#!/usr/bin/env python3
"""Serially compile the closed state-DAG sharded smoke modules.

Lake's default scheduler can spawn too many workers for generated smoke
modules.  This script compiles the shard `.olean`s one at a time with
`lake env lean -o`, then compiles the root.  It is intended to be run under
`scripts/run_memory_guarded.py`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import time
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOURCE_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedStateDAGShardedSmoke"
)
DEFAULT_BUILD_DIR = (
    ROOT
    / ".lake/build/lib/lean/Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedStateDAGShardedSmoke"
)
DEFAULT_JSON = ROOT / "scripts/generated/closed_state_dag_sharded_serial_build.json"


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def compile_file(source: Path, output: Path) -> dict[str, Any]:
    output.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        "lake",
        "env",
        "lean",
        "-M",
        "6500",
        "-j1",
        "-s",
        "2048",
        "-o",
        str(output),
        str(source),
    ]
    start = time.perf_counter()
    proc = subprocess.run(
        cmd,
        cwd=ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    elapsed = time.perf_counter() - start
    return {
        "source": rel(source),
        "output": rel(output),
        "exit_code": proc.returncode,
        "elapsed_seconds": elapsed,
        "stdout_tail": proc.stdout[-4000:],
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-dir", type=Path, default=DEFAULT_SOURCE_DIR)
    parser.add_argument("--build-dir", type=Path, default=DEFAULT_BUILD_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    args = parser.parse_args()

    source_dir = args.source_dir if args.source_dir.is_absolute() else ROOT / args.source_dir
    build_dir = args.build_dir if args.build_dir.is_absolute() else ROOT / args.build_dir
    shards = sorted(source_dir.glob("Shard*.lean"))
    if not shards:
        raise RuntimeError(f"no shards found in {source_dir}")

    rows: list[dict[str, Any]] = []
    start_all = time.perf_counter()
    for shard in shards:
        output = build_dir / f"{shard.stem}.olean"
        row = compile_file(shard, output)
        rows.append(row)
        print(
            f"{shard.name}: exit={row['exit_code']} "
            f"elapsed={row['elapsed_seconds']:.2f}s"
        )
        if row["exit_code"] != 0:
            break

    root_row: dict[str, Any] | None = None
    if all(row["exit_code"] == 0 for row in rows):
        root_source = source_dir / "All.lean"
        root_output = build_dir / "All.olean"
        root_row = compile_file(root_source, root_output)
        print(
            f"All.lean: exit={root_row['exit_code']} "
            f"elapsed={root_row['elapsed_seconds']:.2f}s"
        )
    elapsed_all = time.perf_counter() - start_all

    report = {
        "source_dir": rel(source_dir),
        "build_dir": rel(build_dir),
        "shard_count": len(shards),
        "elapsed_seconds": elapsed_all,
        "shards": rows,
        "root": root_row,
        "exit_code": (
            root_row["exit_code"]
            if root_row is not None
            else rows[-1]["exit_code"]
            if rows
            else 1
        ),
    }
    output_json = args.json if args.json.is_absolute() else ROOT / args.json
    output_json.parent.mkdir(parents=True, exist_ok=True)
    output_json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    print(f"wrote {rel(output_json)}")
    return int(report["exit_code"])


if __name__ == "__main__":
    raise SystemExit(main())
