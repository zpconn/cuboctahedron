#!/usr/bin/env python3
"""Safely build AP16DJ generated batch targets one at a time.

This is operational safety tooling, not proof evidence.  AP16DJ can emit a
five-signature compact Walsh-cover batch, but those generated modules are too
heavy to hand to an ordinary broad `lake build`.  This runner mirrors AP16DI:

1. optionally emit the AP16DJ batch;
2. read the generated target list;
3. build each target under a process-tree RSS cap;
4. stop immediately on the first failure.

Use `--plan-only` first.  Use `--emit` only for the bounded batch selected by
`scripts/plan_ap16dj_compact_walsh_batch.py`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import sys
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO = SCRIPT_DIR.parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16dj_compact_walsh_batch import (  # noqa: E402
    DEFAULT_REPORT as DEFAULT_GENERATION_REPORT,
    main as generate_ap16dj_main,
)


DEFAULT_JSON = Path("/tmp/ap16dj_serial_guarded/summary.json")


def load_generation_report(path: Path) -> dict[str, Any]:
    if not path.exists():
        raise SystemExit(
            f"missing {path}; run scripts/generate_ap16dj_compact_walsh_batch.py first"
        )
    return json.loads(path.read_text(encoding="utf-8"))


def run_generator_emit() -> None:
    old_argv = sys.argv[:]
    try:
        sys.argv = ["generate_ap16dj_compact_walsh_batch.py", "--emit"]
        generate_ap16dj_main()
    finally:
        sys.argv = old_argv


def run_guarded_target(
    target: str,
    *,
    index: int,
    out_dir: Path,
    rss_cap_mib: int,
    available_floor_mib: int,
    timeout_seconds: int,
    poll_seconds: float,
) -> dict[str, Any]:
    out_dir.mkdir(parents=True, exist_ok=True)
    target_json = out_dir / f"{index:03d}_{target.split('.')[-1]}.json"
    command = [
        "python3",
        "scripts/run_memory_guarded.py",
        "--max-tree-rss-mib",
        str(rss_cap_mib),
        "--min-available-mib",
        str(available_floor_mib),
        "--poll-seconds",
        str(poll_seconds),
        "--json",
        str(target_json),
        "--",
        "bash",
        "-lc",
        (
            "export LEAN_NUM_THREADS=1; "
            "export LAKE_JOBS=1; "
            f"timeout {timeout_seconds}s lake build {target}"
        ),
    ]
    subprocess.run(command, cwd=REPO, check=False)
    if target_json.exists():
        payload = json.loads(target_json.read_text(encoding="utf-8"))
    else:
        payload = {
            "exit_code": None,
            "killed_reason": "memory guard did not write a summary",
        }
    payload["target"] = target
    payload["target_json"] = str(target_json)
    return payload


def write_summary(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def select_targets(args: argparse.Namespace, targets: list[dict[str, Any]]) -> list[dict[str, Any]]:
    selected = list(targets)
    if args.target_kind:
        kinds = set(args.target_kind)
        selected = [target for target in selected if target.get("kind") in kinds]
    if args.module_contains:
        needles = list(args.module_contains)
        selected = [
            target
            for target in selected
            if all(needle in target.get("module", "") for needle in needles)
        ]
    if args.target_index:
        indexes = set(args.target_index)
        selected = [target for index, target in enumerate(selected) if index in indexes]
    if args.max_targets is not None:
        selected = selected[: args.max_targets]
    return selected


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--emit",
        action="store_true",
        help="Emit AP16DJ Lean artifacts before planning/building.",
    )
    parser.add_argument(
        "--plan-only",
        action="store_true",
        help="Only write/print the target plan; do not run Lake.",
    )
    parser.add_argument(
        "--generation-report",
        type=Path,
        default=DEFAULT_GENERATION_REPORT,
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=DEFAULT_JSON,
        help="Summary JSON path.",
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("/tmp/ap16dj_serial_guarded/targets"),
    )
    parser.add_argument("--rss-cap-mib", type=int, default=5000)
    parser.add_argument("--available-floor-mib", type=int, default=12000)
    parser.add_argument("--timeout-seconds", type=int, default=600)
    parser.add_argument("--poll-seconds", type=float, default=0.5)
    parser.add_argument(
        "--max-targets",
        type=int,
        default=None,
        help="Optional prefix of targets to build for a very small smoke.",
    )
    parser.add_argument(
        "--target-kind",
        action="append",
        default=[],
        help="Only build targets of this kind. May be repeated.",
    )
    parser.add_argument(
        "--module-contains",
        action="append",
        default=[],
        help="Only build targets whose module name contains this substring. May be repeated.",
    )
    parser.add_argument(
        "--target-index",
        action="append",
        type=int,
        default=[],
        help="Only build this zero-based index after other filters. May be repeated.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.emit:
        run_generator_emit()
    report = load_generation_report(args.generation_report)
    targets = select_targets(args, list(report["targets"]))
    summary: dict[str, Any] = {
        "phase": "Phase 6Z.6K.8AP.16DJ",
        "description": "Serial guarded AP16DJ batch build plan",
        "trusted_as_final_generated_coverage": False,
        "generation_report": str(args.generation_report),
        "emitted_before_build": bool(args.emit),
        "rss_cap_mib": args.rss_cap_mib,
        "available_floor_mib": args.available_floor_mib,
        "timeout_seconds": args.timeout_seconds,
        "target_count": len(targets),
        "filters": {
            "target_kind": args.target_kind,
            "module_contains": args.module_contains,
            "target_index": args.target_index,
            "max_targets": args.max_targets,
        },
        "targets": targets,
        "results": [],
        "status": "plan_only" if args.plan_only else "running",
    }
    if args.plan_only:
        write_summary(args.json, summary)
        print(json.dumps(summary, indent=2, sort_keys=True))
        return 0

    for index, target in enumerate(targets):
        result = run_guarded_target(
            target["module"],
            index=index,
            out_dir=args.out_dir,
            rss_cap_mib=args.rss_cap_mib,
            available_floor_mib=args.available_floor_mib,
            timeout_seconds=args.timeout_seconds,
            poll_seconds=args.poll_seconds,
        )
        result["kind"] = target["kind"]
        if "label" in target:
            result["label"] = target["label"]
        summary["results"].append(result)
        write_summary(args.json, summary)
        if result.get("exit_code") != 0:
            summary["status"] = "failed_or_guard_stopped"
            summary["failed_target"] = target
            write_summary(args.json, summary)
            print(json.dumps(summary, indent=2, sort_keys=True))
            return 1

    summary["status"] = "passed"
    write_summary(args.json, summary)
    print(json.dumps(summary, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
