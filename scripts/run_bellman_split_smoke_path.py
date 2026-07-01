#!/usr/bin/env python3
"""Emit and optionally check one planned Bellman split-smoke path.

This is a constrained operational runner for the current Bellman split-smoke
experiment.  It accepts a path object index from the cached Bellman graph,
generates the corresponding trace shard and tiny composition root, enforces the
same source/import budgets used by the fixed smoke wrapper, and optionally runs
direct Lean under `scripts/run_memory_guarded.py`.

It is not proof evidence by itself.  Proof evidence comes from the guarded Lean
checks it records.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
import time
from typing import Any


PLANNER_PATH = Path("scripts/plan_bellman_split_smokes.py")
SAFE_WRAPPER_PATH = Path("scripts/run_bellman_safe_smoke.py")


def load_module(path: Path, name: str) -> Any:
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"could not import {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def report_path(index: int) -> Path:
    return Path("scripts/generated") / f"bellman_closed_language_generated_trace_smoke_{index:02d}.json"


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def guarded_command(
    safe: Any,
    *,
    source_path: Path,
    output_olean: Path | None,
    guard_json: Path,
) -> list[str]:
    checked_command = [
        "lake",
        "env",
        "lean",
        "-M",
        str(safe.DEFAULT_LEAN_MEMORY_MIB),
        "-j" + str(safe.DEFAULT_LEAN_THREADS),
        "-s",
        str(safe.DEFAULT_LEAN_TSTACK_KIB),
    ]
    if output_olean is not None:
        output_olean.parent.mkdir(parents=True, exist_ok=True)
        checked_command.extend(["-o", str(output_olean)])
    checked_command.append(str(source_path))
    return [
        sys.executable,
        "scripts/run_memory_guarded.py",
        "--timeout-seconds",
        str(safe.DEFAULT_TIMEOUT_SECONDS),
        "--max-tree-rss-mib",
        str(safe.DEFAULT_RSS_CAP_MIB),
        "--min-available-mib",
        str(safe.DEFAULT_MIN_AVAILABLE_MIB),
        "--hard-address-space-mib",
        str(safe.DEFAULT_HARD_ADDRESS_SPACE_MIB),
        "--poll-seconds",
        str(safe.DEFAULT_POLL_SECONDS),
        "--json",
        str(guard_json),
        "--",
        *checked_command,
    ]


def read_guard_summary(path: Path) -> dict[str, Any]:
    data = json.loads(path.read_text(encoding="utf-8"))
    return {
        "exit_code": data.get("exit_code"),
        "elapsed_seconds": data.get("elapsed_seconds"),
        "max_tree_rss_kib": data.get("max_tree_rss_kib"),
        "min_available_seen_kib": data.get("min_available_seen_kib"),
        "killed_reason": data.get("killed_reason"),
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path_object_index", type=int)
    parser.add_argument(
        "--graph-json",
        type=Path,
        default=Path(
            "scripts/generated/"
            "nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json"
        ),
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--check", action="store_true")
    parser.add_argument(
        "--json",
        type=Path,
        default=None,
        help="Run summary path. Defaults under scripts/generated.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.path_object_index < 0:
        raise SystemExit("path_object_index must be nonnegative")
    planner = load_module(PLANNER_PATH, "bellman_split_planner")
    safe = load_module(SAFE_WRAPPER_PATH, "bellman_safe_wrapper")
    emitter = planner.load_emitter_module()
    entry = planner.planned_entry(emitter, args.graph_json, args.path_object_index)
    if not entry["trace"]["within_source_budget"]:
        raise SystemExit("planned trace source exceeds budget")
    if not entry["split"]["within_source_budget"]:
        raise SystemExit("planned split source exceeds budget")

    trace_text, source = planner.render_trace_source(
        emitter,
        args.graph_json,
        args.path_object_index,
    )
    split_text = planner.render_split_source(args.path_object_index)
    trace_source = Path(entry["trace"]["source_path"])
    split_source = Path(entry["split"]["source_path"])
    write_text(trace_source, trace_text)
    write_text(split_source, split_text)

    trace_report = {
        "mode": "bellman-closed-language-trace-smoke",
        "name": planner.name_for(args.path_object_index),
        "namespace": entry["trace"]["module"],
        "output": str(trace_source),
        "concrete_local_axis": True,
        "include_axis_forces_bridge": False,
        "proof_strategy": (
            "literal schedule/square-gap traces plus explicit local-axis "
            "state/dot facts at the PairSignLanguageAtRank boundary"
        ),
        "source": {
            **{key: value for key, value in source.items() if key != "faces"},
            "kind": "bellman-graph-path-object",
        },
        "faces": source["faces"],
        "face_count": len(source["faces"]),
    }
    trace_report_path = report_path(args.path_object_index)
    write_json(trace_report_path, trace_report)

    trace_target = {
        "module": entry["trace"]["module"],
        "path": str(trace_source),
        "description": f"planned Bellman trace shard {args.path_object_index}",
        "max_local_imports": entry["trace"]["import_budget"],
        "max_target_source_kib": entry["trace"]["source_budget_kib"],
    }
    split_target = {
        "module": entry["split"]["module"],
        "path": str(split_source),
        "description": f"planned Bellman split root {args.path_object_index}",
        "max_local_imports": entry["split"]["import_budget"],
        "max_target_source_kib": entry["split"]["source_budget_kib"],
    }

    trace_preflight = safe.local_import_preflight(str(trace_source))
    trace_budget = safe.enforce_target_budget(trace_target, trace_preflight)
    commands: list[dict[str, Any]] = []
    status = "generated"
    rc = 0

    if args.check:
        timestamp = time.strftime("%Y%m%d_%H%M%S")
        trace_guard_json = Path("scripts/generated") / (
            f"bellman_split_path_{args.path_object_index:02d}_trace_{timestamp}.guard.json"
        )
        trace_cmd = guarded_command(
            safe,
            source_path=trace_source,
            output_olean=Path(entry["trace"]["olean_path"]),
            guard_json=trace_guard_json,
        )
        commands.append({"kind": "trace", "command": trace_cmd, "guard_json": str(trace_guard_json)})
        if not args.dry_run:
            trace_rc = subprocess.run(trace_cmd, check=False).returncode
            commands[-1]["exit_code"] = trace_rc
            commands[-1]["guard_summary"] = read_guard_summary(trace_guard_json)
            if trace_rc != 0:
                status = "trace-check-failed"
                rc = trace_rc
        if rc == 0:
            if args.dry_run:
                split_preflight = {
                    "deferred": True,
                    "reason": "trace .olean is produced by the preceding dry-run command",
                }
                split_budget = {
                    "max_local_imports": entry["split"]["import_budget"],
                    "max_target_source_kib": entry["split"]["source_budget_kib"],
                    "target_source_kib": entry["split"]["planned_source_kib"],
                    "deferred_import_preflight": True,
                }
            else:
                split_preflight = safe.local_import_preflight(str(split_source))
                split_budget = safe.enforce_target_budget(split_target, split_preflight)
            timestamp = time.strftime("%Y%m%d_%H%M%S")
            split_guard_json = Path("scripts/generated") / (
                f"bellman_split_path_{args.path_object_index:02d}_split_{timestamp}.guard.json"
            )
            split_cmd = guarded_command(
                safe,
                source_path=split_source,
                output_olean=Path(entry["split"]["olean_path"]),
                guard_json=split_guard_json,
            )
            commands.append({"kind": "split", "command": split_cmd, "guard_json": str(split_guard_json)})
            if not args.dry_run:
                split_rc = subprocess.run(split_cmd, check=False).returncode
                commands[-1]["exit_code"] = split_rc
                commands[-1]["guard_summary"] = read_guard_summary(split_guard_json)
                if split_rc != 0:
                    status = "split-check-failed"
                    rc = split_rc
            if rc == 0 and not args.dry_run:
                status = "checked"
        else:
            split_budget = None
    else:
        split_budget = None

    summary_path = (
        args.json
        if args.json is not None
        else Path("scripts/generated") / f"bellman_split_path_{args.path_object_index:02d}_run.json"
    )
    payload = {
        "mode": "bellman-split-smoke-path-run",
        "status": "dry-run" if args.dry_run else status,
        "path_object_index": args.path_object_index,
        "graph_json": str(args.graph_json),
        "trace_report": str(trace_report_path),
        "trace": {
            **entry["trace"],
            "preflight": {
                "local_import_count": trace_preflight["local_import_count"],
                "checked_olean_count": trace_preflight["checked_olean_count"],
            },
            "budget": trace_budget,
        },
        "split": {
            **entry["split"],
            "preflight": split_preflight if args.check else None,
            "budget": split_budget,
        },
        "commands": commands,
    }
    write_json(summary_path, payload)
    print(
        f"path={args.path_object_index} status={payload['status']} "
        f"trace={entry['trace']['planned_source_kib']}KiB "
        f"split={entry['split']['planned_source_kib']}KiB "
        f"summary={summary_path}"
    )
    for command in commands:
        print(command["kind"] + "\t" + " ".join(command["command"]))
    return rc


if __name__ == "__main__":
    raise SystemExit(main())
