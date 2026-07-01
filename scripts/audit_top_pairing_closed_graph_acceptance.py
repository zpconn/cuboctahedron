#!/usr/bin/env python3
"""Audit whether the top-pairing closed language is accepted by the graph.

This is an exact diagnostic, not proof.  It enumerates face-label words
satisfying the current hand-written closed-language components that are visible
from `TopPairingClosedLanguageAtRank`:

* valid remaining pair counts after the started X+ face;
* step schedule;
* square-gap schedule;
* exact local-axis positivity over rational reflection matrices;
* the top-pairing triangular cancellation summary.

For each such label word it runs the generated deterministic Bellman graph
from `BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean`.

If a word satisfies the closed-language components but the graph rejects it,
then the current closed predicate is too weak to prove the desired
`TopPairingClosedLanguageAtRank -> BellmanEvalAccepts` theorem without adding
a compact evaluator/run field or strengthening the semantic automaton.
"""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)


FACES = [
    "xp",
    "xm",
    "yp",
    "ym",
    "zp",
    "zm",
    "tppp",
    "tppm",
    "tpmp",
    "tmpp",
    "tpmm",
    "tmpm",
    "tmmp",
    "tmmm",
]

PAIR_OF_FACE = {
    "xp": "x",
    "xm": "x",
    "yp": "y",
    "ym": "y",
    "zp": "z",
    "zm": "z",
    "tppp": "d111",
    "tppm": "d11m",
    "tpmp": "d1m1",
    "tmpp": "dm11",
    "tpmm": "dm11",
    "tmpm": "d1m1",
    "tmmp": "d11m",
    "tmmm": "d111",
}

TRI_OF_PAIR = {
    "d111": "d111",
    "d11m": "d11m",
    "d1m1": "d1m1",
    "dm11": "dm11",
}

NORMAL = {
    "xp": (1, 0, 0),
    "xm": (-1, 0, 0),
    "yp": (0, 1, 0),
    "ym": (0, -1, 0),
    "zp": (0, 0, 1),
    "zm": (0, 0, -1),
    "tppp": (1, 1, 1),
    "tppm": (1, 1, -1),
    "tpmp": (1, -1, 1),
    "tmpp": (-1, 1, 1),
    "tpmm": (1, -1, -1),
    "tmpm": (-1, 1, -1),
    "tmmp": (-1, -1, 1),
    "tmmm": (-1, -1, -1),
}

ALLOWED_AT_STEP = {
    0: ["xm"],
    1: ["ym"],
    2: ["tmpm", "yp", "zm"],
    3: ["tmmm", "tmpp", "tppm", "yp", "zm", "zp"],
    4: ["tmmp", "tmpm", "tpmm", "tppp", "yp", "zm", "zp"],
    5: ["tmmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    6: ["tmmm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    7: ["tmmp", "tmpm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    8: ["tmmm", "tmmp", "tmpp", "tpmm", "tpmp", "tppp", "yp", "zm", "zp"],
    9: ["tmmm", "tmpm", "tmpp", "tpmp", "tppm", "yp", "zm", "zp"],
    10: ["tmmp", "tmpm", "tppp", "yp", "zm"],
    11: ["tmmm", "tmpp", "yp", "zm", "zp"],
    12: ["tmmp", "yp", "zp"],
    13: ["xp"],
}

ALLOWED_SQUARE_AT_GAP = {
    0: ["xm", "ym", "yp", "zm", "zp"],
    1: ["zm", "zp"],
    2: ["zm", "zp"],
    3: ["zm", "zp"],
    4: ["zm", "zp"],
    5: ["zm", "zp"],
    6: ["yp", "zm", "zp"],
    7: ["zm", "zp"],
    8: ["xp", "yp", "zm", "zp"],
}

TOP_PAIRING_TARGET_CANCELLATIONS = [("d11m", 3, 4)]
TOP_PAIRING_TARGET_SURVIVORS = [
    ("dm11", 0),
    ("d111", 1),
    ("d1m1", 2),
    ("dm11", 5),
    ("d111", 6),
    ("d1m1", 7),
]

REMAINING_COUNTS = {
    "x": 1,
    "y": 2,
    "z": 2,
    "d111": 2,
    "d11m": 2,
    "d1m1": 2,
    "dm11": 2,
}

AXIS = (Fraction(-1), Fraction(-1), Fraction(-3))
MAT_ID = (
    (Fraction(1), Fraction(0), Fraction(0)),
    (Fraction(0), Fraction(1), Fraction(0)),
    (Fraction(0), Fraction(0), Fraction(1)),
)


@dataclass(frozen=True)
class StackState:
    shadow_len: int
    stack: tuple[tuple[str, int], ...]
    cancellations_rev: tuple[tuple[str, int, int], ...]


INITIAL_STACK = StackState(0, (), ())


def is_square_pair(pair: str) -> bool:
    return pair in {"x", "y", "z"}


def dot(a: Iterable[Fraction], b: Iterable[Fraction]) -> Fraction:
    return sum((x * y for x, y in zip(a, b)), Fraction(0))


def mat_vec(m, v):
    return tuple(dot(row, v) for row in m)


def mat_mul(a, b):
    cols = list(zip(*b))
    return tuple(tuple(dot(row, col) for col in cols) for row in a)


def refl_m(face: str):
    n = tuple(Fraction(x) for x in NORMAL[face])
    nn = dot(n, n)
    return tuple(
        tuple(
            (Fraction(1) if i == j else Fraction(0))
            - Fraction(2) * n[i] * n[j] / nn
            for j in range(3)
        )
        for i in range(3)
    )


REFL = {face: refl_m(face) for face in FACES}


def stack_push(state: StackState, tri: str) -> StackState:
    idx = state.shadow_len
    if state.stack:
        top, top_idx = state.stack[0]
        rest = state.stack[1:]
        if tri == top:
            return StackState(
                idx + 1,
                rest,
                ((tri, top_idx, idx),) + state.cancellations_rev,
            )
        return StackState(
            idx + 1,
            ((tri, idx), (top, top_idx)) + rest,
            state.cancellations_rev,
        )
    return StackState(idx + 1, ((tri, idx),), state.cancellations_rev)


def stack_summary_ok(state: StackState) -> bool:
    cancellations = tuple(reversed(state.cancellations_rev))
    survivors = tuple((tri, idx) for tri, idx in reversed(state.stack))
    return (
        list(cancellations) == TOP_PAIRING_TARGET_CANCELLATIONS
        and list(survivors) == TOP_PAIRING_TARGET_SURVIVORS
    )


def parse_graph(base_path: Path):
    current_state: int | None = None
    transitions: dict[tuple[int, int], tuple[int, int]] = {}
    label_of_face: dict[str, int] = {}
    state_re = re.compile(r"^def graphSmokeNext_s(\d{4})")
    edge_re = re.compile(r"^\s*\|\s*(\d+)\s*=>\s*some \(\((\d+) : State\), \((-?\d+) : Int\)\)")
    label_re = re.compile(r"^\s*\|\s*Face\.([a-z0-9]+)\s*=>\s*\((\d+) : SmokeLabel\)")
    for line in base_path.read_text().splitlines():
        m = label_re.match(line)
        if m:
            label_of_face[m.group(1)] = int(m.group(2))
            continue
        m = state_re.match(line)
        if m:
            current_state = int(m.group(1))
            continue
        if current_state is not None:
            m = edge_re.match(line)
            if m:
                label = int(m.group(1))
                target = int(m.group(2))
                gain = int(m.group(3))
                transitions[(current_state, label)] = (target, gain)
    return label_of_face, transitions


def audit(args: argparse.Namespace) -> dict[str, object]:
    label_of_face, transitions = parse_graph(args.base)
    missing_label_faces = sorted(set(FACES) - set(label_of_face))
    if missing_label_faces:
        raise RuntimeError(f"missing labels for faces: {missing_label_faces}")

    stats = {
        "dfs_nodes": 0,
        "closed_candidates": 0,
        "accepted": 0,
        "rejected": 0,
        "prefix_graph_rejects": 0,
    }
    first_rejections: list[dict[str, object]] = []

    def dfs(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: StackState,
        graph_state: int | None,
        graph_gain: int | None,
        labels: list[str],
        first_graph_reject: dict[str, object] | None,
    ) -> None:
        stats["dfs_nodes"] += 1
        if args.max_nodes is not None and stats["dfs_nodes"] > args.max_nodes:
            return
        if step == 14:
            if any(counts.values()):
                return
            if not stack_summary_ok(stack_state):
                return
            stats["closed_candidates"] += 1
            if graph_state is None:
                stats["rejected"] += 1
                if len(first_rejections) < args.max_examples:
                    first_rejections.append(
                        {
                            "labels": labels.copy(),
                            "first_graph_reject": first_graph_reject,
                        }
                    )
            else:
                stats["accepted"] += 1
            return

        for face in ALLOWED_AT_STEP[step]:
            pair = PAIR_OF_FACE[face]
            if step < 13:
                if counts.get(pair, 0) <= 0:
                    continue
            else:
                if face != "xp":
                    continue
            next_square_gap = square_gap
            if is_square_pair(pair):
                if face not in ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                    continue
            else:
                next_square_gap += 1

            n = tuple(Fraction(x) for x in NORMAL[face])
            if dot(mat_vec(linear, n), AXIS) <= 0:
                continue
            next_linear = mat_mul(linear, REFL[face])

            next_stack = stack_state
            next_counts = counts
            if step < 13:
                next_counts = dict(counts)
                next_counts[pair] -= 1
                if pair in TRI_OF_PAIR:
                    next_stack = stack_push(stack_state, TRI_OF_PAIR[pair])
                    if next_stack.shadow_len > 8:
                        continue

            next_graph_state = graph_state
            next_graph_gain = graph_gain
            next_first_reject = first_graph_reject
            label = label_of_face[face]
            if graph_state is not None:
                edge = transitions.get((graph_state, label))
                if edge is None:
                    stats["prefix_graph_rejects"] += 1
                    next_graph_state = None
                    next_graph_gain = None
                    next_first_reject = {
                        "step": step,
                        "state": graph_state,
                        "face": face,
                        "label": label,
                        "prefix": labels + [face],
                    }
                else:
                    next_graph_state, gain = edge
                    next_graph_gain = (graph_gain or 0) + gain

            dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_stack,
                next_graph_state,
                next_graph_gain,
                labels + [face],
                next_first_reject,
            )

    dfs(
        0,
        dict(REMAINING_COUNTS),
        0,
        MAT_ID,
        INITIAL_STACK,
        0,
        0,
        [],
        None,
    )

    decision = (
        "closed-components-all-accepted"
        if stats["closed_candidates"] and stats["rejected"] == 0
        else "closed-components-too-weak"
        if stats["rejected"]
        else "no-closed-candidates-found"
    )
    return {
        "base": args.base.relative_to(ROOT).as_posix(),
        "decision": decision,
        "stats": stats,
        "first_rejections": first_rejections,
        "limits": {
            "max_nodes": args.max_nodes,
            "max_examples": args.max_examples,
        },
    }


def write_markdown(report: dict[str, object], path: Path) -> None:
    stats = report["stats"]  # type: ignore[index]
    lines = [
        "# Top-Pairing Closed-Language Graph-Acceptance Audit",
        "",
        "This is exact diagnostic evidence, not proof.  It enumerates the",
        "current visible closed-language components and checks whether the",
        "generated deterministic Bellman graph accepts every such label word.",
        "",
        f"- decision: `{report['decision']}`",
        f"- graph base: `{report['base']}`",
        "",
        "## Counts",
        "",
    ]
    for key, value in stats.items():  # type: ignore[union-attr]
        lines.append(f"- `{key}`: `{value}`")
    rejections = report["first_rejections"]  # type: ignore[index]
    if rejections:
        lines.extend(["", "## First Rejections", ""])
        for item in rejections:
            lines.append("```json")
            lines.append(json.dumps(item, indent=2))
            lines.append("```")
    lines.append("")
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--base", type=Path, default=DEFAULT_BASE)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    parser.add_argument("--max-nodes", type=int)
    parser.add_argument("--max-examples", type=int, default=5)
    args = parser.parse_args()

    report = audit(args)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    write_markdown(report, args.markdown)
    print(f"wrote {args.json.resolve().relative_to(ROOT)}")
    print(f"wrote {args.markdown.resolve().relative_to(ROOT)}")
    print(f"decision: {report['decision']}")


if __name__ == "__main__":
    main()
