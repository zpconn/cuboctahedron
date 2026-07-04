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


STATES: tuple[ShardState, ...] = (
    ShardState(
        ctor="prefix2",
        eval_state="strengthenedClosedPrefix2EvalState",
        table="strengthenedPrefix2LocalBranchTable",
        branch_count=3,
        branches=(
            "tmpm -> graph 146, gain -124",
            "yp -> graph 144, gain -73",
            "zm -> graph 145, gain -10",
        ),
    ),
    ShardState(
        ctor="prefix3Tmpm",
        eval_state="strengthenedClosedPrefix3TmpmEvalState",
        table="strengthenedPrefix3TmpmLocalBranchTable",
        branch_count=2,
        branches=(
            "zm -> graph 150, gain 114",
            "tppm -> graph 152, gain 96",
        ),
    ),
    ShardState(
        ctor="prefix3Yp",
        eval_state="strengthenedClosedPrefix3YpEvalState",
        table="strengthenedPrefix3YpLocalBranchTable",
        branch_count=2,
        branches=(
            "zm -> graph 147, gain -10",
            "tmmm -> graph 148, gain -124",
        ),
    ),
    ShardState(
        ctor="prefix3Zm",
        eval_state="strengthenedClosedPrefix3ZmEvalState",
        table="strengthenedPrefix3ZmLocalBranchTable",
        branch_count=3,
        branches=(
            "yp -> graph 147, gain -73",
            "zp -> graph 149, gain -10",
            "tmpp -> graph 151, gain -124",
        ),
    ),
)


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def emit_lean() -> str:
    total_branches = sum(state.branch_count for state in STATES)
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
    for state in STATES:
        lines.append(f"  | {state.ctor}")
    lines.extend(
        [
            "  deriving DecidableEq, Repr",
            "",
            f"def emittedShardStateCount : Nat := {len(STATES)}",
            f"def emittedShardBranchCount : Nat := {total_branches}",
            "",
            "theorem emittedShardCount_audit :",
            f"    emittedShardStateCount = {len(STATES)} /\\",
            f"      emittedShardBranchCount = {total_branches} := by",
            "  decide",
            "",
            "def evalState : ShardState -> StrengthenedClosedEvalState",
        ]
    )
    for state in STATES:
        lines.append(f"  | .{state.ctor} => {state.eval_state}")
    lines.extend(
        [
            "",
            "def localBranchTable :",
            "    (state : ShardState) ->",
            "      StrengthenedLocalBranchTable (evalState state)",
        ]
    )
    for state in STATES:
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


def payload() -> dict[str, object]:
    return {
        "mode": "closed-bellman-strengthened-local-branch-table-shard",
        "shard": 0,
        "lean_output": rel(OUT_LEAN),
        "state_count": len(STATES),
        "branch_count": sum(state.branch_count for state in STATES),
        "states": [
            {
                "constructor": state.ctor,
                "eval_state": state.eval_state,
                "table": state.table,
                "branch_count": state.branch_count,
                "branches": list(state.branches),
            }
            for state in STATES
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
    parser.add_argument("--lean-out", type=Path, default=OUT_LEAN)
    parser.add_argument("--json-out", type=Path, default=OUT_JSON)
    parser.add_argument("--markdown-out", type=Path, default=OUT_MD)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    args.lean_out.parent.mkdir(parents=True, exist_ok=True)
    args.json_out.parent.mkdir(parents=True, exist_ok=True)
    args.markdown_out.parent.mkdir(parents=True, exist_ok=True)
    data = payload()
    args.lean_out.write_text(emit_lean(), encoding="utf-8")
    args.json_out.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")
    args.markdown_out.write_text(emit_markdown(data), encoding="utf-8")
    print(f"wrote {rel(args.lean_out)}")
    print(f"wrote {rel(args.json_out)}")
    print(f"wrote {rel(args.markdown_out)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
