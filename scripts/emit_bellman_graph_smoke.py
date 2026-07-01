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
    can_emit_face_sequence_bridge = (
        bool(path_objects)
        and all(face in face_label_by_name for face in face_order)
        and all(
            label_idx in label_face_by_index
            for obj in path_objects[:1]
            for label_idx in obj["label_indices"]
        )
        and len(path_objects[0]["label_indices"]) == 14
    )
    can_emit_rank_sequence_bridge = (
        can_emit_face_sequence_bridge and path_objects[0].get("rank_sample") is not None
    )

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
        "import Cuboctahedron.Search.Itineraries",
    ]
    if can_emit_rank_sequence_bridge:
        imports.append("import Cuboctahedron.Search.Enumeration")
    lines: list[str] = [
        *imports,
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
            "  [smokeLabelOfFace (seq (⟨1, by decide⟩ : Step14))",
        ])
        for step in range(2, 14):
            lines.append(
                f"  , smokeLabelOfFace (seq (⟨{step}, by decide⟩ : Step14))"
            )
        lines.extend([
            "  , smokeLabelOfFace (seq (⟨0, by decide⟩ : Step14))",
            "  ]",
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
    if can_emit_face_sequence_bridge:
        obj = path_objects[0]
        obj_name = str(obj["name"])
        trie_node = int(obj["trie_node"])
        seq_name = f"{obj_name}FaceSeq"
        rank_name = f"{obj_name}Rank"
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
            f"  forall i : Step14, seq i = {seq_name} i",
            "",
            f"private theorem {seq_name}Labels_eq :",
            f"    smokeLabelsOfSeq {seq_name} = {trie_node_labels_name(trie_node)} := by",
            f"  unfold smokeLabelsOfSeq {seq_name} smokeLabelOfFace",
            "  unfold " + " ".join(trie_label_unfolds),
            "  rfl",
            "",
            f"private theorem {seq_name}Language_labels_eq",
            "    (seq : Step14 -> Face)",
            f"    (hseq : {seq_name}Language seq) :",
            f"    smokeLabelsOfSeq seq = {trie_node_labels_name(trie_node)} := by",
            f"  rw [← {seq_name}Labels_eq]",
            "  unfold smokeLabelsOfSeq",
            *[
                f"  rw [hseq (⟨{step}, by decide⟩ : Step14)]"
                for step in list(range(1, 14)) + [0]
            ],
            "",
        ])
        if can_emit_rank_sequence_bridge:
            rank_sample = int(obj["rank_sample"])
            lines.extend([
                f"private def {rank_name} : Fin numPairWords := ⟨{rank_sample}, by decide⟩",
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
            f"theorem graphSmoke_{obj_name}_face_seq_trace_scaled_margin_nonpos :",
            f"    smokeLabelStepTraceScaledMargin ({trace_of_seq_name} {seq_name}) <= 0 :=",
            f"  graphSmoke_{obj_name}_seq_language_scaled_margin_nonpos",
            f"    {seq_name} (fun _ => rfl)",
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
    args = parser.parse_args()
    emit(args.input, args.output, args.namespace)


if __name__ == "__main__":
    main()
