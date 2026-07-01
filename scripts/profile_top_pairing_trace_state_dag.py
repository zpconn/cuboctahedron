#!/usr/bin/env python3
"""Profile a semantic state DAG for top-pairing trace classification.

This is exact diagnostic evidence, not proof.  It refines
`profile_top_pairing_trace_classifier.py` by memoizing the semantic state that
the future Lean classifier should use:

  step, remaining pair counts, square-gap index, exact local-axis linear state,
  and triangular cancellation stack.

The goal is to size the membership-driven proof DAG that avoids one generated
rejection branch per excluded face.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import asdict
from pathlib import Path

import audit_top_pairing_closed_graph_acceptance as audit


ROOT = Path(__file__).resolve().parents[1]
PAIR_ORDER = ("x", "y", "z", "d111", "d11m", "d1m1", "dm11")


def counts_key(counts: dict[str, int]) -> tuple[int, ...]:
    return tuple(counts[pair] for pair in PAIR_ORDER)


def matrix_key(linear) -> tuple[tuple[tuple[int, int], ...], ...]:
    return tuple(
        tuple((entry.numerator, entry.denominator) for entry in row)
        for row in linear
    )


def profile(max_examples: int) -> dict[str, object]:
    state_ids: dict[tuple[object, ...], int] = {}
    id_to_key: list[tuple[object, ...]] = []
    edges: set[tuple[int, str, int]] = set()
    depth_states: dict[int, int] = {i: 0 for i in range(15)}
    terminal_states: dict[int, str] = {}
    terminal_path_histogram: dict[str, int] = {}
    terminal_examples: dict[str, list[dict[str, object]]] = {
        "closed": [],
        "cancellation_reject": [],
        "count_reject": [],
    }

    def add_example(kind: str, item: dict[str, object]) -> None:
        bucket = terminal_examples[kind]
        if len(bucket) < max_examples:
            bucket.append(item)

    def state_key(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: audit.StackState,
    ) -> tuple[object, ...]:
        return (
            step,
            counts_key(counts),
            square_gap,
            matrix_key(linear),
            stack_state,
        )

    def state_id(key: tuple[object, ...]) -> int:
        found = state_ids.get(key)
        if found is not None:
            return found
        ident = len(state_ids)
        state_ids[key] = ident
        id_to_key.append(key)
        depth_states[key[0]] += 1  # type: ignore[index]
        return ident

    def dfs(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: audit.StackState,
        labels: tuple[str, ...],
    ) -> int:
        key = state_key(step, counts, square_gap, linear, stack_state)
        ident = state_id(key)

        if step == 14:
            if any(counts.values()):
                kind = "count_reject"
                terminal_states.setdefault(ident, kind)
                terminal_path_histogram[kind] = terminal_path_histogram.get(kind, 0) + 1
                add_example(
                    kind,
                    {"labels": list(labels), "remaining_counts": dict(counts)},
                )
                return ident
            if not audit.stack_summary_ok(stack_state):
                kind = "cancellation_reject"
                terminal_states.setdefault(ident, kind)
                terminal_path_histogram[kind] = terminal_path_histogram.get(kind, 0) + 1
                add_example(
                    kind,
                    {"labels": list(labels), "stack": asdict(stack_state)},
                )
                return ident
            kind = "closed"
            terminal_states.setdefault(ident, kind)
            terminal_path_histogram[kind] = terminal_path_histogram.get(kind, 0) + 1
            add_example(kind, {"labels": list(labels)})
            return ident

        for face in audit.ALLOWED_AT_STEP[step]:
            pair = audit.PAIR_OF_FACE[face]
            if step < 13:
                if counts.get(pair, 0) <= 0:
                    continue
            elif face != "xp":
                continue

            next_square_gap = square_gap
            if audit.is_square_pair(pair):
                if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                    continue
            else:
                next_square_gap += 1

            n = tuple(audit.Fraction(x) for x in audit.NORMAL[face])
            if audit.dot(audit.mat_vec(linear, n), audit.AXIS) <= 0:
                continue
            next_linear = audit.mat_mul(linear, audit.REFL[face])

            next_counts = counts
            next_stack = stack_state
            if step < 13:
                next_counts = dict(counts)
                next_counts[pair] -= 1
                if pair in audit.TRI_OF_PAIR:
                    next_stack = audit.stack_push(stack_state, audit.TRI_OF_PAIR[pair])
                    if next_stack.shadow_len > 8:
                        continue

            target = dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_stack,
                labels + (face,),
            )
            edges.add((ident, face, target))

        return ident

    root = dfs(
        0,
        dict(audit.REMAINING_COUNTS),
        0,
        audit.MAT_ID,
        audit.INITIAL_STACK,
        (),
    )
    terminal_histogram: dict[str, int] = {}
    for kind in terminal_states.values():
        terminal_histogram[kind] = terminal_histogram.get(kind, 0) + 1
    return {
        "decision": (
            "semantic-state-dag-candidate"
            if terminal_path_histogram.get("closed", 0) == 2
            else "unexpected-closed-terminal-count"
        ),
        "root_state": root,
        "states": len(state_ids),
        "edges": len(edges),
        "depth_states": depth_states,
        "terminal_histogram": terminal_histogram,
        "terminal_path_histogram": terminal_path_histogram,
        "terminal_examples": terminal_examples,
        "graph": {
            "states": [
                serialize_state_key(ident, key)
                for ident, key in enumerate(id_to_key)
            ],
            "edges": [
                {"source": source, "face": face, "target": target}
                for source, face, target in sorted(edges)
            ],
            "terminals": [
                {"state": state, "kind": kind}
                for state, kind in sorted(terminal_states.items())
            ],
        },
        "state_key": [
            "step",
            "remaining_pair_counts",
            "square_gap",
            "local_axis_linear_matrix",
            "triangular_cancellation_stack",
        ],
    }


def serialize_matrix(matrix: tuple[tuple[tuple[int, int], ...], ...]) -> list[list[list[int]]]:
    return [
        [[num, den] for num, den in row]
        for row in matrix
    ]


def serialize_stack(state: audit.StackState) -> dict[str, object]:
    return {
        "shadow_len": state.shadow_len,
        "stack": [list(item) for item in state.stack],
        "cancellations_rev": [list(item) for item in state.cancellations_rev],
    }


def serialize_state_key(ident: int, key: tuple[object, ...]) -> dict[str, object]:
    step = key[0]
    counts = key[1]
    square_gap = key[2]
    linear = key[3]
    stack = key[4]
    assert isinstance(step, int)
    assert isinstance(counts, tuple)
    assert isinstance(square_gap, int)
    assert isinstance(linear, tuple)
    assert isinstance(stack, audit.StackState)
    return {
        "id": ident,
        "step": step,
        "remaining_pair_counts": dict(zip(PAIR_ORDER, counts)),
        "square_gap": square_gap,
        "local_axis_linear_matrix": serialize_matrix(linear),
        "triangular_cancellation_stack": serialize_stack(stack),
    }


def write_markdown(report: dict[str, object], path: Path) -> None:
    lines = [
        "# Top-Pairing Trace State-DAG Profile",
        "",
        "This is exact diagnostic evidence, not proof.  It sizes the semantic",
        "state DAG for the future closed-language two-trace classifier.",
        "",
        f"- decision: `{report['decision']}`",
        f"- states: `{report['states']}`",
        f"- edges: `{report['edges']}`",
        "",
        "## State Key",
        "",
    ]
    for item in report["state_key"]:  # type: ignore[index]
        lines.append(f"- `{item}`")
    lines.extend(["", "## Terminal Histogram", ""])
    for key, value in report["terminal_histogram"].items():  # type: ignore[union-attr]
        lines.append(f"- `{key}`: `{value}`")
    lines.extend(["", "## Terminal Path Histogram", ""])
    for key, value in report["terminal_path_histogram"].items():  # type: ignore[union-attr]
        lines.append(f"- `{key}`: `{value}`")
    lines.extend(["", "## Depth States", ""])
    for key, value in report["depth_states"].items():  # type: ignore[union-attr]
        lines.append(f"- depth `{key}`: `{value}`")
    lines.extend(["", "## Terminal Examples", ""])
    for kind, examples in report["terminal_examples"].items():  # type: ignore[union-attr]
        if not examples:
            continue
        lines.extend([f"### {kind}", ""])
        for item in examples:
            lines.append("```json")
            lines.append(json.dumps(item, indent=2))
            lines.append("```")
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT / "scripts/generated/top_pairing_trace_state_dag_profile.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=ROOT / "docs/top_pairing_trace_state_dag_profile.md",
    )
    parser.add_argument(
        "--graph-json",
        type=Path,
        default=None,
        help="optional compact state/edge graph output for later Lean emitters",
    )
    parser.add_argument("--max-examples", type=int, default=3)
    args = parser.parse_args()

    report = profile(args.max_examples)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    profile_report = {
        key: value
        for key, value in report.items()
        if key != "graph"
    }
    args.json.write_text(json.dumps(profile_report, indent=2, sort_keys=True) + "\n")
    write_markdown(profile_report, args.markdown)
    if args.graph_json is not None:
        args.graph_json.parent.mkdir(parents=True, exist_ok=True)
        args.graph_json.write_text(
            json.dumps(report["graph"], indent=2, sort_keys=True) + "\n"
        )
        print(f"wrote {args.graph_json}")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    print(f"decision: {report['decision']}")


if __name__ == "__main__":
    main()
