#!/usr/bin/env python3
"""Audit whether a Bellman graph is deterministic by state and label.

The semantic Bellman route needs a deterministic evaluator

  next : State -> Label -> Option (State × Int)

that is valid for the whole semantic language, not just sampled paths.  This
script checks whether the graph data itself is deterministic under the labels
carried by each edge, and separately whether the sampled path-class trie is
deterministic.  It is diagnostic only; Lean still has to check the eventual
generated theorem.
"""

from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]


def display_path(path: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(ROOT).as_posix()
    except ValueError:
        return path.as_posix()


def label_face_from_key(key: str) -> str | None:
    for part in key.split("|"):
        if part.startswith("face="):
            return part.split("=", 1)[1]
    return None


def edge_label_indices(edge: dict[str, Any], edge_index: int) -> list[int]:
    raw = edge.get("label_indices")
    if raw:
        return [int(x) for x in raw]
    return [edge_index]


def transition_conflicts(
    transitions: list[tuple[int, int, int, int, int]],
) -> tuple[dict[tuple[int, int], tuple[int, int, int]], dict[str, Any]]:
    table: dict[tuple[int, int], tuple[int, int, int]] = {}
    conflicts: dict[tuple[int, int], set[tuple[int, int, int]]] = defaultdict(set)
    for src, label, dst, gain, edge_idx in transitions:
        key = (src, label)
        entry = (dst, gain, edge_idx)
        previous = table.get(key)
        if previous is None:
            table[key] = entry
        elif previous != entry:
            conflicts[key].add(previous)
            conflicts[key].add(entry)
    conflict_items = [
        {
            "src": src,
            "label": label,
            "entries": [
                {"dst": dst, "gain": gain, "edge": edge_idx}
                for dst, gain, edge_idx in sorted(entries)
            ],
        }
        for (src, label), entries in sorted(conflicts.items())
    ]
    stats = {
        "transition_count": len(transitions),
        "unique_state_label_keys": len(table),
        "conflict_key_count": len(conflicts),
        "conflict_entry_count": sum(len(entries) for entries in conflicts.values()),
        "sample_conflicts": conflict_items[:20],
    }
    return table, stats


def sampled_transitions(graph: dict[str, Any]) -> list[tuple[int, int, int, int, int]]:
    edges = graph["edges"]
    path_objects = graph.get("path_classes") or graph.get("path_objects") or []
    transitions: list[tuple[int, int, int, int, int]] = []
    for obj in path_objects:
        edge_indices = [int(x) for x in obj.get("edge_indices", [])]
        label_indices = [int(x) for x in obj.get("label_indices", [])]
        if not label_indices:
            label_indices = [
                edge_label_indices(edges[edge_idx], edge_idx)[0]
                for edge_idx in edge_indices
            ]
        for edge_idx, label_idx in zip(edge_indices, label_indices):
            edge = edges[edge_idx]
            transitions.append(
                (
                    int(edge["src"]),
                    int(label_idx),
                    int(edge["dst"]),
                    int(edge["gain_scaled"]),
                    edge_idx,
                )
            )
    return transitions


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    args = parser.parse_args()

    data = json.loads(args.input.read_text())
    graph = data["graph"]
    edges = graph["edges"]
    labels = graph.get("labels") or []
    label_faces = {
        int(label["index"]): label_face_from_key(str(label.get("key", "")))
        for label in labels
    }

    full_transitions: list[tuple[int, int, int, int, int]] = []
    for edge_idx, edge in enumerate(edges):
        for label_idx in edge_label_indices(edge, edge_idx):
            full_transitions.append(
                (
                    int(edge["src"]),
                    int(label_idx),
                    int(edge["dst"]),
                    int(edge["gain_scaled"]),
                    edge_idx,
                )
            )

    _full_table, full_stats = transition_conflicts(full_transitions)
    _sampled_table, sampled_stats = transition_conflicts(sampled_transitions(graph))

    decision = (
        "full-graph-deterministic"
        if full_stats["conflict_key_count"] == 0
        else "full-graph-nondeterministic-state-must-be-refined"
    )

    summary = {
        "decision": decision,
        "input": args.input.as_posix(),
        "state_count": int(graph["state_count"]),
        "edge_count": len(edges),
        "label_count": len(labels),
        "root_count": len(graph.get("root_indices", [])),
        "final_count": len(graph.get("final_indices", [])),
        "label_faces_known": sum(1 for face in label_faces.values() if face is not None),
        "full_graph": full_stats,
        "sampled_paths": sampled_stats,
    }

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Bellman Graph Determinism Audit",
        "",
        "Diagnostic-only evidence.  This checks whether a Bellman graph can",
        "support a semantic deterministic evaluator `State -> Label -> Option`",
        "for all graph edges, not just sampled paths.",
        "",
        "## Summary",
        "",
        f"- decision: `{decision}`",
        f"- input: `{args.input.as_posix()}`",
        f"- states: `{summary['state_count']}`",
        f"- edges: `{summary['edge_count']}`",
        f"- labels: `{summary['label_count']}`",
        f"- full transition keys: `{full_stats['unique_state_label_keys']}`",
        f"- full conflict keys: `{full_stats['conflict_key_count']}`",
        f"- sampled transition keys: `{sampled_stats['unique_state_label_keys']}`",
        f"- sampled conflict keys: `{sampled_stats['conflict_key_count']}`",
        "",
    ]
    if full_stats["sample_conflicts"]:
        lines.extend(["## Sample Full-Graph Conflicts", ""])
        for conflict in full_stats["sample_conflicts"][:10]:
            lines.append(f"- state `{conflict['src']}`, label `{conflict['label']}`")
            for entry in conflict["entries"]:
                lines.append(
                    f"  - edge `{entry['edge']}` -> state `{entry['dst']}`, gain `{entry['gain']}`"
                )
        lines.append("")
    if sampled_stats["sample_conflicts"]:
        lines.extend(["## Sample Sampled-Path Conflicts", ""])
        for conflict in sampled_stats["sample_conflicts"][:10]:
            lines.append(f"- state `{conflict['src']}`, label `{conflict['label']}`")
            for entry in conflict["entries"]:
                lines.append(
                    f"  - edge `{entry['edge']}` -> state `{entry['dst']}`, gain `{entry['gain']}`"
                )
        lines.append("")
    args.markdown.write_text("\n".join(lines) + "\n")

    print(f"wrote {display_path(args.json)}")
    print(f"wrote {display_path(args.markdown)}")
    print(f"decision: {decision}")


if __name__ == "__main__":
    main()
