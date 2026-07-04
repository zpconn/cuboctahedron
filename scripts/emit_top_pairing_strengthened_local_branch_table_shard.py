#!/usr/bin/env python3
"""Emit a bounded strengthened local branch-table shard.

This is an emitter-shaped artifact for the semantic Bellman pivot.  It does
not enumerate ranks, paths, selected prefixes, accepted trace ids, or affine
keys.  The generated Lean shard packages a small set of already checked
`StrengthenedLocalBranchTable` instances behind a uniform shard-state API.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_LEAN = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard000.lean"
)
OUT_JSON = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000.json"
)
OUT_MD = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000.md"
)
DEFAULT_INPUT = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000_input.json"
)

NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard000"
)


@dataclass(frozen=True)
class ShardState:
    ctor: str
    eval_state: str
    table: str
    branch_count: int
    branches: tuple[str, ...]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def state_from_json(entry: dict[str, Any]) -> ShardState:
    branches = entry.get("branches", [])
    if not isinstance(branches, list):
        raise TypeError("state branches must be a list")
    return ShardState(
        ctor=str(entry["constructor"]),
        eval_state=str(entry["eval_state"]),
        table=str(entry["table"]),
        branch_count=int(entry["branch_count"]),
        branches=tuple(str(branch) for branch in branches),
    )


def load_states(path: Path) -> tuple[ShardState, ...]:
    data = json.loads(path.read_text(encoding="utf-8"))
    entries = data.get("states", [])
    if not isinstance(entries, list):
        raise TypeError("input states must be a list")
    states = tuple(state_from_json(entry) for entry in entries)
    if not states:
        raise ValueError("input must contain at least one shard state")
    for state in states:
        if state.branch_count != len(state.branches):
            raise ValueError(
                f"{state.ctor}: branch_count {state.branch_count} "
                f"does not match {len(state.branches)} branches"
            )
    return states


def emit_lean(states: tuple[ShardState, ...]) -> str:
    total_branches = sum(state.branch_count for state in states)
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke",
        "",
        "/-!",
        "Generated strengthened local branch-table shard 000.",
        "",
        "This bounded generated shard packages the first semantic Bellman",
        "local branch tables behind one uniform shard-state API.  It is not",
        "rank coverage; it is the production-shaped local-transition object",
        "that future generated suffix evidence should consume.",
        "-/",
        "",
        f"namespace {NS}",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke",
        "",
        "inductive ShardState where",
    ]
    for state in states:
        lines.append(f"  | {state.ctor}")
    lines.extend(
        [
            "  deriving DecidableEq, Repr",
            "",
            f"def emittedShardStateCount : Nat := {len(states)}",
            f"def emittedShardBranchCount : Nat := {total_branches}",
            "",
            "theorem emittedShardCount_audit :",
            f"    emittedShardStateCount = {len(states)} /\\",
            f"      emittedShardBranchCount = {total_branches} := by",
            "  decide",
            "",
            "def evalState : ShardState -> StrengthenedClosedEvalState",
        ]
    )
    for state in states:
        lines.append(f"  | .{state.ctor} => {state.eval_state}")
    lines.extend(
        [
            "",
            "def localBranchTable :",
            "    (state : ShardState) ->",
            "      StrengthenedLocalBranchTable (evalState state)",
        ]
    )
    for state in states:
        lines.append(f"  | .{state.ctor} => {state.table}")
    lines.extend(
        [
            "",
            "theorem localTransition",
            "    {state : ShardState} {face : Face} {rest : List Face}",
            "    (htail : (evalState state).Tail (face :: rest)) :",
            "    ∃ branch : (localBranchTable state).Branch,",
            "      (localBranchTable state).face branch = face ∧",
            "        ∃ nextState : StrengthenedClosedEvalState,",
            "          strengthenedClosedEvalNext (evalState state) face =",
            "              some (nextState, (localBranchTable state).gain branch) ∧",
            "            nextState.Tail rest ∧",
            "              nextState.graph = (localBranchTable state).nextGraph branch :=",
            "  StrengthenedLocalBranchTable.localTransition",
            "    (localBranchTable state) htail",
            "",
            "theorem shard000_builds : True := by",
            "  exact True.intro",
            "",
            f"end {NS}",
            "",
        ]
    )
    return "\n".join(lines)


def payload(
    states: tuple[ShardState, ...],
    input_path: Path,
    lean_out: Path,
) -> dict[str, object]:
    return {
        "mode": "closed-bellman-strengthened-local-branch-table-shard",
        "shard": 0,
        "input": rel(input_path),
        "lean_output": rel(lean_out),
        "state_count": len(states),
        "branch_count": sum(state.branch_count for state in states),
        "states": [
            {
                "constructor": state.ctor,
                "eval_state": state.eval_state,
                "table": state.table,
                "branch_count": state.branch_count,
                "branches": list(state.branches),
            }
            for state in states
        ],
        "proof_shape": (
            "Each generated table is a StrengthenedLocalBranchTable instance; "
            "localTransition is proved by the generic table theorem, not by "
            "rank/path enumeration."
        ),
        "forbidden_coordinates": [
            "sampled ranks",
            "selected prefixes",
            "accepted trace ids",
            "exact affine RHS keys",
        ],
    }


def emit_markdown(data: dict[str, object]) -> str:
    lines = [
        "# Closed Bellman Strengthened Local Branch Table Shard 000",
        "",
        f"- Lean output: `{data['lean_output']}`",
        f"- State count: `{data['state_count']}`",
        f"- Branch count: `{data['branch_count']}`",
        "",
        "This is generated local-transition evidence, not rank coverage.",
        "",
        "## States",
        "",
    ]
    for state in data["states"]:  # type: ignore[index]
        lines.extend(
            [
                f"### `{state['constructor']}`",  # type: ignore[index]
                "",
                f"- Eval state: `{state['eval_state']}`",  # type: ignore[index]
                f"- Table: `{state['table']}`",  # type: ignore[index]
                f"- Branch count: `{state['branch_count']}`",  # type: ignore[index]
                "",
            ]
        )
        for branch in state["branches"]:  # type: ignore[index]
            lines.append(f"- {branch}")
        lines.append("")
    lines.extend(
        [
            "## Proof Shape",
            "",
            str(data["proof_shape"]),
            "",
            "## Forbidden Coordinates",
            "",
        ]
    )
    for coord in data["forbidden_coordinates"]:  # type: ignore[index]
        lines.append(f"- {coord}")
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--lean-out", type=Path, default=OUT_LEAN)
    parser.add_argument("--json-out", type=Path, default=OUT_JSON)
    parser.add_argument("--markdown-out", type=Path, default=OUT_MD)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    states = load_states(args.input)
    args.lean_out.parent.mkdir(parents=True, exist_ok=True)
    args.json_out.parent.mkdir(parents=True, exist_ok=True)
    args.markdown_out.parent.mkdir(parents=True, exist_ok=True)
    data = payload(states, args.input, args.lean_out)
    args.lean_out.write_text(emit_lean(states), encoding="utf-8")
    args.json_out.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")
    args.markdown_out.write_text(emit_markdown(data), encoding="utf-8")
    print(f"wrote {rel(args.lean_out)}")
    print(f"wrote {rel(args.json_out)}")
    print(f"wrote {rel(args.markdown_out)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
