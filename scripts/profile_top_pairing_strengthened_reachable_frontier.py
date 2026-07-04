#!/usr/bin/env python3
"""Profile the next strengthened Bellman local-branch frontier.

This diagnostic reads only checked/generated Lean source and the current
branch-table shard input.  It does not enumerate ranks or prove coverage.  Its
purpose is to keep the semantic Bellman route honest by identifying the next
bounded graph states that need semantic eval states and local branch tables.
"""

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

DEFAULT_GRAPH_SOURCE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke/All.lean"
)
DEFAULT_INPUT = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000_input.json"
)
DEFAULT_SEMANTIC_SOURCE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke.lean"
)
DEFAULT_JSON = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_reachable_frontier_profile.json"
)
DEFAULT_MD = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_reachable_frontier_profile.md"
)

EDGE_RE = re.compile(
    r"\|\s+(e[0-9]+_l[0-9]+)\s+:\s+ClosedBellmanStep\s+"
    r"([0-9]+)\s+Face\.([A-Za-z0-9]+)\s+([0-9]+)\s+"
    r"\(([-0-9]+)\s+:\s+Int\)"
)
EVAL_STATE_RE = re.compile(
    r"def ([A-Za-z0-9_]+EvalState) : StrengthenedClosedEvalState where\n"
    r"\s*transducer := [^\n]+\n"
    r"\s*graph := ([0-9]+)"
)


@dataclass(frozen=True)
class Edge:
    ctor: str
    src: int
    face: str
    dst: int
    gain: int

    def key(self) -> tuple[str, int, int]:
        return (self.face, self.dst, self.gain)

    def to_json(self) -> dict[str, int | str]:
        return {
            "constructor": self.ctor,
            "src": self.src,
            "face": self.face,
            "dst": self.dst,
            "gain": self.gain,
        }


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def parse_edges(path: Path) -> list[Edge]:
    source = path.read_text(encoding="utf-8")
    edges = [
        Edge(
            ctor=match.group(1),
            src=int(match.group(2)),
            face=match.group(3),
            dst=int(match.group(4)),
            gain=int(match.group(5)),
        )
        for match in EDGE_RE.finditer(source)
    ]
    if not edges:
        raise ValueError(f"no ClosedBellmanStep edges found in {path}")
    return edges


def parse_eval_state_graphs(path: Path) -> dict[int, list[str]]:
    source = path.read_text(encoding="utf-8")
    out: dict[int, list[str]] = defaultdict(list)
    for match in EVAL_STATE_RE.finditer(source):
        out[int(match.group(2))].append(match.group(1))
    return dict(sorted(out.items()))


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def outgoing_by_src(edges: list[Edge]) -> dict[int, list[Edge]]:
    out: dict[int, list[Edge]] = defaultdict(list)
    for edge in edges:
        out[edge.src].append(edge)
    for group in out.values():
        group.sort(key=lambda edge: (edge.face, edge.dst, edge.gain, edge.ctor))
    return dict(out)


def covered_state_rows(input_data: dict[str, Any]) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for state in input_data.get("states", []):
        graph = state.get("graph")
        if graph is None:
            raise ValueError(
                "input states must include graph ids; rerun "
                "profile_top_pairing_strengthened_local_branch_table_shard.py"
            )
        rows.append(state)
    return rows


def branch_detail_key(detail: dict[str, Any]) -> tuple[str, int, int]:
    return (
        str(detail["face"]),
        int(detail["next_graph"]),
        int(detail["gain"]),
    )


def build_payload(args: argparse.Namespace) -> dict[str, Any]:
    edges = parse_edges(args.graph_source)
    eval_state_graphs = parse_eval_state_graphs(args.semantic_source)
    outgoing = outgoing_by_src(edges)
    input_data = read_json(args.input)
    covered_rows = covered_state_rows(input_data)
    covered_graphs = sorted(int(row["graph"]) for row in covered_rows)
    covered_graph_set = set(covered_graphs)

    covered_audit: list[dict[str, Any]] = []
    mismatches: list[dict[str, Any]] = []
    for row in covered_rows:
        graph = int(row["graph"])
        graph_edges = outgoing.get(graph, [])
        graph_keys = {edge.key() for edge in graph_edges}
        input_keys = {
            branch_detail_key(detail)
            for detail in row.get("branch_details", [])
        }
        missing = sorted(graph_keys - input_keys)
        extra = sorted(input_keys - graph_keys)
        if missing or extra:
            mismatches.append(
                {
                    "graph": graph,
                    "constructor": row["constructor"],
                    "missing_from_input": [
                        {"face": face, "next_graph": dst, "gain": gain}
                        for face, dst, gain in missing
                    ],
                    "extra_in_input": [
                        {"face": face, "next_graph": dst, "gain": gain}
                        for face, dst, gain in extra
                    ],
                }
            )
        covered_audit.append(
            {
                "constructor": row["constructor"],
                "graph": graph,
                "input_branch_count": int(row["branch_count"]),
                "graph_branch_count": len(graph_edges),
                "matches_checked_graph": not missing and not extra,
            }
        )

    next_graphs = sorted(
        {
            edge.dst
            for graph in covered_graphs
            for edge in outgoing.get(graph, [])
            if edge.dst not in covered_graph_set
        }
    )
    next_rows = [
        {
            "graph": graph,
            "outgoing_branch_count": len(outgoing.get(graph, [])),
            "outgoing": [edge.to_json() for edge in outgoing.get(graph, [])],
        }
        for graph in next_graphs
    ]
    terminal_next = [row["graph"] for row in next_rows if row["outgoing_branch_count"] == 0]
    existing_next_semantic = sorted(
        graph for graph in next_graphs if graph in eval_state_graphs
    )
    missing_next_semantic = sorted(
        graph for graph in next_graphs if graph not in eval_state_graphs
    )

    decision = (
        "next-frontier-ready-for-semantic-state-emission"
        if not mismatches and missing_next_semantic
        else (
            "current-shard-covers-frontier"
            if not mismatches
            else "current-shard-input-mismatches-checked-graph"
        )
    )

    return {
        "mode": "closed-bellman-strengthened-reachable-frontier-profile",
        "decision": decision,
        "graph_source": rel(args.graph_source),
        "input": rel(args.input),
        "semantic_source": rel(args.semantic_source),
        "total_checked_graph_edges": len(edges),
        "total_checked_graph_states_with_outgoing": len(outgoing),
        "semantic_eval_state_graphs": {
            str(graph): names for graph, names in eval_state_graphs.items()
        },
        "covered_state_count": len(covered_graphs),
        "covered_graphs": covered_graphs,
        "covered_audit": covered_audit,
        "mismatch_count": len(mismatches),
        "mismatches": mismatches,
        "next_frontier_state_count": len(next_graphs),
        "next_frontier_graphs": next_graphs,
        "next_frontier_terminal_state_count": len(terminal_next),
        "next_frontier_terminal_graphs": terminal_next,
        "next_frontier_existing_semantic_state_count": len(existing_next_semantic),
        "next_frontier_existing_semantic_graphs": existing_next_semantic,
        "next_frontier_missing_semantic_state_count": len(missing_next_semantic),
        "next_frontier_missing_semantic_graphs": missing_next_semantic,
        "next_frontier": next_rows,
        "proof_status": (
            "Diagnostic only. The checked graph source gives local graph "
            "edges, but the next frontier still needs semantic eval-state "
            "definitions and Lean local branch tables."
        ),
    }


def emit_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Closed Bellman Strengthened Reachable Frontier Profile",
        "",
        "Diagnostic-only profile.  This does not prove coverage; it identifies",
        "the next bounded graph states that should receive semantic eval states",
        "and local branch tables.",
        "",
        f"- decision: `{payload['decision']}`",
        f"- graph source: `{payload['graph_source']}`",
        f"- input: `{payload['input']}`",
        f"- semantic source: `{payload['semantic_source']}`",
        f"- checked graph edges: `{payload['total_checked_graph_edges']}`",
        f"- checked graph states with outgoing edges: "
        f"`{payload['total_checked_graph_states_with_outgoing']}`",
        f"- covered graph states: `{payload['covered_state_count']}`",
        f"- mismatch count: `{payload['mismatch_count']}`",
        f"- next frontier states: `{payload['next_frontier_state_count']}`",
        f"- next frontier terminal states: "
        f"`{payload['next_frontier_terminal_state_count']}`",
        f"- next frontier states with existing semantic eval states: "
        f"`{payload['next_frontier_existing_semantic_state_count']}`",
        f"- next frontier states missing semantic eval states: "
        f"`{payload['next_frontier_missing_semantic_state_count']}`",
        "",
        "## Covered State Audit",
        "",
        "| constructor | graph | input branches | graph branches | matches |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["covered_audit"]:
        lines.append(
            f"| `{row['constructor']}` | `{row['graph']}` | "
            f"`{row['input_branch_count']}` | `{row['graph_branch_count']}` | "
            f"`{row['matches_checked_graph']}` |"
        )
    lines.extend(
        [
            "",
            "## Next Frontier",
            "",
            "| graph | outgoing branches | outgoing |",
            "| ---: | ---: | --- |",
        ]
    )
    for row in payload["next_frontier"]:
        outgoing = ", ".join(
            f"{edge['face']} -> {edge['dst']} ({edge['gain']})"
            for edge in row["outgoing"]
        )
        if not outgoing:
            outgoing = "<terminal>"
        lines.append(
            f"| `{row['graph']}` | `{row['outgoing_branch_count']}` | {outgoing} |"
        )
    if payload["mismatches"]:
        lines.extend(["", "## Mismatches", ""])
        for mismatch in payload["mismatches"]:
            lines.append(f"- graph `{mismatch['graph']}`: `{mismatch}`")
    lines.extend(
        [
            "",
            "## Semantic Eval-State Availability",
            "",
            f"- existing next-frontier semantic graph states: "
            f"`{payload['next_frontier_existing_semantic_graphs']}`",
            f"- missing next-frontier semantic graph states: "
            f"`{payload['next_frontier_missing_semantic_graphs']}`",
        ]
    )
    lines.extend(["", "## Proof Status", "", str(payload["proof_status"]), ""])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph-source", type=Path, default=DEFAULT_GRAPH_SOURCE)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--semantic-source", type=Path, default=DEFAULT_SEMANTIC_SOURCE)
    parser.add_argument("--json-out", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown-out", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    payload = build_payload(args)
    args.json_out.parent.mkdir(parents=True, exist_ok=True)
    args.markdown_out.parent.mkdir(parents=True, exist_ok=True)
    args.json_out.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    emit_markdown(payload, args.markdown_out)
    print(f"decision={payload['decision']}")
    print(f"wrote {rel(args.json_out)}")
    print(f"wrote {rel(args.markdown_out)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
