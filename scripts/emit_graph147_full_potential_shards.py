#!/usr/bin/env python3
"""Emit sharded Lean checks for the graph147 full Bellman potential.

This is diagnostic/proof-shape evidence, not production coverage.  It checks
the full observed graph147 Bellman potential from the 10M top-pairing profile:

    gain(edge) + V(dst(edge)) <= V(src(edge))

for every observed graph edge, plus the root and final-state potential facts.
The generated theorem surface is intentionally tiny and the edge data remains
private to each shard.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
RESIDUAL = ROOT / "Cuboctahedron/Generated/NonIdentity/Residual"
MODULE_BASE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph147FullPotentialShard"
)
NAMESPACE_BASE = MODULE_BASE
AGGREGATE_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph147FullPotentialShards"
)


def lean_int(value: int) -> str:
    return f"({value} : Int)"


def render_cases_def(name: str, values: list[int]) -> list[str]:
    lines = [f"private def {name} : Fin edgeCount -> Int"]
    for idx, value in enumerate(values):
        lines.append(f"  | ⟨{idx}, _⟩ => {lean_int(value)}")
    lines.append(f"  | _ => {lean_int(0)}")
    lines.append("")
    return lines


def render_shard(shard_index: int, rows: list[dict[str, int]]) -> str:
    suffix = f"{shard_index:03d}"
    namespace = f"{NAMESPACE_BASE}{suffix}"
    gains = [row["gain"] for row in rows]
    src_potentials = [row["src_potential"] for row in rows]
    dst_potentials = [row["dst_potential"] for row in rows]
    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "/-!",
        f"Shard {suffix} of the graph147 full-potential edge-validity smoke.",
        "",
        "Diagnostic/proof-shape evidence only.  The generated edge data is",
        "private, and the public theorem surface is intentionally tiny.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
        f"private def edgeCount : Nat := {len(rows)}",
        "",
    ]
    lines.extend(render_cases_def("gain", gains))
    lines.extend(render_cases_def("srcPotential", src_potentials))
    lines.extend(render_cases_def("dstPotential", dst_potentials))
    lines.extend(
        [
            "private theorem edgeValid (i : Fin edgeCount) :",
            "    gain i + dstPotential i <= srcPotential i := by",
            "  fin_cases i <;> decide",
            "",
            f"theorem graph147FullPotentialShard{suffix}_checked : True := by",
            "  have h := edgeValid",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def render_final_cases(final_potentials: list[int]) -> list[str]:
    lines = [f"private def finalCount : Nat := {len(final_potentials)}", ""]
    lines.append("private def finalPotential : Fin finalCount -> Int")
    for idx, value in enumerate(final_potentials):
        lines.append(f"  | ⟨{idx}, _⟩ => {lean_int(value)}")
    lines.append(f"  | _ => {lean_int(0)}")
    lines.append("")
    return lines


def render_aggregate(
    shard_count: int,
    *,
    const_scaled: int,
    root_potential: int,
    final_potentials: list[int],
) -> str:
    imports = [
        f"import {MODULE_BASE}{idx:03d}" for idx in range(shard_count)
    ]
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Aggregate import for graph147 full-potential edge-validity shards.",
        "",
        "This is diagnostic/proof-shape evidence, not production coverage.",
        "-/",
        "",
        f"namespace {AGGREGATE_MODULE}",
        "",
        "open Cuboctahedron",
        "",
        f"private def graphConst : Int := {lean_int(const_scaled)}",
        f"private def rootPotential : Int := {lean_int(root_potential)}",
        "",
        "theorem graph147FullPotentialRootBound :",
        "    graphConst + rootPotential <= 0 := by",
        "  decide",
        "",
    ]
    lines.extend(render_final_cases(final_potentials))
    lines.extend(
        [
            "theorem graph147FullPotentialFinalNonneg",
            "    (i : Fin finalCount) :",
            "    0 <= finalPotential i := by",
            "  fin_cases i <;> decide",
            "",
            "theorem graph147FullPotentialShards_checked : True := by",
        ]
    )
    for idx in range(shard_count):
        suffix = f"{idx:03d}"
        lines.append(
            f"  have h{suffix} := {NAMESPACE_BASE}{suffix}.graph147FullPotentialShard{suffix}_checked"
        )
    lines.extend(
        [
            "  have hroot := graph147FullPotentialRootBound",
            "  have hfinal := graph147FullPotentialFinalNonneg",
            "  exact True.intro",
            "",
            f"end {AGGREGATE_MODULE}",
            "",
        ]
    )
    return "\n".join(lines)


def render_markdown(payload: dict[str, Any]) -> str:
    return "\n".join(
        [
            "# Graph147 Full Potential Shards",
            "",
            "Diagnostic/proof-shape evidence only.  This is not production coverage.",
            "",
            f"- profile: `{payload['profile']}`",
            f"- states: `{payload['states']}`",
            f"- edges: `{payload['edges']}`",
            f"- shard count: `{payload['shard_count']}`",
            f"- shard size: `{payload['shard_size']}`",
            f"- const scaled: `{payload['const_scaled']}`",
            f"- root potential: `{payload['root_potential']}`",
            f"- final count: `{payload['final_count']}`",
            f"- final potential range: `{payload['final_potential_min']} .. {payload['final_potential_max']}`",
            f"- total Lean source bytes: `{payload['total_source_bytes']}`",
            "",
            "The emitted shards check `gain + V(dst) <= V(src)` for every",
            "observed graph147 edge in the 10M profile, plus the root and",
            "final-potential facts.  The generated edge data is private and the",
            "public surface is a tiny `True` smoke theorem.",
            "",
        ]
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT
        / "scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json",
    )
    parser.add_argument("--shard-size", type=int, default=128)
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT / "scripts/generated/graph147_full_potential_shards.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=ROOT / "scripts/generated/graph147_full_potential_shards.md",
    )
    args = parser.parse_args()
    if args.shard_size <= 0:
        raise SystemExit("--shard-size must be positive")

    profile = json.loads(args.profile.read_text())
    graph = profile["graph"]
    potential = {
        int(row["index"]): int(row["potential_scaled"])
        for row in graph["states"]
    }
    rows = [
        {
            "gain": int(edge["gain_scaled"]),
            "src_potential": potential[int(edge["src"])],
            "dst_potential": potential[int(edge["dst"])],
        }
        for edge in graph["edges"]
    ]
    shards = [
        rows[start : start + args.shard_size]
        for start in range(0, len(rows), args.shard_size)
    ]

    source_paths: list[Path] = []
    for idx, shard in enumerate(shards):
        path = RESIDUAL / f"BellmanTopPairingGraph147FullPotentialShard{idx:03d}.lean"
        path.write_text(render_shard(idx, shard))
        source_paths.append(path)

    roots = [int(index) for index in graph["root_indices"]]
    if len(roots) != 1:
        raise SystemExit(f"expected one root, got {len(roots)}")
    finals = [int(index) for index in graph["final_indices"]]
    final_potentials = [potential[index] for index in finals]
    aggregate = RESIDUAL / "BellmanTopPairingGraph147FullPotentialShards.lean"
    aggregate.write_text(
        render_aggregate(
            len(shards),
            const_scaled=int(graph["const_scaled"]),
            root_potential=potential[roots[0]],
            final_potentials=final_potentials,
        )
    )
    source_paths.append(aggregate)

    payload = {
        "mode": "graph147-full-potential-shards",
        "profile": args.profile.as_posix(),
        "states": len(graph["states"]),
        "edges": len(graph["edges"]),
        "shard_size": args.shard_size,
        "shard_count": len(shards),
        "const_scaled": int(graph["const_scaled"]),
        "root_potential": potential[roots[0]],
        "final_count": len(finals),
        "final_potential_min": min(final_potentials),
        "final_potential_max": max(final_potentials),
        "lean_files": [path.relative_to(ROOT).as_posix() for path in source_paths],
        "total_source_bytes": sum(path.stat().st_size for path in source_paths),
        "interpretation": (
            "Diagnostic full-graph potential edge-validity smoke; not "
            "production coverage."
        ),
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
