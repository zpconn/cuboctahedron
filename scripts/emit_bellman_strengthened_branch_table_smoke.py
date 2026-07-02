#!/usr/bin/env python3
"""Emit a small Lean smoke module for the strengthened Bellman branch table.

This emitter is intentionally modest.  It turns the audited 1M graph edges plus
the two accepted semantic sockets into a finite Lean relation.  The emitted
module is not the final closed-language membership theorem; it is the next
producer-shaped object that future generated local progress proofs should
consume instead of hand-growing depth cuts.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_GRAPH = Path(
    "scripts/generated/"
    "nonid_margin_bellman_top_pairing_000000000_001000000_"
    "with_step_face_linear_tri_source_graph.json"
)
DEFAULT_AUDIT = Path(
    "scripts/generated/bellman_strengthened_branch_table_audit.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingStrengthenedBranchTable1MSmoke.lean"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def face_from_label_key(key: str) -> str:
    for part in key.split("|"):
        if part.startswith("face="):
            return part.removeprefix("face=")
    raise ValueError(f"label key has no face= component: {key}")


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def ctor_name(prefix: str, index: int, src: int, face: str) -> str:
    return f"{prefix}_{index:03d}_s{src:04d}_{face}"


def graph_edges(graph: dict[str, Any]) -> list[dict[str, Any]]:
    labels = {
        int(label["index"]): face_from_label_key(str(label["key"]))
        for label in graph["labels"]
    }
    out: list[dict[str, Any]] = []
    for index, edge in enumerate(graph["edges"]):
        label_indices = edge["label_indices"]
        if len(label_indices) != 1:
            raise ValueError("this smoke expects one label per graph edge")
        label_index = int(label_indices[0])
        out.append(
            {
                "index": index,
                "src": int(edge["src"]),
                "dst": int(edge["dst"]),
                "gain": int(edge["gain_scaled"]),
                "label": label_index,
                "face": labels[label_index],
            }
        )
    return out


def emit_module(*, graph_path: Path, audit_path: Path) -> str:
    graph_payload = read_json(graph_path)
    audit = read_json(audit_path)
    graph = graph_payload["graph"]
    edges = graph_edges(graph)
    sockets = audit["sockets"]
    if audit["decision"] != "finite-branch-table-report-ready-for-lean-emitter":
        raise ValueError(f"branch-table audit is not accepted: {audit['decision']}")

    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke",
        "",
        "/-!",
        "Generated strengthened Bellman branch-table smoke.",
        "",
        "This module records the finite branch classification accepted by",
        "`scripts/audit_bellman_strengthened_branch_table.py`: ordinary graph",
        "transitions plus semantic socket branches.  It is a producer-shaped",
        "smoke artifact, not the final closed-language membership theorem.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke",
        "",
        "inductive BranchKind where",
        "  | graph",
        "  | socket19Tmmp",
        "  | socket150Tppp",
        "  deriving DecidableEq, Repr",
        "",
        f"def realGraphTransitionBranchCount : Nat := {len(edges)}",
        f"def semanticSocketBranchCount : Nat := {len(sockets)}",
        "def remainingUncoveredAuditedBranchCount : Nat := 0",
        "",
        "theorem branchCount_audit :",
        f"    realGraphTransitionBranchCount = {len(edges)} /\\",
        f"    semanticSocketBranchCount = {len(sockets)} /\\",
        "    remainingUncoveredAuditedBranchCount = 0 := by",
        "  decide",
        "",
        "inductive StrengthenedBranchTable : State -> Face -> BranchKind -> Prop",
    ]
    for edge in edges:
        lines.append(
            f"  | {ctor_name('graph', edge['index'], edge['src'], edge['face'])} : "
            f"StrengthenedBranchTable ({edge['src']} : State) "
            f"{face_ctor(edge['face'])} BranchKind.graph"
        )
    lines.extend(
        [
            "  | socket19Tmmp :",
            "      StrengthenedBranchTable (19 : State) Face.tmmp BranchKind.socket19Tmmp",
            "  | socket150Tppp :",
            "      StrengthenedBranchTable (150 : State) Face.tppp BranchKind.socket150Tppp",
            "",
            "def strengthenedBranchKind? : State -> Face -> Option BranchKind",
        ]
    )
    for edge in edges:
        lines.append(
            f"  | {edge['src']}, {face_ctor(edge['face'])} => some BranchKind.graph"
        )
    lines.extend(
        [
            "  | 19, Face.tmmp => some BranchKind.socket19Tmmp",
            "  | 150, Face.tppp => some BranchKind.socket150Tppp",
            "  | _, _ => none",
            "",
            "theorem branchKind?_of_branchTable",
            "    {s : State} {face : Face} {kind : BranchKind}",
            "    (h : StrengthenedBranchTable s face kind) :",
            "    strengthenedBranchKind? s face = some kind := by",
            "  cases h <;> rfl",
            "",
            "theorem graph_next_of_graphBranch",
            "    {s : State} {face : Face}",
            "    (h : StrengthenedBranchTable s face BranchKind.graph) :",
            "    ∃ nextState gain,",
            "      graphSmokeNext s (smokeLabelOfFace face) = some (nextState, gain) := by",
            "  cases h",
        ]
    )
    for edge in edges:
        lines.append(f"  · exact ⟨({edge['dst']} : State), ({edge['gain']} : Int), rfl⟩")
    lines.extend(
        [
            "",
            "theorem socketBranches_present :",
            "    StrengthenedBranchTable (19 : State) Face.tmmp BranchKind.socket19Tmmp /\\",
            "    StrengthenedBranchTable (150 : State) Face.tppp BranchKind.socket150Tppp := by",
            "  exact ⟨StrengthenedBranchTable.socket19Tmmp,",
            "    StrengthenedBranchTable.socket150Tppp⟩",
            "",
            "theorem strengthenedBranchTable1MSmoke_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke",
            "",
        ]
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--audit", type=Path, default=DEFAULT_AUDIT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(emit_module(graph_path=args.graph, audit_path=args.audit))
    print(f"wrote {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
