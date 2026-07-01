#!/usr/bin/env python3
"""Select one Bellman split path candidate without invoking Lean.

This is a crash-recovery planning helper.  It scans a bounded range of cached
Bellman path objects, applies the dry-run guard's memory/source/allowlist
checks, and recommends at most one candidate for a future single-path guarded
check.  It never imports generated Lean modules and never runs Lake, Lean, or
`run_memory_guarded.py`.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
from typing import Any


PLANNER_PATH = Path("scripts/plan_bellman_split_smokes.py")
BATCH_GUARD_PATH = Path("scripts/plan_bellman_split_batch_guard.py")


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


def candidate_reason(entry: dict[str, Any]) -> str:
    trace_fresh = entry["trace"]["artifact_status"]["fresh_olean"]
    split_fresh = entry["split"]["artifact_status"]["fresh_olean"]
    summary = entry.get("path_run_summary", {})
    if summary.get("status") == "checked" and trace_fresh and split_fresh:
        return "already checked by current path-run summary and fresh artifacts"
    if trace_fresh and split_fresh:
        return "fresh artifacts exist, but current path-run summary is missing or stale"
    if trace_fresh and not split_fresh:
        return "trace artifact is fresh; split artifact is missing or stale"
    if not trace_fresh and split_fresh:
        return "split artifact is fresh; trace artifact is missing or stale"
    return "trace and split artifacts are missing or stale"


def markdown_report(payload: dict[str, Any]) -> str:
    selected = payload["selected"]
    lines = [
        "# Bellman Split Single-Path Candidate",
        "",
        "This report is planning/accounting only. It does not invoke Lean.",
        "",
        f"- graph: `{payload['graph_json']}`",
        f"- scanned range: `{payload['start_index']}..{payload['end_index']}`",
        f"- status: `{payload['status']}`",
        f"- current MemAvailable: `{payload['mem_available_mib']} MiB`",
        f"- required MemAvailable: `{payload['min_available_mib']} MiB`",
        "",
    ]
    if selected is None:
        lines.append("No eligible unchecked or stale candidate was selected.")
    else:
        lines.extend(
            [
                "Selected candidate:",
                "",
                f"- index: `{selected['path_object_index']}`",
                f"- rank: `{selected['rank']}`",
                f"- reason: {selected['candidate_reason']}",
                f"- trace module: `{selected['trace']['module']}`",
                f"- split module: `{selected['split']['module']}`",
                f"- trace source: `{selected['trace']['planned_source_kib']} KiB`",
                f"- split source: `{selected['split']['planned_source_kib']} KiB`",
            ]
        )
    lines.extend(
        [
            "",
            "| index | rank | trace KiB | split KiB | trace artifact | split artifact | run summary | candidate reason |",
            "| ---: | ---: | ---: | ---: | --- | --- | --- | --- |",
        ]
    )
    for entry in payload["entries"]:
        trace = entry["trace"]
        split = entry["split"]
        run_summary = entry["path_run_summary"]
        trace_status = "fresh" if trace["artifact_status"]["fresh_olean"] else "missing/stale"
        split_status = "fresh" if split["artifact_status"]["fresh_olean"] else "missing/stale"
        lines.append(
            f"| `{entry['path_object_index']}` | `{entry['rank']}` | "
            f"`{trace['planned_source_kib']}` | `{split['planned_source_kib']}` | "
            f"{trace_status} | {split_status} | `{run_summary.get('status')}` | "
            f"{entry['candidate_reason']} |"
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
    parser.add_argument("--count", type=int, default=37)
    parser.add_argument("--min-available-mib", type=int, default=36_864)
    parser.add_argument("--skip-fresh-artifacts", action="store_true")
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
    guard = load_module(BATCH_GUARD_PATH, "bellman_split_batch_guard")
    emitter = planner.load_emitter_module()
    graph = json.loads(args.graph_json.read_text(encoding="utf-8"))
    path_objects = graph.get("graph", {}).get("path_objects", [])
    if not isinstance(path_objects, list):
        raise SystemExit(f"{args.graph_json} does not contain graph.path_objects")
    end_index = min(args.start_index + args.count, len(path_objects))
    mem_mib = guard.mem_available_mib()

    entries = []
    selected = None
    for index in range(args.start_index, end_index):
        entry = planner.planned_entry(emitter, args.graph_json, index)
        blockers = guard.entry_blockers(
            entry,
            require_fresh_artifacts=False,
            require_checked_summaries=False,
        )
        if mem_mib is None or mem_mib < args.min_available_mib:
            blockers.append("current MemAvailable is below the required floor")
        entry["blockers"] = blockers
        entry["candidate_reason"] = candidate_reason(entry)
        trace_fresh = entry["trace"]["artifact_status"]["fresh_olean"]
        split_fresh = entry["split"]["artifact_status"]["fresh_olean"]
        summary = entry["path_run_summary"]
        already_current = summary.get("status") == "checked" and trace_fresh and split_fresh
        needs_work = not already_current
        if args.skip_fresh_artifacts and trace_fresh and split_fresh:
            needs_work = False
        if selected is None and not blockers and needs_work:
            selected = entry
        entries.append(entry)

    status = "selected" if selected is not None else "no-candidate"
    payload = {
        "mode": "bellman-split-single-path-candidate",
        "status": status,
        "graph_json": str(args.graph_json),
        "graph_path_object_count": len(path_objects),
        "start_index": args.start_index,
        "end_index": end_index,
        "mem_available_mib": mem_mib,
        "min_available_mib": args.min_available_mib,
        "options": {"skip_fresh_artifacts": args.skip_fresh_artifacts},
        "selected": selected,
        "entries": entries,
    }
    print(
        "single-path-candidate\t"
        f"status={status}\t"
        f"selected={None if selected is None else selected['path_object_index']}\t"
        f"mem_available_mib={mem_mib}"
    )
    if args.json is not None:
        write_json(args.json, payload)
    if args.markdown is not None:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text(markdown_report(payload), encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
