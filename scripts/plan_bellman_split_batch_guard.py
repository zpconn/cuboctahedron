#!/usr/bin/env python3
"""Dry-run-only Bellman split batch guard.

This script is deliberately *not* a proof runner.  It does not invoke Lean,
Lake, or `run_memory_guarded.py`.  It reads the existing Bellman split planner,
checks a requested range against source budgets, allowlisted generated module
names, current memory availability, artifact freshness, and optional existing
single-path run summaries, then writes an accounting report.

Use this after crash recovery to decide whether one additional *single-path*
guarded check is even eligible.  Do not use it as proof evidence.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
from typing import Any


PLANNER_PATH = Path("scripts/plan_bellman_split_smokes.py")
DEFAULT_MIN_AVAILABLE_MIB = 36_864
TRACE_MODULE_PREFIX = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedLanguageGeneratedTraceSmoke"
)
SPLIT_MODULE_PREFIX = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingSplitCompositionSmoke"
)
GENERATED_RESIDUAL_DIR = Path("Cuboctahedron/Generated/NonIdentity/Residual")


def load_module(path: Path, name: str) -> Any:
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"could not import {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def mem_available_mib() -> int | None:
    meminfo = Path("/proc/meminfo")
    if not meminfo.exists():
        return None
    for line in meminfo.read_text(encoding="utf-8").splitlines():
        if line.startswith("MemAvailable:"):
            parts = line.split()
            if len(parts) >= 2:
                return int(parts[1]) // 1024
    return None


def path_run_summary_paths(index: int) -> list[Path]:
    prefix = Path("scripts/generated") / f"bellman_split_path_{index:02d}"
    return [
        prefix.with_name(prefix.name + "_run.json"),
        prefix.with_name(prefix.name + "_trace_only_run.json"),
        prefix.with_name(prefix.name + "_split_only_run.json"),
        prefix.with_name(prefix.name + "_missing_run.json"),
    ]


def read_path_summary(index: int) -> dict[str, Any]:
    paths = path_run_summary_paths(index)
    found: list[dict[str, Any]] = []
    trace_checked = False
    split_checked = False
    invalid: list[dict[str, str]] = []
    for path in paths:
        if not path.exists():
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except json.JSONDecodeError as exc:
            invalid.append({"path": str(path), "error": str(exc)})
            continue
        commands = data.get("commands", [])
        command_summaries = []
        for command in commands if isinstance(commands, list) else []:
            guard = command.get("guard_summary", {}) if isinstance(command, dict) else {}
            kind = command.get("kind")
            exit_code = command.get("exit_code")
            if kind == "trace" and exit_code == 0:
                trace_checked = True
            if kind == "split" and exit_code == 0:
                split_checked = True
            command_summaries.append(
                {
                    "kind": kind,
                    "exit_code": exit_code,
                    "elapsed_seconds": guard.get("elapsed_seconds"),
                    "max_tree_rss_kib": guard.get("max_tree_rss_kib"),
                    "min_available_seen_kib": guard.get("min_available_seen_kib"),
                    "killed_reason": guard.get("killed_reason"),
                }
            )
        if data.get("status") == "checked":
            trace_checked = True
            split_checked = True
        found.append(
            {
                "path": str(path),
                "status": data.get("status"),
                "guard_dir": data.get("guard_dir"),
                "commands": command_summaries,
            }
        )
    if not found and not invalid:
        return {
            "exists": False,
            "paths": [str(path) for path in paths],
            "status": None,
            "trace_checked": False,
            "split_checked": False,
        }
    if trace_checked and split_checked:
        status = "checked"
    elif trace_checked:
        status = "trace-checked"
    elif split_checked:
        status = "split-checked"
    elif invalid:
        status = "invalid-json"
    else:
        status = "not-checked"
    return {
        "exists": True,
        "paths": [str(path) for path in paths],
        "status": status,
        "trace_checked": trace_checked,
        "split_checked": split_checked,
        "summaries": found,
        "invalid": invalid,
    }


def source_path_allowed(path: str) -> bool:
    source = Path(path)
    try:
        source.relative_to(GENERATED_RESIDUAL_DIR)
    except ValueError:
        return False
    return source.suffix == ".lean"


def entry_blockers(
    entry: dict[str, Any],
    *,
    require_fresh_artifacts: bool,
    require_checked_summaries: bool,
) -> list[str]:
    blockers: list[str] = []
    index = entry["path_object_index"]
    trace = entry["trace"]
    split = entry["split"]
    if not str(trace["module"]).startswith(TRACE_MODULE_PREFIX):
        blockers.append("trace module is outside the Bellman trace allowlist")
    if not str(split["module"]).startswith(SPLIT_MODULE_PREFIX):
        blockers.append("split module is outside the Bellman split allowlist")
    if not source_path_allowed(str(trace["source_path"])):
        blockers.append("trace source path is outside generated residual directory")
    if not source_path_allowed(str(split["source_path"])):
        blockers.append("split source path is outside generated residual directory")
    if not trace["within_source_budget"]:
        blockers.append("trace source exceeds source budget")
    if not split["within_source_budget"]:
        blockers.append("split source exceeds source budget")
    if require_fresh_artifacts and not trace["artifact_status"]["fresh_olean"]:
        blockers.append("trace .olean is missing or stale")
    if require_fresh_artifacts and not split["artifact_status"]["fresh_olean"]:
        blockers.append("split .olean is missing or stale")
    summary = read_path_summary(int(index))
    entry["path_run_summary"] = summary
    if require_checked_summaries and trace["artifact_status"]["fresh_olean"]:
        if not summary.get("trace_checked"):
            blockers.append("trace checked run summary is missing")
    if require_checked_summaries and split["artifact_status"]["fresh_olean"]:
        if not summary.get("split_checked"):
            blockers.append("split checked run summary is missing")
    return blockers


def markdown_report(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    lines = [
        "# Bellman Split Batch Dry-Run Guard",
        "",
        "This report is crash-recovery accounting only. It does not invoke Lean",
        "and is not proof evidence.",
        "",
        f"- graph: `{payload['graph_json']}`",
        f"- planned range: `{payload['start_index']}..{payload['end_index']}`",
        f"- status: `{payload['status']}`",
        f"- current MemAvailable: `{payload['mem_available_mib']} MiB`",
        f"- required MemAvailable: `{payload['min_available_mib']} MiB`",
        f"- entries: `{summary['entries']}`",
        f"- blocked entries: `{summary['blocked_entries']}`",
        f"- total blockers: `{summary['total_blockers']}`",
        "",
        "| index | rank | trace KiB | split KiB | trace artifact | split artifact | run summary | blockers |",
        "| ---: | ---: | ---: | ---: | --- | --- | --- | --- |",
    ]
    for entry in payload["entries"]:
        trace = entry["trace"]
        split = entry["split"]
        run_summary = entry["path_run_summary"]
        trace_status = "fresh" if trace["artifact_status"]["fresh_olean"] else "missing/stale"
        split_status = "fresh" if split["artifact_status"]["fresh_olean"] else "missing/stale"
        blockers = "<br>".join(entry["blockers"]) if entry["blockers"] else "none"
        lines.append(
            f"| `{entry['path_object_index']}` | `{entry['rank']}` | "
            f"`{trace['planned_source_kib']}` | `{split['planned_source_kib']}` | "
            f"{trace_status} | {split_status} | `{run_summary.get('status')}` | {blockers} |"
        )
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--graph-json",
        type=Path,
        default=Path(
            "scripts/generated/"
            "nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json"
        ),
    )
    parser.add_argument("--start-index", type=int, default=0)
    parser.add_argument("--count", type=int, default=8)
    parser.add_argument("--min-available-mib", type=int, default=DEFAULT_MIN_AVAILABLE_MIB)
    parser.add_argument("--require-fresh-artifacts", action="store_true")
    parser.add_argument("--require-checked-summaries", action="store_true")
    parser.add_argument("--fail-on-blockers", action="store_true")
    parser.add_argument("--json", type=Path, default=None)
    parser.add_argument("--markdown", type=Path, default=None)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.start_index < 0:
        raise SystemExit("--start-index must be nonnegative")
    if args.count <= 0:
        raise SystemExit("--count must be positive")

    planner = load_module(PLANNER_PATH, "bellman_split_planner")
    emitter = planner.load_emitter_module()
    graph = json.loads(args.graph_json.read_text(encoding="utf-8"))
    path_objects = graph.get("graph", {}).get("path_objects", [])
    if not isinstance(path_objects, list):
        raise SystemExit(f"{args.graph_json} does not contain graph.path_objects")

    end_index = min(args.start_index + args.count, len(path_objects))
    entries = [
        planner.planned_entry(emitter, args.graph_json, index)
        for index in range(args.start_index, end_index)
    ]

    mem_mib = mem_available_mib()
    global_blockers: list[str] = []
    if mem_mib is None:
        global_blockers.append("could not read /proc/meminfo MemAvailable")
    elif mem_mib < args.min_available_mib:
        global_blockers.append("current MemAvailable is below the required floor")

    total_blockers = len(global_blockers)
    blocked_entries = 0
    for entry in entries:
        blockers = entry_blockers(
            entry,
            require_fresh_artifacts=args.require_fresh_artifacts,
            require_checked_summaries=args.require_checked_summaries,
        )
        entry["blockers"] = blockers
        if blockers:
            blocked_entries += 1
        total_blockers += len(blockers)

    status = "accepted-dry-run" if total_blockers == 0 else "rejected-dry-run"
    payload = {
        "mode": "bellman-split-batch-dry-run-guard",
        "status": status,
        "graph_json": str(args.graph_json),
        "graph_path_object_count": len(path_objects),
        "start_index": args.start_index,
        "end_index": end_index,
        "mem_available_mib": mem_mib,
        "min_available_mib": args.min_available_mib,
        "global_blockers": global_blockers,
        "options": {
            "require_fresh_artifacts": args.require_fresh_artifacts,
            "require_checked_summaries": args.require_checked_summaries,
        },
        "summary": {
            "entries": len(entries),
            "blocked_entries": blocked_entries,
            "total_blockers": total_blockers,
            "total_trace_source_kib": sum(entry["trace"]["planned_source_kib"] for entry in entries),
            "total_split_source_kib": sum(entry["split"]["planned_source_kib"] for entry in entries),
        },
        "entries": entries,
    }
    print(
        "dry-run-guard\t"
        f"status={status}\t"
        f"entries={len(entries)}\t"
        f"blocked_entries={blocked_entries}\t"
        f"total_blockers={total_blockers}\t"
        f"mem_available_mib={mem_mib}"
    )
    if args.json is not None:
        write_json(args.json, payload)
    if args.markdown is not None:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text(markdown_report(payload), encoding="utf-8")
    return 1 if args.fail_on_blockers and total_blockers else 0


if __name__ == "__main__":
    raise SystemExit(main())
