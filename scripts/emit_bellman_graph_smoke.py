#!/usr/bin/env python3
"""Emit a Lean smoke module from a scaled Bellman graph profile.

The emitted module is diagnostic generated evidence, not final coverage.  It
checks that a private finite graph of integer gains and potentials can be
verified by Lean and connected to the generic Bellman theorem.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path


def state_ctor(index: int) -> str:
    return f"State.s{index:04d}"


def edge_name(index: int) -> str:
    return f"edge{index:04d}"


def emit(input_path: Path, output_path: Path, namespace: str) -> None:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    state_count = int(graph["state_count"])
    edges = graph["edges"]
    states = graph["states"]
    roots = graph["root_indices"]
    if len(roots) != 1:
        raise SystemExit(f"expected one root state, found {len(roots)}")
    const_scaled = int(graph["const_scaled"])

    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "set_option maxRecDepth 4096",
        "",
        "/-!",
        "Generated-style graph smoke for a Bellman nonidentity margin family.",
        "",
        "This file is not final generated coverage.  It verifies one bounded",
        "private Bellman graph emitted from the exact tri-source profiler.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
        f"-- state count: {state_count}",
        "private inductive State where",
    ]
    for state in states:
        lines.append(f"  | s{state['index']:04d}")
    lines.extend([
        "",
        "private def graphPotential : State -> Int",
    ])
    for state in states:
        lines.append(f"  | {state_ctor(state['index'])} => {state['potential_scaled']}")
    lines.extend([
        "",
        f"private def rootState : State := {state_ctor(roots[0])}",
        "",
    ])

    edge_names: list[str] = []
    for idx, edge in enumerate(edges):
        name = edge_name(idx)
        edge_names.append(name)
        lines.extend([
            f"private def {name} : BellmanEdge State :=",
            "  { "
            f"src := {state_ctor(edge['src'])}, "
            f"gain := {edge['gain_scaled']}, "
            f"dst := {state_ctor(edge['dst'])}" + " }",
            "",
            f"private theorem {name}_valid : {name}.Valid graphPotential := by",
            f"  norm_num [BellmanEdge.Valid, graphPotential, {name}]",
            "",
        ])

    lines.append("private inductive GraphEdge : BellmanEdge State -> Prop where")
    for idx, name in enumerate(edge_names):
        lines.append(f"  | e{idx:04d} : GraphEdge {name}")
    lines.append("")
    lines.append("private theorem GraphEdge.valid {e : BellmanEdge State} :")
    lines.append("    GraphEdge e -> e.Valid graphPotential := by")
    lines.append("  intro h")
    lines.append("  cases h with")
    for idx, name in enumerate(edge_names):
        lines.append(f"  | e{idx:04d} => exact {name}_valid")
    lines.extend([
        "",
        "private theorem root_bound :",
        f"    ({const_scaled} : Int) + graphPotential rootState <= 0 := by",
        "  norm_num [rootState, graphPotential]",
        "",
        "theorem graphSmoke_path_scaled_margin_nonpos",
        "    {finish : State} {edges : List (BellmanEdge State)}",
        "    (hpath : BellmanPath rootState finish edges)",
        "    (hgraph : forall e, e ∈ edges -> GraphEdge e)",
        "    (hfinish : 0 <= graphPotential finish) :",
        f"    ({const_scaled} : Int) + bellmanGainSum edges <= 0 :=",
        "  const_add_bellmanGainSum_nonpos_of_path",
        "    (V := graphPotential)",
        f"    (const := {const_scaled})",
        "    hpath",
        "    (fun e he => GraphEdge.valid (hgraph e he))",
        "    hfinish",
        "    root_bound",
        "",
        "theorem bellmanGraphSmoke_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ])
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--namespace",
        default="Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke",
    )
    args = parser.parse_args()
    emit(args.input, args.output, args.namespace)


if __name__ == "__main__":
    main()
