#!/usr/bin/env python3
"""Profile coarser Bellman path signatures.

This is untrusted diagnostic infrastructure.  It reads a Bellman graph artifact
and groups observed paths by several signatures that deliberately erase exact
edge/path identity.  The goal is to identify plausible semantic
holonomy/cancellation family coordinates before emitting Lean.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any, Iterable


def label_key(graph: dict[str, Any], idx: int) -> str:
    return str(graph["labels"][idx]["key"])


def state_key(graph: dict[str, Any], idx: int) -> str:
    return str(graph["states"][idx]["key"])


def edge_key(graph: dict[str, Any], idx: int) -> dict[str, Any]:
    return graph["edges"][idx]


def erase_state_parts(state: str, erase: set[str]) -> str:
    kept: list[str] = []
    for part in state.split("|"):
        name = part.split("=", 1)[0]
        if name not in erase:
            kept.append(part)
    return "|".join(kept)


def counts_tuple(values: Iterable[str]) -> tuple[tuple[str, int], ...]:
    return tuple(sorted(Counter(values).items()))


def path_states(graph: dict[str, Any], obj: dict[str, Any]) -> list[int]:
    edges = [edge_key(graph, int(idx)) for idx in obj.get("edge_indices", [])]
    if not edges:
        return []
    out = [int(edges[0]["src"])]
    out.extend(int(edge["dst"]) for edge in edges)
    return out


def margin_range(values: list[int]) -> dict[str, int]:
    if not values:
        return {"min": 0, "max": 0, "spread": 0}
    lo = min(values)
    hi = max(values)
    return {"min": lo, "max": hi, "spread": hi - lo}


def signature_for(mode: str, graph: dict[str, Any], obj: dict[str, Any]) -> Any:
    labels = [label_key(graph, int(idx)) for idx in obj.get("label_indices", [])]
    margins = int(obj.get("margin_scaled", 0))
    final = int(obj.get("final", -1))
    states = [state_key(graph, idx) for idx in path_states(graph, obj)]

    if mode == "label-sequence":
        return tuple(labels)
    if mode == "label-sequence-margin":
        return (tuple(labels), margins)
    if mode == "label-multiset":
        return counts_tuple(labels)
    if mode == "label-multiset-margin":
        return (counts_tuple(labels), margins)
    if mode == "final-label-multiset":
        return (final, counts_tuple(labels))
    if mode == "final-label-multiset-margin":
        return (final, counts_tuple(labels), margins)
    if mode == "state-path-no-triSrc":
        return tuple(erase_state_parts(s, {"triSrc"}) for s in states)
    if mode == "state-path-no-stack-triSrc":
        return tuple(erase_state_parts(s, {"stack", "triSrc"}) for s in states)
    if mode == "state-path-step-rem-parity":
        return tuple(erase_state_parts(s, {"stack", "triSrc", "lin", "prefix"}) for s in states)
    if mode == "state-multiset-no-triSrc":
        return counts_tuple(erase_state_parts(s, {"triSrc"}) for s in states)
    if mode == "state-multiset-no-stack-triSrc":
        return counts_tuple(erase_state_parts(s, {"stack", "triSrc"}) for s in states)
    if mode == "step-label-pair-multiset":
        pairs = []
        for step, label in enumerate(labels):
            pair = label.split("|pair=", 1)[-1] if "|pair=" in label else label
            pairs.append(f"{step}:{pair}")
        return counts_tuple(pairs)
    raise ValueError(f"unknown mode: {mode}")


MODES = [
    "label-sequence",
    "label-sequence-margin",
    "label-multiset",
    "label-multiset-margin",
    "final-label-multiset",
    "final-label-multiset-margin",
    "state-path-no-triSrc",
    "state-path-no-stack-triSrc",
    "state-path-step-rem-parity",
    "state-multiset-no-triSrc",
    "state-multiset-no-stack-triSrc",
    "step-label-pair-multiset",
]


def summarize_mode(mode: str, graph: dict[str, Any]) -> dict[str, Any]:
    groups: dict[Any, list[dict[str, Any]]] = defaultdict(list)
    for obj in graph.get("path_objects", []):
        groups[signature_for(mode, graph, obj)].append(obj)

    sizes = [len(v) for v in groups.values()]
    multi = [v for v in groups.values() if len(v) > 1]
    margin_spreads = [margin_range([int(obj.get("margin_scaled", 0)) for obj in v]) for v in groups.values()]
    multi_margin_spreads = [
        margin_range([int(obj.get("margin_scaled", 0)) for obj in v])
        for v in multi
    ]
    top_groups = sorted(groups.values(), key=lambda rows: (-len(rows), int(rows[0].get("rank", 0))))[:10]
    top_payload = []
    for rows in top_groups:
        margins = [int(row.get("margin_scaled", 0)) for row in rows]
        top_payload.append(
            {
                "size": len(rows),
                "rank_samples": [row.get("rank") for row in rows[:12]],
                "margin": margin_range(margins),
                "finals": sorted({int(row.get("final", -1)) for row in rows}),
                "distinct_label_sequences": len({
                    tuple(int(idx) for idx in row.get("label_indices", []))
                    for row in rows
                }),
            }
        )

    return {
        "mode": mode,
        "group_count": len(groups),
        "path_count": len(graph.get("path_objects", [])),
        "multi_member_groups": len(multi),
        "max_group_size": max(sizes, default=0),
        "size_histogram": {str(k): v for k, v in sorted(Counter(sizes).items())},
        "max_margin_spread": max((row["spread"] for row in margin_spreads), default=0),
        "max_multi_margin_spread": max((row["spread"] for row in multi_margin_spreads), default=0),
        "top_groups": top_payload,
    }


def audit(input_path: Path) -> dict[str, Any]:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    summaries = [summarize_mode(mode, graph) for mode in MODES]
    summaries.sort(key=lambda row: (row["group_count"], -row["max_group_size"], row["mode"]))
    return {
        "input": str(input_path),
        "path_count": len(graph.get("path_objects", [])),
        "state_count": graph.get("state_count"),
        "edge_count": len(graph.get("edges", [])),
        "label_count": len(graph.get("labels", [])),
        "summaries": summaries,
        "decision": "diagnostic-only-coarse-signature-profile",
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Bellman Path Coarsening Profile")
    lines.append("")
    lines.append(f"Input: `{payload['input']}`")
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    lines.append(f"| Paths | `{payload['path_count']}` |")
    lines.append(f"| States | `{payload['state_count']}` |")
    lines.append(f"| Edges | `{payload['edge_count']}` |")
    lines.append(f"| Labels | `{payload['label_count']}` |")
    lines.append("")
    lines.append("## Signature Summary")
    lines.append("")
    lines.append("| Mode | Groups | Multi groups | Max group | Max margin spread |")
    lines.append("| --- | ---: | ---: | ---: | ---: |")
    for row in payload["summaries"]:
        lines.append(
            f"| `{row['mode']}` | `{row['group_count']}` | "
            f"`{row['multi_member_groups']}` | `{row['max_group_size']}` | "
            f"`{row['max_margin_spread']}` |"
        )
    lines.append("")
    lines.append("## Top Groups By Mode")
    for row in payload["summaries"]:
        if row["multi_member_groups"] == 0:
            continue
        lines.append("")
        lines.append(f"### `{row['mode']}`")
        lines.append("")
        lines.append("| Size | Rank samples | Margin min/max/spread | Finals | Distinct label seqs |")
        lines.append("| ---: | --- | --- | --- | ---: |")
        for group in row["top_groups"][:5]:
            margin = group["margin"]
            lines.append(
                f"| `{group['size']}` | `{group['rank_samples']}` | "
                f"`{margin['min']}/{margin['max']}/{margin['spread']}` | "
                f"`{group['finals']}` | `{group['distinct_label_sequences']}` |"
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
