#!/usr/bin/env python3
"""Profile label-prefix trie reuse in generated Bellman graph JSON files.

This is a diagnostic tool only: it does not generate proof data.  Its purpose is
to decide whether observed Bellman path languages have enough shared semantic
prefix structure to justify a production trie/automaton backend.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any


@dataclass(frozen=True)
class TrieStats:
    input: str
    start: int | None
    end: int | None
    states: int
    edges: int
    labels: int | None
    path_items_kind: str
    path_items: int
    raw_step_occurrences: int | None
    trie_nodes: int | None
    trie_transition_nodes: int | None
    reused_step_occurrences: int | None
    terminal_nodes: int | None
    max_depth: int | None
    max_branching: int | None
    average_depth: float | None


def load_graph(path: Path) -> tuple[dict[str, Any], dict[str, Any]]:
    data = json.loads(path.read_text())
    graph = data.get("graph")
    if not isinstance(graph, dict):
        raise ValueError(f"{path} does not contain a graph object")
    return data, graph


def path_items(graph: dict[str, Any]) -> tuple[str, list[dict[str, Any]]]:
    classes = graph.get("path_classes")
    if isinstance(classes, list):
        return "path_classes", classes
    objects = graph.get("path_objects")
    if isinstance(objects, list):
        return "path_objects", objects
    return "none", []


def trie_stats_for_items(items: list[dict[str, Any]]) -> dict[str, int | float | None]:
    if not items:
        return {
            "raw_step_occurrences": None,
            "trie_nodes": None,
            "trie_transition_nodes": None,
            "reused_step_occurrences": None,
            "terminal_nodes": None,
            "max_depth": None,
            "max_branching": None,
            "average_depth": None,
        }

    trie_children: list[dict[tuple[int, int], int]] = [dict()]
    terminal_nodes: set[int] = set()
    depths: list[int] = []
    raw_steps = 0

    for item in items:
        edge_indices = item.get("edge_indices")
        label_indices = item.get("label_indices")
        if not isinstance(edge_indices, list) or not isinstance(label_indices, list):
            raise ValueError("path item is missing edge_indices/label_indices lists")
        if len(edge_indices) != len(label_indices):
            raise ValueError("path item has mismatched edge_indices/label_indices")

        node = 0
        raw_steps += len(edge_indices)
        depths.append(len(edge_indices))
        for edge_idx, label_idx in zip(edge_indices, label_indices):
            pair = (int(edge_idx), int(label_idx))
            child = trie_children[node].get(pair)
            if child is None:
                child = len(trie_children)
                trie_children[node][pair] = child
                trie_children.append(dict())
            node = child
        terminal_nodes.add(node)

    trie_nodes = len(trie_children)
    transition_nodes = trie_nodes - 1
    return {
        "raw_step_occurrences": raw_steps,
        "trie_nodes": trie_nodes,
        "trie_transition_nodes": transition_nodes,
        "reused_step_occurrences": raw_steps - transition_nodes,
        "terminal_nodes": len(terminal_nodes),
        "max_depth": max(depths),
        "max_branching": max((len(children) for children in trie_children), default=0),
        "average_depth": sum(depths) / len(depths),
    }


def profile(path: Path) -> TrieStats:
    data, graph = load_graph(path)
    kind, items = path_items(graph)
    tstats = trie_stats_for_items(items)
    labels = graph.get("labels")
    return TrieStats(
        input=str(path),
        start=data.get("start"),
        end=data.get("end"),
        states=int(graph.get("state_count", len(graph.get("states", [])))),
        edges=len(graph.get("edges", [])),
        labels=len(labels) if isinstance(labels, list) else None,
        path_items_kind=kind,
        path_items=len(items),
        raw_step_occurrences=tstats["raw_step_occurrences"],  # type: ignore[arg-type]
        trie_nodes=tstats["trie_nodes"],  # type: ignore[arg-type]
        trie_transition_nodes=tstats["trie_transition_nodes"],  # type: ignore[arg-type]
        reused_step_occurrences=tstats["reused_step_occurrences"],  # type: ignore[arg-type]
        terminal_nodes=tstats["terminal_nodes"],  # type: ignore[arg-type]
        max_depth=tstats["max_depth"],  # type: ignore[arg-type]
        max_branching=tstats["max_branching"],  # type: ignore[arg-type]
        average_depth=tstats["average_depth"],  # type: ignore[arg-type]
    )


def write_markdown(stats: list[TrieStats], path: Path) -> None:
    lines = [
        "# Bellman Trie Profile",
        "",
        "This report profiles label-prefix trie reuse in existing Bellman graph",
        "JSON exports.  It is diagnostic only; Lean still checks any proof data",
        "emitted by the separate graph-smoke emitter.",
        "",
        "| input | range | states | edges | path items | raw steps | trie nodes | reused steps | max depth | max branching |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in stats:
        range_text = (
            f"{row.start}-{row.end}"
            if row.start is not None and row.end is not None
            else "?"
        )
        raw = "" if row.raw_step_occurrences is None else str(row.raw_step_occurrences)
        nodes = "" if row.trie_nodes is None else str(row.trie_nodes)
        reused = "" if row.reused_step_occurrences is None else str(row.reused_step_occurrences)
        depth = "" if row.max_depth is None else str(row.max_depth)
        branching = "" if row.max_branching is None else str(row.max_branching)
        lines.append(
            "| "
            + " | ".join(
                [
                    Path(row.input).name,
                    range_text,
                    str(row.states),
                    str(row.edges),
                    f"{row.path_items} {row.path_items_kind}",
                    raw,
                    nodes,
                    reused,
                    depth,
                    branching,
                ]
            )
            + " |"
        )
    lines.append("")
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", action="append", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    args = parser.parse_args()

    stats = [profile(path) for path in args.input]
    if args.json:
        args.json.write_text(json.dumps([asdict(row) for row in stats], indent=2) + "\n")
    if args.markdown:
        write_markdown(stats, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps([asdict(row) for row in stats], indent=2))


if __name__ == "__main__":
    main()
