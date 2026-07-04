#!/usr/bin/env python3
"""Emit sharded real-gain Bellman smoke modules for top-pairing closure.

This consumes the strengthened graph exported by
`audit_top_pairing_closed_bellman_closure.py --graph-json`.  The generated
Lean is still smoke evidence: it checks scaled integer potentials/gains and
the deterministic transition table for the small strengthened graph, but does
not claim rank coverage.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import shutil
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_GRAPH_JSON = (
    ROOT
    / "scripts/generated/top_pairing_closed_bellman_closure_with_step_tri_source_graph_payload.json"
)
DEFAULT_OUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke"
)


def lean_face(label_key: str) -> str:
    prefix = "face="
    if not label_key.startswith(prefix):
        raise ValueError(f"unexpected label key: {label_key}")
    face = label_key[len(prefix) :].split("|", 1)[0]
    return f"Face.{face}"


def module_import(root_namespace: str, module: str) -> str:
    return f"{root_namespace}.{module}"


def render_potential(namespace: str, graph: dict[str, Any]) -> str:
    lines = [
        "import Cuboctahedron.Search.BellmanTopPairingLanguage",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated strengthened top-pairing Bellman potential smoke.",
        "",
        "This module contains scaled integer potentials and root/final facts",
        "for the small strengthened closed-language diagnostic graph.  It is",
        "not rank coverage.",
        "-/",
        "",
        f"namespace {namespace}.Potential",
        "",
        "open Cuboctahedron",
        "",
        f"def graphStateCount : Nat := {graph['state_count']}",
        f"def graphEdgeCount : Nat := {graph['edge_count']}",
        f"def graphScale : Nat := {graph['scale']}",
        f"def graphConst : Int := {graph['const_scaled']}",
        f"def graphRoot : Nat := {graph['root_indices'][0]}",
        "",
        "def graphPotential : Nat -> Int",
    ]
    for state in graph["states"]:
        lines.append(f"  | {state['index']} => {state['potential_scaled']}")
    lines.extend(
        [
            "  | _ => 0",
            "",
            "theorem root_bound :",
            "    graphConst + graphPotential graphRoot <= 0 := by",
            "  decide",
            "",
        ]
    )
    for idx, state in enumerate(graph["final_indices"]):
        lines.extend(
            [
                f"theorem final_nonneg_{idx:03d} :",
                f"    0 <= graphPotential {state} := by",
                "  decide",
                "",
            ]
        )
    lines.extend(
        [
            "theorem potential_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}.Potential",
            "",
        ]
    )
    return "\n".join(lines)


def render_shard(
    namespace: str,
    shard_index: int,
    start_state: int,
    stop_state: int,
    rows: list[dict[str, Any]],
    labels: list[dict[str, Any]],
) -> str:
    lines = [
        f"import {module_import(namespace, 'Potential')}",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated strengthened top-pairing Bellman transition shard.",
        "",
        "This file checks scaled integer edge inequalities for one source-state",
        "range of the strengthened closed-language graph.",
        "-/",
        "",
        f"namespace {namespace}.Shard{shard_index:03d}",
        "",
        "open Cuboctahedron",
        "open Potential",
        "",
        f"def shardIndex : Nat := {shard_index}",
        f"def stateStart : Nat := {start_state}",
        f"def stateStop : Nat := {stop_state}",
        f"def emittedEdgeCount : Nat := {len(rows)}",
        "",
        "def next : Nat -> Face -> Option (Nat × Int)",
    ]
    for edge in rows:
        for label_index in edge["label_indices"]:
            face = lean_face(labels[label_index]["key"])
            lines.append(
                f"  | {edge['src']}, {face} => "
                f"some ({edge['dst']}, ({edge['gain_scaled']} : Int))"
            )
    lines.append("  | _, _ => none")
    lines.append("")
    for edge in rows:
        for label_index in edge["label_indices"]:
            face = lean_face(labels[label_index]["key"])
            lines.extend(
                [
                    f"theorem edge_{edge['index']:04d}_label_{label_index:02d} :",
                    f"    next {edge['src']} {face} =",
                    f"      some ({edge['dst']}, ({edge['gain_scaled']} : Int)) /\\",
                    f"    ({edge['gain_scaled']} : Int) + graphPotential {edge['dst']} <=",
                    f"      graphPotential {edge['src']} := by",
                    "  constructor <;> decide",
                    "",
                ]
            )
    lines.extend(
        [
            "theorem shard_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}.Shard{shard_index:03d}",
            "",
        ]
    )
    return "\n".join(lines)


def render_dispatch(shard_count: int, states_per_shard: int) -> list[str]:
    lines = ["def closedBellmanNext (state : Nat) (face : Face) : Option (Nat × Int) :="]
    indent = "  "
    for shard_index in range(shard_count - 1):
        bound = (shard_index + 1) * states_per_shard
        lines.append(
            f"{indent}if state < {bound} then Shard{shard_index:03d}.next state face else"
        )
        indent += "  "
    lines.append(f"{indent}Shard{shard_count - 1:03d}.next state face")
    return lines


def render_root(
    namespace: str,
    graph: dict[str, Any],
    shard_count: int,
    states_per_shard: int,
) -> str:
    imports = [
        "import Cuboctahedron.Search.BellmanPotential",
        f"import {module_import(namespace, 'Potential')}",
        *(
            f"import {module_import(namespace, f'Shard{shard_index:03d}')}"
            for shard_index in range(shard_count)
        ),
    ]
    lines = [
        *imports,
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated strengthened top-pairing Bellman graph smoke root.",
        "",
        "This root assembles the sharded real-gain transition table and proves",
        "a concrete evaluator sanity check for one candidate path class.  It is",
        "not rank coverage.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "open Potential",
        "",
        f"def emittedBellmanShardCount : Nat := {shard_count}",
        f"def emittedBellmanEdgeCount : Nat := {graph['edge_count']}",
        "",
        *render_dispatch(shard_count, states_per_shard),
        "",
        "inductive ClosedBellmanSuffixOk : Nat -> List Face -> Prop",
        "  | nil (state : Nat) : ClosedBellmanSuffixOk state []",
        "  | cons {state nextState : Nat} {face : Face} {gain : Int}",
        "      {rest : List Face}",
        "      (hnext : closedBellmanNext state face = some (nextState, gain))",
        "      (hrest : ClosedBellmanSuffixOk nextState rest) :",
        "      ClosedBellmanSuffixOk state (face :: rest)",
        "",
        "theorem evalLabelStepFn_exists_of_closedBellmanSuffixOk",
        "    {state : Nat} {labels : List Face}",
        "    (h : ClosedBellmanSuffixOk state labels) :",
        "    exists finish gain,",
        "      evalLabelStepFn closedBellmanNext state labels = some (finish, gain) := by",
        "  induction h with",
        "  | nil state =>",
        "      exact ⟨state, 0, by simp [evalLabelStepFn]⟩",
        "  | cons hnext _hrest ih =>",
        "      rename_i _ _ _ gain _",
        "      rcases ih with ⟨finish, tailGain, htail⟩",
        "      refine ⟨finish, gain + tailGain, ?_⟩",
        "      simp [evalLabelStepFn, hnext, htail]",
        "",
    ]
    candidate = graph["candidate_objects"][0]
    labels = [
        lean_face(graph["labels"][label_index]["key"])
        for label_index in candidate["label_indices"]
    ]
    labels_expr = "[" + ", ".join(labels) + "]"
    total_gain = sum(
        int(graph["edges"][edge_index]["gain_scaled"])
        for edge_index in candidate["edge_indices"]
    )
    lines.extend(
        [
            "theorem strengthenedCandidate0_eval :",
            "    evalLabelStepFn closedBellmanNext graphRoot",
            f"      {labels_expr} =",
            f"      some ({candidate['final']}, ({total_gain} : Int)) := by",
            "  rfl",
            "",
            "theorem strengthenedCandidate0_margin_nonpos :",
            f"    ({candidate['margin_scaled']} : Int) <= 0 := by",
            "  decide",
            "",
            "theorem strengthenedBellmanRootBound :",
            "    graphConst + graphPotential graphRoot <= 0 := root_bound",
            "",
            "theorem strengthenedBellmanShardedSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--graph-json", type=Path, default=DEFAULT_GRAPH_JSON)
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--states-per-shard", type=int, default=64)
    parser.add_argument("--graph-name", choices=["strengthened", "all"], default="strengthened")
    args = parser.parse_args()

    graph_json = args.graph_json if args.graph_json.is_absolute() else ROOT / args.graph_json
    payload = json.loads(graph_json.read_text())
    graph = payload["graphs"][args.graph_name]
    labels = graph["labels"]
    rows = sorted(
        graph["edges"],
        key=lambda edge: (int(edge["src"]), int(edge["dst"]), int(edge["gain_scaled"])),
    )
    output_dir = args.output_dir if args.output_dir.is_absolute() else ROOT / args.output_dir
    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    shard_count = (int(graph["state_count"]) + args.states_per_shard - 1) // args.states_per_shard
    (output_dir / "Potential.lean").write_text(
        render_potential(args.namespace, graph),
        encoding="utf-8",
    )
    for shard_index in range(shard_count):
        start_state = shard_index * args.states_per_shard
        stop_state = min((shard_index + 1) * args.states_per_shard, int(graph["state_count"]))
        shard_rows = [
            row
            for row in rows
            if start_state <= int(row["src"]) < stop_state
        ]
        (output_dir / f"Shard{shard_index:03d}.lean").write_text(
            render_shard(
                args.namespace,
                shard_index,
                start_state,
                stop_state,
                shard_rows,
                labels,
            ),
            encoding="utf-8",
        )
    (output_dir / "All.lean").write_text(
        render_root(args.namespace, graph, shard_count, args.states_per_shard),
        encoding="utf-8",
    )
    print(
        f"wrote {output_dir.relative_to(ROOT)} with {shard_count} shards, "
        f"{len(rows)} edges, {graph['state_count']} states"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
