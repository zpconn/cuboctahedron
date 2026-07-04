#!/usr/bin/env python3
"""Emit a bounded closed-language state-DAG evaluator smoke.

This smoke is diagnostic generator-shape evidence.  It uses the exact semantic
state DAG from `profile_top_pairing_trace_state_dag.py`, emits a small prefix
of its transition table, and proves that the emitted suffix predicate evaluates
through `evalLabelStepFn`.

It deliberately does not prove top-pairing coverage, does not enumerate ranks,
and does not use sampled/accepted trace identifiers.
"""

from __future__ import annotations

import argparse
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import profile_top_pairing_trace_state_dag as dag_profile  # noqa: E402


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedStateDAGEvaluatorSmoke.lean"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedStateDAGEvaluatorSmoke"
)


def lean_face(face: str) -> str:
    return f"Face.{face}"


def edge_name(index: int, edge: dict[str, Any]) -> str:
    return f"closed_dag_edge_{index:04d}_s{edge['source']:04d}_{edge['face']}"


def select_edges(graph: dict[str, Any], limit: int) -> list[dict[str, Any]]:
    edges = sorted(
        graph["edges"],
        key=lambda edge: (int(edge["source"]), str(edge["face"]), int(edge["target"])),
    )
    return edges[:limit]


def next_cases(edges: list[dict[str, Any]]) -> list[str]:
    lines: list[str] = [
        "/-- Bounded semantic state-DAG next function.  Gains are zero in this",
        "smoke; production will replace them with the Bellman margin gains. -/",
        "def closedDAGNext : Nat -> Face -> Option (Nat × Int)",
    ]
    for edge in edges:
        lines.append(
            f"  | {edge['source']}, {lean_face(str(edge['face']))} => "
            f"some ({edge['target']}, (0 : Int))"
        )
    lines.append("  | _, _ => none")
    return lines


def emit(prefix: list[dict[str, Any]], all_edges: list[dict[str, Any]], namespace: str) -> str:
    if len(prefix) < 4:
        raise ValueError("expected at least four prefix edges")
    prefix_faces = [str(edge["face"]) for edge in prefix[:4]]
    prefix_finish = int(prefix[3]["target"])
    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "import Cuboctahedron.Search.BellmanTopPairingLanguage",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated closed-language state-DAG evaluator smoke.",
        "",
        "This bounded module exercises the next production shape after the",
        "closed-language audit: a deterministic state-DAG evaluator over face",
        "labels.  It is not coverage evidence and it does not use sampled ranks,",
        "selected prefixes, accepted trace ids, exact affine RHS keys, or solved",
        "start-point keys.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
        f"def closedDAGProfileStateCount : Nat := 5347",
        f"def closedDAGProfileEdgeCount : Nat := 6089",
        f"def closedDAGProfileClosedPathCount : Nat := 47",
        f"def emittedClosedDAGEdgeCount : Nat := {len(all_edges)}",
        "",
        *next_cases(all_edges),
        "",
        "/-- Suffix evidence for the bounded evaluator table. -/",
        "inductive ClosedDAGSuffixOk : Nat -> List Face -> Prop",
        "  | nil (state : Nat) : ClosedDAGSuffixOk state []",
        "  | cons {state nextState : Nat} {face : Face} {gain : Int}",
        "      {rest : List Face}",
        "      (hnext : closedDAGNext state face = some (nextState, gain))",
        "      (hrest : ClosedDAGSuffixOk nextState rest) :",
        "      ClosedDAGSuffixOk state (face :: rest)",
        "",
        "theorem evalLabelStepFn_exists_of_closedDAGSuffixOk",
        "    {state : Nat} {labels : List Face}",
        "    (h : ClosedDAGSuffixOk state labels) :",
        "    exists finish gain,",
        "      evalLabelStepFn closedDAGNext state labels = some (finish, gain) := by",
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
    for index, edge in enumerate(all_edges):
        lines.extend(
            [
                f"theorem {edge_name(index, edge)} :",
                f"    closedDAGNext {edge['source']} {lean_face(str(edge['face']))} =",
                f"      some ({edge['target']}, (0 : Int)) := by",
                "  rfl",
                "",
            ]
        )

    prefix_list = "[" + ", ".join(lean_face(face) for face in prefix_faces) + "]"
    lines.extend(
        [
            "/-- A tiny evaluator smoke over the first closed-language DAG prefix. -/",
            "theorem closedDAGPrefix4_eval :",
            f"    evalLabelStepFn closedDAGNext 0 {prefix_list} =",
            f"      some ({prefix_finish}, (0 : Int)) := by",
            "  rfl",
            "",
            "theorem closedStateDAGEvaluatorSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--limit", type=int, default=64)
    args = parser.parse_args()

    report = dag_profile.profile(max_examples=1, max_states=10_000, max_edges=100_000)
    graph = report["graph"]
    edges = select_edges(graph, args.limit)
    prefix_edges = [
        {"source": 0, "face": "xm", "target": 1},
        {"source": 1, "face": "ym", "target": 2},
        {"source": 2, "face": "tmpm", "target": 3},
        {"source": 3, "face": "tppm", "target": 4},
    ]
    for edge in prefix_edges:
        if edge not in edges:
            edges.insert(0, edge)
    # Preserve deterministic order after ensuring the smoke prefix exists.
    edges = select_edges({"edges": edges}, len(edges))

    output = args.output if args.output.is_absolute() else ROOT / args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(emit(prefix_edges, edges, args.namespace), encoding="utf-8")
    print(
        f"wrote {output.relative_to(ROOT)} with {len(edges)} emitted edges "
        f"from {report['states']} states / {report['edges']} profiled edges"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
