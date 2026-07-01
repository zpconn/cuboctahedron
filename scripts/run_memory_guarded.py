#!/usr/bin/env python3
"""Run a command with a simple process-tree memory guard.

This helper is operational safety tooling, not proof evidence.  It is intended
for long Lean/Python diagnostics where a bad scaling assumption could otherwise
push the machine into swap or OOM.  The wrapped command runs in a fresh process
group; if its process-tree RSS exceeds the configured cap, or if system
MemAvailable drops below the configured floor, the whole group is terminated.
"""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import resource
import signal
import subprocess
import sys
import time
from typing import Any


PAGE_SIZE = os.sysconf("SC_PAGE_SIZE")


def read_mem_available_kib() -> int | None:
    try:
        for line in Path("/proc/meminfo").read_text(encoding="utf-8").splitlines():
            if line.startswith("MemAvailable:"):
                return int(line.split()[1])
    except OSError:
        return None
    return None


def read_rss_kib(pid: int) -> int:
    try:
        fields = Path(f"/proc/{pid}/statm").read_text(encoding="utf-8").split()
    except OSError:
        return 0
    if len(fields) < 2:
        return 0
    return int(fields[1]) * PAGE_SIZE // 1024


def read_children(pid: int) -> list[int]:
    task_dir = Path(f"/proc/{pid}/task")
    children: set[int] = set()
    try:
        tasks = list(task_dir.iterdir())
    except OSError:
        return []
    for task in tasks:
        try:
            text = (task / "children").read_text(encoding="utf-8")
        except OSError:
            continue
        for item in text.split():
            try:
                children.add(int(item))
            except ValueError:
                pass
    return sorted(children)


def process_tree(root: int) -> list[int]:
    seen: set[int] = set()
    stack = [root]
    while stack:
        pid = stack.pop()
        if pid in seen:
            continue
        if not Path(f"/proc/{pid}").exists():
            continue
        seen.add(pid)
        stack.extend(read_children(pid))
    return sorted(seen)


def terminate_group(pgid: int, *, grace_seconds: float) -> None:
    try:
        os.killpg(pgid, signal.SIGTERM)
    except ProcessLookupError:
        return
    deadline = time.monotonic() + grace_seconds
    while time.monotonic() < deadline:
        try:
            os.killpg(pgid, 0)
        except ProcessLookupError:
            return
        time.sleep(0.1)
    try:
        os.killpg(pgid, signal.SIGKILL)
    except ProcessLookupError:
        return


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--max-tree-rss-mib",
        type=float,
        default=40_000.0,
        help="Terminate if wrapped process-tree RSS exceeds this MiB cap.",
    )
    parser.add_argument(
        "--min-available-mib",
        type=float,
        default=2_048.0,
        help="Terminate if system MemAvailable falls below this MiB floor.",
    )
    parser.add_argument(
        "--poll-seconds",
        type=float,
        default=1.0,
        help="Polling interval.",
    )
    parser.add_argument(
        "--grace-seconds",
        type=float,
        default=5.0,
        help="Grace period between SIGTERM and SIGKILL.",
    )
    parser.add_argument(
        "--timeout-seconds",
        type=float,
        default=None,
        help="Terminate if wall-clock runtime exceeds this many seconds.",
    )
    parser.add_argument(
        "--hard-address-space-mib",
        type=float,
        default=None,
        help=(
            "Optional inherited RLIMIT_AS cap in MiB. This is a hard OS limit "
            "on each process's virtual address space; it may reject targets "
            "that reserve much more virtual memory than RSS, but prevents "
            "runaway allocation from reaching host OOM."
        ),
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=None,
        help="Optional path for a run summary JSON.",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="Print periodic RSS/availability samples to stderr.",
    )
    parser.add_argument(
        "command",
        nargs=argparse.REMAINDER,
        help="Command to run, usually after a literal -- separator.",
    )
    args = parser.parse_args()
    if args.command and args.command[0] == "--":
        args.command = args.command[1:]
    if not args.command:
        parser.error("missing command to run")
    if args.poll_seconds <= 0:
        parser.error("--poll-seconds must be positive")
    if args.timeout_seconds is not None and args.timeout_seconds <= 0:
        parser.error("--timeout-seconds must be positive when provided")
    if args.hard_address_space_mib is not None and args.hard_address_space_mib <= 0:
        parser.error("--hard-address-space-mib must be positive when provided")
    return args


def make_preexec(hard_address_space_mib: float | None):
    def preexec() -> None:
        os.setsid()
        if hard_address_space_mib is not None:
            hard_bytes = int(hard_address_space_mib * 1024 * 1024)
            resource.setrlimit(resource.RLIMIT_AS, (hard_bytes, hard_bytes))

    return preexec


def main() -> int:
    args = parse_args()
    max_tree_rss_kib = int(args.max_tree_rss_mib * 1024)
    min_available_kib = int(args.min_available_mib * 1024)
    started = time.monotonic()
    proc = subprocess.Popen(
        args.command,
        preexec_fn=make_preexec(args.hard_address_space_mib),
    )
    pgid = os.getpgid(proc.pid)
    peak_tree_rss_kib = 0
    min_available_seen_kib: int | None = None
    killed_reason: str | None = None

    try:
        while True:
            rc = proc.poll()
            pids = process_tree(proc.pid)
            tree_rss_kib = sum(read_rss_kib(pid) for pid in pids)
            peak_tree_rss_kib = max(peak_tree_rss_kib, tree_rss_kib)
            available_kib = read_mem_available_kib()
            if available_kib is not None:
                min_available_seen_kib = (
                    available_kib
                    if min_available_seen_kib is None
                    else min(min_available_seen_kib, available_kib)
                )
            if args.verbose:
                avail = "unknown" if available_kib is None else f"{available_kib // 1024} MiB"
                print(
                    f"guard: pids={len(pids)} tree_rss={tree_rss_kib // 1024} MiB "
                    f"available={avail}",
                    file=sys.stderr,
                )
            if tree_rss_kib > max_tree_rss_kib:
                killed_reason = (
                    f"process-tree RSS {tree_rss_kib // 1024} MiB exceeded "
                    f"{max_tree_rss_kib // 1024} MiB cap"
                )
            elif available_kib is not None and available_kib < min_available_kib:
                killed_reason = (
                    f"MemAvailable {available_kib // 1024} MiB fell below "
                    f"{min_available_kib // 1024} MiB floor"
                )
            elif (
                args.timeout_seconds is not None
                and time.monotonic() - started > args.timeout_seconds
            ):
                killed_reason = (
                    f"wall-clock runtime exceeded "
                    f"{args.timeout_seconds:.2f}s timeout"
                )
            if killed_reason is not None:
                print(f"memory guard terminating command: {killed_reason}", file=sys.stderr)
                terminate_group(pgid, grace_seconds=args.grace_seconds)
                rc = proc.wait()
                break
            if rc is not None:
                break
            time.sleep(args.poll_seconds)
    except KeyboardInterrupt:
        killed_reason = "interrupted"
        terminate_group(pgid, grace_seconds=args.grace_seconds)
        rc = proc.wait()

    elapsed = time.monotonic() - started
    payload = {
        "command": args.command,
        "elapsed_seconds": elapsed,
        "exit_code": rc,
        "killed_reason": killed_reason,
        "max_tree_rss_kib": peak_tree_rss_kib,
        "min_available_seen_kib": min_available_seen_kib,
        "max_tree_rss_mib": peak_tree_rss_kib / 1024.0,
        "min_available_seen_mib": (
            None if min_available_seen_kib is None else min_available_seen_kib / 1024.0
        ),
        "rss_cap_mib": args.max_tree_rss_mib,
        "available_floor_mib": args.min_available_mib,
        "timeout_seconds": args.timeout_seconds,
        "hard_address_space_mib": args.hard_address_space_mib,
    }
    if args.json is not None:
        write_json(args.json, payload)
    print(
        "memory guard summary: "
        f"exit={rc} elapsed={elapsed:.2f}s "
        f"peak_tree_rss={peak_tree_rss_kib // 1024} MiB "
        f"hard_as="
        f"{'none' if args.hard_address_space_mib is None else str(int(args.hard_address_space_mib)) + ' MiB'} "
        f"min_available="
        f"{'unknown' if min_available_seen_kib is None else str(min_available_seen_kib // 1024) + ' MiB'}",
        file=sys.stderr,
    )
    if killed_reason is not None:
        if killed_reason == "interrupted":
            return 130
        if killed_reason.startswith("wall-clock runtime exceeded"):
            return 124
        return 137
    return int(rc if rc is not None else 1)


if __name__ == "__main__":
    raise SystemExit(main())
