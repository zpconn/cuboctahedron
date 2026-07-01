#!/usr/bin/env python3
"""Audit sampled Bellman path classes against exact forced-axis data.

This is an untrusted diagnostic.  It checks whether each observed Bellman
path class with a rank sample can be bridged to the generated face-label
language by the same concrete axis-forcing facts used in the Lean smoke
module.  Lean still checks any generated facts; this script only decides
whether the emitter has a plausible semantic bridge target.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter
from pathlib import Path
from typing import Any

from generate_exact_certificates import (
    final_axis_dot,
    forced_sequence_from_axis,
    kernel_line_cross_factor,
    oriented_fixed_axis,
    pair_word_at_rank,
    total_linear,
)


def face_name_from_label_key(key: str) -> str:
    for part in key.split("|"):
        if part.startswith("face="):
            return part.split("=", 1)[1]
    raise ValueError(f"label key has no face component: {key}")


def rank_sample_to_int(value: object) -> int | None:
    if value is None:
        return None
    if isinstance(value, list):
        if not value:
            return None
        return int(value[0])
    return int(value)


def axis_key(axis: tuple[Any, Any, Any]) -> str:
    return ",".join(str(component) for component in axis)


def sequence_from_label_indices(
    label_indices: list[int], label_face_by_index: dict[int, str]
) -> list[str]:
    if len(label_indices) != 14:
        raise ValueError(f"expected 14 label indices, got {len(label_indices)}")
    faces = ["" for _ in range(14)]
    for step in range(1, 14):
        faces[step] = label_face_by_index[label_indices[step - 1]]
    faces[0] = label_face_by_index[label_indices[13]]
    return faces


def audit(input_path: Path) -> dict[str, Any]:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    labels = graph["labels"]
    label_face_by_index = {
        int(label["index"]): face_name_from_label_key(str(label["key"]))
        for label in labels
    }
    path_classes = graph.get("path_classes") or graph.get("path_objects") or []

    rows: list[dict[str, Any]] = []
    status_counts: Counter[str] = Counter()
    axis_counts: Counter[str] = Counter()
    final_axis_dot_counts: Counter[str] = Counter()
    mismatch_examples: list[dict[str, Any]] = []

    for class_index, obj in enumerate(path_classes):
        rank_sample = rank_sample_to_int(obj.get("rank_sample", obj.get("rank")))
        label_indices = [int(i) for i in obj.get("label_indices", [])]
        if rank_sample is None or len(label_indices) != 14:
            status = "missing-rank-or-labels"
            row = {
                "class_index": class_index,
                "status": status,
                "rank_sample": rank_sample,
                "label_count": len(label_indices),
            }
            rows.append(row)
            status_counts[status] += 1
            continue

        label_seq = sequence_from_label_indices(label_indices, label_face_by_index)
        word = pair_word_at_rank(rank_sample)
        linear = total_linear(word)
        axis = oriented_fixed_axis(word, linear)
        kernel = kernel_line_cross_factor(linear, axis)
        forced_seq = forced_sequence_from_axis(word, axis)
        final_dot = final_axis_dot(word, axis)

        status = "bridgeable" if forced_seq == label_seq else "forced-seq-mismatch"
        row = {
            "class_index": class_index,
            "status": status,
            "rank_sample": rank_sample,
            "count": obj.get("count"),
            "margin_scaled": obj.get("margin_scaled"),
            "final": obj.get("final"),
            "axis": [str(axis[0]), str(axis[1]), str(axis[2])],
            "final_axis_dot": str(final_dot),
            "kernel_cross_factor": [[str(x) for x in row] for row in kernel],
            "label_seq": label_seq,
            "forced_seq": forced_seq,
            "word": word,
        }
        rows.append(row)
        status_counts[status] += 1
        axis_counts[axis_key(axis)] += 1
        final_axis_dot_counts[str(final_dot)] += 1
        if status != "bridgeable" and len(mismatch_examples) < 10:
            mismatch_examples.append(row)

    bridgeable = status_counts["bridgeable"]
    total = len(rows)
    payload = {
        "input": str(input_path),
        "path_class_count": total,
        "bridgeable_count": bridgeable,
        "status_counts": dict(status_counts),
        "axis_counts": dict(axis_counts),
        "final_axis_dot_counts": dict(final_axis_dot_counts),
        "mismatch_examples": mismatch_examples,
        "rows": rows,
        "decision": (
            "all-sampled-path-classes-bridgeable"
            if total > 0 and bridgeable == total
            else "bridge-gaps-remain"
        ),
    }
    return payload


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Bellman Axis Bridge Sample Audit")
    lines.append("")
    lines.append(f"Input: `{payload['input']}`")
    lines.append("")
    lines.append(f"Decision: `{payload['decision']}`")
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    lines.append(f"| Path classes | `{payload['path_class_count']}` |")
    lines.append(f"| Bridgeable | `{payload['bridgeable_count']}` |")
    for status, count in sorted(payload["status_counts"].items()):
        lines.append(f"| `{status}` | `{count}` |")
    lines.append("")
    lines.append("## Axis Counts")
    lines.append("")
    lines.append("| Axis | Classes |")
    lines.append("| --- | ---: |")
    for axis, count in sorted(
        payload["axis_counts"].items(), key=lambda item: (-item[1], item[0])
    ):
        lines.append(f"| `{axis}` | `{count}` |")
    lines.append("")
    lines.append("## Final Axis Dot Counts")
    lines.append("")
    lines.append("| Dot | Classes |")
    lines.append("| --- | ---: |")
    for dot, count in sorted(
        payload["final_axis_dot_counts"].items(),
        key=lambda item: (-item[1], item[0]),
    ):
        lines.append(f"| `{dot}` | `{count}` |")
    if payload["mismatch_examples"]:
        lines.append("")
        lines.append("## Mismatch Examples")
        lines.append("")
        for row in payload["mismatch_examples"]:
            lines.append(f"- class `{row['class_index']}`, rank `{row['rank_sample']}`")
            lines.append(f"  - label: `{row['label_seq']}`")
            lines.append(f"  - forced: `{row['forced_seq']}`")
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
