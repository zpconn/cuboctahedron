#!/usr/bin/env python3
"""Write the bounded strengthened local branch-table shard input.

This is the first data contract for the semantic Bellman local-transition
emitter.  The current frontier is intentionally tiny and is extracted from the
checked Lean local branch-table definitions.  Future profilers should replace
this source-derived bounded frontier with discovered reachable semantic states
in the same JSON shape.
"""

from __future__ import annotations

import argparse
import json
import re
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
DEFAULT_SOURCE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke.lean"
)

TABLE_RE = re.compile(
    r"def (strengthenedPrefix[0-9A-Za-z]+LocalBranchTable)\s*:\s*\n"
    r"\s*(Strengthened(?:UsedFace)?LocalBranchTable)\s+"
    r"(strengthenedClosedPrefix[0-9A-Za-z]+(?:Used)?EvalState) where\s*\n"
    r"\s*Branch := (StrengthenedPrefix[0-9A-Za-z]+Branch)"
)

TARGET_COMPLETION_TABLE_RE = re.compile(
    r"def (strengthenedPrefix[0-9A-Za-z]+TargetCompletionLocalBranchTable)\s*:\s*\n"
    r"\s*(StrengthenedTargetCompletionLocalBranchTable)\s*\n"
    r"\s*(strengthenedClosedPrefix[0-9A-Za-z]+EvalState)\s+"
    r"([0-9A-Za-z_]+) where\s*\n"
    r"\s*Branch := (StrengthenedPrefix[0-9A-Za-z]+Branch)"
)


@dataclass(frozen=True)
class FrontierState:
    constructor: str
    eval_state: str
    completion_state: str | None
    table_kind: str
    table_class: str
    graph: int
    table: str
    branch_type: str
    branches: tuple[dict[str, int | str], ...]


def rel(path: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(ROOT).as_posix()
    except ValueError:
        return resolved.as_posix()


def table_kind_of_class(table_class: str) -> str:
    if table_class == "StrengthenedLocalBranchTable":
        return "graph-only"
    if table_class == "StrengthenedUsedFaceLocalBranchTable":
        return "used-face"
    if table_class == "StrengthenedTargetCompletionLocalBranchTable":
        return "target-completion"
    raise ValueError(f"unexpected local table class: {table_class}")


def constructor_of_eval_state(name: str) -> str:
    prefix = "strengthenedClosed"
    if not name.startswith(prefix) or not name.endswith("EvalState"):
        raise ValueError(f"unexpected eval-state name: {name}")
    suffix = "UsedEvalState" if name.endswith("UsedEvalState") else "EvalState"
    stem = name[len(prefix) : -len(suffix)]
    return stem[:1].lower() + stem[1:]


def branch_namespace_block(source: str, branch_type: str) -> str:
    start_token = f"namespace {branch_type}"
    end_token = f"end {branch_type}"
    start = source.find(start_token)
    if start < 0:
        raise ValueError(f"missing namespace for {branch_type}")
    end = source.find(end_token, start)
    if end < 0:
        raise ValueError(f"missing namespace end for {branch_type}")
    return source[start:end]


def eval_state_graph(source: str, eval_state: str) -> int:
    if eval_state.endswith("UsedEvalState"):
        pat = re.compile(
            rf"def {re.escape(eval_state)}\s*:\s*\n"
            r"\s*TopPairingUsedFaceEvalState Nat where\n"
            r"\s*eval := ([^\n]+)\n"
            r"\s*used := [^\n]+"
        )
        match = pat.search(source)
        if match is None:
            raise ValueError(f"missing used eval field for {eval_state}")
        return eval_state_graph(source, match.group(1).strip())
    pat = re.compile(
        rf"def {re.escape(eval_state)} : StrengthenedClosedEvalState where\n"
        r"\s*transducer := [^\n]+\n"
        r"\s*graph := ([0-9]+)"
    )
    match = pat.search(source)
    if match is None:
        raise ValueError(f"missing graph field for {eval_state}")
    return int(match.group(1))


def branch_constructors(source: str, branch_type: str) -> tuple[str, ...]:
    pat = re.compile(rf"inductive {re.escape(branch_type)} where\n((?:  \|.*\n)+)")
    match = pat.search(source)
    if match is None:
        raise ValueError(f"missing inductive declaration for {branch_type}")
    ctors: list[str] = []
    for line in match.group(1).splitlines():
        for part in line.removeprefix("  |").split("|"):
            ctor = part.strip()
            if ctor:
                ctors.append(ctor)
    if not ctors:
        raise ValueError(f"no constructors found for {branch_type}")
    return tuple(ctors)


def definition_cases(block: str, def_name: str) -> dict[str, str]:
    lines = block.splitlines()
    cases: dict[str, str] = {}
    collecting = False
    for line in lines:
        if line.startswith(f"def {def_name} :"):
            collecting = True
            continue
        if collecting:
            if not line.startswith("  | "):
                if cases:
                    break
                continue
            lhs, rhs = line.split("=>", 1)
            ctor = lhs.strip().removeprefix("|").strip().removeprefix(".")
            cases[ctor] = rhs.strip()
    if not cases:
        raise ValueError(f"missing cases for {def_name}")
    return cases


def parse_nat_literal(value: str) -> int:
    try:
        return int(value)
    except ValueError as exc:
        raise ValueError(f"expected Nat literal, got {value!r}") from exc


def parse_int_literal(value: str) -> int:
    value = value.removeprefix("(").removesuffix(")").strip()
    if " : " in value:
        value = value.split(" : ", 1)[0].strip()
    try:
        return int(value)
    except ValueError as exc:
        raise ValueError(f"expected Int literal, got {value!r}") from exc


def parse_face_value(value: str) -> str:
    if not value.startswith("Face."):
        raise ValueError(f"expected Face literal, got {value!r}")
    return value.removeprefix("Face.")


def extract_frontier(
    source_paths: tuple[Path, ...], table_kind_filter: str
) -> tuple[FrontierState, ...]:
    states: list[FrontierState] = []
    for source_path in source_paths:
        source = source_path.read_text(encoding="utf-8")
        for match in TABLE_RE.finditer(source):
            table, table_class, eval_state, branch_type = match.groups()
            table_kind = table_kind_of_class(table_class)
            if table_kind_filter != "all" and table_kind != table_kind_filter:
                continue
            block = branch_namespace_block(source, branch_type)
            ctors = branch_constructors(source, branch_type)
            faces = definition_cases(block, "face")
            graphs = definition_cases(block, "nextGraph")
            gains = definition_cases(block, "gain")
            branches: list[dict[str, int | str]] = []
            for ctor in ctors:
                face = parse_face_value(faces[ctor])
                graph = parse_nat_literal(graphs[ctor])
                gain = parse_int_literal(gains[ctor])
                branches.append(
                    {
                        "constructor": ctor,
                        "face": face,
                        "next_graph": graph,
                        "gain": gain,
                        "description": f"{face} -> graph {graph}, gain {gain}",
                    }
                )
            states.append(
                FrontierState(
                    constructor=constructor_of_eval_state(eval_state),
                    eval_state=eval_state,
                    completion_state=None,
                    table_kind=table_kind,
                    table_class=table_class,
                    graph=eval_state_graph(source, eval_state),
                    table=table,
                    branch_type=branch_type,
                    branches=tuple(branches),
                )
            )
        for match in TARGET_COMPLETION_TABLE_RE.finditer(source):
            table, table_class, eval_state, completion_state, branch_type = (
                match.groups()
            )
            table_kind = table_kind_of_class(table_class)
            if table_kind_filter != "all" and table_kind != table_kind_filter:
                continue
            block = branch_namespace_block(source, branch_type)
            ctors = branch_constructors(source, branch_type)
            faces = definition_cases(block, "face")
            graphs = definition_cases(block, "nextGraph")
            gains = definition_cases(block, "gain")
            branches: list[dict[str, int | str]] = []
            for ctor in ctors:
                face = parse_face_value(faces[ctor])
                graph = parse_nat_literal(graphs[ctor])
                gain = parse_int_literal(gains[ctor])
                branches.append(
                    {
                        "constructor": ctor,
                        "face": face,
                        "next_graph": graph,
                        "gain": gain,
                        "description": f"{face} -> graph {graph}, gain {gain}",
                    }
                )
            states.append(
                FrontierState(
                    constructor=constructor_of_eval_state(eval_state),
                    eval_state=eval_state,
                    completion_state=completion_state,
                    table_kind=table_kind,
                    table_class=table_class,
                    graph=eval_state_graph(source, eval_state),
                    table=table,
                    branch_type=branch_type,
                    branches=tuple(branches),
                )
            )
    if not states:
        source_list = ", ".join(str(path) for path in source_paths)
        raise ValueError(f"no local branch tables found in {source_list}")
    return tuple(states)


def source_payload(source_paths: tuple[Path, ...]) -> str | list[str]:
    if len(source_paths) == 1:
        return rel(source_paths[0])
    return [rel(path) for path in source_paths]


def payload(source_paths: tuple[Path, ...], table_kind_filter: str) -> dict[str, object]:
    frontier = extract_frontier(source_paths, table_kind_filter)
    states = [
        {
            "constructor": state.constructor,
            "eval_state": state.eval_state,
            "completion_state": state.completion_state,
            "table_kind": state.table_kind,
            "table_class": state.table_class,
            "graph": state.graph,
            "table": state.table,
            "branch_type": state.branch_type,
            "branch_count": len(state.branches),
            "branches": [str(branch["description"]) for branch in state.branches],
            "branch_details": list(state.branches),
        }
        for state in frontier
    ]
    return {
        "mode": "closed-bellman-strengthened-local-branch-table-frontier",
        "shard": 0,
        "source": source_payload(source_paths),
        "table_kind_filter": table_kind_filter,
        "decision": "source-derived-bounded-frontier-ready-for-emitter",
        "state_count": len(states),
        "branch_count": sum(state["branch_count"] for state in states),
        "states": states,
        "semantic_status": (
            "This input is a source-derived bounded frontier contract for "
            "generated StrengthenedLocalBranchTable shards. It is not rank "
            "coverage."
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
        f"- Source: `{data['source']}`",
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
                f"- Completion state: `{state['completion_state']}`",  # type: ignore[index]
                f"- Graph state: `{state['graph']}`",  # type: ignore[index]
                f"- Table kind: `{state['table_kind']}`",  # type: ignore[index]
                f"- Table class: `{state['table_class']}`",  # type: ignore[index]
                f"- Table: `{state['table']}`",  # type: ignore[index]
                f"- Branch type: `{state['branch_type']}`",  # type: ignore[index]
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
    parser.add_argument(
        "--source",
        type=Path,
        action="append",
        default=None,
        help=(
            "Lean source to scan. May be passed more than once. Defaults to "
            "the graph-only prefix-run smoke."
        ),
    )
    parser.add_argument(
        "--table-kind",
        choices=("graph-only", "used-face", "target-completion", "all"),
        default="graph-only",
        help="Which local branch-table backend to extract.",
    )
    parser.add_argument("--json-out", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown-out", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    args.json_out.parent.mkdir(parents=True, exist_ok=True)
    args.markdown_out.parent.mkdir(parents=True, exist_ok=True)
    sources = tuple(args.source) if args.source else (DEFAULT_SOURCE,)
    data = payload(sources, args.table_kind)
    args.json_out.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")
    args.markdown_out.write_text(emit_markdown(data, args.json_out), encoding="utf-8")
    print(f"wrote {rel(args.json_out)}")
    print(f"wrote {rel(args.markdown_out)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
