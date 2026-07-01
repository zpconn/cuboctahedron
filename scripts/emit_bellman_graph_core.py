#!/usr/bin/env python3
"""Emit a small Lean Bellman graph core from a profiled graph JSON.

This is intentionally narrower than `emit_bellman_graph_smoke.py`: it emits the
finite graph, labels, deterministic `next` table, and next-to-step soundness
lemmas, but no sampled rank/object bridge and no terminal geometry data.
"""

from __future__ import annotations

import argparse
import json
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


def emit(
    input_path: Path,
    output_path: Path,
    namespace: str,
    *,
    emit_sound: bool = True,
    emit_valid: bool = True,
    numeric_ids: bool = False,
    eval_only: bool = False,
) -> None:
    if eval_only:
        emit_sound = False
        emit_valid = False
    if emit_sound and not emit_valid:
        raise SystemExit("--omit-valid implies --omit-sound")
    if emit_sound and numeric_ids:
        raise SystemExit("--numeric-ids currently requires --omit-sound or --omit-valid")
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
    roots = graph["root_indices"]
    if len(roots) != 1:
        raise SystemExit(f"expected one root state, found {len(roots)}")
    const_scaled = int(graph["const_scaled"])

    label_face_by_index: dict[int, str] = {}
    for label in labels:
        try:
            label_face_by_index[int(label["index"])] = face_name_from_label_key(
                str(label["key"])
            )
        except ValueError:
            pass

    edge_label_cases: list[tuple[str, int, int]] = []
    transition_by_state_label: dict[tuple[int, int], tuple[int, int, int, str]] = {}
    label_case_idx = 0
    for edge_idx, edge in enumerate(edges):
        edge_label_indices = edge.get("label_indices")
        if edge_label_indices is None:
            edge_label_indices = [edge_idx]
        for raw_label_idx in edge_label_indices:
            label_idx = int(raw_label_idx)
            case_name = f"e{label_case_idx:04d}"
            edge_label_cases.append((case_name, edge_idx, label_idx))
            key = (int(edge["src"]), label_idx)
            entry = (edge_idx, int(edge["dst"]), int(edge["gain_scaled"]), case_name)
            previous = transition_by_state_label.get(key)
            if previous is not None and previous != entry:
                raise SystemExit(
                    "core eval requires deterministic state/label transitions; "
                    f"duplicate key {key} has {previous} and {entry}"
                )
            transition_by_state_label[key] = entry
            label_case_idx += 1

    face_order = [
        "xp",
        "xm",
        "yp",
        "ym",
        "zp",
        "zm",
        "tppp",
        "tppm",
        "tpmp",
        "tmpp",
        "tpmm",
        "tmpm",
        "tmmp",
        "tmmm",
    ]
    can_emit_face_labels = all(face in set(label_face_by_index.values()) for face in face_order)
    if can_emit_face_labels:
        face_label_by_name = {
            face: (f"({label_idx} : SmokeLabel)" if numeric_ids else label_ctor(label_idx))
            for label_idx, face in label_face_by_index.items()
        }

    def state_term(index: int) -> str:
        if numeric_ids:
            return f"({index} : State)"
        return state_ctor(index)

    def label_term(index: int) -> str:
        if numeric_ids:
            return f"({index} : SmokeLabel)"
        return label_ctor(index)

    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "import Cuboctahedron.Search.FaceLabelLanguage",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        "/-!",
        "Generated-style Bellman graph core smoke.",
        "",
        "This file contains only the finite graph, deterministic evaluator, and",
        "next-to-step soundness bridge. It intentionally contains no sampled",
        "rank/object bridge and no terminal geometry data.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
    ]
    if numeric_ids:
        lines.extend([
            f"-- state count: {state_count}",
            "abbrev State : Type := Nat",
            "",
            "def graphPotential : State -> Int",
        ])
    else:
        lines.extend([
            f"-- state count: {state_count}",
            "inductive State where",
        ])
        for idx in range(state_count):
            lines.append(f"  | s{idx:04d}")
        lines.extend([
            "",
            "def graphPotential : State -> Int",
        ])
    potential_by_index = {
        int(state["index"]): int(state["potential_scaled"]) for state in states
    }
    for idx in range(state_count):
        if numeric_ids:
            lines.append(f"  | {idx} => {potential_by_index[idx]}")
        else:
            lines.append(f"  | {state_ctor(idx)} => {potential_by_index[idx]}")
    if numeric_ids:
        lines.append("  | _ => 0")
    lines.extend([
        "",
        f"def rootState : State := {state_term(int(roots[0]))}",
        "",
    ])
    if not eval_only:
        for idx, edge in enumerate(edges):
            lines.extend([
                f"def {edge_name(idx)} : BellmanEdge State :=",
                "  {",
                f"    src := {state_term(int(edge['src']))},",
                f"    gain := {int(edge['gain_scaled'])},",
                f"    dst := {state_term(int(edge['dst']))}",
                "  }",
                "",
            ])
            if emit_valid:
                lines.extend([
                    f"theorem {edge_name(idx)}_valid : {edge_name(idx)}.Valid graphPotential := by",
                    f"  change ({int(edge['gain_scaled'])} : Int) + "
                    f"graphPotential {state_term(int(edge['dst']))} <= "
                    f"graphPotential {state_term(int(edge['src']))}",
                    "  decide",
                    "",
                ])
        lines.extend([
            "inductive GraphEdge : BellmanEdge State -> Prop where",
        ])
        for idx in range(len(edges)):
            lines.append(f"  | e{idx:04d} : GraphEdge {edge_name(idx)}")
        lines.append("")
        if emit_valid:
            lines.extend([
                "theorem GraphEdge.valid {e : BellmanEdge State} :",
                "    GraphEdge e -> BellmanEdge.Valid graphPotential e := by",
                "  intro h",
                "  cases h with",
            ])
            for idx in range(len(edges)):
                lines.append(f"  | e{idx:04d} => exact {edge_name(idx)}_valid")
            lines.extend([
                "",
                "theorem root_bound :",
                f"    ({const_scaled} : Int) + graphPotential rootState <= 0 := by",
                "  decide",
                "",
            ])
        else:
            lines.extend([
                "/-- Validity proofs are omitted in definitions-only mode and should",
                "be emitted in bounded proof shards.",
                "-/",
                "",
            ])
    else:
        lines.extend([
            "/-- Edge/step constructors and validity proofs are omitted in eval-only",
            "mode. The deterministic evaluator is the proof surface; validity should",
            "be emitted as bounded `GraphSmokeStepEval.valid` shards.",
            "-/",
            "",
        ])
    lines.extend([
    ])
    if numeric_ids:
        lines.extend([
            f"-- label count: {len(labels)}",
            "abbrev SmokeLabel : Type := Nat",
        ])
        for label in labels:
            lines.append(f"-- label {int(label['index']):04d}: {label['key']}")
    else:
        lines.extend([
            f"-- label count: {len(labels)}",
            "inductive SmokeLabel where",
        ])
        for label in labels:
            lines.append(f"  | l{int(label['index']):04d} -- {label['key']}")
    if can_emit_face_labels:
        lines.extend([
            "",
            "def smokeLabelOfFace : Face -> SmokeLabel",
        ])
        for face in face_order:
            lines.append(f"  | Face.{face} => {face_label_by_name[face]}")
        lines.extend([
            "",
            "def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=",
            "  faceLabelsInContributionOrder smokeLabelOfFace seq",
        ])
    if not eval_only:
        lines.extend([
            "",
            "inductive SmokeStep : State -> SmokeLabel -> State -> Int -> Prop where",
        ])
        for case_name, edge_idx, label_idx in edge_label_cases:
            lines.append(
                f"  | {case_name} : SmokeStep {edge_name(edge_idx)}.src "
                f"{label_term(label_idx)} {edge_name(edge_idx)}.dst "
                f"{edge_name(edge_idx)}.gain"
            )
        if emit_valid:
            lines.extend([
                "",
                "theorem SmokeStep.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",
                "    SmokeStep s label t gain -> gain + graphPotential t <= graphPotential s := by",
                "  intro h",
                "  cases h with",
            ])
            for case_name, edge_idx, _label_idx in edge_label_cases:
                lines.append(
                    f"  | {case_name} => simpa [BellmanEdge.Valid] using {edge_name(edge_idx)}_valid"
                )
    label_order = [int(label["index"]) for label in labels]
    lines.extend([
        "",
        f"-- graph-global deterministic eval transitions: {len(transition_by_state_label)}",
    ])
    for state_idx in range(state_count):
        state_transitions = [
            (label_idx, transition_by_state_label[(state_idx, label_idx)])
            for label_idx in label_order
            if (state_idx, label_idx) in transition_by_state_label
        ]
        lines.append(
            f"def graphSmokeNext_s{state_idx:04d} : SmokeLabel -> Option (State × Int)"
        )
        for label_idx, (_edge_idx, dst_idx, gain_scaled, _case_name) in state_transitions:
            lines.append(
                f"  | {label_idx if numeric_ids else label_ctor(label_idx)} => "
                f"some ({state_term(dst_idx)}, ({gain_scaled} : Int))"
            )
        lines.extend([
            "  | _ => none",
            "",
        ])
    lines.append("def graphSmokeNext : State -> SmokeLabel -> Option (State × Int)")
    for state_idx in range(state_count):
        if numeric_ids:
            lines.append(f"  | {state_idx} => graphSmokeNext_s{state_idx:04d}")
        else:
            lines.append(
                f"  | {state_ctor(state_idx)} => graphSmokeNext_s{state_idx:04d}"
            )
    if numeric_ids:
        lines.append("  | _ => fun _ => none")
    lines.append("")
    if emit_sound:
        for state_idx in range(state_count):
            state_transitions = [
                (label_idx, transition_by_state_label[(state_idx, label_idx)])
                for label_idx in label_order
                if (state_idx, label_idx) in transition_by_state_label
            ]
            lines.extend([
                f"theorem graphSmokeNext_sound_s{state_idx:04d} "
                "{label : SmokeLabel} {t : State} {gain : Int} :",
                f"    graphSmokeNext {state_term(state_idx)} label = some (t, gain) ->",
                f"      SmokeStep {state_term(state_idx)} label t gain := by",
                "  intro h",
                f"  change graphSmokeNext_s{state_idx:04d} label = some (t, gain) at h",
            ])
            if numeric_ids:
                lines.append(
                    f"  simp [graphSmokeNext_s{state_idx:04d}] at h"
                )
            else:
                lines.append(
                    f"  cases label <;> simp [graphSmokeNext_s{state_idx:04d}] at h <;> try contradiction"
                )
            if state_transitions and not numeric_ids:
                lines.extend([
                    "  all_goals",
                    "    rcases h with ⟨rfl, rfl⟩",
                    "    first",
                ])
                for _label_idx, (_edge_idx, _dst_idx, _gain_scaled, case_name) in state_transitions:
                    lines.append(f"    | exact SmokeStep.{case_name}")
            elif state_transitions:
                lines.extend([
                    "  -- Numeric-label next soundness is intentionally not used",
                    "  -- in production until a smaller proof strategy is emitted.",
                    "  first | contradiction",
                ])
            lines.append("")
        lines.extend([
            "theorem graphSmokeNext_sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",
            "    graphSmokeNext s label = some (t, gain) -> SmokeStep s label t gain := by",
            "  cases s <;> intro h",
        ])
        for state_idx in range(state_count):
            lines.append(f"  · exact graphSmokeNext_sound_s{state_idx:04d} h")
        lines.extend([
            "",
            "def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=",
            "  graphSmokeNext s label = some (t, gain)",
            "",
            "theorem GraphSmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",
            "    graphSmokeNext s label = some (t, gain) -> SmokeStep s label t gain :=",
            "  graphSmokeNext_sound",
            "",
            "theorem GraphSmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",
            "    GraphSmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by",
            "  intro h",
            "  exact SmokeStep.valid (graphSmokeNext_sound h)",
            "",
        ])
    else:
        lines.extend([
            "/-- Base-only smoke: deterministic next table emitted without the",
            "next-to-step soundness bridge. This mode is used only to measure",
            "whether graph definitions fit before soundness sharding.",
            "-/",
        "def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=",
        "  graphSmokeNext s label = some (t, gain)",
        "",
    ])
    lines.extend([
        "theorem bellmanGraphCoreSmoke_builds : True := by",
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
    parser.add_argument("--namespace", required=True)
    parser.add_argument("--omit-sound", action="store_true")
    parser.add_argument("--omit-valid", action="store_true")
    parser.add_argument("--numeric-ids", action="store_true")
    parser.add_argument("--eval-only", action="store_true")
    args = parser.parse_args()
    emit(
        args.input,
        args.output,
        args.namespace,
        emit_sound=(not args.omit_sound and not args.omit_valid),
        emit_valid=not args.omit_valid,
        numeric_ids=args.numeric_ids,
        eval_only=args.eval_only,
    )


if __name__ == "__main__":
    main()
