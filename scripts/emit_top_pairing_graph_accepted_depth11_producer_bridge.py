#!/usr/bin/env python3
"""Emit GraphAcceptedTraceLabels -> depth-11 graph-path producer bridge.

This is a bounded semantic bridge, not final closed-language coverage.  It
shows that the accepted terminal trace predicate can feed the production-shaped
depth-11 graph-state suffix socket.  The remaining production gate is to prove
the accepted terminal trace predicate from the strengthened closed language.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any

from emit_top_pairing_depth11_graph_state_suffix_smoke import (
    parse_branch_table,
    parse_graph_next,
    parse_label_of_face,
    suffix_steps,
)


ROOT = Path(__file__).resolve().parents[1]
PROVIDER_GAP_JSON = (
    ROOT / "scripts/generated/top_pairing_semantic_state_dag_provider_gap.json"
)
GRAPH_ACCEPTED = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
SPLIT_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)
BRANCH_TABLE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke.lean"
)
OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedDepth11ProducerBridge.lean"
)

NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedDepth11ProducerBridge"
)
BASE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphEvalSplit10MSmoke.Base"
)
BRANCH_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke"
)
ACCEPTED_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedEvalGate"
)
SOCKET_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSocket"
)
SMOKE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSmoke"
)
SMOKE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphStateSuffixSmoke.lean"
)


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def lean_face(face: str) -> str:
    return f"Face.{face}"


def lean_face_list(faces: list[str]) -> str:
    return "[" + ", ".join(lean_face(face) for face in faces) + "]"


def accepted_trace_name(trace: int) -> str:
    return f"acceptedFaceTrace_{trace:03d}"


def trace_theorem_name(trace: int) -> str:
    return f"split10MDepth11GraphPathProducer_trace_{trace:03d}"


def depth11_predicate(cls: int, graph: int) -> str:
    return f"Depth11Class{cls:03d}State{graph:04d}Suffix"


def depth11_observed_ctor(cls: int, graph: int) -> str:
    return f"Depth11ObservedGraphStateSuffixOk.class{cls:03d}_state{graph:04d}"


def depth11_trace_ctor(trace: int) -> str:
    return f"trace_{trace:03d}"


def parse_depth11_suffix_ctors(text: str) -> dict[tuple[int, int, tuple[str, ...]], str]:
    result: dict[tuple[int, int, tuple[str, ...]], str] = {}
    block_pattern = re.compile(
        r"inductive Depth11Class(\d{3})State(\d{4})Suffix : List Face -> Prop\n"
        r"(?P<body>(?:  \| .+\n)+)",
        re.MULTILINE,
    )
    for match in block_pattern.finditer(text):
        cls = int(match.group(1))
        graph = int(match.group(2))
        for ctor, body in re.findall(r"\|\s+(trace_\d{3})\s+:\s+Depth11Class\d{3}State\d{4}Suffix\s+\[([^\]]*)\]", match.group("body")):
            faces = tuple(re.findall(r"Face\.(\w+)", body))
            result[(cls, graph, faces)] = ctor
    return result


def parse_accepted_trace_defs(text: str) -> dict[int, list[str]]:
    traces: dict[int, list[str]] = {}
    pattern = re.compile(
        r"def acceptedFaceTrace_(\d{3}) : List Face :=\n"
        r"\s+\[(?P<body>[^\]]+)\]",
        re.MULTILINE,
    )
    for match in pattern.finditer(text):
        trace = int(match.group(1))
        faces = re.findall(r"Face\.(\w+)", match.group("body"))
        traces[trace] = faces
    return traces


def trace_rows(
    report: dict[str, Any],
    traces: dict[int, list[str]],
    suffix_ctors: dict[tuple[int, int, tuple[str, ...]], str],
) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for row in report["trace_table"]:
        trace = int(row["trace"])
        faces = traces.get(trace)
        if faces is None:
            raise RuntimeError(f"missing accepted trace {trace:03d}")
        if len(faces) != 14:
            raise RuntimeError(f"trace {trace:03d} has length {len(faces)}")
        depth4_suffix = [str(face) for face in row["depth4"]["suffix"]]
        expected_suffix = faces[4:]
        if depth4_suffix != expected_suffix:
            raise RuntimeError(
                f"depth4 suffix mismatch for trace {trace:03d}: "
                f"{depth4_suffix} != {expected_suffix}"
            )
        depth11 = row["depth11"]
        suffix = [str(face) for face in depth11["suffix"]]
        cls = int(depth11["semantic_class"])
        graph = int(depth11["graph_state"])
        suffix_ctor = suffix_ctors.get((cls, graph, tuple(suffix)))
        if suffix_ctor is None:
            raise RuntimeError(
                f"missing suffix constructor for class {cls:03d} "
                f"state {graph:04d} suffix {suffix}"
            )
        prefix = depth4_suffix[: len(depth4_suffix) - len(suffix)]
        rows.append(
            {
                "trace": trace,
                "faces": faces,
                "face0": faces[2],
                "face1": faces[3],
                "depth4_suffix": depth4_suffix,
                "prefix": prefix,
                "suffix": suffix,
                "class": cls,
                "depth11_graph": graph,
                "suffix_ctor": suffix_ctor,
            }
        )
    return sorted(rows, key=lambda row: row["trace"])


def emit_path(
    *,
    start_graph: int,
    prefix: list[str],
    depth11_graph: int,
    label_of_face: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    branch_ctor: dict[tuple[int, str], str],
) -> list[str]:
    steps = suffix_steps(
        start=start_graph,
        faces=prefix,
        label_of_face=label_of_face,
        graph_next=graph_next,
        branch_ctor=branch_ctor,
    )
    if not steps:
        if start_graph != depth11_graph:
            raise RuntimeError(f"empty path ends at {start_graph}, expected {depth11_graph}")
        return ["  exact GraphPathTo.nil _"]
    if int(steps[-1]["next"]) != depth11_graph:
        raise RuntimeError(
            f"path from {start_graph} ends at {steps[-1]['next']}, "
            f"expected {depth11_graph}"
        )
    lines: list[str] = []
    for step in steps:
        lines.extend(
            [
                "  refine GraphPathTo.graph",
                f"    StrengthenedBranchTable.{step['ctor']} ?_",
                "  intro graphNext gain hnext",
                f"  rw [show graphSmokeNext ({step['state']} : State) "
                f"(smokeLabelOfFace {lean_face(str(step['face']))}) =",
                f"      some (({step['next']} : State), ({step['gain']} : Int)) by rfl] at hnext",
                "  cases hnext",
            ]
        )
    lines.append("  exact GraphPathTo.nil _")
    return lines


def emit_trace_theorem(
    row: dict[str, Any],
    *,
    label_of_face: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    branch_ctor: dict[tuple[int, str], str],
) -> list[str]:
    trace = int(row["trace"])
    face0 = str(row["face0"])
    face1 = str(row["face1"])
    label0 = label_of_face[face0]
    label1 = label_of_face[face1]
    transition1 = graph_next.get((610, label0))
    if transition1 is None:
        raise RuntimeError(f"missing transition from 610 on {face0}")
    graph1, gain1 = transition1
    transition2 = graph_next.get((graph1, label1))
    if transition2 is None:
        raise RuntimeError(f"missing transition from {graph1} on {face1}")
    graph2, gain2 = transition2
    prefix = list(row["prefix"])
    suffix = list(row["suffix"])
    cls = int(row["class"])
    depth11_graph = int(row["depth11_graph"])
    suffix_ctor = str(row["suffix_ctor"])

    lines = [
        f"private theorem {trace_theorem_name(trace)}",
        "    {rank : Fin numPairWords}",
        f"    (htrace : topPairingRankFaceLabels rank = {accepted_trace_name(trace)}) :",
        "    Split10MDepth11GraphPathProducer rank := by",
        "  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂",
        "    hgraph₁ hgraph₂",
        "  rw [htrace] at hlabels",
        "  cases face₀ <;> cases face₁ <;>",
        f"    simp [{accepted_trace_name(trace)}] at hlabels",
        f"  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace {lean_face(face0)}) =",
        f"      some (({graph1} : State), ({gain1} : Int)) by rfl] at hgraph₁",
        "  cases hgraph₁",
        f"  rw [show graphSmokeNext ({graph1} : State) (smokeLabelOfFace {lean_face(face1)}) =",
        f"      some (({graph2} : State), ({gain2} : Int)) by rfl] at hgraph₂",
        "  cases hgraph₂",
        f"  refine ⟨{lean_face_list(prefix)}, {lean_face_list(suffix)}, ({depth11_graph} : State), ?_, ?_, ?_⟩",
        "  · simpa using hlabels.symm",
        "  ·",
    ]
    path_lines = emit_path(
        start_graph=graph2,
        prefix=prefix,
        depth11_graph=depth11_graph,
        label_of_face=label_of_face,
        graph_next=graph_next,
        branch_ctor=branch_ctor,
    )
    lines.extend("    " + line[2:] if line.startswith("  ") else "    " + line for line in path_lines)
    lines.extend(
        [
            "  ·",
            f"    exact {depth11_observed_ctor(cls, depth11_graph)} "
            f"{depth11_predicate(cls, depth11_graph)}.{suffix_ctor}",
            "",
        ]
    )
    return lines


def emit(rows: list[dict[str, Any]]) -> str:
    base_text = read(SPLIT_BASE)
    table_text = read(BRANCH_TABLE)
    label_of_face = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    branch_ctor = parse_branch_table(table_text)

    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate",
        "",
        "/-!",
        "Generated bridge from graph-accepted terminal traces to the depth-11",
        "graph-state suffix producer socket.",
        "",
        "This is not final closed-language coverage.  It proves that the existing",
        "`GraphAcceptedTraceLabels` semantic terminal predicate can feed the",
        "new `Split10MDepth11GraphPathProducer` socket, without sampled ranks,",
        "selected prefix ids, exact affine RHS keys, or exact Bellman path ids.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        f"namespace {NS}",
        "",
        "open Cuboctahedron",
        f"open {BASE_NS}",
        f"open {BRANCH_NS}",
        f"open {ACCEPTED_NS}",
        f"open {SMOKE_NS}",
        f"open {SOCKET_NS}",
        "",
        f"def graphAcceptedDepth11ProducerTraceCount : Nat := {len(rows)}",
        "",
        "theorem graphAcceptedDepth11ProducerTraceCount_audit :",
        f"    graphAcceptedDepth11ProducerTraceCount = {len(rows)} := by",
        "  decide",
        "",
    ]
    for row in rows:
        lines.extend(
            emit_trace_theorem(
                row,
                label_of_face=label_of_face,
                graph_next=graph_next,
                branch_ctor=branch_ctor,
            )
        )

    lines.extend(
        [
            "theorem split10MDepth11GraphPathProducer_of_graphAcceptedTraceLabels",
            "    {rank : Fin numPairWords}",
            "    (haccepted : GraphAcceptedTraceLabels (topPairingRankFaceLabels rank)) :",
            "    Split10MDepth11GraphPathProducer rank := by",
            "  unfold GraphAcceptedTraceLabels at haccepted",
        ]
    )
    branches = " | ".join(f"h{index:03d}" for index in range(len(rows)))
    lines.append(f"  rcases haccepted with {branches}")
    for row in rows:
        trace = int(row["trace"])
        lines.append(
            f"  · exact {trace_theorem_name(trace)} h{trace:03d}"
        )
    lines.extend(
        [
            "",
            "theorem graphAcceptedDepth11ProducerBridge_builds : True := by",
            "  exact True.intro",
            "",
            f"end {NS}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--provider-gap-json", type=Path, default=PROVIDER_GAP_JSON)
    parser.add_argument("--accepted", type=Path, default=GRAPH_ACCEPTED)
    parser.add_argument("--smoke", type=Path, default=SMOKE)
    parser.add_argument("--output", type=Path, default=OUT)
    args = parser.parse_args()

    report = load_json(args.provider_gap_json)
    traces = parse_accepted_trace_defs(read(args.accepted))
    suffix_ctors = parse_depth11_suffix_ctors(read(args.smoke))
    rows = trace_rows(report, traces, suffix_ctors)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(emit(rows), encoding="utf-8")
    print(f"wrote {rel(args.output)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
