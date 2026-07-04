#!/usr/bin/env python3
"""Emit sharded closed-language state-DAG evaluator smoke modules.

The monolithic 6089-edge `closedDAGNext` smoke stack-overflowed Lean's
elaborator.  This emitter keeps the same deterministic function surface but
splits the transition table by source-state range and emits a small dispatcher
root.  It is still structural smoke evidence: gains are zero and the generated
modules do not claim top-pairing coverage.
"""

from __future__ import annotations

import argparse
from pathlib import Path
import shutil
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import profile_top_pairing_trace_state_dag as dag_profile  # noqa: E402


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedStateDAGShardedSmoke"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedStateDAGShardedSmoke"
)


def lean_face(face: str) -> str:
    return f"Face.{face}"


def module_import(root_namespace: str, shard_index: int) -> str:
    return f"{root_namespace}.Shard{shard_index:03d}"


def edge_rows(graph: dict[str, Any]) -> list[dict[str, Any]]:
    return sorted(
        graph["edges"],
        key=lambda edge: (int(edge["source"]), str(edge["face"]), int(edge["target"])),
    )


def render_shard(
    namespace: str,
    shard_index: int,
    start_state: int,
    stop_state: int,
    rows: list[dict[str, Any]],
) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanTopPairingLanguage",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated closed-language state-DAG evaluator shard.",
        "",
        "This file is structural smoke evidence only.  It contains one bounded",
        "source-state range of the deterministic closed-DAG transition table.",
        "-/",
        "",
        f"namespace {namespace}.Shard{shard_index:03d}",
        "",
        "open Cuboctahedron",
        "",
        f"def shardIndex : Nat := {shard_index}",
        f"def stateStart : Nat := {start_state}",
        f"def stateStop : Nat := {stop_state}",
        f"def emittedEdgeCount : Nat := {len(rows)}",
        "",
        "def next : Nat -> Face -> Option (Nat × Int)",
    ]
    for edge in rows:
        lines.append(
            f"  | {edge['source']}, {lean_face(str(edge['face']))} => "
            f"some ({edge['target']}, (0 : Int))"
        )
    lines.extend(
        [
            "  | _, _ => none",
            "",
            "theorem shard_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}.Shard{shard_index:03d}",
            "",
        ]
    )
    return "\n".join(lines)


def render_dispatch(namespace: str, shard_count: int, states_per_shard: int) -> list[str]:
    lines = ["def closedDAGNext (state : Nat) (face : Face) : Option (Nat × Int) :="]
    indent = "  "
    for shard_index in range(shard_count - 1):
        bound = (shard_index + 1) * states_per_shard
        lines.append(
            f"{indent}if state < {bound} then Shard{shard_index:03d}.next state face else"
        )
        indent += "  "
    lines.append(f"{indent}Shard{shard_count - 1:03d}.next state face")
    return lines


def render_root(
    namespace: str,
    shard_count: int,
    states_per_shard: int,
    profile_states: int,
    profile_edges: int,
    emitted_edges: int,
) -> str:
    imports = [
        "import Cuboctahedron.Search.BellmanPotential",
        *(
            f"import {module_import(namespace, shard_index)}"
            for shard_index in range(shard_count)
        ),
    ]
    lines: list[str] = [
        *imports,
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Generated sharded closed-language state-DAG evaluator smoke root.",
        "",
        "This root dispatches to source-state shards instead of elaborating one",
        "large transition function.  It is structural smoke evidence, not",
        "coverage: gains are zero and no rank coverage is claimed.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
        f"def closedDAGProfileStateCount : Nat := {profile_states}",
        f"def closedDAGProfileEdgeCount : Nat := {profile_edges}",
        f"def emittedClosedDAGEdgeCount : Nat := {emitted_edges}",
        f"def emittedClosedDAGShardCount : Nat := {shard_count}",
        "",
        *render_dispatch(namespace, shard_count, states_per_shard),
        "",
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
        "theorem closedDAGPrefix4_eval :",
        "    evalLabelStepFn closedDAGNext 0",
        "      [Face.xm, Face.ym, Face.tmpm, Face.tppm] =",
        "      some (4, (0 : Int)) := by",
        "  rfl",
        "",
        "theorem closedStateDAGShardedSmoke_builds : True := by",
        "  exact True.intro",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--states-per-shard", type=int, default=64)
    args = parser.parse_args()

    report = dag_profile.profile(max_examples=1, max_states=10_000, max_edges=100_000)
    graph = report["graph"]
    rows = edge_rows(graph)
    output_dir = args.output_dir if args.output_dir.is_absolute() else ROOT / args.output_dir
    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    shard_count = (int(report["states"]) + args.states_per_shard - 1) // args.states_per_shard
    for shard_index in range(shard_count):
        start_state = shard_index * args.states_per_shard
        stop_state = min((shard_index + 1) * args.states_per_shard, int(report["states"]))
        shard_rows = [
            row
            for row in rows
            if start_state <= int(row["source"]) < stop_state
        ]
        (output_dir / f"Shard{shard_index:03d}.lean").write_text(
            render_shard(
                args.namespace,
                shard_index,
                start_state,
                stop_state,
                shard_rows,
            ),
            encoding="utf-8",
        )

    (output_dir / "All.lean").write_text(
        render_root(
            args.namespace,
            shard_count,
            args.states_per_shard,
            int(report["states"]),
            int(report["edges"]),
            len(rows),
        ),
        encoding="utf-8",
    )
    print(
        f"wrote {output_dir.relative_to(ROOT)} with {shard_count} shards, "
        f"{len(rows)} edges, {report['states']} states"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
