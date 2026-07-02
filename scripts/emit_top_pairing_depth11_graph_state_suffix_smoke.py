#!/usr/bin/env python3
"""Emit graph-state-indexed depth-11 suffix smoke for top-pairing Bellman.

This is a bounded diagnostic emitter.  It consumes the provider-gap audit and
emits Lean suffix predicates/theorems for the observed depth-11
`(semantic class, graph state, suffix)` obligations.  It does not prove that
all closed-language ranks reach these obligations, and it does not prove final
margin bounds.  Those remain separate production gates.
"""

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

PROVIDER_GAP_JSON = (
    ROOT / "scripts/generated/top_pairing_semantic_state_dag_provider_gap.json"
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
    / "BellmanTopPairingDepth11GraphStateSuffixSmoke.lean"
)

NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSmoke"
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


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def list_face_expr(faces: list[str]) -> str:
    if not faces:
        return "[]"
    return "[" + ", ".join(face_ctor(face) for face in faces) + "]"


def class_state_name(cls: int, graph: int) -> str:
    return f"Depth11Class{cls:03d}State{graph:04d}Suffix"


def theorem_name(cls: int, graph: int) -> str:
    return f"graphBranchTableSuffixOk_class{cls:03d}_state{graph:04d}"


def ctor_name(trace: int) -> str:
    return f"trace_{trace:03d}"


def parse_label_of_face(base_text: str) -> dict[str, int]:
    return {
        face: int(label)
        for face, label in re.findall(
            r"\|\s+Face\.(\w+)\s+=>\s+\((\d+)\s+:\s+SmokeLabel\)",
            base_text,
        )
    }


def parse_graph_next(base_text: str) -> dict[tuple[int, int], tuple[int, int]]:
    result: dict[tuple[int, int], tuple[int, int]] = {}
    for match in re.finditer(
        r"def graphSmokeNext_s(\d{4}) : SmokeLabel -> Option \(State × Int\)\n"
        r"(?P<body>(?:  \| .+\n)+)",
        base_text,
    ):
        state = int(match.group(1))
        for label, next_state, gain in re.findall(
            r"\|\s+(\d+)\s+=>\s+some\s+\(\((\d+)\s+:\s+State\),\s+\((-?\d+)\s+:\s+Int\)\)",
            match.group("body"),
        ):
            result[(state, int(label))] = (int(next_state), int(gain))
    return result


def parse_branch_table(table_text: str) -> dict[tuple[int, str], str]:
    pattern = re.compile(
        r"\|\s+(graph_\d+_s\d{4}_(\w+))\s*:\s+"
        r"StrengthenedBranchTable\s+\((\d+)\s+:\s+State\)\s+"
        r"Face\.(\w+)\s+BranchKind\.graph"
    )
    result: dict[tuple[int, str], str] = {}
    for ctor, suffix_face, state, face in pattern.findall(table_text):
        if suffix_face != face:
            raise ValueError(f"constructor face mismatch: {ctor} vs Face.{face}")
        result[(int(state), face)] = ctor
    return result


def grouped_obligations(report: dict[str, Any]) -> dict[tuple[int, int], list[dict[str, Any]]]:
    groups: dict[tuple[int, int], list[dict[str, Any]]] = defaultdict(list)
    seen: set[tuple[int, int, tuple[str, ...]]] = set()
    for row in report["trace_table"]:
        depth11 = row["depth11"]
        cls = int(depth11["semantic_class"])
        graph = int(depth11["graph_state"])
        suffix = tuple(str(face) for face in depth11["suffix"])
        key = (cls, graph, suffix)
        if key in seen:
            continue
        seen.add(key)
        groups[(cls, graph)].append(
            {
                "trace": int(row["trace"]),
                "suffix": list(suffix),
            }
        )
    for values in groups.values():
        values.sort(key=lambda row: (row["suffix"], row["trace"]))
    return dict(sorted(groups.items()))


def suffix_steps(
    *,
    start: int,
    faces: list[str],
    label_of_face: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    branch_ctor: dict[tuple[int, str], str],
) -> list[dict[str, int | str]]:
    state = start
    steps: list[dict[str, int | str]] = []
    for face in faces:
        label = label_of_face[face]
        transition = graph_next.get((state, label))
        if transition is None:
            raise RuntimeError(f"missing graph transition from {state} on {face}")
        ctor = branch_ctor.get((state, face))
        if ctor is None:
            raise RuntimeError(f"missing branch constructor from {state} on {face}")
        next_state, gain = transition
        steps.append(
            {
                "state": state,
                "face": face,
                "ctor": ctor,
                "next": next_state,
                "gain": gain,
            }
        )
        state = next_state
    return steps


def emit_cons_theorem() -> list[str]:
    return [
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


def emit_theorem(
    *,
    cls: int,
    graph: int,
    obligations: list[dict[str, Any]],
    label_of_face: dict[str, int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    branch_ctor: dict[tuple[int, str], str],
) -> list[str]:
    pred = class_state_name(cls, graph)
    lines: list[str] = [
        f"theorem {theorem_name(cls, graph)}",
        "    {rank : Fin numPairWords} {rest : List Face}",
        f"    (hclass : {pred} rest) :",
        f"    GraphBranchTableSuffixOk rank ({graph} : State) rest := by",
        "  cases hclass with",
    ]
    for obligation in obligations:
        lines.append(f"  | {ctor_name(obligation['trace'])} =>")
        steps = suffix_steps(
            start=graph,
            faces=obligation["suffix"],
            label_of_face=label_of_face,
            graph_next=graph_next,
            branch_ctor=branch_ctor,
        )
        for step in steps:
            lines.extend(
                [
                    "      refine graphBranchTableSuffixOk_cons",
                    f"        StrengthenedBranchTable.{step['ctor']}",
                    "        (by rfl) ?_",
                ]
            )
        lines.append("      exact GraphBranchTableSuffixOk.nil _")
    lines.append("")
    return lines


def emit(report: dict[str, Any]) -> str:
    base_text = read(SPLIT_BASE)
    table_text = read(BRANCH_TABLE)
    label_of_face = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    branch_ctor = parse_branch_table(table_text)
    groups = grouped_obligations(report)

    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke",
        "",
        "/-!",
        "Generated graph-state-indexed depth-11 suffix smoke for top-pairing Bellman.",
        "",
        "This bounded diagnostic module proves graph branch-table suffix evidence",
        "for the observed depth-11 `(semantic class, graph state, suffix)`",
        "obligations from the split-10M graph-accepted trace artifact.  It is not",
        "a final closed-language membership theorem and it does not prove final",
        "margin producers.",
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
        f"open {SUFFIX_NS}",
        "",
        f"def depth11GraphStateSuffixObligationCount : Nat := {sum(len(v) for v in groups.values())}",
        f"def depth11GraphStateSuffixProviderCount : Nat := {len(groups)}",
        "",
        "theorem depth11GraphStateSuffixCount_audit :",
        f"    depth11GraphStateSuffixObligationCount = {sum(len(v) for v in groups.values())} /\\",
        f"      depth11GraphStateSuffixProviderCount = {len(groups)} := by",
        "  decide",
        "",
    ]
    for (cls, graph), obligations in groups.items():
        lines.append(f"inductive {class_state_name(cls, graph)} : List Face -> Prop")
        for obligation in obligations:
            lines.append(
                f"  | {ctor_name(obligation['trace'])} : "
                f"{class_state_name(cls, graph)} {list_face_expr(obligation['suffix'])}"
            )
        lines.append("")

    lines.extend(emit_cons_theorem())

    for (cls, graph), obligations in groups.items():
        lines.extend(
            emit_theorem(
                cls=cls,
                graph=graph,
                obligations=obligations,
                label_of_face=label_of_face,
                graph_next=graph_next,
                branch_ctor=branch_ctor,
            )
        )

    lines.extend(
        [
            "theorem depth11GraphStateSuffixSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {NS}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=PROVIDER_GAP_JSON)
    parser.add_argument("--output", type=Path, default=OUT)
    args = parser.parse_args()

    report = load_json(args.input)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(emit(report), encoding="utf-8")
    print(f"wrote {rel(args.output)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
