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

from generate_exact_certificates import (
    append_face_vector_get_theorems,
    append_pair_word_get_theorems,
    append_path_prefix_aff_theorems,
    append_total_aff_theorem,
    final_axis_dot,
    forced_sequence_from_axis,
    kernel_line_cross_factor,
    lean_face_vector_literal,
    lean_pair_word_literal,
    lean_mat4,
    lean_mat3,
    lean_rat,
    lean_vec,
    oriented_fixed_axis,
    pair_word_at_rank,
    prefix_matrices,
    solve_axis_intersection,
    total_aff,
    total_linear,
    word_get_simp_names,
)


def state_ctor(index: int) -> str:
    return f"State.s{index:04d}"


def edge_name(index: int) -> str:
    return f"edge{index:04d}"


def label_ctor(index: int) -> str:
    return f"SmokeLabel.l{index:04d}"


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


def right_assoc_add(terms: list[str]) -> str:
    expr = "0"
    for term in reversed(terms):
        expr = f"{term} + ({expr})"
    return expr


def lean_or_cases(
    names: list[str], *, indent: str = "  ", var: str = "he"
) -> list[str]:
    lines = [indent + f"rcases {var} with"]
    lines.append(indent + "  " + " | ".join(names))
    return lines


def emit(
    input_path: Path,
    output_path: Path,
    namespace: str,
    rank_bridge_limit: int = 1,
) -> None:
    if rank_bridge_limit < 0:
        raise SystemExit("--rank-bridge-limit must be nonnegative")
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    state_count = int(graph["state_count"])
    edges = graph["edges"]
    states = graph["states"]
    labels = graph.get("labels")
    if labels is None:
        labels = [
            {"index": idx, "key": edge_name(idx)}
            for idx, _edge in enumerate(edges)
        ]
    label_face_by_index: dict[int, str] = {}
    for label in labels:
        try:
            label_face_by_index[int(label["index"])] = face_name_from_label_key(
                str(label["key"])
            )
        except ValueError:
            pass
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
                "label_indices": [int(label_idx) for label_idx in obj.get("label_indices", [])],
                "rank_sample": (
                    rank_sample_to_int(obj["rank_sample"])
                    if path_classes is not None and "rank_sample" in obj
                    else None
                ),
            }
            for idx, obj in enumerate(path_objects)
        ]
    for obj in path_objects:
        if not obj.get("label_indices"):
            obj["label_indices"] = [
                int((edges[edge_idx].get("label_indices") or [edge_idx])[0])
                for edge_idx in obj["edge_indices"]
            ]
        if len(obj["label_indices"]) != len(obj["edge_indices"]):
            raise SystemExit(
                f"{obj['name']}: label count {len(obj['label_indices'])} does not match "
                f"edge count {len(obj['edge_indices'])}"
            )
    common_prefix_len = 0
    if path_objects:
        first_pairs = list(zip(path_objects[0]["edge_indices"], path_objects[0]["label_indices"]))
        while common_prefix_len < len(first_pairs):
            pair = first_pairs[common_prefix_len]
            if all(
                common_prefix_len < len(obj["edge_indices"])
                and (obj["edge_indices"][common_prefix_len], obj["label_indices"][common_prefix_len]) == pair
                for obj in path_objects
            ):
                common_prefix_len += 1
            else:
                break
    common_prefix_edges = path_objects[0]["edge_indices"][:common_prefix_len] if path_objects else []
    common_prefix_labels = path_objects[0]["label_indices"][:common_prefix_len] if path_objects else []
    common_prefix_final = (
        int(edges[common_prefix_edges[-1]]["dst"])
        if common_prefix_edges
        else int(roots[0])
    )
    common_prefix_gain_scaled = sum(
        int(edges[idx]["gain_scaled"]) for idx in common_prefix_edges
    )
    trie_nodes: list[dict[str, int | None]] = [
        {"parent": None, "edge": None, "label": None, "state": int(roots[0])}
    ]
    trie_children: list[dict[tuple[int, int], int]] = [dict()]
    for obj in path_objects:
        node = 0
        for edge_idx, label_idx in zip(obj["edge_indices"], obj["label_indices"]):
            pair = (int(edge_idx), int(label_idx))
            child = trie_children[node].get(pair)
            if child is None:
                child = len(trie_nodes)
                trie_children[node][pair] = child
                trie_nodes.append(
                    {
                        "parent": node,
                        "edge": int(edge_idx),
                        "label": int(label_idx),
                        "state": int(edges[int(edge_idx)]["dst"]),
                    }
                )
                trie_children.append(dict())
            node = child
        obj["trie_node"] = node

    face_order = [
        "xp",
        "xm",
        "yp",
        "ym",
        "zp",
        "zm",
        "tmmm",
        "tmmp",
        "tmpm",
        "tmpp",
        "tpmm",
        "tpmp",
        "tppm",
        "tppp",
    ]
    face_label_by_name = {
        face: label_ctor(label_idx) for label_idx, face in label_face_by_index.items()
    }
    bridge_objects = path_objects[:rank_bridge_limit] if rank_bridge_limit > 0 else []
    can_emit_face_sequence_bridge = (
        bool(bridge_objects)
        and all(face in face_label_by_name for face in face_order)
        and all(
            label_idx in label_face_by_index
            for obj in bridge_objects
            for label_idx in obj["label_indices"]
        )
        and all(len(obj["label_indices"]) == 14 for obj in bridge_objects)
    )
    can_emit_rank_sequence_bridge = (
        can_emit_face_sequence_bridge
        and all(obj.get("rank_sample") is not None for obj in bridge_objects)
    )
    rank_bridge_infos: list[dict[str, object]] = []

    def trie_node_name(index: int) -> str:
        return f"trieNode{index:04d}"

    def trie_node_state_name(index: int) -> str:
        return f"{trie_node_name(index)}State"

    def trie_node_labels_name(index: int) -> str:
        return f"{trie_node_name(index)}Labels"

    def trie_node_gain_name(index: int) -> str:
        return f"{trie_node_name(index)}Gain"

    def trie_node_step_labels_name(index: int) -> str:
        return f"{trie_node_name(index)}StepLabels"

    def trie_node_step_gain_name(index: int) -> str:
        return f"{trie_node_name(index)}StepGain"

    def trie_node_run_name(index: int) -> str:
        return f"{trie_node_name(index)}Run"

    def trie_node_step_run_name(index: int) -> str:
        return f"{trie_node_name(index)}StepRun"

    def trie_ancestors(index: int) -> list[int]:
        out: list[int] = []
        while index != 0:
            out.append(index)
            parent = trie_nodes[index]["parent"]
            assert parent is not None
            index = int(parent)
        out.append(0)
        out.reverse()
        return out

    imports = [
        "import Cuboctahedron.Search.BellmanPotential",
        "import Cuboctahedron.Search.FaceLabelLanguage",
    ]
    if can_emit_rank_sequence_bridge:
        imports.append("import Cuboctahedron.Search.AxisForcedRankLanguage")
        imports.append("import Cuboctahedron.Search.BellmanAxisBridge")
        imports.append("import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge")
    lines: list[str] = [
        *imports,
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
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
        "private def smokeGraphTraceAccepts (trace : SmokeTrace) : Prop :=",
        "  BellmanGraphPath GraphEdge rootState trace.finish trace.edges",
        "    /\\ 0 <= graphPotential trace.finish",
        f"    /\\ trace.margin <= ({const_scaled} : Int) + bellmanGainSum trace.edges",
        "",
        "private theorem smokeGraphTraceLanguageTraceBound :",
        "    BellmanGraphLanguageTraceBound",
        "      graphPotential GraphEdge rootState",
        f"      ({const_scaled} : Int) smokeTraceScaledMargin smokeGraphTraceAccepts := by",
        "  intro trace htrace",
        "  rcases htrace with ⟨hpath, hfinish, hmargin⟩",
        "  exact ⟨trace.finish, trace.edges, hpath, hfinish, hmargin⟩",
        "",
        "theorem graphSmoke_graph_trace_language_scaled_margin_nonpos :",
        "    forall trace : SmokeTrace,",
        "      smokeGraphTraceAccepts trace -> smokeTraceScaledMargin trace <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanGraphLanguageTraceBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeGraphTraceLanguageTraceBound",
        "",
        "private inductive SmokeLabel where",
    ])
    for label in labels:
        lines.append(f"  | l{int(label['index']):04d} -- {label['key']}")
    if can_emit_face_sequence_bridge:
        lines.extend([
            "",
            "private def smokeLabelOfFace : Face -> SmokeLabel",
        ])
        for face in face_order:
            lines.append(f"  | Face.{face} => {face_label_by_name[face]}")
        lines.extend([
            "",
            "/--",
            "The profiler emits Bellman labels in contribution order: the thirteen",
            "post-start faces first, followed by the initial `X+` face.",
            "-/",
            "private def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=",
            "  faceLabelsInContributionOrder smokeLabelOfFace seq",
        ])
    lines.extend([
        "",
        "private inductive SmokeEdgeLabel : BellmanEdge State -> SmokeLabel -> Prop where",
    ])
    label_case_idx = 0
    edge_label_ctor: dict[tuple[int, int], str] = {}
    edge_label_step_ctor: dict[tuple[int, int], str] = {}
    edge_label_cases: list[tuple[str, int, int]] = []
    for idx, name in enumerate(edge_names):
        edge_label_indices = edges[idx].get("label_indices")
        if edge_label_indices is None:
            edge_label_indices = [idx]
        for label_idx in edge_label_indices:
            case_name = f"e{label_case_idx:04d}"
            edge_label_ctor[(idx, int(label_idx))] = f"SmokeEdgeLabel.{case_name}"
            edge_label_step_ctor[(idx, int(label_idx))] = f"SmokeStep.{case_name}"
            edge_label_cases.append((case_name, idx, int(label_idx)))
            lines.append(
                f"  | {case_name} : "
                f"SmokeEdgeLabel {name} {label_ctor(int(label_idx))}"
            )
            label_case_idx += 1
    lines.extend([
        "",
        "private inductive SmokeStep : State -> SmokeLabel -> State -> Int -> Prop where",
    ])
    for case_name, edge_idx, label_idx in edge_label_cases:
        name = edge_name(edge_idx)
        lines.append(
            f"  | {case_name} : "
            f"SmokeStep {name}.src {label_ctor(label_idx)} {name}.dst {name}.gain"
        )
    lines.extend([
        "",
        "private theorem SmokeStep.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",
        "    SmokeStep s label t gain -> gain + graphPotential t <= graphPotential s := by",
        "  intro h",
        "  cases h with",
    ])
    for case_name, edge_idx, _label_idx in edge_label_cases:
        name = edge_name(edge_idx)
        lines.append(f"  | {case_name} => simpa [BellmanEdge.Valid] using {name}_valid")
    lines.extend([
        "",
        f"-- shared prefix length: {common_prefix_len}",
        f"private def commonPrefixFinalState : State := {state_ctor(common_prefix_final)}",
        "",
        "private def commonPrefixLabels : List SmokeLabel :=",
    ])
    if common_prefix_labels:
        label_terms = [label_ctor(int(label_idx)) for label_idx in common_prefix_labels]
        lines.append("  [" + label_terms[0])
        for label_term in label_terms[1:]:
            lines.append("  , " + label_term)
        lines[-1] += "]"
    else:
        lines.append("  []")
    lines.extend([
        "",
        "private def commonPrefixGain : Int :=",
    ])
    if common_prefix_edges:
        gain_terms = [f"{edge_name(int(edge_idx))}.gain" for edge_idx in common_prefix_edges]
        lines.append("  " + right_assoc_add(gain_terms))
    else:
        lines.append("  0")
    lines.extend([
        "",
        "private theorem commonPrefixLabelStepRun :",
        "    BellmanLabelStepRun SmokeStep",
        "      rootState commonPrefixFinalState commonPrefixLabels commonPrefixGain := by",
        "  unfold commonPrefixLabels commonPrefixGain rootState commonPrefixFinalState",
    ])
    for edge_idx, label_idx in zip(common_prefix_edges, common_prefix_labels):
        step_case = edge_label_step_ctor[(int(edge_idx), int(label_idx))]
        lines.extend([
            "  apply BellmanLabelStepRun.cons",
            f"  · exact {step_case}",
        ])
    lines.extend([
        f"  exact BellmanLabelStepRun.nil {state_ctor(common_prefix_final)}",
        "",
    ])
    lines.extend([
        f"-- label-prefix trie nodes, including root: {len(trie_nodes)}",
        f"private def {trie_node_state_name(0)} : State := rootState",
        f"private def {trie_node_labels_name(0)} : List SmokeLabel := []",
        f"private def {trie_node_gain_name(0)} : Int := 0",
        f"private theorem {trie_node_run_name(0)} :",
        f"    BellmanLabelStepRun SmokeStep rootState {trie_node_state_name(0)}",
        f"      {trie_node_labels_name(0)} {trie_node_gain_name(0)} := by",
        f"  unfold {trie_node_state_name(0)} {trie_node_labels_name(0)} {trie_node_gain_name(0)}",
        "  exact BellmanLabelStepRun.nil rootState",
        "",
    ])
    for node_idx, node in enumerate(trie_nodes[1:], start=1):
        parent = int(node["parent"])  # type: ignore[arg-type]
        edge_idx = int(node["edge"])  # type: ignore[arg-type]
        label_idx = int(node["label"])  # type: ignore[arg-type]
        edge = edge_name(edge_idx)
        step_case = edge_label_step_ctor[(edge_idx, label_idx)]
        lines.extend([
            f"private def {trie_node_state_name(node_idx)} : State := {edge}.dst",
            f"private def {trie_node_step_labels_name(node_idx)} : List SmokeLabel :=",
            f"  [{label_ctor(label_idx)}]",
            f"private def {trie_node_step_gain_name(node_idx)} : Int := {edge}.gain + (0)",
            f"private def {trie_node_labels_name(node_idx)} : List SmokeLabel :=",
            f"  {trie_node_labels_name(parent)} ++ {trie_node_step_labels_name(node_idx)}",
            f"private def {trie_node_gain_name(node_idx)} : Int :=",
            f"  {trie_node_gain_name(parent)} + {trie_node_step_gain_name(node_idx)}",
            "",
            f"private theorem {trie_node_step_run_name(node_idx)} :",
            f"    BellmanLabelStepRun SmokeStep {trie_node_state_name(parent)} {trie_node_state_name(node_idx)}",
            f"      {trie_node_step_labels_name(node_idx)} {trie_node_step_gain_name(node_idx)} := by",
            f"  unfold {trie_node_state_name(parent)} {trie_node_state_name(node_idx)}",
            f"  unfold {trie_node_step_labels_name(node_idx)} {trie_node_step_gain_name(node_idx)}",
            "  apply BellmanLabelStepRun.cons",
            f"  · exact {step_case}",
            f"  exact BellmanLabelStepRun.nil {trie_node_state_name(node_idx)}",
            "",
            f"private theorem {trie_node_run_name(node_idx)} :",
            f"    BellmanLabelStepRun SmokeStep rootState {trie_node_state_name(node_idx)}",
            f"      {trie_node_labels_name(node_idx)} {trie_node_gain_name(node_idx)} := by",
            f"  unfold {trie_node_labels_name(node_idx)} {trie_node_gain_name(node_idx)}",
            f"  exact BellmanLabelStepRun.append {trie_node_run_name(parent)} {trie_node_step_run_name(node_idx)}",
            "",
        ])
    for obj in path_objects:
        obj_name = obj["name"]
        edge_indices = obj["edge_indices"]
        label_indices = obj["label_indices"]
        suffix_edge_indices = edge_indices[common_prefix_len:]
        suffix_label_indices = label_indices[common_prefix_len:]
        suffix_gain_scaled = sum(int(edges[idx]["gain_scaled"]) for idx in suffix_edge_indices)
        gain_scaled = sum(int(edges[idx]["gain_scaled"]) for idx in edge_indices)
        lines.extend([
            f"private def {obj_name}Labels : List SmokeLabel :=",
        ])
        if label_indices:
            label_terms = [label_ctor(int(label_idx)) for label_idx in label_indices]
            lines.append("  [" + label_terms[0])
            for label_term in label_terms[1:]:
                lines.append("  , " + label_term)
            lines[-1] += "]"
        else:
            lines.append("  []")
        lines.extend([
            "",
            f"private def {obj_name}Gain : Int :=",
        ])
        if edge_indices:
            gain_terms = [f"{edge_name(int(edge_idx))}.gain" for edge_idx in edge_indices]
            lines.append("  " + right_assoc_add(gain_terms))
        else:
            lines.append("  0")
        lines.extend([
            "",
            f"private theorem {obj_name}LabeledRun :",
            f"    BellmanLabeledRun GraphEdge SmokeEdgeLabel",
            f"      rootState {obj_name}FinalState {obj_name}Labels {obj_name}Gain := by",
            f"  unfold {obj_name}Labels {obj_name}Gain rootState {obj_name}FinalState",
        ])
        for edge_idx, label_idx in zip(edge_indices, label_indices):
            try:
                label_case = edge_label_ctor[(int(edge_idx), int(label_idx))]
            except KeyError as exc:
                raise SystemExit(
                    f"{obj_name}: edge {edge_idx} does not allow label {label_idx}"
                ) from exc
            lines.extend([
                f"  apply BellmanLabeledRun.cons (e := {edge_name(int(edge_idx))})",
                "  · rfl",
                "  · rfl",
                f"  · exact GraphEdge.e{int(edge_idx):04d}",
                f"  · exact {label_case}",
            ])
        lines.extend([
            f"  exact BellmanLabeledRun.nil {state_ctor(int(obj['final']))}",
            "",
            f"private theorem {obj_name}LabelStepRun :",
            f"    BellmanLabelStepRun SmokeStep",
            f"      rootState {obj_name}FinalState {obj_name}Labels {obj_name}Gain := by",
            f"  unfold {obj_name}Labels {obj_name}Gain rootState {obj_name}FinalState",
        ])
        for edge_idx, label_idx in zip(edge_indices, label_indices):
            try:
                step_case = edge_label_step_ctor[(int(edge_idx), int(label_idx))]
            except KeyError as exc:
                raise SystemExit(
                    f"{obj_name}: edge {edge_idx} does not allow label {label_idx}"
                ) from exc
            lines.extend([
                "  apply BellmanLabelStepRun.cons",
                f"  · exact {step_case}",
            ])
        lines.extend([
            f"  exact BellmanLabelStepRun.nil {state_ctor(int(obj['final']))}",
            "",
            f"private def {obj_name}SuffixLabels : List SmokeLabel :=",
        ])
        if suffix_label_indices:
            suffix_label_terms = [label_ctor(int(label_idx)) for label_idx in suffix_label_indices]
            lines.append("  [" + suffix_label_terms[0])
            for label_term in suffix_label_terms[1:]:
                lines.append("  , " + label_term)
            lines[-1] += "]"
        else:
            lines.append("  []")
        lines.extend([
            "",
            f"private def {obj_name}SuffixGain : Int :=",
        ])
        if suffix_edge_indices:
            suffix_gain_terms = [
                f"{edge_name(int(edge_idx))}.gain" for edge_idx in suffix_edge_indices
            ]
            lines.append("  " + right_assoc_add(suffix_gain_terms))
        else:
            lines.append("  0")
        lines.extend([
            "",
            f"private theorem {obj_name}SuffixLabelStepRun :",
            f"    BellmanLabelStepRun SmokeStep",
            f"      commonPrefixFinalState {obj_name}FinalState {obj_name}SuffixLabels {obj_name}SuffixGain := by",
            f"  unfold {obj_name}SuffixLabels {obj_name}SuffixGain commonPrefixFinalState {obj_name}FinalState",
        ])
        for edge_idx, label_idx in zip(suffix_edge_indices, suffix_label_indices):
            step_case = edge_label_step_ctor[(int(edge_idx), int(label_idx))]
            lines.extend([
                "  apply BellmanLabelStepRun.cons",
                f"  · exact {step_case}",
            ])
        lines.extend([
            f"  exact BellmanLabelStepRun.nil {state_ctor(int(obj['final']))}",
            "",
            f"private def {obj_name}ComposedLabels : List SmokeLabel :=",
            f"  commonPrefixLabels ++ {obj_name}SuffixLabels",
            "",
            f"private def {obj_name}ComposedGain : Int :=",
            f"  commonPrefixGain + {obj_name}SuffixGain",
            "",
            f"private theorem {obj_name}ComposedLabelStepRun :",
            f"    BellmanLabelStepRun SmokeStep",
            f"      rootState {obj_name}FinalState {obj_name}ComposedLabels {obj_name}ComposedGain := by",
            f"  unfold {obj_name}ComposedLabels {obj_name}ComposedGain",
            f"  exact BellmanLabelStepRun.append commonPrefixLabelStepRun {obj_name}SuffixLabelStepRun",
            "",
            f"private theorem {obj_name}ComposedMargin_bound_gain :",
            f"    smokeScaledMargin SmokeObj.{obj_name} <= ({const_scaled} : Int) + {obj_name}ComposedGain := by",
            f"  unfold {obj_name}ComposedGain commonPrefixGain {obj_name}SuffixGain",
            f"  change ({obj['margin_scaled']} : Int) <= {const_scaled + gain_scaled}",
            "  decide",
            "",
            f"private theorem {obj_name}TrieFinal_nonneg :",
            f"    0 <= graphPotential {trie_node_state_name(int(obj['trie_node']))} := by",
            f"  unfold {trie_node_state_name(int(obj['trie_node']))}",
            "  decide",
            "",
            f"private theorem {obj_name}TrieMargin_bound_gain :",
            f"    smokeScaledMargin SmokeObj.{obj_name} <= ({const_scaled} : Int) + {trie_node_gain_name(int(obj['trie_node']))} := by",
        ])
        ancestors = trie_ancestors(int(obj["trie_node"]))
        unfold_names: list[str] = []
        for ancestor in reversed(ancestors):
            unfold_names.append(trie_node_gain_name(ancestor))
            if ancestor != 0:
                unfold_names.append(trie_node_step_gain_name(ancestor))
        lines.extend([
            "  unfold " + " ".join(unfold_names),
            f"  change ({obj['margin_scaled']} : Int) <= {const_scaled + gain_scaled}",
            "  decide",
            "",
            f"private theorem {obj_name}Margin_bound_gain :",
            f"    smokeScaledMargin SmokeObj.{obj_name} <= ({const_scaled} : Int) + {obj_name}Gain := by",
            f"  unfold {obj_name}Gain",
            f"  change ({obj['margin_scaled']} : Int) <= {const_scaled + gain_scaled}",
            "  decide",
            "",
        ])
    lines.extend([
        "private structure SmokeLabeledTrace where",
        "  finish : State",
        "  labels : List SmokeLabel",
        "  edges : List (BellmanEdge State)",
        "  margin : Int",
        "",
        "private def smokeLabeledTraceScaledMargin (trace : SmokeLabeledTrace) : Int :=",
        "  trace.margin",
        "",
        "private def smokeLabeledTraceAccepts (trace : SmokeLabeledTrace) : Prop :=",
        "  BellmanLabeledGraphPath GraphEdge SmokeEdgeLabel",
        "    rootState trace.finish trace.labels trace.edges",
        "    /\\ 0 <= graphPotential trace.finish",
        f"    /\\ trace.margin <= ({const_scaled} : Int) + bellmanGainSum trace.edges",
        "",
        "private theorem smokeLabeledTraceLanguageTraceBound :",
        "    BellmanLabeledGraphLanguageTraceBound",
        "      graphPotential GraphEdge SmokeEdgeLabel rootState",
        f"      ({const_scaled} : Int) smokeLabeledTraceScaledMargin",
        "      (fun trace => trace.labels) smokeLabeledTraceAccepts := by",
        "  intro trace htrace",
        "  rcases htrace with ⟨hpath, hfinish, hmargin⟩",
        "  exact ⟨trace.finish, trace.edges, hpath, hfinish, hmargin⟩",
        "",
        "theorem graphSmoke_labeled_trace_language_scaled_margin_nonpos :",
        "    forall trace : SmokeLabeledTrace,",
        "      smokeLabeledTraceAccepts trace ->",
        "        smokeLabeledTraceScaledMargin trace <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabeledGraphLanguageTraceBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (EdgeLabel := SmokeEdgeLabel)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := fun trace => trace.labels)",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeLabeledTraceLanguageTraceBound",
        "",
        "private structure SmokeLabeledRunTrace where",
        "  finish : State",
        "  labels : List SmokeLabel",
        "  gain : Int",
        "  margin : Int",
        "",
        "private def smokeLabeledRunTraceScaledMargin (trace : SmokeLabeledRunTrace) : Int :=",
        "  trace.margin",
        "",
        "private def smokeLabeledRunTraceAccepts (trace : SmokeLabeledRunTrace) : Prop :=",
        "  BellmanLabeledRun GraphEdge SmokeEdgeLabel",
        "    rootState trace.finish trace.labels trace.gain",
        "    /\\ 0 <= graphPotential trace.finish",
        f"    /\\ trace.margin <= ({const_scaled} : Int) + trace.gain",
        "",
        "private theorem smokeLabeledRunLanguageBound :",
        "    BellmanLabeledRunLanguageBound",
        "      graphPotential GraphEdge SmokeEdgeLabel rootState",
        f"      ({const_scaled} : Int) smokeLabeledRunTraceScaledMargin",
        "      (fun trace => trace.labels) smokeLabeledRunTraceAccepts := by",
        "  intro trace htrace",
        "  rcases htrace with ⟨hrun, hfinish, hmargin⟩",
        "  exact ⟨trace.finish, trace.gain, hrun, hfinish, hmargin⟩",
        "",
        "theorem graphSmoke_labeled_run_language_scaled_margin_nonpos :",
        "    forall trace : SmokeLabeledRunTrace,",
        "      smokeLabeledRunTraceAccepts trace ->",
        "        smokeLabeledRunTraceScaledMargin trace <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (EdgeLabel := SmokeEdgeLabel)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := fun trace => trace.labels)",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeLabeledRunLanguageBound",
        "",
        "private structure SmokeLabelStepTrace where",
        "  finish : State",
        "  labels : List SmokeLabel",
        "  gain : Int",
        "  margin : Int",
        "",
        "private def smokeLabelStepTraceScaledMargin (trace : SmokeLabelStepTrace) : Int :=",
        "  trace.margin",
        "",
        "private def smokeLabelStepTraceAccepts (trace : SmokeLabelStepTrace) : Prop :=",
        "  BellmanLabelStepRun SmokeStep",
        "    rootState trace.finish trace.labels trace.gain",
        "    /\\ 0 <= graphPotential trace.finish",
        f"    /\\ trace.margin <= ({const_scaled} : Int) + trace.gain",
        "",
        "private theorem smokeLabelStepTraceLanguageBound :",
        "    BellmanLabelStepRunLanguageBound",
        "      graphPotential SmokeStep rootState",
        f"      ({const_scaled} : Int) smokeLabelStepTraceScaledMargin",
        "      (fun trace => trace.labels) smokeLabelStepTraceAccepts := by",
        "  intro trace htrace",
        "  rcases htrace with ⟨hrun, hfinish, hmargin⟩",
        "  exact ⟨trace.finish, trace.gain, hrun, hfinish, hmargin⟩",
        "",
        "theorem graphSmoke_label_step_trace_language_scaled_margin_nonpos :",
        "    forall trace : SmokeLabelStepTrace,",
        "      smokeLabelStepTraceAccepts trace ->",
        "        smokeLabelStepTraceScaledMargin trace <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound",
        "    (V := graphPotential)",
        "    (Step := SmokeStep)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := fun trace => trace.labels)",
        "    (fun _ _ _ _ h => SmokeStep.valid h)",
        "    root_bound",
        "    smokeLabelStepTraceLanguageBound",
        "",
        "private def smokeObjLabels : SmokeObj -> List SmokeLabel",
    ])
    for obj in path_objects:
        lines.append(f"  | SmokeObj.{obj['name']} => {obj['name']}Labels")
    lines.extend([
        "",
        "private def smokeObjComposedLabels : SmokeObj -> List SmokeLabel",
    ])
    for obj in path_objects:
        lines.append(f"  | SmokeObj.{obj['name']} => {obj['name']}ComposedLabels")
    lines.extend([
        "",
        "private def smokeObjTrieLabels : SmokeObj -> List SmokeLabel",
    ])
    for obj in path_objects:
        lines.append(f"  | SmokeObj.{obj['name']} => {trie_node_labels_name(int(obj['trie_node']))}")
    lines.extend([
        "",
        "private theorem smokeObservedLabeledRunLanguageBound :",
        "    BellmanLabeledRunLanguageBound",
        "      graphPotential GraphEdge SmokeEdgeLabel rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin smokeObjLabels smokeAccepts := by",
        "  intro obj _hobj",
        "  cases obj",
    ])
    for obj in path_objects:
        obj_name = obj["name"]
        lines.extend([
            f"  · exact ⟨{obj_name}FinalState, {obj_name}Gain,",
            f"      {obj_name}LabeledRun, {obj_name}Final_nonneg,",
            f"      {obj_name}Margin_bound_gain⟩",
        ])
    lines.extend([
        "",
        "theorem graphSmoke_observed_labeled_run_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound",
        "    (V := graphPotential)",
        "    (GraphEdge := GraphEdge)",
        "    (EdgeLabel := SmokeEdgeLabel)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := smokeObjLabels)",
        "    (fun _ he => GraphEdge.valid he)",
        "    root_bound",
        "    smokeObservedLabeledRunLanguageBound",
        "",
        "private theorem smokeObservedLabelStepRunLanguageBound :",
        "    BellmanLabelStepRunLanguageBound",
        "      graphPotential SmokeStep rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin smokeObjLabels smokeAccepts := by",
        "  intro obj _hobj",
        "  cases obj",
    ])
    for obj in path_objects:
        obj_name = obj["name"]
        lines.extend([
            f"  · exact ⟨{obj_name}FinalState, {obj_name}Gain,",
            f"      {obj_name}LabelStepRun, {obj_name}Final_nonneg,",
            f"      {obj_name}Margin_bound_gain⟩",
        ])
    lines.extend([
        "",
        "theorem graphSmoke_observed_label_step_run_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound",
        "    (V := graphPotential)",
        "    (Step := SmokeStep)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := smokeObjLabels)",
        "    (fun _ _ _ _ h => SmokeStep.valid h)",
        "    root_bound",
        "    smokeObservedLabelStepRunLanguageBound",
        "",
        "private theorem smokeObservedComposedLabelStepRunLanguageBound :",
        "    BellmanLabelStepRunLanguageBound",
        "      graphPotential SmokeStep rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin smokeObjComposedLabels smokeAccepts := by",
        "  intro obj _hobj",
        "  cases obj",
    ])
    for obj in path_objects:
        obj_name = obj["name"]
        lines.extend([
            f"  · exact ⟨{obj_name}FinalState, {obj_name}ComposedGain,",
            f"      {obj_name}ComposedLabelStepRun, {obj_name}Final_nonneg,",
            f"      {obj_name}ComposedMargin_bound_gain⟩",
        ])
    lines.extend([
        "",
        "theorem graphSmoke_observed_composed_label_step_run_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound",
        "    (V := graphPotential)",
        "    (Step := SmokeStep)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := smokeObjComposedLabels)",
        "    (fun _ _ _ _ h => SmokeStep.valid h)",
        "    root_bound",
        "    smokeObservedComposedLabelStepRunLanguageBound",
        "",
        "private theorem smokeObservedTrieLabelStepRunLanguageBound :",
        "    BellmanLabelStepRunLanguageBound",
        "      graphPotential SmokeStep rootState",
        f"      ({const_scaled} : Int) smokeScaledMargin smokeObjTrieLabels smokeAccepts := by",
        "  intro obj _hobj",
        "  cases obj",
    ])
    for obj in path_objects:
        obj_name = obj["name"]
        trie_node = int(obj["trie_node"])
        lines.extend([
            f"  · exact ⟨{trie_node_state_name(trie_node)}, {trie_node_gain_name(trie_node)},",
            f"      {trie_node_run_name(trie_node)}, {obj_name}TrieFinal_nonneg,",
            f"      {obj_name}TrieMargin_bound_gain⟩",
        ])
    lines.extend([
        "",
        "theorem graphSmoke_observed_trie_label_step_run_scaled_margin_nonpos :",
        "    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=",
        "  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound",
        "    (V := graphPotential)",
        "    (Step := SmokeStep)",
        "    (start := rootState)",
        f"    (const := {const_scaled})",
        "    (wordOf := smokeObjTrieLabels)",
        "    (fun _ _ _ _ h => SmokeStep.valid h)",
        "    root_bound",
        "    smokeObservedTrieLabelStepRunLanguageBound",
        "",
    ])
    def emit_face_sequence_bridge(obj: dict[str, object]) -> None:
        obj_name = str(obj["name"])
        trie_node = int(obj["trie_node"])
        seq_name = f"{obj_name}FaceSeq"
        rank_name = f"{obj_name}Rank"
        word_name = f"{obj_name}Word"
        axis_name = f"{obj_name}Axis"
        kernel_name = f"{obj_name}Kernel"
        trace_of_seq_name = f"{obj_name}TraceOfSeq"
        label_indices = [int(idx) for idx in obj["label_indices"]]
        seq_faces = {
            step: label_face_by_index[label_indices[step - 1]]
            for step in range(1, 14)
        }
        seq_faces[0] = label_face_by_index[label_indices[13]]
        ancestors = trie_ancestors(trie_node)
        trie_label_unfolds: list[str] = []
        for anc in reversed(ancestors):
            trie_label_unfolds.append(trie_node_labels_name(anc))
            if anc != 0:
                trie_label_unfolds.append(trie_node_step_labels_name(anc))
        lines.extend([
            f"private def {seq_name} : Step14 -> Face",
        ])
        for step in range(13):
            lines.append(f"  | ⟨{step}, _⟩ => Face.{seq_faces[step]}")
        lines.extend([
            f"  | _ => Face.{seq_faces[13]}",
            "",
            f"private def {seq_name}Language (seq : Step14 -> Face) : Prop :=",
            f"  SameFaceSeq {seq_name} seq",
            "",
            f"private theorem {seq_name}Labels_eq :",
            f"    smokeLabelsOfSeq {seq_name} = {trie_node_labels_name(trie_node)} := by",
            f"  unfold smokeLabelsOfSeq faceLabelsInContributionOrder contributionOrderSteps {seq_name} smokeLabelOfFace",
            "  unfold " + " ".join(trie_label_unfolds),
            "  rfl",
            "",
            f"private theorem {seq_name}Language_labels_eq",
            "    (seq : Step14 -> Face)",
            f"    (hseq : {seq_name}Language seq) :",
            f"    smokeLabelsOfSeq seq = {trie_node_labels_name(trie_node)} := by",
            f"  rw [← {seq_name}Labels_eq]",
            "  unfold smokeLabelsOfSeq",
            "  exact faceLabelsInContributionOrder_eq_of_same smokeLabelOfFace hseq",
            "",
        ])
        if can_emit_rank_sequence_bridge:
            rank_sample = int(obj["rank_sample"])
            sample_word = pair_word_at_rank(rank_sample)
            sample_linear = total_linear(sample_word)
            sample_axis = oriented_fixed_axis(sample_word, sample_linear)
            sample_kernel = kernel_line_cross_factor(sample_linear, sample_axis)
            sample_forced_seq = forced_sequence_from_axis(sample_word, sample_axis)
            positive_p0, positive_lam, positive_solve = solve_axis_intersection(
                total_aff(sample_forced_seq), sample_axis
            )
            if positive_p0[0] != 1:
                raise ValueError("positive candidate p0 is not on the X+ plane")
            positive_cert_payload = {
                "name": f"{obj_name}PositiveCert",
                "forced_seq": sample_forced_seq,
                "p0": [str(value) for value in positive_p0],
                "lambda": str(positive_lam),
                "solve_left_inverse": [
                    [str(value) for value in row] for row in positive_solve
                ],
            }
            sample_prefix_mats = prefix_matrices(sample_word)
            sample_seq_faces = [seq_faces[index] for index in range(14)]
            if sample_forced_seq != sample_seq_faces:
                raise ValueError(
                    "sample forced sequence does not match emitted Bellman face sequence: "
                    f"forced={sample_forced_seq}, emitted={sample_seq_faces}"
                )
            rank_bridge_infos.append(
                {
                    "obj_name": obj_name,
                    "rank_name": rank_name,
                    "seq_name": seq_name,
                    "axis_name": axis_name,
                    "axis_value": sample_axis,
                    "kernel_name": kernel_name,
                    "trace_of_seq_name": trace_of_seq_name,
                    "trie_node": trie_node,
                    "positive_cert_name": positive_cert_payload["name"],
                    "positive_axis_solve_theorem": f"{positive_cert_payload['name']}_axisSolveCheck",
                    "positive_axis_forces_theorem": f"{positive_cert_payload['name']}_axisForces",
                    "positive_margin_theorem": f"{positive_cert_payload['name']}_xpStartInterior_margin_positive",
                }
            )
            sample_final_axis_dot = final_axis_dot(sample_word, sample_axis)
            lines.extend([
                f"private def {rank_name} : Fin numPairWords := ⟨{rank_sample}, by decide⟩",
                "",
                f"private def {word_name} : PairWord :=",
                lean_pair_word_literal(sample_word),
                "",
            ])
            append_pair_word_get_theorems(lines, word_name, sample_word)
            word_simp_names = ", ".join(word_get_simp_names(word_name))
            lines.extend([
                f"private theorem {word_name}_eq_pairWordOfSeq :",
                f"    {word_name} = pairWordOfSeq {seq_name} := by",
                "  decide",
                "",
                f"private theorem {seq_name}_rank :",
                f"    rankPairWord? (pairWordOfSeq {seq_name}) = some {rank_name} := by",
                "  decide",
                "",
                f"private theorem {seq_name}_unrank_pairword :",
                f"    unrankPairWord {rank_name} = pairWordOfSeq {seq_name} := by",
                "  exact",
                f"    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq {seq_name})",
                f"      {rank_name}).1 {seq_name}_rank).symm",
                "",
                f"private theorem {seq_name}_matches_unrank :",
                f"    PairWordMatchesSeq (unrankPairWord {rank_name}) {seq_name} := by",
                f"  rw [{seq_name}_unrank_pairword]",
                f"  exact pairWordOfSeq_matches {seq_name}",
                "",
                f"private theorem {obj_name}_unrank_word :",
                f"    unrankPairWord {rank_name} = {word_name} := by",
                f"  rw [{seq_name}_unrank_pairword]",
                f"  exact {word_name}_eq_pairWordOfSeq.symm",
                "",
                f"private def {axis_name} : Vec3 Rat := {lean_vec(sample_axis)}",
                "",
                f"private def {kernel_name} : KernelLineWitness :=",
                f"  {{ crossFactor := {lean_mat3(sample_kernel)} }}",
                "",
                f"private theorem {obj_name}KernelCheck :",
                f"    checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord {rank_name}))",
                f"      {axis_name} {kernel_name} = true := by",
                f"  rw [{obj_name}_unrank_word]",
                f"  norm_num [{axis_name}, {kernel_name}, checkKernelLineWitness,",
                "    checkVec3NonzeroQ, totalLinearOfPairWord, pairLinearProductRight,",
                f"    pairLinearSuffixNat, {word_simp_names}, fixedPart, crossLeftMatrix,",
                "    matSub, matId, matMul, matVec, canonicalNormalQ, normalQ,",
                "    reflM, dot, scalarMat, outer]",
                "",
                f"private theorem {obj_name}FinalAxisDot :",
                f"    finalAxisDotQ (unrankPairWord {rank_name}) {axis_name} =",
                f"      {lean_rat(sample_final_axis_dot)} := by",
                f"  rw [{obj_name}_unrank_word]",
                f"  norm_num [{axis_name}, finalAxisDotQ, pairPrefixLinearNat,",
                f"    {word_simp_names}, canonicalNormalQ, normalQ, matId, matMul,",
                "    reflM, dot, matSub, scalarMat, outer, matVec]",
                "",
            ])
            for prefix_i in range(13):
                theorem_name = f"{obj_name}PrefixLinear{prefix_i:02d}"
                lines.extend([
                    f"private theorem {theorem_name} :",
                    f"    pairPrefixLinearNat {word_name} {prefix_i} =",
                    f"      {lean_mat3(sample_prefix_mats[prefix_i])} := by",
                    f"  norm_num [pairPrefixLinearNat, {word_simp_names},",
                    "    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,",
                    "    matSub, scalarMat, outer]",
                    "",
                ])
            for axis_i in range(13):
                theorem_name = f"{obj_name}AxisForcesAt{axis_i:02d}"
                lines.extend([
                    f"private theorem {theorem_name} (f : Face)",
                    f"    (hf : pairOfFace f = {word_name}.get ({axis_i} : WordIndex))",
                    "    (hpos : 0 <",
                    f"      dot (matVec (pairPrefixLinearNat {word_name} {axis_i})",
                    f"        (normalQ f)) {axis_name}) :",
                    f"    normalQ ({seq_name} (afterStart ({axis_i} : WordIndex))) =",
                    "      normalQ f := by",
                    f"  rw [{obj_name}PrefixLinear{axis_i:02d}] at hpos",
                    "  cases f <;>",
                    f"    simp [{axis_name}, {seq_name}, {word_name}_get{axis_i:02d}_num,",
                    "      afterStart, pairOfFace, normalQ, dot, matVec]",
                    "      at hf hpos ⊢ <;>",
                    "    first | contradiction | linarith | rfl",
                    "",
                ])
            lines.extend([
                f"private theorem {obj_name}AxisForces :",
                f"    AxisForcesForcedSeq (unrankPairWord {rank_name})",
                f"      {axis_name} {seq_name} := by",
                "  constructor",
                f"  · unfold StartsXp {seq_name}",
                "    decide",
                "  constructor",
                f"  · exact {seq_name}_matches_unrank",
                "  constructor",
                f"  · rw [{obj_name}FinalAxisDot]",
                "    norm_num",
                "  · intro i f hf hpos",
                f"    rw [{obj_name}_unrank_word] at hf hpos",
                "    fin_cases i",
                *[
                    f"    · exact {obj_name}AxisForcesAt{axis_i:02d} f hf hpos"
                    for axis_i in range(13)
                ],
                "",
            ])
            positive_name = positive_cert_payload["name"]
            positive_seq_name = f"{positive_name}Seq"
            positive_p0 = tuple(Fraction(x) for x in positive_cert_payload["p0"])
            positive_lam = Fraction(positive_cert_payload["lambda"])
            positive_solve = tuple(
                tuple(Fraction(x) for x in row)
                for row in positive_cert_payload["solve_left_inverse"]
            )
            lines.extend([
                f"private def {positive_seq_name} : Vector Face 14 :=",
                lean_face_vector_literal(positive_cert_payload["forced_seq"]),
                "",
            ])
            append_face_vector_get_theorems(
                lines, positive_seq_name, positive_cert_payload["forced_seq"]
            )
            lines.extend([
                f"private def {positive_name} : NonIdCert where",
                f"  word := {word_name}",
                f"  axis := {axis_name}",
                f"  kernel := {kernel_name}",
                f"  forcedSeq := {positive_seq_name}",
                f"  p0 := {lean_vec(positive_p0)}",
                f"  lambda := {lean_rat(positive_lam)}",
                f"  solve := {{ leftInverse := {lean_mat4(positive_solve)} }}",
                "  failure := NonIdFailure.axisMissesStartInterior",
                "",
            ])
            positive_path_prefix_theorems = append_path_prefix_aff_theorems(
                lines, positive_cert_payload
            )
            positive_total_aff_theorem = append_total_aff_theorem(
                lines, positive_cert_payload, positive_path_prefix_theorems
            )
            lines.extend([
                f"theorem {positive_name}_axisSolveCheck :",
                "    checkAffineAxisSolveWitness",
                f"      (totalAff (faceVectorSeq {positive_name}.forcedSeq))",
                f"      {positive_name}.axis {positive_name}.p0 {positive_name}.lambda {positive_name}.solve = true := by",
                f"  rw [{positive_total_aff_theorem}]",
                f"  norm_num [{positive_name}, {axis_name}, checkAffineAxisSolveWitness, axisSolveMatrix,",
                "    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]",
                "",
            ])
            lines.extend([
                f"private theorem {positive_name}_axisForces :",
                f"    AxisForcesForcedSeq {positive_name}.word {positive_name}.axis",
                f"      (faceVectorSeq {positive_name}.forcedSeq) := by",
                f"  change AxisForcesForcedSeq {word_name} {axis_name}",
                f"      (faceVectorSeq {positive_seq_name})",
                f"  have hSeqEq : faceVectorSeq {positive_seq_name} = {seq_name} := by",
                "    funext i",
                "    fin_cases i <;> rfl",
                "  rw [hSeqEq]",
                f"  rw [← {obj_name}_unrank_word]",
                f"  exact {obj_name}AxisForces",
                "",
                f"private theorem {positive_name}_kernelCheck :",
                f"    checkKernelLineWitness (totalLinearOfPairWord {positive_name}.word)",
                f"      {positive_name}.axis {positive_name}.kernel = true := by",
                f"  change checkKernelLineWitness (totalLinearOfPairWord {word_name})",
                f"      {axis_name} {kernel_name} = true",
                f"  rw [← {obj_name}_unrank_word]",
                f"  exact {obj_name}KernelCheck",
                "",
            ])
            lines.extend([
                f"private def {obj_name}PairSignLanguage (seq : Step14 -> Face) : Prop :=",
                f"  PairSignLanguageAtRank {rank_name} {seq_name} seq",
                "",
                f"private theorem {obj_name}PairSignLanguage_same",
                "    (seq : Step14 -> Face)",
                f"    (hseq : {obj_name}PairSignLanguage seq) :",
                f"    {seq_name}Language seq := by",
                "  exact sameFaceSeq_of_pairSignLanguageAtRank",
                f"    {seq_name}_matches_unrank hseq",
                "",
            ])
        lines.extend([
            f"private def {trace_of_seq_name} (seq : Step14 -> Face) : SmokeLabelStepTrace where",
            f"  finish := {trie_node_state_name(trie_node)}",
            "  labels := smokeLabelsOfSeq seq",
            f"  gain := {trie_node_gain_name(trie_node)}",
            f"  margin := smokeScaledMargin SmokeObj.{obj_name}",
            "",
            f"private theorem {trace_of_seq_name}_accepts",
            "    (seq : Step14 -> Face)",
            f"    (hlabels : smokeLabelsOfSeq seq = {trie_node_labels_name(trie_node)}) :",
            f"    smokeLabelStepTraceAccepts ({trace_of_seq_name} seq) := by",
            f"  unfold smokeLabelStepTraceAccepts {trace_of_seq_name}",
            "  refine ⟨?_, ?_, ?_⟩",
            "  · change BellmanLabelStepRun SmokeStep",
            f"      rootState {trie_node_state_name(trie_node)}",
            f"      (smokeLabelsOfSeq seq) {trie_node_gain_name(trie_node)}",
            "    rw [hlabels]",
            f"    exact {trie_node_run_name(trie_node)}",
            f"  · exact {obj_name}TrieFinal_nonneg",
            f"  · change smokeScaledMargin SmokeObj.{obj_name} <=",
            f"      ({const_scaled} : Int) + {trie_node_gain_name(trie_node)}",
            f"    exact {obj_name}TrieMargin_bound_gain",
            "",
            f"theorem graphSmoke_{obj_name}_seq_of_trie_labels_scaled_margin_nonpos",
            "    (seq : Step14 -> Face)",
            f"    (hlabels : smokeLabelsOfSeq seq = {trie_node_labels_name(trie_node)}) :",
            f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 :=",
            "  graphSmoke_label_step_trace_language_scaled_margin_nonpos",
            f"    ({trace_of_seq_name} seq) ({trace_of_seq_name}_accepts seq hlabels)",
            "",
            f"theorem graphSmoke_{obj_name}_seq_language_scaled_margin_nonpos",
            "    (seq : Step14 -> Face)",
            f"    (hseq : {seq_name}Language seq) :",
            f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 :=",
            f"  graphSmoke_{obj_name}_seq_of_trie_labels_scaled_margin_nonpos",
            f"    seq ({seq_name}Language_labels_eq seq hseq)",
            "",
        ])
        if can_emit_rank_sequence_bridge:
            lines.extend([
                f"theorem graphSmoke_{obj_name}_pair_sign_language_scaled_margin_nonpos",
                "    (seq : Step14 -> Face)",
                f"    (hseq : {obj_name}PairSignLanguage seq) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 :=",
                f"  graphSmoke_{obj_name}_seq_language_scaled_margin_nonpos",
                f"    seq ({obj_name}PairSignLanguage_same seq hseq)",
                "",
                f"theorem graphSmoke_{obj_name}_axis_forces_scaled_margin_nonpos",
                "    (seq : Step14 -> Face) (axis : Vec3 Rat)",
                "    (kernel : KernelLineWitness)",
                f"    (hRealize : SeqRealizesPairWord (unrankPairWord {rank_name}) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq)",
                "    (hKernel :",
                f"      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord {rank_name}))",
                "        axis kernel = true)",
                "    (hForces :",
                f"      AxisForcesForcedSeq (unrankPairWord {rank_name})",
                f"        axis {seq_name}) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 :=",
                f"  graphSmoke_{obj_name}_pair_sign_language_scaled_margin_nonpos",
                "    seq",
                "    (pairSignLanguageAtRank_of_axisForces",
                "      hRealize hAxisConstraints hKernel hForces)",
                "",
                f"theorem graphSmoke_{obj_name}_generated_axis_forces_scaled_margin_nonpos",
                "    (seq : Step14 -> Face)",
                f"    (hRealize : SeqRealizesPairWord (unrankPairWord {rank_name}) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 :=",
                f"  graphSmoke_{obj_name}_axis_forces_scaled_margin_nonpos",
                f"    seq {axis_name} {kernel_name} hRealize hAxisConstraints",
                f"    {obj_name}KernelCheck {obj_name}AxisForces",
                "",
                f"theorem graphSmoke_{obj_name}_generated_axis_forces_bridge_scaled_margin_nonpos",
                "    (seq : Step14 -> Face)",
                f"    (hRealize : SeqRealizesPairWord (unrankPairWord {rank_name}) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 := by",
                f"  unfold smokeLabelStepTraceScaledMargin {trace_of_seq_name}",
                "  have hrun :",
                "      BellmanLabelStepRun SmokeStep rootState",
                f"        {trie_node_state_name(trie_node)}",
                f"        (faceLabelsInContributionOrder smokeLabelOfFace {seq_name})",
                f"        {trie_node_gain_name(trie_node)} := by",
                "    change BellmanLabelStepRun SmokeStep rootState",
                f"      {trie_node_state_name(trie_node)}",
                f"      (smokeLabelsOfSeq {seq_name}) {trie_node_gain_name(trie_node)}",
                f"    rw [{seq_name}Labels_eq]",
                f"    exact {trie_node_run_name(trie_node)}",
                "  exact scaledMargin_nonpos_of_axisForces_labelStepRun",
                "    (labelOfFace := smokeLabelOfFace)",
                "    (V := graphPotential)",
                "    (Step := SmokeStep)",
                f"    (rank := {rank_name})",
                f"    (axis := {axis_name})",
                f"    (kernel := {kernel_name})",
                f"    (forcedSeq := {seq_name})",
                "    (seq := seq)",
                "    (start := rootState)",
                f"    (finish := {trie_node_state_name(trie_node)})",
                f"    (gain := {trie_node_gain_name(trie_node)})",
                f"    (const := {const_scaled})",
                f"    (margin := smokeScaledMargin SmokeObj.{obj_name})",
                "    hrun",
                "    (fun _ _ _ _ h => SmokeStep.valid h)",
                f"    {obj_name}TrieFinal_nonneg",
                "    root_bound",
                f"    {obj_name}TrieMargin_bound_gain",
                f"    hRealize hAxisConstraints {obj_name}KernelCheck {obj_name}AxisForces",
                "",
                f"private def {obj_name}ContainsRank (rank : Fin numPairWords) : Prop :=",
                f"  rank = {rank_name}",
                "",
                f"private def {obj_name}ScaledMarginAtRank (_rank : Fin numPairWords) : Int :=",
                f"  smokeScaledMargin SmokeObj.{obj_name}",
                "",
                f"private def {obj_name}AxisRankFamily :",
                "    BellmanAxisRankFamily",
                "      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",
                f"      rootState ({const_scaled} : Int) {obj_name}ContainsRank",
                f"      {obj_name}ScaledMarginAtRank where",
                f"  forcedSeq := {seq_name}",
                f"  axis := {axis_name}",
                f"  kernel := {kernel_name}",
                f"  finish := {trie_node_state_name(trie_node)}",
                f"  gain := {trie_node_gain_name(trie_node)}",
                "  run := by",
                "    change BellmanLabelStepRun SmokeStep rootState",
                f"      {trie_node_state_name(trie_node)}",
                f"      (smokeLabelsOfSeq {seq_name}) {trie_node_gain_name(trie_node)}",
                f"    rw [{seq_name}Labels_eq]",
                f"    exact {trie_node_run_name(trie_node)}",
                "  step_valid := by",
                "    intro s label t gain h",
                "    exact SmokeStep.valid h",
                f"  finish_nonneg := {obj_name}TrieFinal_nonneg",
                "  root_bound := root_bound",
                "  margin_bound := by",
                "    intro rank hrank",
                f"    unfold {obj_name}ScaledMarginAtRank",
                f"    exact {obj_name}TrieMargin_bound_gain",
                "  kernel_check := by",
                "    intro rank hrank",
                "    rw [hrank]",
                f"    exact {obj_name}KernelCheck",
                "  axis_forces := by",
                "    intro rank hrank",
                "    rw [hrank]",
                f"    exact {obj_name}AxisForces",
                "",
                f"theorem graphSmoke_{obj_name}_axis_rank_family_scaled_margin_nonpos",
                "    (seq : Step14 -> Face)",
                f"    (hRealize : SeqRealizesPairWord (unrankPairWord {rank_name}) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 := by",
                f"  unfold smokeLabelStepTraceScaledMargin {trace_of_seq_name}",
                "  exact BellmanAxisRankFamily.scaledMargin_nonpos",
                f"    {obj_name}AxisRankFamily",
                f"    (rank := {rank_name})",
                "    (seq := seq)",
                "    rfl",
                "    hRealize",
                "    hAxisConstraints",
                "",
                f"private def {obj_name}AxisRankLanguageFamily :",
                "    BellmanAxisRankLanguageFamily",
                "      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",
                f"      rootState ({const_scaled} : Int) {obj_name}ContainsRank",
                f"      {obj_name}ScaledMarginAtRank where",
                f"  axis := {axis_name}",
                "  kernel := by",
                "    intro rank hrank",
                f"    exact {kernel_name}",
                "  forcedSeq := by",
                "    intro rank hrank",
                f"    exact {seq_name}",
                "  finish := by",
                "    intro rank hrank",
                f"    exact {trie_node_state_name(trie_node)}",
                "  gain := by",
                "    intro rank hrank",
                f"    exact {trie_node_gain_name(trie_node)}",
                "  run := by",
                "    intro rank hrank",
                "    change BellmanLabelStepRun SmokeStep rootState",
                f"      {trie_node_state_name(trie_node)}",
                f"      (smokeLabelsOfSeq {seq_name}) {trie_node_gain_name(trie_node)}",
                f"    rw [{seq_name}Labels_eq]",
                f"    exact {trie_node_run_name(trie_node)}",
                "  step_valid := by",
                "    intro s label t gain h",
                "    exact SmokeStep.valid h",
                "  finish_nonneg := by",
                "    intro rank hrank",
                f"    exact {obj_name}TrieFinal_nonneg",
                "  root_bound := root_bound",
                "  margin_bound := by",
                "    intro rank hrank",
                f"    unfold {obj_name}ScaledMarginAtRank",
                f"    exact {obj_name}TrieMargin_bound_gain",
                "  kernel_check := by",
                "    intro rank hrank",
                "    rw [hrank]",
                f"    exact {obj_name}KernelCheck",
                "  axis_forces := by",
                "    intro rank hrank",
                "    rw [hrank]",
                f"    exact {obj_name}AxisForces",
                "",
                f"theorem graphSmoke_{obj_name}_axis_rank_language_family_scaled_margin_nonpos",
                "    (seq : Step14 -> Face)",
                f"    (hRealize : SeqRealizesPairWord (unrankPairWord {rank_name}) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} seq) <= 0 := by",
                f"  unfold smokeLabelStepTraceScaledMargin {trace_of_seq_name}",
                "  exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos",
                f"    {obj_name}AxisRankLanguageFamily",
                f"    (rank := {rank_name})",
                "    (seq := seq)",
                "    rfl",
                "    hRealize",
                "    hAxisConstraints",
                "",
            ])
        lines.extend([
            f"theorem graphSmoke_{obj_name}_face_seq_trace_scaled_margin_nonpos :",
            f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} {seq_name}) <= 0 :=",
            f"  graphSmoke_{obj_name}_seq_language_scaled_margin_nonpos",
            f"    {seq_name} (fun _ => rfl)",
            "",
        ])
    if can_emit_face_sequence_bridge:
        for obj in bridge_objects:
            emit_face_sequence_bridge(obj)
    if can_emit_rank_sequence_bridge and len(rank_bridge_infos) >= 2:
        first_axis = rank_bridge_infos[0]["axis_value"]
        same_axis_infos = [
            info for info in rank_bridge_infos if info["axis_value"] == first_axis
        ]
        if len(same_axis_infos) >= 2:
            lines.extend([
                "private inductive SampledRankIndex where",
            ])
            for idx, _info in enumerate(same_axis_infos):
                lines.append(f"  | i{idx:04d}")
            lines.extend([
                "",
                "private def sampledRankOf : SampledRankIndex -> Fin numPairWords",
            ])
            for idx, info in enumerate(same_axis_infos):
                lines.append(
                    f"  | SampledRankIndex.i{idx:04d} => {info['rank_name']}"
                )
            lines.extend([
                "",
                "private def sampledContainsRank (rank : Fin numPairWords) : Prop :=",
                "  exists idx : SampledRankIndex, sampledRankOf idx = rank",
                "",
                "private def sampledScaledMarginAtRank (rank : Fin numPairWords) : Int :=",
            ])
            for info in same_axis_infos:
                lines.append(
                    f"  if rank = {info['rank_name']} then "
                    f"smokeScaledMargin SmokeObj.{info['obj_name']} else"
                )
            lines.extend([
                "  0",
                "",
            ])
            for info in same_axis_infos:
                positive_name = str(info["positive_cert_name"])
                lines.extend([
                    f"private theorem {positive_name}_xpStartInterior_margin_positive :",
                    f"    XpStartInteriorQ {positive_name}.p0 ->",
                    f"      0 < sampledScaledMarginAtRank {info['rank_name']} := by",
                    "  intro hInterior",
                    f"  have hNotInterior : ¬ XpStartInteriorQ {positive_name}.p0 := by",
                    f"    unfold XpStartInteriorQ {positive_name}",
                    "    norm_num",
                    "  exact False.elim (hNotInterior hInterior)",
                    "",
                ])
            lines.extend([
                "private def sampledAxisRankIndexedFamily :",
                "    BellmanAxisRankIndexedFamily",
                "      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",
                "      rootState (" + str(const_scaled) + " : Int) sampledRankOf",
                "      sampledScaledMarginAtRank where",
                f"  axis := {same_axis_infos[0]['axis_name']}",
                "  kernel := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · exact {info['kernel_name']}",
                ])
            lines.extend([
                "  forcedSeq := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · exact {info['seq_name']}",
                ])
            lines.extend([
                "  finish := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · exact {trie_node_state_name(int(info['trie_node']))}",
                ])
            lines.extend([
                "  gain := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · exact {trie_node_gain_name(int(info['trie_node']))}",
                ])
            lines.extend([
                "  run := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                trie_node = int(info["trie_node"])
                lines.extend([
                    "    · change BellmanLabelStepRun SmokeStep rootState",
                    f"        {trie_node_state_name(trie_node)}",
                    f"        (smokeLabelsOfSeq {info['seq_name']}) "
                    f"{trie_node_gain_name(trie_node)}",
                    f"      rw [{info['seq_name']}Labels_eq]",
                    f"      exact {trie_node_run_name(trie_node)}",
                ])
            lines.extend([
                "  step_valid := by",
                "    intro s label t gain h",
                "    exact SmokeStep.valid h",
                "  finish_nonneg := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · exact {info['obj_name']}TrieFinal_nonneg",
                ])
            lines.extend([
                "  root_bound := root_bound",
                "  margin_bound := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    "    · unfold sampledRankOf sampledScaledMarginAtRank",
                    "      simp",
                    f"      exact {info['obj_name']}TrieMargin_bound_gain",
                ])
            lines.extend([
                "  kernel_check := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · change checkKernelLineWitness",
                    f"        (totalLinearOfPairWord (unrankPairWord {info['rank_name']}))",
                    f"        {same_axis_infos[0]['axis_name']} {info['kernel_name']} = true",
                    f"      exact {info['obj_name']}KernelCheck",
                ])
            lines.extend([
                "  axis_forces := by",
                "    intro idx",
                "    cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"    · change AxisForcesForcedSeq (unrankPairWord {info['rank_name']})",
                    f"        {same_axis_infos[0]['axis_name']} {info['seq_name']}",
                    f"      exact {info['obj_name']}AxisForces",
                ])
            lines.extend([
                "",
                "theorem graphSmoke_sampled_axis_indexed_rank_family_scaled_margin_nonpos",
                "    (idx : SampledRankIndex)",
                "    (seq : Step14 -> Face)",
                "    (hRealize : SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                "    sampledScaledMarginAtRank (sampledRankOf idx) <= 0 :=",
                "  BellmanAxisRankIndexedFamily.scaledMargin_nonpos",
                "    sampledAxisRankIndexedFamily",
                "    idx",
                "    hRealize",
                "    hAxisConstraints",
                "",
                "private def sampledAxisRankIndexedCover :",
                "    BellmanAxisRankIndexedCover",
                "      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",
                "      rootState (" + str(const_scaled) + " : Int) sampledRankOf sampledContainsRank",
                "      sampledScaledMarginAtRank where",
                "  family := sampledAxisRankIndexedFamily",
                "  covers := by",
                "    intro rank hrank",
                "    exact hrank",
                "",
                "theorem graphSmoke_sampled_axis_rank_language_family_scaled_margin_nonpos",
                "    {rank : Fin numPairWords} (hrank : sampledContainsRank rank)",
                "    (seq : Step14 -> Face)",
                "    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)",
                "    (hAxisConstraints : NonIdentityAxisConstraints seq) :",
                "    sampledScaledMarginAtRank rank <= 0 :=",
                "  BellmanAxisRankIndexedCover.scaledMargin_nonpos",
                "    sampledAxisRankIndexedCover hrank hRealize hAxisConstraints",
                "",
                "private def sampledObjectForcedSeq : SampledRankIndex -> Step14 -> Face",
            ])
            for idx, info in enumerate(same_axis_infos):
                lines.append(
                    f"  | SampledRankIndex.i{idx:04d} => {info['seq_name']}"
                )
            lines.extend([
                "",
                "private def sampledObjectAccepts (idx : SampledRankIndex) : Prop :=",
                "  AxisForcesForcedSeq (unrankPairWord (sampledRankOf idx))",
                f"    {same_axis_infos[0]['axis_name']} (sampledObjectForcedSeq idx)",
                "",
                "private def sampledAxisRankObjectCover :",
                "    BellmanAxisRankObjectCover",
                "      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",
                "      rootState (" + str(const_scaled) + " : Int) sampledRankOf sampledObjectAccepts",
                "      sampledContainsRank sampledScaledMarginAtRank where",
                "  forcedSeq := sampledObjectForcedSeq",
                "  trace_bound := by",
                "    intro idx _hAccept",
                "    cases idx",
            ])
            for info in same_axis_infos:
                trie_node = int(info["trie_node"])
                lines.extend([
                    f"    · refine ⟨{trie_node_state_name(trie_node)}, {trie_node_gain_name(trie_node)}, ?_, ?_, ?_⟩",
                    "      · change BellmanLabelStepRun SmokeStep rootState",
                    f"          {trie_node_state_name(trie_node)}",
                    f"          (smokeLabelsOfSeq {info['seq_name']}) "
                    f"{trie_node_gain_name(trie_node)}",
                    f"        rw [{info['seq_name']}Labels_eq]",
                    f"        exact {trie_node_run_name(trie_node)}",
                    f"      · exact {info['obj_name']}TrieFinal_nonneg",
                    "      · unfold sampledRankOf sampledScaledMarginAtRank",
                    "        simp",
                    f"        exact {info['obj_name']}TrieMargin_bound_gain",
                ])
            lines.extend([
                "  step_valid := by",
                "    intro s label t gain h",
                "    exact SmokeStep.valid h",
                "  root_bound := root_bound",
                "  covers := by",
                "    intro rank hrank",
                "    rcases hrank with ⟨idx, hidx⟩",
                "    have hAccept : sampledObjectAccepts idx := by",
                "      cases idx",
            ])
            for info in same_axis_infos:
                lines.extend([
                    f"      · change AxisForcesForcedSeq (unrankPairWord {info['rank_name']})",
                    f"          {same_axis_infos[0]['axis_name']} {info['seq_name']}",
                    f"        exact {info['obj_name']}AxisForces",
                ])
            lines.extend([
                "    exact ⟨idx, hAccept, hidx⟩",
                "",
                "theorem graphSmoke_sampled_axis_object_cover_scaled_margin_nonpos",
                "    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :",
                "    sampledScaledMarginAtRank rank <= 0 :=",
                "  BellmanAxisRankObjectCover.scaledMargin_nonpos",
                "    sampledAxisRankObjectCover hrank",
                "",
                "theorem graphSmoke_sampled_axis_object_cover_rank_killed_of_margin_positive",
                "    (hpositive :",
                "      forall idx seq,",
                "        sampledObjectAccepts idx ->",
                "        SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq ->",
                "        StartsXp seq ->",
                "        totalLinear seq ≠ (matId : Mat3 Rat) ->",
                "        NonIdentityAxisConstraints seq ->",
                "        0 < sampledScaledMarginAtRank (sampledRankOf idx))",
                "    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :",
                "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=",
                "  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_cover_margin_positive",
                "    sampledAxisRankObjectCover hpositive hrank",
                "",
                "theorem graphSmoke_sampled_axis_rank_killed_of_margin_positive",
                "    (hpositive :",
                "      forall idx seq,",
                "        SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq ->",
                "        StartsXp seq ->",
                "        totalLinear seq ≠ (matId : Mat3 Rat) ->",
                "        NonIdentityAxisConstraints seq ->",
                "        0 < sampledScaledMarginAtRank (sampledRankOf idx))",
                "    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :",
                "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=",
                "  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_indexed_cover_margin_positive",
                "    sampledAxisRankIndexedCover hpositive hrank",
                "",
                "private theorem graphSmoke_sampled_axis_rank_positive_margin",
                "    (idx : SampledRankIndex)",
                "    (seq : Step14 -> Face)",
                "    (hRealize : SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq)",
                "    (_hStart : StartsXp seq)",
                "    (_hLinear : totalLinear seq ≠ (matId : Mat3 Rat))",
                "    (hAxis : NonIdentityAxisConstraints seq) :",
                "    0 < sampledScaledMarginAtRank (sampledRankOf idx) := by",
                "  cases idx",
            ])
            for info in same_axis_infos:
                obj_name = str(info["obj_name"])
                positive_name = str(info["positive_cert_name"])
                lines.extend([
                    f"  · have hRealizeCert : SeqRealizesPairWord {positive_name}.word seq := by",
                    f"      change SeqRealizesPairWord {obj_name}Word seq",
                    f"      rw [← {obj_name}_unrank_word]",
                    "      exact hRealize",
                    "    exact",
                    "      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.positive_margin_of_axis_forces_start_interior",
                    f"        hRealizeCert hAxis {positive_name}_kernelCheck",
                    f"        {positive_name}_axisSolveCheck {positive_name}_axisForces",
                    f"        {positive_name}_xpStartInterior_margin_positive",
                ])
            lines.extend([
                "",
                "theorem graphSmoke_sampled_axis_rank_killed",
                "    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :",
                "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=",
                "  graphSmoke_sampled_axis_object_cover_rank_killed_of_margin_positive",
                "    (fun idx seq _hAccept =>",
                "      graphSmoke_sampled_axis_rank_positive_margin idx seq) hrank",
                "",
            ])
    lines.extend([
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
    parser.add_argument(
        "--rank-bridge-limit",
        type=int,
        default=1,
        help=(
            "Number of sampled path classes for which to emit the exact "
            "rank/forced-axis bridge.  Use 0 for graph-only smoke."
        ),
    )
    args = parser.parse_args()
    emit(
        args.input,
        args.output,
        args.namespace,
        rank_bridge_limit=args.rank_bridge_limit,
    )


if __name__ == "__main__":
    main()
