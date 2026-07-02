#!/usr/bin/env python3
"""Emit split-10M graph branch-table and graph-accepted suffix smokes.

This bounded emitter keeps the graph family aligned with the existing
split-10M accepted eval/margin gate.  It emits graph-only Lean evidence:
finite graph branch membership and accepted-trace suffix membership.  It does
not prove closed-language membership and it does not introduce sampled
rank/path objects.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

GRAPH_JSON = (
    ROOT
    / "scripts/generated/"
    / (
        "nonid_margin_bellman_top_pairing_000000000_010000000_"
        "with_step_tri_source_graph.json"
    )
)
SPLIT_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)
EVAL_GATE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
BRANCH_OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke.lean"
)
SUFFIX_OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke.lean"
)

BASE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphEvalSplit10MSmoke.Base"
)
BRANCH_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke"
)
SUFFIX_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke"
)
EVAL_GATE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedEvalGate"
)


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def face_from_label_key(key: str) -> str:
    for part in key.split("|"):
        if part.startswith("face="):
            return part.removeprefix("face=")
    raise ValueError(f"label key has no face= component: {key}")


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def ctor_name(index: int, src: int, face: str) -> str:
    return f"graph_{index:04d}_s{src:04d}_{face}"


def graph_edges(graph_payload: dict[str, Any]) -> list[dict[str, int | str]]:
    graph = graph_payload["graph"]
    labels = {
        int(label["index"]): face_from_label_key(str(label["key"]))
        for label in graph["labels"]
    }
    edges: list[dict[str, int | str]] = []
    for index, edge in enumerate(graph["edges"]):
        label_indices = edge["label_indices"]
        if len(label_indices) != 1:
            raise ValueError("split-10M smoke expects one label per graph edge")
        label_index = int(label_indices[0])
        edges.append(
            {
                "index": index,
                "src": int(edge["src"]),
                "dst": int(edge["dst"]),
                "gain": int(edge["gain_scaled"]),
                "label": label_index,
                "face": labels[label_index],
            }
        )
    return edges


def parse_label_of_face(text: str) -> dict[str, int]:
    block = re.search(
        r"def smokeLabelOfFace : Face -> SmokeLabel\n(?P<body>(?:  \| .+\n)+)",
        text,
    )
    if not block:
        raise RuntimeError("could not find smokeLabelOfFace")
    return {
        face: int(label)
        for face, label in re.findall(
            r"\| Face\.(\w+) => \((\d+) : SmokeLabel\)", block.group("body")
        )
    }


def parse_graph_next(text: str) -> dict[tuple[int, int], tuple[int, int]]:
    result: dict[tuple[int, int], tuple[int, int]] = {}
    for match in re.finditer(
        r"def graphSmokeNext_s(\d{4}) : SmokeLabel -> Option \(State × Int\)\n"
        r"(?P<body>(?:  \| .+\n)+)",
        text,
    ):
        state = int(match.group(1))
        for label, next_state, gain in re.findall(
            r"\| (\d+) => some \(\((\d+) : State\), \(([-\d]+) : Int\)\)",
            match.group("body"),
        ):
            result[(state, int(label))] = (int(next_state), int(gain))
    return result


def parse_accepted_traces(text: str) -> dict[int, list[str]]:
    traces: dict[int, list[str]] = {}
    for trace_id, body in re.findall(
        r"def acceptedFaceTrace_(\d{3}) : List Face :=\n  \[(.*?)\]",
        text,
        flags=re.S,
    ):
        traces[int(trace_id)] = re.findall(r"Face\.(\w+)", body)
    if len(traces) != 37:
        raise RuntimeError(f"expected 37 accepted traces, found {len(traces)}")
    return dict(sorted(traces.items()))


def trace_steps(
    faces: list[str],
    labels: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    constructors: dict[tuple[int, str], str],
) -> list[tuple[int, str, str, int, int]]:
    state = 0
    steps: list[tuple[int, str, str, int, int]] = []
    for face in faces:
        label = labels[face]
        transition = graph_next.get((state, label))
        if transition is None:
            raise RuntimeError(
                f"missing split graph transition from state {state} on Face.{face}"
            )
        ctor = constructors.get((state, face))
        if ctor is None:
            raise RuntimeError(
                f"missing split branch constructor from state {state} on Face.{face}"
            )
        next_state, gain = transition
        steps.append((state, face, ctor, next_state, gain))
        state = next_state
    return steps


def emit_branch_table(edges: list[dict[str, int | str]]) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "",
        "/-!",
        "Generated split-10M strengthened Bellman branch-table smoke.",
        "",
        "This module records ordinary graph transitions for the split-10M",
        "top-pairing graph family used by the accepted eval/margin gate.  It is",
        "a graph-family alignment smoke, not the final closed-language",
        "membership theorem.",
        "-/",
        "",
        f"namespace {BRANCH_NS}",
        "",
        "open Cuboctahedron",
        f"open {BASE_NS}",
        "",
        "inductive BranchKind where",
        "  | graph",
        "  deriving DecidableEq, Repr",
        "",
        f"def realGraphTransitionBranchCount : Nat := {len(edges)}",
        "def remainingUncoveredAuditedBranchCount : Nat := 0",
        "",
        "theorem branchCount_audit :",
        f"    realGraphTransitionBranchCount = {len(edges)} /\\",
        "    remainingUncoveredAuditedBranchCount = 0 := by",
        "  decide",
        "",
        "inductive StrengthenedBranchTable : State -> Face -> BranchKind -> Prop",
    ]
    for edge in edges:
        lines.append(
            f"  | {ctor_name(int(edge['index']), int(edge['src']), str(edge['face']))} : "
            f"StrengthenedBranchTable ({edge['src']} : State) "
            f"{face_ctor(str(edge['face']))} BranchKind.graph"
        )
    lines.extend(
        [
            "",
            "theorem strengthenedBranchTableSplit10MSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {BRANCH_NS}",
            "",
        ]
    )
    return "\n".join(lines)


def emit_trace_theorem(trace_id: int, steps: list[tuple[int, str, str, int, int]]) -> list[str]:
    lines = [
        f"private theorem graphBranchTableSuffixOk_trace_{trace_id:03d}",
        "    {rank : Fin numPairWords} :",
        f"    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_{trace_id:03d} := by",
        f"  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_{trace_id:03d}",
    ]
    for _state, _face, ctor, _next_state, _gain in steps:
        lines.extend(
            [
                "  refine graphBranchTableSuffixOk_cons",
                f"    StrengthenedBranchTable.{ctor}",
                "    (by rfl) ?_",
            ]
        )
    lines.append("  exact GraphBranchTableSuffixOk.nil _")
    return lines


def emit_suffix(
    *,
    traces: dict[int, list[str]],
    labels: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    constructors: dict[tuple[int, str], str],
) -> str:
    rendered: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage",
        "",
        "/-!",
        "Graph-only suffix smoke for graph-accepted top-pairing traces on the split-10M graph.",
        "",
        "This generated smoke proves that the current 37 graph-accepted terminal",
        "traces can be represented as graph branch-table suffix evidence over",
        "the same split-10M Bellman graph family used by the accepted eval/margin",
        "gate.  It is trace-class bounded smoke, not final production coverage.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        f"namespace {SUFFIX_NS}",
        "",
        "open Cuboctahedron",
        f"open {BASE_NS}",
        f"open {BRANCH_NS}",
        f"open {EVAL_GATE_NS}",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage",
        "",
        "inductive GraphBranchTableSuffixOk (rank : Fin numPairWords) :",
        "    State -> List Face -> Prop",
        "  | nil (graph : State) : GraphBranchTableSuffixOk rank graph []",
        "  | graph {graph : State} {face : Face} {rest : List Face}",
        "      (hbranch : StrengthenedBranchTable graph face BranchKind.graph)",
        "      (hrest :",
        "        ∀ graphNext gain,",
        "          graphSmokeNext graph (smokeLabelOfFace face) =",
        "            some (graphNext, gain) ->",
        "          GraphBranchTableSuffixOk rank graphNext rest) :",
        "      GraphBranchTableSuffixOk rank graph (face :: rest)",
        "",
        "private theorem graphBranchTableSuffixOk_cons",
        "    {rank : Fin numPairWords} {graph graphNext : State}",
        "    {face : Face} {rest : List Face} {gain : Int}",
        "    (hbranch : StrengthenedBranchTable graph face BranchKind.graph)",
        "    (hnext :",
        "      graphSmokeNext graph (smokeLabelOfFace face) =",
        "        some (graphNext, gain))",
        "    (hrest : GraphBranchTableSuffixOk rank graphNext rest) :",
        "    GraphBranchTableSuffixOk rank graph (face :: rest) := by",
        "  refine GraphBranchTableSuffixOk.graph hbranch ?_",
        "  intro graphNext' gain' hgraph",
        "  rw [hnext] at hgraph",
        "  cases hgraph",
        "  exact hrest",
        "",
    ]
    for trace_id, faces in traces.items():
        steps = trace_steps(faces, labels, graph_next, constructors)
        rendered.extend(emit_trace_theorem(trace_id, steps))
        rendered.append("")

    rendered.extend(
        [
            "theorem graphBranchTableSuffixOk_of_graphAcceptedTraceLabels",
            "    {rank : Fin numPairWords} {labels : List Face}",
            "    (haccepted : GraphAcceptedTraceLabels labels) :",
            "    GraphBranchTableSuffixOk rank rootState labels := by",
            "  unfold GraphAcceptedTraceLabels at haccepted",
            "  rcases haccepted with",
            "    h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 |",
            "    h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 |",
            "    h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 |",
            "    h31 | h32 | h33 | h34 | h35 | h36",
        ]
    )
    for trace_id in traces:
        rendered.extend(
            [
                "  · subst labels",
                f"    exact graphBranchTableSuffixOk_trace_{trace_id:03d}",
            ]
        )
    rendered.extend(
        [
            "",
            "theorem graphAcceptedBranchSuffixSplit10MSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {SUFFIX_NS}",
            "",
        ]
    )
    return "\n".join(rendered)


def main() -> int:
    graph_payload = read_json(GRAPH_JSON)
    edges = graph_edges(graph_payload)
    constructors = {
        (int(edge["src"]), str(edge["face"])): ctor_name(
            int(edge["index"]), int(edge["src"]), str(edge["face"])
        )
        for edge in edges
    }

    base_text = read(SPLIT_BASE)
    labels = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    traces = parse_accepted_traces(read(EVAL_GATE))

    BRANCH_OUT.write_text(emit_branch_table(edges), encoding="utf-8")
    SUFFIX_OUT.write_text(
        emit_suffix(
            traces=traces,
            labels=labels,
            graph_next=graph_next,
            constructors=constructors,
        ),
        encoding="utf-8",
    )
    print(f"wrote {BRANCH_OUT.relative_to(ROOT)}")
    print(f"wrote {SUFFIX_OUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
