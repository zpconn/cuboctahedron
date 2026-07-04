#!/usr/bin/env python3
"""Emit a small graph-state transition smoke from the audited Bellman JSON.

The emitted Lean file is intentionally narrow: it proves selected graph
transition facts by reducing `graphSmokeNext`.  It does not claim semantic
closed-language coverage, enumerate ranks, or import terminal trace shards.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_target_pairing_closure import face_from_label  # noqa: E402


ROOT = Path(__file__).resolve().parents[1]

DEFAULT_GRAPH = (
    ROOT
    / "scripts/generated/"
    / "nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json"
)

DEFAULT_OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticStateTransitionEmitterSmoke.lean"
)

OUT_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingSemanticStateTransitionEmitterSmoke"
)


def load_graph(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())["graph"]


def transition_rows(graph: dict[str, Any], limit: int) -> list[dict[str, Any]]:
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    rows: list[dict[str, Any]] = []
    for edge in graph["edges"]:
        label_indices = [int(idx) for idx in edge.get("label_indices", [])]
        if len(label_indices) != 1:
            continue
        label_idx = label_indices[0]
        face = face_from_label(labels[label_idx])
        rows.append(
            {
                "src": int(edge["src"]),
                "dst": int(edge["dst"]),
                "gain": int(edge["gain_scaled"]),
                "label": label_idx,
                "face": face,
            }
        )
        if len(rows) >= limit:
            break
    return rows


def theorem_name(index: int, row: dict[str, Any]) -> str:
    return f"emitted_transition_{index:04d}_s{row['src']:04d}_{row['face']}"


def emit(graph_path: Path, rows: list[dict[str, Any]], namespace: str) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        "/-!",
        "Generated semantic state-transition emitter smoke.",
        "",
        "This bounded module proves graph transition facts emitted from the",
        "audited split-10M Bellman graph JSON.  It is a low-risk generator",
        "socket for deterministic semantic-state emission; it does not prove",
        "closed-language membership and it does not use sampled ranks, selected",
        "prefixes, accepted trace ids, or exact affine keys.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "",
        f"/-- Source graph: `{graph_path.relative_to(ROOT)}`. -/",
        f"def emittedTransitionCount : Nat := {len(rows)}",
        "",
        "theorem emittedTransitionCount_eq :",
        f"    emittedTransitionCount = {len(rows)} := by",
        "  rfl",
        "",
    ]
    for index, row in enumerate(rows):
        lines.extend(
            [
                f"theorem {theorem_name(index, row)} :",
                f"    graphSmokeNext ({row['src']} : State) (smokeLabelOfFace Face.{row['face']}) =",
                f"      some (({row['dst']} : State), ({row['gain']} : Int)) := by",
                "  rfl",
                "",
            ]
        )
    lines.extend(
        [
            "theorem semanticStateTransitionEmitterSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--namespace", default=OUT_NS)
    parser.add_argument("--limit", type=int, default=32)
    args = parser.parse_args()
    graph_path = args.graph if args.graph.is_absolute() else ROOT / args.graph
    output_path = args.output if args.output.is_absolute() else ROOT / args.output
    graph = load_graph(graph_path)
    rows = transition_rows(graph, args.limit)
    if len(rows) < args.limit:
        raise RuntimeError(f"only found {len(rows)} singleton-label edges")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(emit(graph_path, rows, args.namespace), encoding="utf-8")
    print(f"wrote {output_path.relative_to(ROOT)} with {len(rows)} transitions")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
