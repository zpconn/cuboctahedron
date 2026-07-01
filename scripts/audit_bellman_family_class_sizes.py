#!/usr/bin/env python3
"""Audit Bellman graph class sizes for family-scaling decisions.

This is an untrusted diagnostic.  It reads a Bellman graph JSON artifact and
reports whether the emitted exact path classes are genuine multi-member
families or merely singleton samples.  Lean still checks any generated theorem;
this script only prevents us from mistaking exact path classes for a scalable
semantic family partition.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter
from pathlib import Path
from typing import Any


def _as_count(obj: dict[str, Any]) -> int:
    if "count" in obj:
        return int(obj["count"])
    samples = obj.get("rank_sample")
    if isinstance(samples, list):
        return max(1, len(samples))
    return 1


def audit(input_path: Path) -> dict[str, Any]:
    data = json.loads(input_path.read_text())
    graph = data.get("graph", {})
    path_classes = graph.get("path_classes")
    if path_classes is None:
        path_classes = graph.get("path_objects", [])

    sizes = [_as_count(obj) for obj in path_classes]
    hist = Counter(sizes)
    multi = [
        {
            "class_index": int(obj.get("class_index", idx)),
            "count": _as_count(obj),
            "rank_sample": obj.get("rank_sample", obj.get("rank")),
            "final": obj.get("final"),
            "margin_scaled": obj.get("margin_scaled"),
        }
        for idx, obj in enumerate(path_classes)
        if _as_count(obj) > 1
    ]
    multi.sort(key=lambda row: (-int(row["count"]), int(row["class_index"])))

    total_members = sum(sizes)
    singleton_classes = hist.get(1, 0)
    max_class_size = max(sizes, default=0)
    decision = (
        "exact-path-classes-are-singletons"
        if path_classes and not multi
        else "exact-path-classes-have-multi-member-families"
        if multi
        else "no-path-classes"
    )

    return {
        "input": str(input_path),
        "graph_path_class_count": graph.get("path_class_count"),
        "class_count": len(path_classes),
        "total_members": total_members,
        "singleton_classes": singleton_classes,
        "multi_member_classes": len(multi),
        "max_class_size": max_class_size,
        "size_histogram": {str(k): v for k, v in sorted(hist.items())},
        "top_multi_member_classes": multi[:25],
        "decision": decision,
        "recommendation": (
            "Do not scale exact path classes as coverage families.  Move to a "
            "coarser holonomy/cancellation state-language predicate."
            if decision == "exact-path-classes-are-singletons"
            else "Exact path classes may be usable as a bounded family smoke, "
            "but still audit whether they key on exact affine data."
        ),
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Bellman Family Class-Size Audit")
    lines.append("")
    lines.append(f"Input: `{payload['input']}`")
    lines.append("")
    lines.append(f"Decision: `{payload['decision']}`")
    lines.append("")
    lines.append(payload["recommendation"])
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    lines.append(f"| Graph-reported path classes | `{payload['graph_path_class_count']}` |")
    lines.append(f"| Parsed classes | `{payload['class_count']}` |")
    lines.append(f"| Total represented members | `{payload['total_members']}` |")
    lines.append(f"| Singleton classes | `{payload['singleton_classes']}` |")
    lines.append(f"| Multi-member classes | `{payload['multi_member_classes']}` |")
    lines.append(f"| Max class size | `{payload['max_class_size']}` |")
    lines.append("")
    lines.append("## Size Histogram")
    lines.append("")
    lines.append("| Class size | Count |")
    lines.append("| ---: | ---: |")
    for size, count in payload["size_histogram"].items():
        lines.append(f"| `{size}` | `{count}` |")
    if payload["top_multi_member_classes"]:
        lines.append("")
        lines.append("## Top Multi-Member Classes")
        lines.append("")
        lines.append("| Class | Count | Rank sample | Final | Margin scaled |")
        lines.append("| ---: | ---: | --- | ---: | ---: |")
        for row in payload["top_multi_member_classes"]:
            lines.append(
                f"| `{row['class_index']}` | `{row['count']}` | "
                f"`{row['rank_sample']}` | `{row['final']}` | "
                f"`{row['margin_scaled']}` |"
            )
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = audit(args.input)
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_markdown(payload, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
