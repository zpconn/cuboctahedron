#!/usr/bin/env python3
"""Design the production pair-sign producer hierarchy from measured anchors.

This is a planning/projection tool only.  It does not prove coverage.

The current translation route has two useful diagnostics:

* a split Lean smoke root over sampled windows, which gives empirical source
  size and build-memory anchors; and
* an incidence growth projection, which estimates the full source/row producer
  surface.

This script combines those two diagnostics into a concrete production layout
proposal.  The result is intentionally conservative and names the remaining
Lean bridge that must be proved before Step 15 can consume the translation
backend.
"""

from __future__ import annotations

import argparse
import json
import math
from pathlib import Path
from typing import Any


DEFAULT_PROJECTION_JSON = Path(
    "scripts/generated/phase6z6k8an_pair_sign_producer_growth_projection.json"
)
DEFAULT_SMOKE_JSON = Path(
    "scripts/generated/phase6z6k8am_pair_sign_producer_coverage_split50k_smoke.json"
)
DEFAULT_ANCHOR_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PairSignProducerCoverageScalingSplit50k"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ao_pair_sign_producer_hierarchy_design.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def count_lines(path: Path) -> int:
    with path.open(encoding="utf-8") as handle:
        return sum(1 for _ in handle)


def anchor_line_counts(anchor_dir: Path) -> dict[str, Any]:
    source = anchor_dir / "Source.lean"
    row = anchor_dir / "Row.lean"
    root = anchor_dir / "All.lean"
    chunks_dir = anchor_dir / "Chunks"
    chunk_files = sorted(chunks_dir.glob("Chunk*.lean"))
    chunk_lines = [count_lines(path) for path in chunk_files]
    return {
        "source_lines": count_lines(source),
        "row_lines": count_lines(row),
        "root_lines": count_lines(root),
        "chunk_files": [str(path) for path in chunk_files],
        "chunk_count": len(chunk_files),
        "chunk_lines": chunk_lines,
        "chunk_lines_total": sum(chunk_lines),
        "chunk_lines_max": max(chunk_lines) if chunk_lines else 0,
        "total_lines": count_lines(source)
            + count_lines(row)
            + count_lines(root)
            + sum(chunk_lines),
    }


def directory_size_kib(path: Path) -> int:
    return sum(item.stat().st_size for item in path.rglob("*") if item.is_file()) // 1024


def scale_lines(anchor_lines: int, anchor_count: int, estimated_count: int) -> int:
    if anchor_count <= 0:
        return 0
    return math.ceil(anchor_lines * estimated_count / anchor_count)


def design(
    *,
    projection_json: Path,
    smoke_json: Path,
    anchor_dir: Path,
    phase: str,
    jobs: int,
    wall_budget_hours: float,
    cpu_budget_hours: float,
    memory_budget_gib: float,
    rss_anchor_kib: int,
    root_wall_anchor_seconds: float,
    conservative_factor: float,
) -> dict[str, Any]:
    projection = read_json(projection_json)
    smoke = read_json(smoke_json)
    line_counts = anchor_line_counts(anchor_dir)
    anchor_size_kib = directory_size_kib(anchor_dir)

    observed_descriptor = int(smoke["descriptor_family_count"])
    observed_source = int(smoke["source_group_count"])
    observed_row = int(smoke["row_group_count"])
    observed_chunks = int(smoke["chunk_count"])
    chunk_size = int(smoke["chunk_size"])

    estimated_descriptor = int(projection["descriptor"]["estimated"])
    estimated_source = int(projection["source"]["estimated"])
    estimated_row = int(projection["row"]["estimated"])
    estimated_producers = int(projection["estimated_source_row_producers"])
    estimated_chunks = math.ceil(estimated_descriptor / chunk_size)

    projected_source_lines = scale_lines(
        line_counts["source_lines"], observed_source, estimated_source
    )
    projected_row_lines = scale_lines(
        line_counts["row_lines"], observed_row, estimated_row
    )
    projected_chunk_lines_total = scale_lines(
        line_counts["chunk_lines_total"], observed_descriptor, estimated_descriptor
    )
    projected_chunk_lines_max = max(
        line_counts["chunk_lines_max"],
        math.ceil(projected_chunk_lines_total / max(estimated_chunks, 1)),
    )
    projected_root_lines = line_counts["root_lines"] + estimated_chunks + 4
    projected_total_lines = (
        projected_source_lines
        + projected_row_lines
        + projected_chunk_lines_total
        + projected_root_lines
    )
    projected_source_kib = math.ceil(
        anchor_size_kib * projected_total_lines / max(line_counts["total_lines"], 1)
    )

    # The split-root smoke already includes parsing/import overhead for source,
    # row, chunk, and root modules.  Scale it by total source size and then use
    # a second conservative factor so this report does not overfit one sample.
    scaled_cpu_seconds = (
        root_wall_anchor_seconds
        * projected_total_lines
        / max(line_counts["total_lines"], 1)
    )
    projected_cpu_seconds = math.ceil(scaled_cpu_seconds * conservative_factor)

    # Chunks can build in parallel after the shared source/row modules.  Use a
    # simple batch model plus conservative factor; this is intentionally only a
    # sanity estimate, not a scheduler.
    chunk_batches = math.ceil(estimated_chunks / max(jobs, 1))
    anchor_chunk_avg = (
        line_counts["chunk_lines_total"] / max(observed_chunks, 1)
    )
    projected_chunk_avg = projected_chunk_lines_total / max(estimated_chunks, 1)
    chunk_wall_anchor = root_wall_anchor_seconds / max(observed_chunks + 2, 1)
    projected_wall_seconds = math.ceil(
        conservative_factor
        * (
            root_wall_anchor_seconds
            * (projected_source_lines + projected_row_lines)
            / max(line_counts["source_lines"] + line_counts["row_lines"], 1)
            + chunk_batches
            * chunk_wall_anchor
            * projected_chunk_avg
            / max(anchor_chunk_avg, 1)
            + 3.0
        )
    )
    projected_rss_kib = math.ceil(rss_anchor_kib * 1.25)

    descriptor_gate = int(projection["descriptor_gate"])
    producer_gate = int(projection["producer_gate"])
    rss_gib = projected_rss_kib / (1024 * 1024)
    status = "accepted-production-hierarchy-design"
    notes: list[str] = [
        "diagnostic only: this design report is not proof evidence",
        "source/row producer projection stays below configured gates",
        "split-source/chunk/root layout remains comfortably below the build budget",
        "next proof step is the generated membership bridge, not more per-case leaves",
    ]
    if estimated_descriptor > descriptor_gate or estimated_producers > producer_gate:
        status = "rejected-growth-gates"
        notes = [
            "producer or descriptor projection exceeds a configured gate",
            "do not emit production Lean until the semantic coordinate is improved",
        ]
    elif projected_wall_seconds > wall_budget_hours * 3600:
        status = "rejected-wall-budget"
        notes = [
            "projected wall time exceeds the configured budget",
            "increase semantic compression before production emission",
        ]
    elif projected_cpu_seconds > cpu_budget_hours * 3600:
        status = "rejected-cpu-budget"
        notes = [
            "projected CPU time exceeds the configured budget",
            "increase semantic compression before production emission",
        ]
    elif rss_gib > memory_budget_gib:
        status = "rejected-memory-budget"
        notes = [
            "projected RSS exceeds the configured memory budget",
            "split generated modules more aggressively or reduce imported surfaces",
        ]

    return {
        "schema_version": 1,
        "mode": "pair_sign_producer_hierarchy_design",
        "phase": phase,
        "trusted_as_proof": False,
        "inputs": {
            "projection_json": str(projection_json),
            "smoke_json": str(smoke_json),
            "anchor_dir": str(anchor_dir),
        },
        "anchor": {
            "descriptor_families": observed_descriptor,
            "source_groups": observed_source,
            "row_groups": observed_row,
            "chunk_count": observed_chunks,
            "chunk_size": chunk_size,
            "line_counts": line_counts,
            "source_size_kib": anchor_size_kib,
            "root_wall_anchor_seconds": root_wall_anchor_seconds,
            "root_rss_anchor_kib": rss_anchor_kib,
        },
        "projection": {
            "descriptor_families": estimated_descriptor,
            "source_groups": estimated_source,
            "row_groups": estimated_row,
            "source_row_producers": estimated_producers,
            "chunk_count": estimated_chunks,
            "chunk_size": chunk_size,
            "source_lines": projected_source_lines,
            "row_lines": projected_row_lines,
            "chunk_lines_total": projected_chunk_lines_total,
            "chunk_lines_max": projected_chunk_lines_max,
            "root_lines": projected_root_lines,
            "total_lines": projected_total_lines,
            "source_size_kib": projected_source_kib,
            "cpu_seconds": projected_cpu_seconds,
            "wall_seconds": projected_wall_seconds,
            "rss_kib": projected_rss_kib,
            "jobs": jobs,
            "conservative_factor": conservative_factor,
        },
        "module_layout": {
            "root": (
                "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
                "Production.All"
            ),
            "source_module": (
                "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
                "Production/Source.lean"
            ),
            "row_module": (
                "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
                "Production/Row.lean"
            ),
            "descriptor_chunks": (
                "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
                "Production/Chunks/ChunkNNN.lean"
            ),
            "membership_core": (
                "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
                "Production/Membership/Core.lean"
            ),
            "membership_root": (
                "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
                "Production.Membership.All"
            ),
            "translation_complete_bridge": (
                "Cuboctahedron.Generated.Translation.KilledBridge"
            ),
        },
        "remaining_lean_bridge": {
            "name": "pairSignProducerCoverage_killedBridge",
            "target": (
                "forall {r : Fin numPairWords} {mask : SignMask}, "
                "translationEarlyFamilyClassOfChoice r mask = "
                "TranslationFamilyClass.needsFarkas -> "
                "totalLinearOfPairWord (unrankPairWord r) = matId -> "
                "Coverage.TranslationCaseKilled r mask"
            ),
            "membership_obligation": (
                "derive a matching SourceIndexStateSourcePredicate and row "
                "predicate for each GoodDirection residual case, then apply "
                "the generated source/row producer theorem and "
                "TranslationGoodCaseKilled.killed"
            ),
            "must_not_use": [
                "raw per-rank TranslationCert witnesses",
                "global rank/mask arrays",
                "packed blobs or byte-list decoders",
                "large Boolean checker reductions",
            ],
        },
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def seconds_text(seconds: int) -> str:
    if seconds < 60:
        return f"{seconds}s"
    minutes = seconds / 60
    if minutes < 60:
        return f"{minutes:.1f}m"
    return f"{minutes / 60:.2f}h"


def markdown(payload: dict[str, Any]) -> str:
    anchor = payload["anchor"]
    projection = payload["projection"]
    bridge = payload["remaining_lean_bridge"]
    lines = [
        f"# Phase {payload['phase']} Pair-Sign Producer Hierarchy Design",
        "",
        "This report is not trusted as proof. It combines the measured split",
        "Lean smoke root with the sampled growth projection to design the",
        "next production generated hierarchy.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Anchor descriptor families: `{anchor['descriptor_families']}`",
        f"- Projected descriptor families: `{projection['descriptor_families']}`",
        f"- Anchor source groups: `{anchor['source_groups']}`",
        f"- Projected source groups: `{projection['source_groups']}`",
        f"- Anchor row groups: `{anchor['row_groups']}`",
        f"- Projected row groups: `{projection['row_groups']}`",
        f"- Projected source+row producers: `{projection['source_row_producers']}`",
        f"- Projected descriptor chunks: `{projection['chunk_count']}` at chunk size `{projection['chunk_size']}`",
        f"- Projected generated source: `{projection['total_lines']}` lines / `{projection['source_size_kib']}` KiB",
        f"- Projected CPU check budget: `{seconds_text(projection['cpu_seconds'])}`",
        f"- Projected wall check budget at {projection['jobs']} jobs: `{seconds_text(projection['wall_seconds'])}`",
        f"- Projected peak RSS: `{projection['rss_kib'] / (1024 * 1024):.2f}` GiB",
        "",
        "## Estimated Source Layout",
        "",
        "| Surface | Anchor | Projected |",
        "| --- | ---: | ---: |",
        f"| Source producer module lines | {anchor['line_counts']['source_lines']} | {projection['source_lines']} |",
        f"| Row producer module lines | {anchor['line_counts']['row_lines']} | {projection['row_lines']} |",
        f"| Descriptor chunk lines total | {anchor['line_counts']['chunk_lines_total']} | {projection['chunk_lines_total']} |",
        f"| Descriptor chunk max lines | {anchor['line_counts']['chunk_lines_max']} | {projection['chunk_lines_max']} |",
        f"| Root lines | {anchor['line_counts']['root_lines']} | {projection['root_lines']} |",
        f"| Total lines | {anchor['line_counts']['total_lines']} | {projection['total_lines']} |",
        f"| Source size KiB | {anchor['source_size_kib']} | {projection['source_size_kib']} |",
        "",
        "## Proposed Production Modules",
        "",
        f"- Root: `{payload['module_layout']['root']}`",
        f"- Source producers: `{payload['module_layout']['source_module']}`",
        f"- Row producers: `{payload['module_layout']['row_module']}`",
        f"- Descriptor chunks: `{payload['module_layout']['descriptor_chunks']}`",
        f"- Membership core: `{payload['module_layout']['membership_core']}`",
        f"- Membership root: `{payload['module_layout']['membership_root']}`",
        f"- Translation bridge target: `{payload['module_layout']['translation_complete_bridge']}`",
        "",
        "## Remaining Lean Bridge",
        "",
        f"- Name: `{bridge['name']}`",
        f"- Target: `{bridge['target']}`",
        f"- Obligation: {bridge['membership_obligation']}",
        "",
        "The production descriptor hierarchy is small enough under the current",
        "projection. The unclosed proof obligation is membership: for an",
        "arbitrary GoodDirection residual translation case, generated Lean must",
        "derive the matching source predicate and row predicate, then invoke the",
        "appropriate producer theorem and `TranslationGoodCaseKilled.killed`.",
        "",
        "## Decision Notes",
        "",
    ]
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Forbidden Production Patterns",
        "",
    ])
    for item in bridge["must_not_use"]:
        lines.append(f"- {item}")
    lines.append("")
    return "\n".join(lines)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--projection-json", type=Path, default=DEFAULT_PROJECTION_JSON)
    parser.add_argument("--smoke-json", type=Path, default=DEFAULT_SMOKE_JSON)
    parser.add_argument("--anchor-dir", type=Path, default=DEFAULT_ANCHOR_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--phase", default="6Z.6K.8AO")
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--wall-budget-hours", type=float, default=6.0)
    parser.add_argument("--cpu-budget-hours", type=float, default=24.0)
    parser.add_argument("--memory-budget-gib", type=float, default=45.0)
    parser.add_argument("--rss-anchor-kib", type=int, default=3_300_000)
    parser.add_argument("--root-wall-anchor-seconds", type=float, default=10.86)
    parser.add_argument("--conservative-factor", type=float, default=2.0)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.conservative_factor < 1.0:
        raise ValueError("--conservative-factor must be at least 1")

    payload = design(
        projection_json=args.projection_json,
        smoke_json=args.smoke_json,
        anchor_dir=args.anchor_dir,
        phase=args.phase,
        jobs=args.jobs,
        wall_budget_hours=args.wall_budget_hours,
        cpu_budget_hours=args.cpu_budget_hours,
        memory_budget_gib=args.memory_budget_gib,
        rss_anchor_kib=args.rss_anchor_kib,
        root_wall_anchor_seconds=args.root_wall_anchor_seconds,
        conservative_factor=args.conservative_factor,
    )
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "projected_descriptor_families": payload["projection"]["descriptor_families"],
        "projected_source_row_producers": payload["projection"]["source_row_producers"],
        "projected_chunks": payload["projection"]["chunk_count"],
        "projected_total_lines": payload["projection"]["total_lines"],
        "projected_wall_seconds": payload["projection"]["wall_seconds"],
        "projected_rss_gib": payload["projection"]["rss_kib"] / (1024 * 1024),
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
