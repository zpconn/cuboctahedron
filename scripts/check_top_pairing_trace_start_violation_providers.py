#!/usr/bin/env python3
"""Build generated top-pairing trace providers under memory guards.

This is a build harness, not proof evidence.  Each provider is checked by Lean
through Lake.  The harness only schedules those checks with bounded parallelism
and records the memory-guard JSON/log files.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import time
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
GENERATED_DIR = REPO_ROOT / "scripts" / "generated"
RUN_MEMORY_GUARDED = REPO_ROOT / "scripts" / "run_memory_guarded.py"
BASE_MODULE = "Cuboctahedron.Generated.NonIdentity.Residual"
MODULE_STEM = "BellmanTopPairingTrace{num}StartViolationProvider"


def trace_ids() -> list[str]:
    return [f"t{i:03d}" for i in range(37)]


def module_for(trace_id: str) -> str:
    return f"{BASE_MODULE}.{MODULE_STEM.format(num=trace_id[1:])}"


def json_path(trace_id: str) -> Path:
    return GENERATED_DIR / f"trace{trace_id[1:]}_provider_lake_guard.json"


def log_path(trace_id: str) -> Path:
    return GENERATED_DIR / f"trace{trace_id[1:]}_provider_lake_guard.log"


def already_passed(trace_id: str) -> bool:
    path = json_path(trace_id)
    if not path.exists():
        return False
    try:
        payload = json.loads(path.read_text())
    except json.JSONDecodeError:
        return False
    return payload.get("exit_code") == 0


def launch(trace_id: str, args: argparse.Namespace) -> subprocess.Popen[bytes]:
    GENERATED_DIR.mkdir(parents=True, exist_ok=True)
    log = log_path(trace_id).open("wb")
    cmd = [
        sys.executable,
        str(RUN_MEMORY_GUARDED),
        "--max-tree-rss-mib",
        str(args.max_tree_rss_mib),
        "--min-available-mib",
        str(args.min_available_mib),
        "--timeout-seconds",
        str(args.timeout_seconds),
        "--json",
        str(json_path(trace_id)),
        "--",
        "lake",
        "build",
        module_for(trace_id),
    ]
    print(f"starting {trace_id}: {' '.join(cmd)}", flush=True)
    proc = subprocess.Popen(
        cmd,
        cwd=REPO_ROOT,
        stdout=log,
        stderr=subprocess.STDOUT,
    )
    # Keep the log file alive for the child, but close our duplicate handle.
    log.close()
    return proc


def read_result(trace_id: str) -> dict[str, object]:
    path = json_path(trace_id)
    if not path.exists():
        return {
            "trace_id": trace_id,
            "module": module_for(trace_id),
            "json": str(path),
            "log": str(log_path(trace_id)),
            "status": "missing-json",
        }
    payload = json.loads(path.read_text())
    return {
        "trace_id": trace_id,
        "module": module_for(trace_id),
        "json": str(path),
        "log": str(log_path(trace_id)),
        "status": "passed" if payload.get("exit_code") == 0 else "failed",
        "exit_code": payload.get("exit_code"),
        "elapsed_seconds": payload.get("elapsed_seconds"),
        "max_tree_rss_mib": payload.get("max_tree_rss_mib"),
        "min_available_seen_mib": payload.get("min_available_seen_mib"),
        "killed_reason": payload.get("killed_reason"),
    }


def write_summary(report: Path, results: list[dict[str, object]]) -> None:
    report.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "generated_by": Path(__file__).name,
        "count": len(results),
        "passed": sum(1 for item in results if item.get("status") == "passed"),
        "failed": sum(1 for item in results if item.get("status") != "passed"),
        "results": results,
    }
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    lines = [
        "# Top-Pairing Trace Provider Guarded Builds",
        "",
        f"- providers: `{payload['count']}`",
        f"- passed: `{payload['passed']}`",
        f"- failed: `{payload['failed']}`",
        "",
        "| trace | status | elapsed s | peak MiB | min available MiB | log |",
        "| --- | --- | ---: | ---: | ---: | --- |",
    ]
    for item in results:
        elapsed = item.get("elapsed_seconds")
        peak = item.get("max_tree_rss_mib")
        min_avail = item.get("min_available_seen_mib")
        lines.append(
            "| `{trace}` | `{status}` | {elapsed} | {peak} | {min_avail} | `{log}` |".format(
                trace=item["trace_id"],
                status=item["status"],
                elapsed="" if elapsed is None else f"{float(elapsed):.2f}",
                peak="" if peak is None else f"{float(peak):.0f}",
                min_avail="" if min_avail is None else f"{float(min_avail):.0f}",
                log=item["log"],
            )
        )
    lines.append("")
    report.with_suffix(".md").write_text("\n".join(lines))


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--max-tree-rss-mib", type=int, default=12000)
    parser.add_argument("--min-available-mib", type=int, default=4096)
    parser.add_argument("--timeout-seconds", type=int, default=300)
    parser.add_argument(
        "--report",
        type=Path,
        default=GENERATED_DIR / "trace_provider_lake_guard_summary.json",
    )
    parser.add_argument("--only-missing", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.jobs < 1:
        raise SystemExit("--jobs must be positive")

    pending = [
        trace_id for trace_id in trace_ids()
        if not args.only_missing or not already_passed(trace_id)
    ]
    running: dict[str, subprocess.Popen[bytes]] = {}
    completed: list[str] = []
    failed = False

    while pending or running:
        while pending and len(running) < args.jobs:
            trace_id = pending.pop(0)
            running[trace_id] = launch(trace_id, args)
        time.sleep(1)
        for trace_id, proc in list(running.items()):
            code = proc.poll()
            if code is None:
                continue
            running.pop(trace_id)
            completed.append(trace_id)
            result = read_result(trace_id)
            print(
                "finished {trace}: {status}, elapsed={elapsed}, peak={peak} MiB".format(
                    trace=trace_id,
                    status=result.get("status"),
                    elapsed=result.get("elapsed_seconds"),
                    peak=result.get("max_tree_rss_mib"),
                ),
                flush=True,
            )
            if code != 0 or result.get("status") != "passed":
                failed = True
                pending.clear()
                break

    results = [read_result(trace_id) for trace_id in trace_ids()]
    write_summary(args.report, results)
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
