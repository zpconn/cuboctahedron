#!/usr/bin/env python3
"""Plan a bounded DU9IQ traced direct-bridge batch.

This planner does not emit Lean and does not run Lean.  It reads the accepted
DU9IQ reduced weighted-quadratic profile, selects a small number of
direct-reduced weighted cubes for one rank, deduplicates required impact-normal
trace modules, and writes the exact serial commands needed for a memory-safe
batch.

The goal is to scale the accepted traced direct bridge pattern without
accidentally launching a broad cold `lake build`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9iq_weighted_reduced_quadratic_bounds_profile.json"
)
DEFAULT_REPORT = Path(
    "scripts/generated/weighted_denom_cube_du9iq_traced_bridge_batch_plan_rank896.json"
)


def normal_stem(rank: int) -> str:
    return f"WeightedDenomCubeDU9IQNormalTraceRank{rank}"


def normal_suffix(index: int) -> str:
    return "" if index == 0 else f"Idx{index:02d}"


def normal_module(rank: int, index: int) -> str:
    return f"{BASE_MODULE}.{normal_stem(rank)}{normal_suffix(index)}Smoke"


def normal_path(rank: int, index: int) -> Path:
    return BASE_DIR / f"{normal_stem(rank)}{normal_suffix(index)}Smoke.lean"


def bridge_stem(summary_index: int) -> str:
    return f"WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx{summary_index:02d}"


def bridge_module(summary_index: int) -> str:
    return f"{BASE_MODULE}.{bridge_stem(summary_index)}Smoke"


def bridge_path(summary_index: int) -> Path:
    return BASE_DIR / f"{bridge_stem(summary_index)}Smoke.lean"


def select_rows(data: dict[str, Any], *, rank: int, limit: int) -> list[tuple[int, dict[str, Any]]]:
    rows: list[tuple[int, dict[str, Any]]] = []
    for index, row in enumerate(data["summaries"]):
        if int(row["rank"]) != rank:
            continue
        if not bool(row.get("reduced_bound_nonpositive", False)):
            continue
        rows.append((index, row))
        if len(rows) >= limit:
            break
    return rows


def shell_quote(text: str) -> str:
    if all(ch.isalnum() or ch in "._/-=:" for ch in text):
        return text
    return "'" + text.replace("'", "'\\''") + "'"


def command(parts: list[str]) -> str:
    return " ".join(shell_quote(part) for part in parts)


def build_payload(profile: Path, *, rank: int, limit: int) -> dict[str, Any]:
    data = json.loads(profile.read_text(encoding="utf-8"))
    selected = select_rows(data, rank=rank, limit=limit)
    normal_indices = sorted({
        int(impact) - 1
        for _summary_index, row in selected
        for impact in row["support"]
    })
    vector_trace_module = (
        f"{BASE_MODULE}.WeightedDenomCubeDU9IQVectorTraceRank{rank}ChainSmoke"
    )

    normal_tasks = []
    for index in normal_indices:
        report = Path(
            f"scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank{rank}_idx{index:02d}_generation.json"
        )
        guard = Path(
            f"scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank{rank}_idx{index:02d}_guard.json"
        )
        target = normal_module(rank, index)
        normal_tasks.append({
            "index": index,
            "module": target,
            "path": str(normal_path(rank, index)),
            "exists": normal_path(rank, index).exists(),
            "emit_command": command([
                "python3",
                "scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py",
                "--rank", str(rank),
                "--index", str(index),
                "--stem", normal_stem(rank),
                "--trace-module", vector_trace_module,
                "--report", str(report),
            ]),
            "guard_command": command([
                "python3",
                "scripts/run_memory_guarded.py",
                "--max-tree-rss-mib", "12000",
                "--min-available-mib", "35000",
                "--poll-seconds", "0.5",
                "--json", str(guard),
                "--",
                "env", "LAKE_JOBS=1", "lake", "build", target,
            ]),
        })

    bridge_tasks = []
    for summary_index, row in selected:
        report = Path(
            f"scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx{summary_index:02d}.json"
        )
        guard = Path(
            f"scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx{summary_index:02d}_guard.json"
        )
        target = bridge_module(summary_index)
        bridge_tasks.append({
            "summary_index": summary_index,
            "rank": int(row["rank"]),
            "pattern": row["pattern"],
            "support": row["support"],
            "weights": row["weights"],
            "module": target,
            "path": str(bridge_path(summary_index)),
            "exists": bridge_path(summary_index).exists(),
            "required_normal_indices": [int(impact) - 1 for impact in row["support"]],
            "emit_command": command([
                "python3",
                "scripts/emit_du9iq_traced_direct_bridge.py",
                "--summary-index", str(summary_index),
                "--stem", bridge_stem(summary_index),
                "--standalone-reduced",
                "--report", str(report),
            ]),
            "guard_command": command([
                "python3",
                "scripts/run_memory_guarded.py",
                "--max-tree-rss-mib", "12000",
                "--min-available-mib", "35000",
                "--poll-seconds", "0.5",
                "--json", str(guard),
                "--",
                "env", "LAKE_JOBS=1", "lake", "build", target,
            ]),
        })

    return {
        "phase": "Phase 6Z6K8AP16DU9IQ traced direct bridge batch plan",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "profile": str(profile),
        "rank": rank,
        "limit": limit,
        "selected_count": len(selected),
        "vector_trace_module": vector_trace_module,
        "normal_trace_stem": normal_stem(rank),
        "normal_indices": normal_indices,
        "normal_task_count": len(normal_tasks),
        "bridge_task_count": len(bridge_tasks),
        "memory_policy": "serial Lean builds only; do not run this batch through a cold broad lake build",
        "normal_tasks": normal_tasks,
        "bridge_tasks": bridge_tasks,
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# DU9IQ Traced Direct Bridge Batch Plan",
        "",
        f"- rank: `{payload['rank']}`",
        f"- selected cubes: `{payload['selected_count']}`",
        f"- unique normal traces: `{payload['normal_task_count']}`",
        f"- bridge modules: `{payload['bridge_task_count']}`",
        f"- memory policy: {payload['memory_policy']}",
        "",
        "## Normal Traces",
        "",
    ]
    for task in payload["normal_tasks"]:
        lines.extend([
            f"- index `{task['index']}`: `{task['module']}`",
            f"  - exists now: `{task['exists']}`",
            f"  - emit: `{task['emit_command']}`",
            f"  - build: `{task['guard_command']}`",
        ])
    lines.extend(["", "## Bridges", ""])
    for task in payload["bridge_tasks"]:
        lines.extend([
            f"- summary `{task['summary_index']}`: pattern `{task['pattern']}`, support `{task['support']}`, weights `{task['weights']}`",
            f"  - module: `{task['module']}`",
            f"  - exists now: `{task['exists']}`",
            f"  - normals: `{task['required_normal_indices']}`",
            f"  - emit: `{task['emit_command']}`",
            f"  - build: `{task['guard_command']}`",
        ])
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=896)
    parser.add_argument("--limit", type=int, default=6)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    payload = build_payload(args.profile, rank=args.rank, limit=args.limit)
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(payload, args.report.with_suffix(".md"))
    print(
        f"planned {payload['bridge_task_count']} bridges with "
        f"{payload['normal_task_count']} unique normal traces for rank {args.rank}"
    )


if __name__ == "__main__":
    main()
