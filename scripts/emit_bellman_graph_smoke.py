#!/usr/bin/env python3
"""Emit a Lean smoke module from a scaled Bellman graph profile.

The emitted module is diagnostic generated evidence, not final coverage.  It
checks that a private finite graph of integer gains and potentials can be
verified by Lean and connected to the generic Bellman theorem.
"""

from __future__ import annotations

import argparse
import json
from fractions import Fraction
from pathlib import Path


def state_ctor(index: int) -> str:
    return f"State.s{index:04d}"


def edge_name(index: int) -> str:
    return f"edge{index:04d}"


def lean_or_cases(names: list[str], *, indent: str = "  ") -> list[str]:
    lines = [indent + "rcases he with"]
    lines.append(indent + "  " + " | ".join(names))
    return lines


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
    scale = int(graph["scale"])
    state_index = {state["key"]: int(state["index"]) for state in states}
    edge_index = {
        (int(edge["src"]), int(edge["dst"]), int(edge["gain_scaled"])): idx
        for idx, edge in enumerate(edges)
    }
    argmax = data.get("argmax_path", {})
    argmax_edge_indices: list[int] = []
    for step in argmax.get("edges", []):
        src = state_index[step["src"]]
        dst = state_index[step["dst"]]
        gain_scaled = int(Fraction(step["gain"]) * scale)
        try:
            argmax_edge_indices.append(edge_index[(src, dst, gain_scaled)])
        except KeyError as exc:
            raise SystemExit(
                f"argmax edge not found: src={src} dst={dst} gain={gain_scaled}"
            ) from exc
    argmax_final = state_index.get(argmax.get("final_state", ""), roots[0])
    argmax_margin_scaled = int(Fraction(argmax.get("margin_bound", "0")) * scale)
    argmax_rhs_scaled = const_scaled + sum(
        int(edges[idx]["gain_scaled"]) for idx in argmax_edge_indices
    )
    path_classes = graph.get("path_classes")
    path_objects = path_classes if path_classes is not None else graph.get("path_objects")
    if path_objects is None:
        path_objects = [
            {
                "name": "argmax",
                "rank": argmax.get("realizing_ranks", ["argmax"])[0],
                "final": argmax_final,
                "margin_scaled": argmax_margin_scaled,
                "edge_indices": argmax_edge_indices,
            }
        ]
    else:
        path_objects = [
            {
                "name": (
                    f"cls{idx:04d}" if path_classes is not None else f"obj{idx:04d}"
                ),
                "rank": (
                    f"class count {obj['count']}; sample {obj['rank_sample']}"
                    if path_classes is not None
                    else obj["rank"]
                ),
                "final": int(obj["final"]),
                "margin_scaled": int(obj["margin_scaled"]),
                "edge_indices": [int(edge_idx) for edge_idx in obj["edge_indices"]],
            }
            for idx, obj in enumerate(path_objects)
        ]

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
            "  change "
            f"({edge['gain_scaled']} : Int) + graphPotential {state_ctor(edge['dst'])} "
            f"<= graphPotential {state_ctor(edge['src'])}",
            f"  decide",
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
        "  decide",
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
        "theorem graphSmoke_family_scaled_margin_nonpos",
        "    {Obj : Type} {scaledMargin : Obj -> Int}",
        "    (htrace : BellmanTraceBound",
        "      graphPotential GraphEdge rootState",
        f"      ({const_scaled} : Int) scaledMargin) :",
        "    forall obj : Obj, scaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanTraceBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    htrace",
        "",
        "private inductive SmokeObj where",
    ])
    for obj in path_objects:
        lines.append(f"  | {obj['name']}")
    lines.extend([
        "",
        "private def smokeScaledMargin : SmokeObj -> Int",
    ])
    for obj in path_objects:
        lines.append(f"  | SmokeObj.{obj['name']} => {obj['margin_scaled']}")
    lines.append("")
    for obj in path_objects:
        obj_name = obj["name"]
        final_state = int(obj["final"])
        edge_indices = obj["edge_indices"]
        rhs_scaled = const_scaled + sum(int(edges[idx]["gain_scaled"]) for idx in edge_indices)
        lines.extend([
            f"-- rank: {obj['rank']}",
            f"private def {obj_name}FinalState : State := {state_ctor(final_state)}",
            "",
            f"private def {obj_name}Edges : List (BellmanEdge State) :=",
        ])
        if edge_indices:
            edge_terms = [edge_name(idx) for idx in edge_indices]
            lines.append("  [" + edge_terms[0])
            for edge_term in edge_terms[1:]:
                lines.append("  , " + edge_term)
            lines[-1] += "]"
        else:
            lines.append("  []")
        lines.extend([
            "",
            f"private theorem {obj_name}Path :",
            f"    BellmanPath rootState {obj_name}FinalState {obj_name}Edges := by",
            f"  unfold {obj_name}Edges rootState {obj_name}FinalState",
        ])
        for _idx in edge_indices:
            lines.extend([
                "  apply BellmanPath.cons",
                "  · rfl",
                "  · rfl",
            ])
        lines.append(f"  exact BellmanPath.nil {state_ctor(final_state)}")
        lines.extend([
            "",
            f"private theorem {obj_name}Graph :",
            f"    forall e, e ∈ {obj_name}Edges -> GraphEdge e := by",
            "  intro e he",
            f"  simp [{obj_name}Edges] at he",
        ])
        if edge_indices:
            case_names = [f"h{idx:04d}" for idx in range(len(edge_indices))]
            lines.extend(lean_or_cases(case_names))
            for case_idx, edge_idx in enumerate(edge_indices):
                lines.append(f"  · subst e; exact GraphEdge.e{edge_idx:04d}")
        else:
            lines.append("  exact False.elim he")
        lines.extend([
            "",
            f"private theorem {obj_name}Final_nonneg :",
            f"    0 <= graphPotential {obj_name}FinalState := by",
            "  decide",
            "",
            f"private theorem {obj_name}Margin_bound :",
            f"    smokeScaledMargin SmokeObj.{obj_name} <= ({const_scaled} : Int) + bellmanGainSum {obj_name}Edges := by",
            f"  change ({obj['margin_scaled']} : Int) <= {rhs_scaled}",
            "  decide",
            "",
        ])
    lines.extend([
        "private theorem smokeTraceBound :",
        "    BellmanTraceBound",
        "      graphPotential GraphEdge rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin := by",
        "  intro obj",
        "  cases obj",
    ])
    for obj in path_objects:
        obj_name = obj["name"]
        lines.extend([
            f"  · exact ⟨{obj_name}FinalState, {obj_name}Edges, {obj_name}Path,",
            f"      {obj_name}Graph, {obj_name}Final_nonneg, {obj_name}Margin_bound⟩",
        ])
    lines.extend([
        "",
        "theorem graphSmoke_observed_objects_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=",
        "  graphSmoke_family_scaled_margin_nonpos smokeTraceBound",
        "",
        "private def smokeAccepts (_obj : SmokeObj) : Prop := True",
        "",
        "private theorem smokeLanguageTraceBound :",
        "    BellmanLanguageTraceBound",
        "      graphPotential GraphEdge rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin smokeAccepts := by",
        "  intro obj _hobj",
        "  exact smokeTraceBound obj",
        "",
        "theorem graphSmoke_observed_language_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLanguageTraceBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeLanguageTraceBound",
        "",
        "private structure SmokeTrace where",
        "  finish : State",
        "  edges : List (BellmanEdge State)",
        "  margin : Int",
        "",
        "private def smokeTraceScaledMargin (trace : SmokeTrace) : Int :=",
        "  trace.margin",
        "",
        "private def smokeTraceAccepts (trace : SmokeTrace) : Prop :=",
        "  BellmanPath rootState trace.finish trace.edges",
        "    /\\ (forall e, e ∈ trace.edges -> GraphEdge e)",
        "    /\\ 0 <= graphPotential trace.finish",
        f"    /\\ trace.margin <= ({const_scaled} : Int) + bellmanGainSum trace.edges",
        "",
        "private theorem smokeTraceLanguageTraceBound :",
        "    BellmanLanguageTraceBound",
        "      graphPotential GraphEdge rootState",
        f"      ({const_scaled} : Int) smokeTraceScaledMargin smokeTraceAccepts := by",
        "  intro trace htrace",
        "  rcases htrace with ⟨hpath, hgraph, hfinish, hmargin⟩",
        "  exact ⟨trace.finish, trace.edges, hpath, hgraph, hfinish, hmargin⟩",
        "",
        "theorem graphSmoke_trace_language_scaled_margin_nonpos :",
        "    forall trace : SmokeTrace,",
        "      smokeTraceAccepts trace -> smokeTraceScaledMargin trace <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLanguageTraceBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeTraceLanguageTraceBound",
        "",
        "theorem graphSmoke_argmax_object_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=",
        "  graphSmoke_observed_objects_scaled_margin_nonpos",
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
