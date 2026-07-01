#!/usr/bin/env python3
"""Emit split Lean modules for a numeric Bellman evaluator graph.

The split layout is the scalable successor to the single-file graph-core smoke:

* Base.lean contains the numeric state/label evaluator only.
* ShardNNN.lean imports Base and proves validity for a bounded range of
  source states.

The generated modules deliberately contain no sampled rank/object bridge.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path


FACE_ORDER = [
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


def face_name_from_label_key(key: str) -> str:
    for part in key.split("|"):
        if part.startswith("face="):
            return part.split("=", 1)[1]
    raise ValueError(f"label key has no face component: {key}")


def parse_graph(input_path: Path) -> dict[str, object]:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    roots = graph["root_indices"]
    if len(roots) != 1:
        raise SystemExit(f"expected one root state, found {len(roots)}")
    labels = graph.get("labels")
    if labels is None:
        labels = [
            {"index": idx, "key": f"edge{idx:04d}"}
            for idx, _edge in enumerate(graph["edges"])
        ]
        graph["labels"] = labels

    transition_by_state_label: dict[tuple[int, int], tuple[int, int]] = {}
    for edge_idx, edge in enumerate(graph["edges"]):
        edge_label_indices = edge.get("label_indices")
        if edge_label_indices is None:
            edge_label_indices = [edge_idx]
        for raw_label_idx in edge_label_indices:
            label_idx = int(raw_label_idx)
            key = (int(edge["src"]), label_idx)
            entry = (int(edge["dst"]), int(edge["gain_scaled"]))
            previous = transition_by_state_label.get(key)
            if previous is not None and previous != entry:
                raise SystemExit(
                    "split eval requires deterministic state/label transitions; "
                    f"duplicate key {key} has {previous} and {entry}"
                )
            transition_by_state_label[key] = entry
    graph["transition_by_state_label"] = transition_by_state_label
    return graph


def prelude(namespace: str, imports: list[str]) -> list[str]:
    lines = [*(f"import {name}" for name in imports)]
    lines.extend([
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
    ])
    return lines


def emit_base(graph: dict[str, object], output_path: Path, namespace: str) -> None:
    states = graph["states"]
    labels = graph["labels"]
    state_count = int(graph["state_count"])
    roots = graph["root_indices"]
    transition_by_state_label = graph["transition_by_state_label"]
    potential_by_index = {
        int(state["index"]): int(state["potential_scaled"]) for state in states
    }

    label_face_by_index: dict[int, str] = {}
    for label in labels:
        try:
            label_face_by_index[int(label["index"])] = face_name_from_label_key(
                str(label["key"])
            )
        except ValueError:
            pass
    can_emit_face_labels = all(face in set(label_face_by_index.values()) for face in FACE_ORDER)
    face_label_by_name = {
        face: f"({label_idx} : SmokeLabel)"
        for label_idx, face in label_face_by_index.items()
    }

    lines = prelude(
        namespace,
        [
            "Cuboctahedron.Search.BellmanPotential",
            "Cuboctahedron.Search.FaceLabelLanguage",
        ],
    )
    lines.extend([
        "/-!",
        "Generated numeric Bellman evaluator base.",
        "",
        "This base contains only compact state/label identifiers, the potential,",
        "and the deterministic evaluator. Validity is checked in bounded shards.",
        "-/",
        "",
        f"abbrev stateCount : Nat := {state_count}",
        "abbrev State : Type := Nat",
        "",
        "def graphPotential : State -> Int",
    ])
    for idx in range(state_count):
        lines.append(f"  | {idx} => {potential_by_index[idx]}")
    lines.extend([
        "  | _ => 0",
        "",
        f"def rootState : State := ({int(roots[0])} : State)",
        "",
        f"abbrev labelCount : Nat := {len(labels)}",
        "abbrev SmokeLabel : Type := Nat",
    ])
    for label in labels:
        lines.append(f"-- label {int(label['index']):04d}: {label['key']}")
    if can_emit_face_labels:
        lines.extend([
            "",
            "def smokeLabelOfFace : Face -> SmokeLabel",
        ])
        for face in FACE_ORDER:
            lines.append(f"  | Face.{face} => {face_label_by_name[face]}")
        lines.extend([
            "",
            "def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=",
            "  faceLabelsInContributionOrder smokeLabelOfFace seq",
        ])

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
        for label_idx, (dst_idx, gain_scaled) in state_transitions:
            lines.append(
                f"  | {label_idx} => some (({dst_idx} : State), ({gain_scaled} : Int))"
            )
        lines.extend([
            "  | _ => none",
            "",
        ])
    lines.append("def graphSmokeNext : State -> SmokeLabel -> Option (State × Int)")
    for state_idx in range(state_count):
        lines.append(f"  | {state_idx} => graphSmokeNext_s{state_idx:04d}")
    lines.extend([
        "  | _ => fun _ => none",
        "",
        "def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=",
        "  graphSmokeNext s label = some (t, gain)",
        "",
        "theorem bellmanGraphEvalBase_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ])
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(lines))


def emit_valid_branch(
    out: list[str],
    *,
    state_idx: int,
    transitions: list[tuple[int, tuple[int, int]]],
    depth: int = 0,
    seen_names: list[str] | None = None,
) -> None:
    seen_names = [] if seen_names is None else seen_names
    indent = "  " + "  " * depth
    if not transitions:
        simp_args = [f"graphSmokeNext_s{state_idx:04d}", *seen_names]
        out.append(f"{indent}simp [{', '.join(simp_args)}] at h")
        return
    label_idx, (dst_idx, gain_scaled) = transitions[0]
    hname = f"h_l{label_idx:04d}"
    out.append(f"{indent}by_cases {hname} : label = ({label_idx} : SmokeLabel)")
    out.append(f"{indent}· subst label")
    out.append(f"{indent}  simp [graphSmokeNext_s{state_idx:04d}] at h")
    out.append(f"{indent}  rcases h with ⟨rfl, rfl⟩")
    out.append(
        f"{indent}  change ({gain_scaled} : Int) + "
        f"graphPotential ({dst_idx} : State) <= graphPotential ({state_idx} : State)"
    )
    out.append(f"{indent}  decide")
    out.append(f"{indent}·")
    emit_valid_branch(
        out,
        state_idx=state_idx,
        transitions=transitions[1:],
        depth=depth + 1,
        seen_names=[*seen_names, hname],
    )


def emit_shard(
    graph: dict[str, object],
    output_path: Path,
    namespace: str,
    base_import: str,
    base_namespace: str,
    start: int,
    count: int,
) -> None:
    state_count = int(graph["state_count"])
    labels = graph["labels"]
    transition_by_state_label = graph["transition_by_state_label"]
    label_order = [int(label["index"]) for label in labels]
    stop = min(state_count, start + count)

    lines = prelude(namespace, [base_import])
    lines.extend([
        f"open {base_namespace}",
        "",
        f"/-- Validity shard for source states [{start}, {stop}). -/",
    ])
    for state_idx in range(start, stop):
        state_transitions = [
            (label_idx, transition_by_state_label[(state_idx, label_idx)])
            for label_idx in label_order
            if (state_idx, label_idx) in transition_by_state_label
        ]
        lines.extend([
            f"theorem valid_s{state_idx:04d} "
            "{label : SmokeLabel} {t : State} {gain : Int} :",
            f"    GraphSmokeStepEval ({state_idx} : State) label t gain ->",
            f"      gain + graphPotential t <= graphPotential ({state_idx} : State) := by",
            "  intro h",
            f"  change graphSmokeNext_s{state_idx:04d} label = some (t, gain) at h",
        ])
        emit_valid_branch(lines, state_idx=state_idx, transitions=state_transitions)
        lines.append("")
    lines.extend([
        "theorem valid_range "
        "{s : State} {label : SmokeLabel} {t : State} {gain : Int}",
        f"    (hlo : {start} <= s) (hhi : s < {stop}) :",
        "    GraphSmokeStepEval s label t gain ->",
        "      gain + graphPotential t <= graphPotential s := by",
        "  intro h",
        "  interval_cases s",
    ])
    for state_idx in range(start, stop):
        lines.append(f"  · exact valid_s{state_idx:04d} h")
    lines.append("")
    lines.extend([
        "theorem shard_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ])
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(lines))


def emit_root(
    output_path: Path,
    namespace: str,
    base_namespace: str,
    shard_import: str,
    shard_namespace: str,
    start: int,
    count: int,
    state_count: int,
) -> None:
    stop = min(state_count, start + count)
    lines = prelude(namespace, [shard_import])
    lines.extend([
        f"open {base_namespace}",
        "",
        f"/-- Root smoke for the imported validity shard [{start}, {stop}). -/",
        "theorem valid_shard000 "
        "{s : State} {label : SmokeLabel} {t : State} {gain : Int}",
        f"    (hlo : {start} <= s) (hhi : s < {stop}) :",
        "    GraphSmokeStepEval s label t gain ->",
        "      gain + graphPotential t <= graphPotential s := by",
        "  intro h",
        f"  exact {shard_namespace}.valid_range hlo hhi h",
        "",
        "theorem root_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ])
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(lines))


def emit_all_root(
    output_path: Path,
    namespace: str,
    base_namespace: str,
    shard_imports: list[str],
    shard_namespaces: list[str],
    shard_ranges: list[tuple[int, int]],
    state_count: int,
) -> None:
    lines = prelude(namespace, shard_imports)
    lines.extend([
        f"open {base_namespace}",
        "",
        "/-- Root validity dispatcher for all generated source-state shards.",
        "",
        "The range premise is intentional at this smoke stage: the eventual",
        "closed-language-to-evaluator bridge must prove the evaluator only visits",
        "states inside this generated graph.  This root composes all local",
        "potential inequalities without rebuilding the graph in one module. -/",
        "theorem valid_of_lt "
        "{s : State} {label : SmokeLabel} {t : State} {gain : Int}",
        "    (hs : s < stateCount) :",
        "    GraphSmokeStepEval s label t gain ->",
        "      gain + graphPotential t <= graphPotential s := by",
        "  intro h",
    ])

    lower_expr = "Nat.zero_le s"
    for shard_idx, ((start, stop), shard_namespace) in enumerate(
        zip(shard_ranges, shard_namespaces, strict=True)
    ):
        hhi = f"hhi_{shard_idx:03d}"
        indent = "  " * (shard_idx + 1)
        lines.append(f"{indent}by_cases {hhi} : s < {stop}")
        lines.append(f"{indent}·")
        lines.append(
            f"{indent}  exact {shard_namespace}.valid_range "
            f"({lower_expr}) {hhi} h"
        )
        lines.append(f"{indent}·")
        lower_expr = f"Nat.le_of_not_lt {hhi}"

    final_indent = "  " * (len(shard_ranges) + 1)
    lines.append(
        f"{final_indent}exact False.elim "
        f"((Nat.not_lt_of_ge ({lower_expr})) hs)"
    )
    lines.extend([
        "",
        "theorem root_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ])
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(lines))


def emit_split(
    input_path: Path,
    output_dir: Path,
    module_prefix: str,
    namespace_prefix: str,
    shard_start: int,
    shard_count: int,
    shard_index: int,
) -> None:
    graph = parse_graph(input_path)
    base_module = f"{module_prefix}.Base"
    base_namespace = f"{namespace_prefix}.Base"
    shard_module = f"{module_prefix}.Shard{shard_index:03d}"
    shard_namespace = f"{namespace_prefix}.Shard{shard_index:03d}"
    root_namespace = f"{namespace_prefix}.Root"

    emit_base(graph, output_dir / "Base.lean", base_namespace)
    emit_shard(
        graph,
        output_dir / f"Shard{shard_index:03d}.lean",
        shard_namespace,
        base_module,
        base_namespace,
        shard_start,
        shard_count,
    )
    emit_root(
        output_dir / "Root.lean",
        root_namespace,
        base_namespace,
        shard_module,
        shard_namespace,
        shard_start,
        shard_count,
        int(graph["state_count"]),
    )


def emit_all_splits(
    input_path: Path,
    output_dir: Path,
    module_prefix: str,
    namespace_prefix: str,
    shard_size: int,
) -> None:
    if shard_size <= 0:
        raise SystemExit("--shard-size must be positive")
    graph = parse_graph(input_path)
    state_count = int(graph["state_count"])
    base_module = f"{module_prefix}.Base"
    base_namespace = f"{namespace_prefix}.Base"
    root_namespace = f"{namespace_prefix}.Root"

    emit_base(graph, output_dir / "Base.lean", base_namespace)

    shard_imports: list[str] = []
    shard_namespaces: list[str] = []
    shard_ranges: list[tuple[int, int]] = []
    for shard_index, start in enumerate(range(0, state_count, shard_size)):
        stop = min(state_count, start + shard_size)
        shard_module = f"{module_prefix}.Shard{shard_index:03d}"
        shard_namespace = f"{namespace_prefix}.Shard{shard_index:03d}"
        emit_shard(
            graph,
            output_dir / f"Shard{shard_index:03d}.lean",
            shard_namespace,
            base_module,
            base_namespace,
            start,
            stop - start,
        )
        shard_imports.append(shard_module)
        shard_namespaces.append(shard_namespace)
        shard_ranges.append((start, stop))

    emit_all_root(
        output_dir / "Root.lean",
        root_namespace,
        base_namespace,
        shard_imports,
        shard_namespaces,
        shard_ranges,
        state_count,
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--module-prefix", required=True)
    parser.add_argument("--namespace-prefix", required=True)
    parser.add_argument("--shard-start", type=int)
    parser.add_argument("--shard-count", type=int)
    parser.add_argument("--shard-index", type=int, default=0)
    parser.add_argument("--all-shards", action="store_true")
    parser.add_argument("--shard-size", type=int, default=32)
    args = parser.parse_args()
    if args.all_shards:
        emit_all_splits(
            args.input,
            args.output_dir,
            args.module_prefix,
            args.namespace_prefix,
            args.shard_size,
        )
    else:
        if args.shard_start is None or args.shard_count is None:
            raise SystemExit(
                "--shard-start and --shard-count are required unless "
                "--all-shards is used"
            )
        emit_split(
            args.input,
            args.output_dir,
            args.module_prefix,
            args.namespace_prefix,
            args.shard_start,
            args.shard_count,
            args.shard_index,
        )


if __name__ == "__main__":
    main()
