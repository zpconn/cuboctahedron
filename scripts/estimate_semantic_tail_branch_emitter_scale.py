#!/usr/bin/env python3
"""Estimate the split-10M semantic-tail branch emitter layer.

This is a planning estimate, not proof.  It combines:

* the full split-10M graph branch-table constructor count;
* the bounded generated semantic-tail branch smoke constructor count;
* the guarded Lean timing/RSS for that generated smoke.

The goal is to decide whether emitting local tail-facing branch classifiers for
all reachable graph transitions is a plausible next Lean layer, before any
broad generation.
"""

from __future__ import annotations

import json
import math
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

FULL_BRANCH_TABLE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke.lean"
)
SMOKE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticTailBranchEmitterSmoke.lean"
)
SMOKE_GUARD = ROOT / "scripts/generated/semantic_tail_branch_emitter_smoke_guard.json"
OUT_JSON = ROOT / "scripts/generated/semantic_tail_branch_emitter_scale_estimate.json"
OUT_MD = ROOT / "scripts/generated/semantic_tail_branch_emitter_scale_estimate.md"


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def full_constructor_count(text: str) -> int:
    return len(
        re.findall(
            r"^\s*\|\s+graph_\d+_s\d+_\w+\s*:\s*StrengthenedBranchTable",
            text,
            re.M,
        )
    )


def smoke_constructor_count(text: str) -> int:
    return len(set(re.findall(r"StrengthenedBranchTable\.(graph_\d+_s\d+_\w+)", text)))


def theorem_count(text: str) -> int:
    return len(re.findall(r"^theorem\s+", text, re.M))


def main() -> int:
    full_text = read(FULL_BRANCH_TABLE)
    smoke_text = read(SMOKE)
    guard = load_json(SMOKE_GUARD)

    full_count = full_constructor_count(full_text)
    smoke_count = smoke_constructor_count(smoke_text)
    smoke_seconds = float(guard["elapsed_seconds"])
    smoke_rss = float(guard["max_tree_rss_mib"])
    smoke_source_kib = SMOKE.stat().st_size / 1024.0
    if smoke_count <= 0:
        raise RuntimeError("smoke constructor count is zero")

    seconds_per_constructor = smoke_seconds / smoke_count
    source_kib_per_constructor = smoke_source_kib / smoke_count
    serial_seconds_projected = seconds_per_constructor * full_count
    source_kib_projected = source_kib_per_constructor * full_count

    shard_sizes = [10, 20, 30, 40, 50]
    shard_projection = []
    for shard_size in shard_sizes:
        shards = math.ceil(full_count / shard_size)
        shard_seconds = seconds_per_constructor * shard_size
        shard_projection.append(
            {
                "constructors_per_shard": shard_size,
                "shards": shards,
                "estimated_seconds_per_shard": shard_seconds,
                "estimated_serial_seconds": serial_seconds_projected,
            }
        )

    accepted = (
        guard.get("exit_code") == 0
        and full_count > 0
        and serial_seconds_projected < 3600
        and smoke_rss < 5000
    )

    payload: dict[str, Any] = {
        "mode": "semantic-tail-branch-emitter-scale-estimate",
        "full_branch_table": rel(FULL_BRANCH_TABLE),
        "smoke": rel(SMOKE),
        "smoke_guard": rel(SMOKE_GUARD),
        "full_graph_constructor_count": full_count,
        "smoke_constructor_count": smoke_count,
        "smoke_theorem_count": theorem_count(smoke_text),
        "smoke_elapsed_seconds": smoke_seconds,
        "smoke_peak_tree_rss_mib": smoke_rss,
        "smoke_source_kib": smoke_source_kib,
        "seconds_per_constructor_observed": seconds_per_constructor,
        "source_kib_per_constructor_observed": source_kib_per_constructor,
        "projected_serial_seconds": serial_seconds_projected,
        "projected_serial_minutes": serial_seconds_projected / 60.0,
        "projected_source_kib": source_kib_projected,
        "projected_source_mib": source_kib_projected / 1024.0,
        "shard_projection": shard_projection,
        "decision": (
            "local-tail-branch-layer-projected-safe-if-sharded"
            if accepted
            else "local-tail-branch-layer-needs-more-bounded-smoke"
        ),
        "caveat": (
            "This estimates only the local tail-facing branch-table layer.  It "
            "does not prove closed-language suffix coverage or terminal margin "
            "finish facts."
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Semantic Tail Branch Emitter Scale Estimate",
        "",
        f"- Decision: `{payload['decision']}`",
        f"- Full branch table: `{payload['full_branch_table']}`",
        f"- Generated smoke: `{payload['smoke']}`",
        f"- Smoke guard: `{payload['smoke_guard']}`",
        "",
        "## Observed Smoke",
        "",
        f"- Constructors used: `{smoke_count}`",
        f"- Theorems: `{payload['smoke_theorem_count']}`",
        f"- Elapsed seconds: `{smoke_seconds:.2f}`",
        f"- Peak tree RSS MiB: `{smoke_rss:.0f}`",
        f"- Source KiB: `{smoke_source_kib:.1f}`",
        "",
        "## Projection",
        "",
        f"- Full graph branch constructors: `{full_count}`",
        f"- Observed seconds per constructor: `{seconds_per_constructor:.3f}`",
        f"- Projected serial minutes: `{serial_seconds_projected / 60.0:.1f}`",
        f"- Projected source MiB: `{source_kib_projected / 1024.0:.1f}`",
        "",
        "| constructors/shard | shards | est. seconds/shard | est. serial minutes |",
        "|---:|---:|---:|---:|",
    ]
    for row in shard_projection:
        lines.append(
            "| {constructors_per_shard} | {shards} | {estimated_seconds_per_shard:.1f} | {minutes:.1f} |".format(
                minutes=serial_seconds_projected / 60.0,
                **row,
            )
        )
    lines.extend(["", "## Caveat", "", payload["caveat"], ""])
    OUT_MD.write_text("\n".join(lines), encoding="utf-8")

    print(f"decision={payload['decision']}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0 if accepted else 1


if __name__ == "__main__":
    raise SystemExit(main())
