#!/usr/bin/env python3
"""Plan AP.16 candidate extraction from a density-map diagnostic.

This script is scheduling tooling, not proof evidence.  It consumes a compact
`run_ap16_density_map.py` aggregate and emits a prioritized manifest for future
heavyweight positive-survivor extraction.  The manifest deliberately contains
guarded one-window commands: they are easy to checkpoint, easy to retry, and
avoid accidentally turning a sampled density diagnostic into a broad uncapped
rank sweep.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_DENSITY = Path("scripts/generated/phase6z6k8ap16ah_density_grid.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16aj_candidate_extraction_plan.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def shell_join(words: list[str]) -> str:
    quoted: list[str] = []
    for word in words:
        if word and all(ch.isalnum() or ch in "._/:=-" for ch in word):
            quoted.append(word)
        else:
            quoted.append("'" + word.replace("'", "'\"'\"'") + "'")
    return " ".join(quoted)


def guarded_command(
    *,
    row: dict[str, Any],
    batch_index: int,
    args: argparse.Namespace,
) -> str:
    start, end = row["range"]
    phase = f"{args.phase}.batch{batch_index:03d}"
    checkpoint_dir = f"{args.checkpoint_prefix}/batch_{batch_index:03d}_{start}_{end}"
    json_path = f"{args.output_prefix}_batch{batch_index:03d}.json"
    md_path = f"{args.output_prefix}_batch{batch_index:03d}.md"
    command = [
        "python3",
        "scripts/run_memory_guarded.py",
        "--max-tree-rss-mib",
        str(args.max_tree_rss_mib),
        "--min-available-mib",
        str(args.min_available_mib),
        "--poll-seconds",
        str(args.poll_seconds),
        "--json",
        f"{args.guard_json_prefix}_batch{batch_index:03d}.json",
        "--",
        "python3",
        "scripts/run_ap16_positive_survivor_census.py",
        "--no-resume",
        "--rank-start",
        str(start),
        "--limit",
        str(end - start),
        "--window-size",
        str(end - start),
        "--stride",
        str(end - start),
        "--max-windows",
        "1",
        "--workers",
        str(args.workers),
        "--checkpoint-dir",
        checkpoint_dir,
        "--json",
        json_path,
        "--md",
        md_path,
        "--phase",
        phase,
    ]
    return shell_join(command)


def make_plan(args: argparse.Namespace) -> dict[str, Any]:
    density = read_json(args.density_json)
    rows = list(density.get("windows", []))
    rows.sort(
        key=lambda row: (
            -int(row.get("good_direction_masks", 0)),
            -int(row.get("identity_words", 0)),
            int(row["range"][0]),
        )
    )
    if args.top_windows is not None:
        rows = rows[:args.top_windows]
    batches: list[dict[str, Any]] = []
    for index, row in enumerate(rows):
        start, end = row["range"]
        batches.append({
            "batch": index,
            "range": [start, end],
            "density_good_direction_masks": row.get("good_direction_masks", 0),
            "density_identity_words": row.get("identity_words", 0),
            "density_seconds": row.get("elapsed_seconds", 0.0),
            "density_rss_kib": row.get("max_rss_kib", 0),
            "trusted_as_proof": False,
            "command": guarded_command(row=row, batch_index=index, args=args),
        })
    return {
        "schema_version": 1,
        "mode": "ap16_candidate_extraction_plan",
        "phase": args.phase,
        "trusted_as_proof": False,
        "density_json": str(args.density_json),
        "selected_window_count": len(batches),
        "selected_rank_count": sum(item["range"][1] - item["range"][0] for item in batches),
        "selected_density_good_direction_masks": sum(
            int(item["density_good_direction_masks"]) for item in batches
        ),
        "selected_density_identity_words": sum(
            int(item["density_identity_words"]) for item in batches
        ),
        "guard": {
            "max_tree_rss_mib": args.max_tree_rss_mib,
            "min_available_mib": args.min_available_mib,
            "poll_seconds": args.poll_seconds,
        },
        "workers_per_batch": args.workers,
        "decision": {
            "status": "candidate-extraction-plan-complete",
            "notes": [
                "diagnostic scheduling only: not Lean proof evidence",
                "uses one guarded command per sampled density window",
                "does not imply the sampled windows cover all pair-word ranks",
                "run selected commands only after confirming no broad Lean build is active",
            ],
        },
        "batches": batches,
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} AP.16 Candidate Extraction Plan",
        "",
        "This is scheduling telemetry only.  It is not proof evidence and emits no Lean.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Density input: `{payload['density_json']}`",
        f"- Selected windows: `{payload['selected_window_count']}`",
        f"- Selected sampled ranks: `{payload['selected_rank_count']}`",
        f"- Selected density GoodDirection masks: `{payload['selected_density_good_direction_masks']}`",
        f"- Workers per batch: `{payload['workers_per_batch']}`",
        f"- Guard cap: `{payload['guard']['max_tree_rss_mib']}` MiB tree RSS",
        f"- Guard floor: `{payload['guard']['min_available_mib']}` MiB MemAvailable",
        "",
        "## Prioritized Batches",
        "",
        "| Batch | Range | Density GoodDirection | Identity | Density seconds | Command |",
        "| ---: | --- | ---: | ---: | ---: | --- |",
    ]
    for batch in payload["batches"]:
        command = batch["command"].replace("|", "\\|")
        lines.append(
            f"| {batch['batch']} | `{batch['range']}` | "
            f"{batch['density_good_direction_masks']} | "
            f"{batch['density_identity_words']} | "
            f"{float(batch['density_seconds']):.2f} | `{command}` |"
        )
    lines.extend(["", "## Decision Notes", ""])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--density-json", type=Path, default=DEFAULT_DENSITY)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--phase", default="6Z.6K.8AP.16AJ")
    parser.add_argument("--top-windows", type=int, default=20)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--max-tree-rss-mib", type=int, default=12_000)
    parser.add_argument("--min-available-mib", type=int, default=4_096)
    parser.add_argument("--poll-seconds", type=float, default=1.0)
    parser.add_argument(
        "--checkpoint-prefix",
        default="/tmp/cuboctahedron_ap16aj_positive_survivor_extraction",
    )
    parser.add_argument(
        "--output-prefix",
        default="scripts/generated/phase6z6k8ap16aj_positive_survivor_extraction",
    )
    parser.add_argument(
        "--guard-json-prefix",
        default="/tmp/cuboctahedron_ap16aj_memory_guard",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    if args.top_windows is not None and args.top_windows <= 0:
        raise ValueError("--top-windows must be positive")
    if args.workers <= 0:
        raise ValueError("--workers must be positive")
    payload = make_plan(args)
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "selected_window_count": payload["selected_window_count"],
        "selected_density_good_direction_masks": payload["selected_density_good_direction_masks"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
