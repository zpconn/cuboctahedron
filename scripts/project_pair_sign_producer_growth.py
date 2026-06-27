#!/usr/bin/env python3
"""Project pair-sign producer growth from checkpointed census windows.

This is a diagnostic/projection tool only.  It does not prove coverage.

It reads the per-window checkpoints emitted by
`run_pair_sign_producer_coverage_census.py`, computes observed unique
descriptor/source/row key counts, and applies an incidence Chao2 estimator to
the sampled windows.  The goal is to decide whether the source/row producer
surface remains plausibly small enough before emitting larger Lean roots.
"""

from __future__ import annotations

import argparse
from collections import Counter
import json
import math
from pathlib import Path
from typing import Any


DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_pair_sign_producer_census_8an_2p5m")
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8an_pair_sign_producer_growth_projection.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def checkpoint_files(checkpoint_dir: Path) -> list[Path]:
    return sorted(checkpoint_dir.glob("window_*.json"))


def is_window_payload(payload: dict[str, Any]) -> bool:
    return payload.get("mode") == "pair-sign-producer-coverage-census-window"


def incidence_estimate(keys_per_window: list[set[str]]) -> dict[str, Any]:
    frequencies: Counter[str] = Counter()
    for keys in keys_per_window:
        for item in keys:
            frequencies[item] += 1

    observed = len(frequencies)
    singletons = sum(1 for count in frequencies.values() if count == 1)
    doubletons = sum(1 for count in frequencies.values() if count == 2)
    if doubletons > 0:
        chao2 = observed + (singletons * singletons) / (2 * doubletons)
        method = "chao2"
    elif singletons > 1:
        chao2 = observed + (singletons * (singletons - 1)) / 2
        method = "chao2_no_doubletons_conservative"
    else:
        chao2 = observed
        method = "observed_no_singletons"

    return {
        "observed": observed,
        "singletons": singletons,
        "doubletons": doubletons,
        "singleton_fraction": (singletons / observed) if observed else 0.0,
        "estimated": math.ceil(chao2),
        "method": method,
    }


def cumulative_rows(payloads: list[dict[str, Any]]) -> list[dict[str, Any]]:
    descriptor: set[str] = set()
    source: set[str] = set()
    row: set[str] = set()
    edges: set[str] = set()
    rows = []
    for payload in payloads:
        descriptor.update(payload.get("descriptor_keys", []))
        source.update(payload.get("source_keys", []))
        row.update(payload.get("row_keys", []))
        edges.update(payload.get("source_row_edges", []))
        rows.append({
            "range": [
                payload["window"]["start"],
                payload["window"]["end"],
            ],
            "good_direction_cases": payload["good_direction_cases"],
            "cumulative_descriptor": len(descriptor),
            "cumulative_source": len(source),
            "cumulative_row": len(row),
            "cumulative_source_row_edges": len(edges),
            "cumulative_source_row_producers": len(source) + len(row),
        })
    return rows


def project(
    *,
    checkpoint_dir: Path,
    chunk_size: int,
    producer_gate: int,
    descriptor_gate: int,
    min_windows: int,
    phase: str,
) -> dict[str, Any]:
    files = checkpoint_files(checkpoint_dir)
    payloads = [read_json(path) for path in files]
    bad_files = [
        str(path)
        for path, payload in zip(files, payloads, strict=True)
        if not is_window_payload(payload)
    ]
    if bad_files:
        raise ValueError(f"non-window checkpoint payloads: {bad_files[:5]}")

    payloads.sort(key=lambda item: (item["window"]["start"], item["window"]["end"]))
    descriptor_windows = [set(payload.get("descriptor_keys", [])) for payload in payloads]
    source_windows = [set(payload.get("source_keys", [])) for payload in payloads]
    row_windows = [set(payload.get("row_keys", [])) for payload in payloads]
    edge_windows = [set(payload.get("source_row_edges", [])) for payload in payloads]

    descriptor = incidence_estimate(descriptor_windows)
    source = incidence_estimate(source_windows)
    row = incidence_estimate(row_windows)
    edges = incidence_estimate(edge_windows)
    observed_chunks = math.ceil(descriptor["observed"] / chunk_size) if chunk_size else 0
    estimated_chunks = math.ceil(descriptor["estimated"] / chunk_size) if chunk_size else 0
    observed_producers = source["observed"] + row["observed"]
    estimated_producers = source["estimated"] + row["estimated"]
    validation_failures = Counter()
    counts = Counter()
    for payload in payloads:
        validation_failures.update(payload.get("source_language_validation_failures", {}))
        counts.update(payload.get("counts", {}))

    status = "needs-more-census"
    notes = [
        "diagnostic only: projection is not proof",
        "window count is below the minimum projection gate",
    ]
    if sum(validation_failures.values()):
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed in at least one checkpoint window"]
    elif len(payloads) >= min_windows:
        if estimated_producers <= producer_gate and descriptor["estimated"] <= descriptor_gate:
            status = "accepted-growth-projection"
            notes = [
                "incidence projection stays below producer and descriptor gates",
                "next step can run a larger checkpointed census or design the full split hierarchy",
            ]
        else:
            status = "needs-stronger-invariant-or-more-census"
            notes = [
                "incidence projection exceeds at least one gate",
                "do not emit larger Lean roots until the growth coordinate is improved or better measured",
            ]

    return {
        "schema_version": 1,
        "mode": "pair_sign_producer_growth_projection",
        "phase": phase,
        "trusted_as_proof": False,
        "checkpoint_dir": str(checkpoint_dir),
        "window_count": len(payloads),
        "rank_count_sampled": sum(
            payload["window"]["end"] - payload["window"]["start"]
            for payload in payloads
        ),
        "good_direction_cases": sum(payload["good_direction_cases"] for payload in payloads),
        "counts": dict(counts),
        "validation_failures": dict(validation_failures),
        "validation_failure_count": sum(validation_failures.values()),
        "chunk_size": chunk_size,
        "producer_gate": producer_gate,
        "descriptor_gate": descriptor_gate,
        "min_windows": min_windows,
        "descriptor": descriptor,
        "source": source,
        "row": row,
        "source_row_edges": edges,
        "observed_source_row_producers": observed_producers,
        "estimated_source_row_producers": estimated_producers,
        "observed_chunk_count": observed_chunks,
        "estimated_chunk_count": estimated_chunks,
        "cumulative_windows": cumulative_rows(payloads),
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Pair-Sign Producer Growth Projection",
        "",
        "This diagnostic is not trusted as proof. It estimates whether the",
        "pair-sign source/row producer surface remains small enough to justify",
        "larger generated Lean roots.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        f"- Windows: `{payload['window_count']}`",
        f"- Sampled ranks: `{payload['rank_count_sampled']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Validation failures: `{payload['validation_failure_count']}`",
        f"- Observed descriptor families: `{payload['descriptor']['observed']}`",
        f"- Estimated descriptor families: `{payload['descriptor']['estimated']}`",
        f"- Observed source groups: `{payload['source']['observed']}`",
        f"- Estimated source groups: `{payload['source']['estimated']}`",
        f"- Observed row groups: `{payload['row']['observed']}`",
        f"- Estimated row groups: `{payload['row']['estimated']}`",
        f"- Observed source+row producers: `{payload['observed_source_row_producers']}`",
        f"- Estimated source+row producers: `{payload['estimated_source_row_producers']}`",
        f"- Observed chunks at size {payload['chunk_size']}: `{payload['observed_chunk_count']}`",
        f"- Estimated chunks at size {payload['chunk_size']}: `{payload['estimated_chunk_count']}`",
        f"- Producer gate: `{payload['producer_gate']}`",
        f"- Descriptor gate: `{payload['descriptor_gate']}`",
        "",
        "## Incidence Diagnostics",
        "",
        "| Surface | Observed | Singleton | Doubleton | Singleton fraction | Estimated | Method |",
        "| --- | ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for name in ["descriptor", "source", "row", "source_row_edges"]:
        item = payload[name]
        lines.append(
            f"| `{name}` | {item['observed']} | {item['singletons']} | "
            f"{item['doubletons']} | {item['singleton_fraction']:.3f} | "
            f"{item['estimated']} | `{item['method']}` |"
        )
    lines.extend([
        "",
        "## Cumulative Windows",
        "",
        "| Range | GoodDirection | Cum descriptor | Cum source | Cum row | Cum edge | Cum producers |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ])
    for row in payload["cumulative_windows"]:
        lines.append(
            f"| `{row['range']}` | {row['good_direction_cases']} | "
            f"{row['cumulative_descriptor']} | {row['cumulative_source']} | "
            f"{row['cumulative_row']} | {row['cumulative_source_row_edges']} | "
            f"{row['cumulative_source_row_producers']} |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--phase", default="6Z.6K.8AN")
    parser.add_argument("--chunk-size", type=int, default=64)
    parser.add_argument("--producer-gate", type=int, default=2000)
    parser.add_argument("--descriptor-gate", type=int, default=5000)
    parser.add_argument("--min-windows", type=int, default=30)
    args = parser.parse_args()

    if args.chunk_size <= 0:
        raise ValueError("--chunk-size must be positive")
    payload = project(
        checkpoint_dir=args.checkpoint_dir,
        chunk_size=args.chunk_size,
        producer_gate=args.producer_gate,
        descriptor_gate=args.descriptor_gate,
        min_windows=args.min_windows,
        phase=args.phase,
    )
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "window_count": payload["window_count"],
        "rank_count_sampled": payload["rank_count_sampled"],
        "good_direction_cases": payload["good_direction_cases"],
        "observed_descriptor": payload["descriptor"]["observed"],
        "estimated_descriptor": payload["descriptor"]["estimated"],
        "observed_producers": payload["observed_source_row_producers"],
        "estimated_producers": payload["estimated_source_row_producers"],
        "estimated_chunk_count": payload["estimated_chunk_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
