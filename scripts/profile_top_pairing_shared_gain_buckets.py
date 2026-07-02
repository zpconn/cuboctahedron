#!/usr/bin/env python3
"""Profile shared-gain buckets for top-pairing Bellman traces.

This is diagnostic-only evidence.  It reads the existing exact
top-pairing graph-acceptance JSON and looks for compact trace buckets whose
accepted Bellman traces all have the same gain.  Such buckets are candidates
for the Lean socket
`TerminalTraceIdSharedGainBucketClosedMarginFamily`: a future generated
semantic family can prove membership in one bucket plus one shared margin
inequality, instead of proving a separate margin inequality per trace id.
"""

from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AUDIT_JSON = (
    ROOT / "scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json"
)
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_shared_gain_buckets.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_shared_gain_buckets.md"


def label_key(labels: list[str], depth: int) -> tuple[str, ...]:
    return tuple(labels[:depth])


def accepted_cases(path: Path) -> list[dict[str, Any]]:
    data = json.loads(path.read_text())
    cases = list(data["first_accepted"])
    for idx, case in enumerate(cases):
        case.setdefault("accepted_index", idx)
    return cases


def gain_buckets(cases: list[dict[str, Any]]) -> list[dict[str, Any]]:
    by_gain: dict[int, list[int]] = defaultdict(list)
    for idx, case in enumerate(cases):
        by_gain[int(case["gain"])].append(idx)
    return [
        {
            "gain": gain,
            "count": len(indices),
            "accepted_indices": indices,
        }
        for gain, indices in sorted(
            by_gain.items(), key=lambda item: (-len(item[1]), item[0])
        )
    ]


def prefix_buckets(cases: list[dict[str, Any]]) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for depth in range(1, 15):
        by_prefix: dict[tuple[str, ...], list[int]] = defaultdict(list)
        for idx, case in enumerate(cases):
            by_prefix[label_key(list(case["labels"]), depth)].append(idx)
        for prefix, indices in by_prefix.items():
            gains = sorted({int(cases[idx]["gain"]) for idx in indices})
            if len(gains) == 1 and len(indices) > 1:
                rows.append(
                    {
                        "depth": depth,
                        "prefix": list(prefix),
                        "gain": gains[0],
                        "count": len(indices),
                        "accepted_indices": indices,
                    }
                )
    rows.sort(key=lambda row: (-int(row["count"]), int(row["depth"]), int(row["gain"])))
    return rows


def render_markdown(summary: dict[str, Any]) -> str:
    lines: list[str] = [
        "# Top-Pairing Shared-Gain Buckets",
        "",
        "This is exact diagnostic evidence, not Lean proof.  It reads the",
        "already-generated accepted top-pairing traces and groups them by",
        "Bellman gain and by homogeneous-gain prefixes.  The intended Lean",
        "consumer is `TerminalTraceIdSharedGainBucketClosedMarginFamily`.",
        "",
        f"- source: `{summary['source']}`",
        f"- accepted traces: `{summary['accepted_trace_count']}`",
        f"- distinct gains: `{summary['distinct_gain_count']}`",
        f"- homogeneous prefix buckets with size > 1: `{summary['homogeneous_prefix_bucket_count']}`",
        "",
        "## Gain Buckets",
        "",
        "| gain | count | accepted indices |",
        "| ---: | ---: | --- |",
    ]
    for row in summary["gain_buckets"]:
        indices = ", ".join(str(i) for i in row["accepted_indices"])
        lines.append(f"| `{row['gain']}` | `{row['count']}` | `{indices}` |")
    lines.extend(
        [
            "",
            "## Largest Homogeneous Prefix Buckets",
            "",
            "| depth | gain | count | accepted indices | prefix |",
            "| ---: | ---: | ---: | --- | --- |",
        ]
    )
    for row in summary["prefix_buckets"][:20]:
        indices = ", ".join(str(i) for i in row["accepted_indices"])
        prefix = " ".join(row["prefix"])
        lines.append(
            f"| `{row['depth']}` | `{row['gain']}` | `{row['count']}` | "
            f"`{indices}` | `{prefix}` |"
        )
    lines.extend(
        [
            "",
            "## Decision Hint",
            "",
            "Use a homogeneous prefix bucket only if its prefix condition can be",
            "proved from the semantic terminal/source-position language without",
            "enumerating accepted ranks.  If the margin proof for the bucket still",
            "requires exact rank-indexed affine RHS data, this Bellman production",
            "route should be rejected in favor of the cancellation-tree summary",
            "automaton.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--audit-json", type=Path, default=DEFAULT_AUDIT_JSON)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    cases = accepted_cases(args.audit_json)
    gain_rows = gain_buckets(cases)
    prefix_rows = prefix_buckets(cases)
    summary = {
        "source": args.audit_json.relative_to(ROOT).as_posix(),
        "accepted_trace_count": len(cases),
        "distinct_gain_count": len(gain_rows),
        "homogeneous_prefix_bucket_count": len(prefix_rows),
        "gain_buckets": gain_rows,
        "prefix_buckets": prefix_rows,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(summary))
    print(f"wrote {args.json.relative_to(ROOT)}")
    print(f"wrote {args.markdown.relative_to(ROOT)}")
    print(f"accepted={len(cases)} distinct_gains={len(gain_rows)} prefix_buckets={len(prefix_rows)}")


if __name__ == "__main__":
    main()
