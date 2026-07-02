#!/usr/bin/env python3
"""Profile semantic top-pairing trace prefix counts by depth.

This is exact diagnostic evidence, not proof.  It uses the same semantic prefix
enumerator as the generated prefix smoke emitter and reports the number of
closed-language-compatible prefixes at each depth.  The output is meant to size
bounded Lean classifier shards before any broad generation.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_trace_prefix_depth_profile.json"
DEFAULT_MARKDOWN = ROOT / "docs/top_pairing_trace_prefix_depth_profile.md"


def profile(max_depth: int, shard_sizes: list[int]) -> dict[str, object]:
    rows = []
    for depth in range(max_depth + 1):
        count = len(prefix_smoke.enumerate_semantic_prefixes(depth))
        rows.append(
            {
                "depth": depth,
                "prefix_count": count,
                "estimated_shards": {
                    str(size): (count + size - 1) // size for size in shard_sizes
                },
            }
        )
    peak = max(rows, key=lambda row: row["prefix_count"])
    return {
        "source": "exact semantic prefix enumerator",
        "max_depth": max_depth,
        "shard_sizes": shard_sizes,
        "rows": rows,
        "peak": peak,
        "sampled_rank_or_path_data": False,
        "semantic_components": [
            "TopPairingStepScheduleLabels",
            "TopPairingSquareGapLabels",
            "TopPairingLocalAxisLabels",
            "remaining pair counts",
            "triangular cancellation stack shadow bound",
        ],
    }


def write_markdown(report: dict[str, object], path: Path) -> None:
    shard_sizes = report["shard_sizes"]
    assert isinstance(shard_sizes, list)
    lines = [
        "# Top-Pairing Trace Prefix-Depth Profile",
        "",
        "This is exact diagnostic evidence, not proof.  Prefixes are enumerated",
        "from the semantic closed-language front door used by the generated",
        "trace-classifier smoke.",
        "",
        f"- source: `{report['source']}`",
        f"- max depth: `{report['max_depth']}`",
        f"- sampled rank/path data: `{report['sampled_rank_or_path_data']}`",
        "",
        "| depth | prefixes | "
        + " | ".join(f"shards @ {size}" for size in shard_sizes)
        + " |",
        "|---:|---:|"
        + "|".join("---:" for _ in shard_sizes)
        + "|",
    ]
    for row in report["rows"]:  # type: ignore[index]
        assert isinstance(row, dict)
        shards = row["estimated_shards"]
        assert isinstance(shards, dict)
        lines.append(
            f"| {row['depth']} | {row['prefix_count']} | "
            + " | ".join(str(shards[str(size)]) for size in shard_sizes)
            + " |"
        )
    peak = report["peak"]
    assert isinstance(peak, dict)
    lines.extend(
        [
            "",
            "## Decision",
            "",
            f"The peak prefix count is `{peak['prefix_count']}` at depth",
            f"`{peak['depth']}`.  This makes single monolithic depth theorems",
            "unattractive past the current smoke layer.  The next generated",
            "classifier should emit bounded shards, with a default shard size",
            "in the 64-256 prefix range before measuring Lean RSS.",
            "",
        ]
    )
    path.write_text("\n".join(lines))


def parse_shard_sizes(raw: str) -> list[int]:
    sizes = [int(item) for item in raw.split(",") if item]
    if not sizes or any(size <= 0 for size in sizes):
        raise argparse.ArgumentTypeError("shard sizes must be positive integers")
    return sizes


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-depth", type=int, default=14)
    parser.add_argument(
        "--shard-sizes",
        type=parse_shard_sizes,
        default=parse_shard_sizes("64,128,256"),
    )
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MARKDOWN)
    args = parser.parse_args()

    report = profile(args.max_depth, args.shard_sizes)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    write_markdown(report, args.markdown)
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    peak = report["peak"]
    assert isinstance(peak, dict)
    print(f"peak: depth={peak['depth']} prefixes={peak['prefix_count']}")


if __name__ == "__main__":
    main()
