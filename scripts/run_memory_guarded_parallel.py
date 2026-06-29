#!/usr/bin/env python3
"""Run shell commands in parallel behind per-job memory guards.

This helper is operational safety tooling, not proof evidence.  It is intended
for generated Lean shard checks where serial execution is slow but uncapped
parallel execution can push the machine into swap or OOM.

Input commands come from a text file, one shell command per nonempty,
non-comment line.  Each command is run through ``scripts/run_memory_guarded.py``
in its own process group.  The parent runner limits the number of concurrent
jobs and also waits to launch new work until system MemAvailable is above a
configurable floor.
"""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import time
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
DEFAULT_GUARD = SCRIPT_DIR / "run_memory_guarded.py"


def read_mem_available_kib() -> int | None:
    try:
        for line in Path("/proc/meminfo").read_text(encoding="utf-8").splitlines():
            if line.startswith("MemAvailable:"):
                return int(line.split()[1])
    except OSError:
        return None
    return None


def load_commands(path: Path) -> list[str]:
    commands: list[str] = []
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        commands.append(line)
    return commands


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--commands", type=Path, required=True)
    parser.add_argument("--jobs", type=int, default=2)
    parser.add_argument("--max-tree-rss-mib", type=float, default=6_500.0)
    parser.add_argument("--min-available-mib", type=float, default=12_000.0)
    parser.add_argument(
        "--launch-available-mib",
        type=float,
        default=None,
        help=(
            "Only start a new job when MemAvailable is at least this MiB. "
            "Defaults to min-available-mib plus max-tree-rss-mib."
        ),
    )
    parser.add_argument("--poll-seconds", type=float, default=1.0)
    parser.add_argument("--guard", type=Path, default=DEFAULT_GUARD)
    parser.add_argument("--workdir", type=Path, default=None)
    parser.add_argument("--json", type=Path, default=None)
    parser.add_argument("--job-json-dir", type=Path, default=None)
    parser.add_argument(
        "--fail-fast",
        action="store_true",
        help="Do not launch more jobs after the first nonzero result.",
    )
    args = parser.parse_args()
    if args.jobs <= 0:
        parser.error("--jobs must be positive")
    if args.max_tree_rss_mib <= 0:
        parser.error("--max-tree-rss-mib must be positive")
    if args.min_available_mib <= 0:
        parser.error("--min-available-mib must be positive")
    if args.poll_seconds <= 0:
        parser.error("--poll-seconds must be positive")
    if not args.guard.exists():
        parser.error(f"memory guard not found: {args.guard}")
    return args


def start_job(
    *,
    index: int,
    command: str,
    args: argparse.Namespace,
) -> subprocess.Popen[str]:
    guard_cmd = [
        sys.executable,
        str(args.guard),
        "--max-tree-rss-mib",
        str(args.max_tree_rss_mib),
        "--min-available-mib",
        str(args.min_available_mib),
        "--poll-seconds",
        str(args.poll_seconds),
    ]
    if args.job_json_dir is not None:
        args.job_json_dir.mkdir(parents=True, exist_ok=True)
        guard_cmd.extend(["--json", str(args.job_json_dir / f"job_{index:04d}.json")])
    guard_cmd.extend(["--", "bash", "-lc", command])
    print(f"[start {index}] {command}", flush=True)
    return subprocess.Popen(
        guard_cmd,
        cwd=None if args.workdir is None else args.workdir,
        text=True,
    )


def main() -> int:
    args = parse_args()
    commands = load_commands(args.commands)
    launch_floor_mib = (
        args.launch_available_mib
        if args.launch_available_mib is not None
        else args.min_available_mib + args.max_tree_rss_mib
    )
    launch_floor_kib = int(launch_floor_mib * 1024)
    started = time.monotonic()
    next_index = 0
    active: dict[int, subprocess.Popen[str]] = {}
    results: list[dict[str, Any]] = []
    min_available_seen_kib: int | None = None
    peak_active = 0
    stop_launching = False

    while next_index < len(commands) or active:
        available_kib = read_mem_available_kib()
        if available_kib is not None:
            min_available_seen_kib = (
                available_kib
                if min_available_seen_kib is None
                else min(min_available_seen_kib, available_kib)
            )

        finished: list[int] = []
        for index, proc in active.items():
            rc = proc.poll()
            if rc is not None:
                elapsed = time.monotonic() - started
                results.append(
                    {
                        "index": index,
                        "command": commands[index],
                        "exit_code": rc,
                        "elapsed_since_start_seconds": elapsed,
                    }
                )
                status = "ok" if rc == 0 else f"exit={rc}"
                print(f"[done {index}] {status}", flush=True)
                finished.append(index)
                if rc != 0 and args.fail_fast:
                    stop_launching = True
        for index in finished:
            del active[index]

        can_launch = (
            not stop_launching
            and next_index < len(commands)
            and len(active) < args.jobs
            and (available_kib is None or available_kib >= launch_floor_kib)
        )
        while can_launch:
            active[next_index] = start_job(index=next_index, command=commands[next_index], args=args)
            next_index += 1
            peak_active = max(peak_active, len(active))
            available_kib = read_mem_available_kib()
            if available_kib is not None:
                min_available_seen_kib = (
                    available_kib
                    if min_available_seen_kib is None
                    else min(min_available_seen_kib, available_kib)
                )
            can_launch = (
                not stop_launching
                and next_index < len(commands)
                and len(active) < args.jobs
                and (available_kib is None or available_kib >= launch_floor_kib)
            )

        if (
            not active
            and not stop_launching
            and next_index < len(commands)
            and available_kib is not None
            and available_kib < launch_floor_kib
        ):
            print(
                "waiting to launch: "
                f"MemAvailable={available_kib // 1024} MiB "
                f"< launch floor {launch_floor_kib // 1024} MiB",
                flush=True,
            )

        if active or (next_index < len(commands) and not stop_launching):
            time.sleep(args.poll_seconds)

    elapsed = time.monotonic() - started
    completed = len(results)
    failed = sum(1 for result in results if result["exit_code"] != 0)
    skipped = len(commands) - completed
    payload = {
        "commands_file": str(args.commands),
        "command_count": len(commands),
        "completed": completed,
        "failed": failed,
        "skipped": skipped,
        "jobs_requested": args.jobs,
        "peak_active_jobs": peak_active,
        "max_tree_rss_mib_per_job": args.max_tree_rss_mib,
        "min_available_mib_per_job": args.min_available_mib,
        "launch_available_mib": launch_floor_mib,
        "min_available_seen_mib": (
            None if min_available_seen_kib is None else min_available_seen_kib / 1024.0
        ),
        "elapsed_seconds": elapsed,
        "results": sorted(results, key=lambda item: item["index"]),
    }
    if args.json is not None:
        write_json(args.json, payload)
    print(
        "parallel guard summary: "
        f"completed={completed}/{len(commands)} failed={failed} skipped={skipped} "
        f"elapsed={elapsed:.2f}s peak_active={peak_active}",
        file=sys.stderr,
    )
    if failed:
        return 1
    if skipped:
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
