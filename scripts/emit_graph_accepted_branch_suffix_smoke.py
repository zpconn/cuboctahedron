#!/usr/bin/env python3
"""Emit a graph-only accepted-trace branch-suffix smoke module.

This is a generator for a bounded Lean smoke, not proof evidence by itself.
It reads existing generated Lean tables and emits a theorem proving that each
of the 37 graph-accepted terminal traces can be represented as
`GraphBranchTableSuffixOk` evidence over the strengthened graph branch table.
"""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke/Base.lean"
)
BRANCH_TABLE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTable1MSmoke.lean"
)
EVAL_GATE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke.lean"
)


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def parse_label_of_face(text: str) -> dict[str, int]:
    block = re.search(
        r"def smokeLabelOfFace : Face -> SmokeLabel\n(?P<body>(?:  \| .+\n)+)",
        text,
    )
    if not block:
        raise RuntimeError("could not find smokeLabelOfFace")
    labels: dict[str, int] = {}
    for face, label in re.findall(r"\| Face\.(\w+) => \((\d+) : SmokeLabel\)", block.group("body")):
        labels[face] = int(label)
    return labels


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


def parse_branch_constructors(text: str) -> dict[tuple[int, str], str]:
    result: dict[tuple[int, str], str] = {}
    for ctor, state_a, _face_in_name, state_b, face in re.findall(
        r"\| (graph_\d+_s(\d{4})_(\w+)) : "
        r"StrengthenedBranchTable \((\d+) : State\) Face\.(\w+) BranchKind\.graph",
        text,
    ):
        if int(state_a) != int(state_b):
            raise RuntimeError(f"constructor state mismatch for {ctor}")
        result[(int(state_a), face)] = ctor
    return result


def parse_accepted_traces(text: str) -> dict[int, list[str]]:
    traces: dict[int, list[str]] = {}
    for trace_id, body in re.findall(
        r"def acceptedFaceTrace_(\d{3}) : List Face :=\n  \[(.*?)\]",
        text,
        flags=re.S,
    ):
        faces = re.findall(r"Face\.(\w+)", body)
        traces[int(trace_id)] = faces
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
        key = (state, label)
        if key not in graph_next:
            raise RuntimeError(f"missing graph transition from state {state} on Face.{face}")
        ctor = constructors.get((state, face))
        if ctor is None:
            raise RuntimeError(f"missing branch constructor from state {state} on Face.{face}")
        next_state, gain = graph_next[key]
        steps.append((state, face, ctor, next_state, gain))
        state = next_state
    return steps


def emit_trace_theorem(trace_id: int, steps: list[tuple[int, str, str, int, int]]) -> list[str]:
    name = f"graphBranchTableSuffixOk_trace_{trace_id:03d}"
    lines = [
        f"private theorem {name}",
        "    {rank : Fin numPairWords} :",
        f"    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_{trace_id:03d} := by",
        f"  change GraphBranchTableSuffixOk rank (0 : State) {trace_list(trace_id)}",
    ]
    for state, face, ctor, _next_state, _gain in steps:
        lines.extend(
            [
                "  refine graphBranchTableSuffixOk_cons",
                f"    StrengthenedBranchTable.{ctor}",
                "    (by rfl) ?_",
            ]
        )
    lines.append("  exact GraphBranchTableSuffixOk.nil _")
    return lines


def trace_list(trace_id: int) -> str:
    return f"acceptedFaceTrace_{trace_id:03d}"


def emit() -> str:
    base_text = read(BASE)
    branch_text = read(BRANCH_TABLE)
    eval_text = read(EVAL_GATE)

    labels = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    constructors = parse_branch_constructors(branch_text)
    traces = parse_accepted_traces(eval_text)

    rendered: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge",
        "",
        "/-!",
        "Graph-only suffix smoke for graph-accepted top-pairing traces.",
        "",
        "This generated smoke proves that the current 37 graph-accepted terminal",
        "traces can be represented as `GraphBranchTableSuffixOk` evidence over the",
        "strengthened graph branch table.  It is trace-class based, not rank-sampled:",
        "there is no sampled rank/object type and no selected-prefix cover.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge",
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
        hname = f"h{trace_id}"
        rendered.extend(
            [
                f"  · subst labels",
                f"    exact graphBranchTableSuffixOk_trace_{trace_id:03d}",
            ]
        )

    rendered.extend(
        [
            "",
            "theorem branchTableSuffixOk_root_of_strengthenedTerminal_fullTrace",
            "    {rank : Fin numPairWords}",
            "    (hstrengthened :",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym)",
            "    (hterm :",
            "      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels",
            "        (topPairingRankFaceLabels rank)) :",
            "    BranchTableSuffixOk rank",
            "      (TopPairingTransducerEvalState.start rootState)",
            "      (topPairingRankFaceLabels rank) :=",
            "  branchTableSuffixOk_of_graphBranchTableSuffixOk",
            "    (state := TopPairingTransducerEvalState.start rootState)",
            "    (graphBranchTableSuffixOk_of_graphAcceptedTraceLabels",
            "      (graphAcceptedTraceLabels_of_strengthenedTerminalOk",
            "        hstrengthened hterm))",
            "",
            "theorem graphAcceptedBranchSuffix1MSmoke_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke",
            "",
        ]
    )
    return "\n".join(rendered)


def main() -> int:
    OUT.write_text(emit(), encoding="utf-8")
    print(f"wrote {OUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
