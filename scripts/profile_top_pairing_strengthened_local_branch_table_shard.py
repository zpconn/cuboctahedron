#!/usr/bin/env python3
"""Write the bounded strengthened local branch-table shard input.

This is the first data contract for the semantic Bellman local-transition
emitter.  The current frontier is intentionally tiny and already mirrored by
checked Lean definitions; future profilers should replace this static frontier
with discovered reachable semantic states in the same JSON shape.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

DEFAULT_JSON = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000_input.json"
)
DEFAULT_MD = (
    ROOT
    / "scripts/generated/"
    / "closed_bellman_strengthened_local_branch_table_shard000_input.md"
)


@dataclass(frozen=True)
class FrontierState:
    constructor: str
    eval_state: str
    table: str
    branches: tuple[str, ...]


FRONTIER: tuple[FrontierState, ...] = (
    FrontierState(
        constructor="prefix2",
        eval_state="strengthenedClosedPrefix2EvalState",
        table="strengthenedPrefix2LocalBranchTable",
        branches=(
            "tmpm -> graph 146, gain -124",
            "yp -> graph 144, gain -73",
            "zm -> graph 145, gain -10",
        ),
    ),
    FrontierState(
        constructor="prefix3Tmpm",
        eval_state="strengthenedClosedPrefix3TmpmEvalState",
        table="strengthenedPrefix3TmpmLocalBranchTable",
        branches=(
            "zm -> graph 150, gain 114",
            "tppm -> graph 152, gain 96",
        ),
    ),
    FrontierState(
        constructor="prefix3Yp",
        eval_state="strengthenedClosedPrefix3YpEvalState",
        table="strengthenedPrefix3YpLocalBranchTable",
        branches=(
            "zm -> graph 147, gain -10",
            "tmmm -> graph 148, gain -124",
        ),
    ),
    FrontierState(
        constructor="prefix3Zm",
        eval_state="strengthenedClosedPrefix3ZmEvalState",
        table="strengthenedPrefix3ZmLocalBranchTable",
        branches=(
            "yp -> graph 147, gain -73",
            "zp -> graph 149, gain -10",
            "tmpp -> graph 151, gain -124",
        ),
    ),
)


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def payload() -> dict[str, object]:
    states = [
        {
            "constructor": state.constructor,
            "eval_state": state.eval_state,
            "table": state.table,
            "branch_count": len(state.branches),
            "branches": list(state.branches),
        }
        for state in FRONTIER
    ]
    return {
        "mode": "closed-bellman-strengthened-local-branch-table-frontier",
        "shard": 0,
        "decision": "bounded-frontier-ready-for-emitter",
        "state_count": len(states),
        "branch_count": sum(state["branch_count"] for state in states),
        "states": states,
        "semantic_status": (
            "This input is a bounded frontier contract for generated "
            "StrengthenedLocalBranchTable shards. It is not rank coverage."
        ),
        "next_profiler_requirement": (
            "Replace this static frontier with discovered reachable semantic "
            "states whose tables are proved by the same local-transition API."
        ),
    }


def emit_markdown(data: dict[str, object], json_out: Path) -> str:
    lines = [
        "# Closed Bellman Strengthened Local Branch Table Shard 000 Input",
        "",
        f"- JSON output: `{rel(json_out)}`",
        f"- Decision: `{data['decision']}`",
        f"- State count: `{data['state_count']}`",
        f"- Branch count: `{data['branch_count']}`",
        "",
        str(data["semantic_status"]),
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
            "## Next Profiler Requirement",
            "",
            str(data["next_profiler_requirement"]),
            "",
        ]
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json-out", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown-out", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    args.json_out.parent.mkdir(parents=True, exist_ok=True)
    args.markdown_out.parent.mkdir(parents=True, exist_ok=True)
    data = payload()
    args.json_out.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")
    args.markdown_out.write_text(emit_markdown(data, args.json_out), encoding="utf-8")
    print(f"wrote {rel(args.json_out)}")
    print(f"wrote {rel(args.markdown_out)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
