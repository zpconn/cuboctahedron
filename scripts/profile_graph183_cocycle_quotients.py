#!/usr/bin/env python3
"""Profile cocycle/gauge quotients for the graph183 margin frontier.

This is untrusted diagnostic infrastructure.  It reads the exact Bellman graph
export produced by `nonidentity_margin_bellman_profile.py` and checks whether
the observed full-state edge gains factor through coarser state quotients up to
a telescoping gauge:

  rawGain = smallGain(q src, label, q dst) + gauge(dst) - gauge(src)

The Lean theorem `BellmanLabelStepRun.quotient_of_step_gain_eq` is the trusted
proof surface for this shape; this script only searches for promising quotient
coordinates before Lean evidence is emitted.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
from fractions import Fraction
import json
from pathlib import Path
from typing import Any


def parse_state_key(key: str) -> dict[str, str]:
    out: dict[str, str] = {}
    for part in key.split("|"):
        if "=" not in part:
            continue
        name, value = part.split("=", 1)
        out[name] = value
    return out


def tri_src_no_positions(value: str) -> str:
    if not value:
        return ""
    pieces: list[str] = []
    for item in value.split("|"):
        if ":" in item:
            pieces.append(item.split(":", 1)[1])
        else:
            pieces.append(item)
    return "|".join(pieces)


def tri_src_targets(value: str) -> str:
    if not value:
        return ""
    pieces: list[str] = []
    for item in value.split("|"):
        item = item.split(":", 1)[1] if ":" in item else item
        if "->" in item:
            item = item.split("->", 1)[1]
        if "@" in item:
            item = item.split("@", 1)[0]
        pieces.append(item)
    return " ".join(pieces)


def quotient_key(mode: str, key: str) -> str:
    parts = parse_state_key(key)
    if mode == "full":
        return key
    if mode == "no-tri-src":
        names = ["step", "rem", "par", "stack"]
    elif mode == "no-rem":
        names = ["step", "par", "stack", "triSrc"]
    elif mode == "step-par-stack":
        names = ["step", "par", "stack"]
    elif mode == "step-rem-par":
        names = ["step", "rem", "par"]
    elif mode == "step-par":
        names = ["step", "par"]
    elif mode == "step-stack":
        names = ["step", "stack"]
    elif mode == "step-tri-src-no-pos":
        return "|".join(
            [
                f"step={parts.get('step', '')}",
                f"rem={parts.get('rem', '')}",
                f"par={parts.get('par', '')}",
                f"stack={parts.get('stack', '')}",
                f"triSrc={tri_src_no_positions(parts.get('triSrc', ''))}",
            ]
        )
    elif mode == "step-tri-targets":
        return "|".join(
            [
                f"step={parts.get('step', '')}",
                f"rem={parts.get('rem', '')}",
                f"par={parts.get('par', '')}",
                f"stack={parts.get('stack', '')}",
                f"triTargets={tri_src_targets(parts.get('triSrc', ''))}",
            ]
        )
    elif mode == "step-par-tri-targets":
        return "|".join(
            [
                f"step={parts.get('step', '')}",
                f"par={parts.get('par', '')}",
                f"stack={parts.get('stack', '')}",
                f"triTargets={tri_src_targets(parts.get('triSrc', ''))}",
            ]
        )
    else:
        raise ValueError(f"unknown quotient mode: {mode}")
    return "|".join(f"{name}={parts.get(name, '')}" for name in names)


def rref_consistent(rows: list[dict[int, Fraction]], rhs: list[Fraction]) -> bool:
    """Return whether a rational linear system is consistent."""

    if not rows:
        return True
    augmented: list[dict[int, Fraction]] = []
    rhs_col = -1
    for row, value in zip(rows, rhs):
        out = {idx: coeff for idx, coeff in row.items() if coeff}
        if value:
            out[rhs_col] = value
        augmented.append(out)

    pivot_cols: set[int] = set()
    rank = 0
    while True:
        pivot_row = None
        pivot_col = None
        for i in range(rank, len(augmented)):
            candidates = [
                col for col, coeff in augmented[i].items()
                if col != rhs_col and coeff and col not in pivot_cols
            ]
            if not candidates:
                continue
            col = min(candidates)
            if pivot_col is None or col < pivot_col:
                pivot_col = col
                pivot_row = i
        if pivot_row is None or pivot_col is None:
            break

        augmented[rank], augmented[pivot_row] = (
            augmented[pivot_row],
            augmented[rank],
        )
        pivot = augmented[rank][pivot_col]
        augmented[rank] = {
            col: coeff / pivot for col, coeff in augmented[rank].items()
            if coeff / pivot
        }
        for i in range(len(augmented)):
            if i == rank:
                continue
            factor = augmented[i].get(pivot_col, Fraction(0))
            if not factor:
                continue
            new_row = dict(augmented[i])
            for col, coeff in augmented[rank].items():
                value = new_row.get(col, Fraction(0)) - factor * coeff
                if value:
                    new_row[col] = value
                else:
                    new_row.pop(col, None)
            augmented[i] = new_row
        pivot_cols.add(pivot_col)
        rank += 1
        if rank == len(augmented):
            break

    for row in augmented:
        lhs_cols = [col for col, coeff in row.items() if col != rhs_col and coeff]
        if not lhs_cols and row.get(rhs_col, Fraction(0)):
            return False
    return True


def quotient_report(graph: dict[str, Any], mode: str) -> dict[str, Any]:
    states = {row["index"]: row["key"] for row in graph["states"]}
    labels = {row["index"]: row["key"] for row in graph["labels"]}
    q_by_state = {
        index: quotient_key(mode, key) for index, key in states.items()
    }

    q_state_count = len(set(q_by_state.values()))
    q_edge_keys: dict[tuple[str, int, str], int] = {}
    gauge_var: dict[int, int] = {}
    variables = 0
    rows: list[dict[int, Fraction]] = []
    rhs: list[Fraction] = []
    grouped_gains: dict[tuple[str, int, str], set[int]] = defaultdict(set)

    for state in sorted(states):
        gauge_var[state] = variables
        variables += 1

    for edge in graph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        gain = int(edge["gain_scaled"])
        for label_index in edge.get("label_indices", []):
            key = (q_by_state[src], int(label_index), q_by_state[dst])
            grouped_gains[key].add(gain)
            if key not in q_edge_keys:
                q_edge_keys[key] = variables
                variables += 1
            small_var = q_edge_keys[key]
            row = {
                gauge_var[dst]: Fraction(1),
                gauge_var[src]: Fraction(-1),
                small_var: Fraction(1),
            }
            rows.append(row)
            rhs.append(Fraction(gain))

    consistent = rref_consistent(rows, rhs)
    collisions = sum(1 for values in grouped_gains.values() if len(values) > 1)
    max_collision_width = max((len(values) for values in grouped_gains.values()), default=0)
    return {
        "mode": mode,
        "consistent": consistent,
        "full_states": len(states),
        "quotient_states": q_state_count,
        "full_edges": sum(len(edge.get("label_indices", [])) for edge in graph["edges"]),
        "quotient_edges": len(q_edge_keys),
        "labels": len(labels),
        "equations": len(rows),
        "variables": variables,
        "raw_gain_collision_groups": collisions,
        "max_raw_gain_collision_width": max_collision_width,
        "compression": {
            "state_ratio": q_state_count / max(1, len(states)),
            "edge_ratio": len(q_edge_keys) / max(1, sum(len(edge.get("label_indices", [])) for edge in graph["edges"])),
        },
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Graph183 Cocycle Quotient Profile",
        "",
        "Untrusted diagnostic output.  This file is not Lean proof evidence.",
        "",
        f"- input: `{payload['input']}`",
        f"- decision: `{payload['decision']}`",
        "",
        "## Quotients",
        "",
        "| mode | consistent | q states | q edges | raw collisions | state ratio | edge ratio |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["quotients"]:
        lines.append(
            "| `{}` | `{}` | `{}` | `{}` | `{}` | `{:.3f}` | `{:.3f}` |".format(
                row["mode"],
                row["consistent"],
                row["quotient_states"],
                row["quotient_edges"],
                row["raw_gain_collision_groups"],
                row["compression"]["state_ratio"],
                row["compression"]["edge_ratio"],
            )
        )
    lines.extend(
        [
            "",
            "## Interpretation",
            "",
            "A `consistent` quotient means the observed scaled edge gains factor",
            "through that quotient up to a telescoping gauge.  The next Lean",
            "producer may use `BellmanLabelStepRun.quotient_of_step_gain_eq` as",
            "the trusted summation theorem, but the quotient equations and any",
            "generated local gain/gauge facts must still be Lean-checked.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", "--md", type=Path, required=True)
    parser.add_argument(
        "--modes",
        nargs="*",
        default=[
            "full",
            "step-tri-src-no-pos",
            "step-tri-targets",
            "step-par-tri-targets",
            "no-tri-src",
            "no-rem",
            "step-par-stack",
            "step-rem-par",
            "step-stack",
            "step-par",
        ],
    )
    args = parser.parse_args()

    profile = json.loads(args.input.read_text())
    graph = profile["graph"]
    quotients = [quotient_report(graph, mode) for mode in args.modes]
    consistent = [row for row in quotients if row["consistent"]]
    best = min(
        consistent,
        key=lambda row: (
            row["quotient_edges"],
            row["quotient_states"],
            row["mode"],
        ),
        default=None,
    )
    payload = {
        "mode": "graph183-cocycle-quotient-profile",
        "input": args.input.as_posix(),
        "arithmetic": "exact rational diagnostic; not proof evidence",
        "quotients": quotients,
        "best_consistent": best,
        "decision": (
            "cocycle_quotient_candidates_found"
            if best is not None
            else "no_consistent_cocycle_quotient_found"
        ),
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    print(f"decision: {payload['decision']}")
    if best is not None:
        print(
            "best: {mode} states={quotient_states} edges={quotient_edges}".format(
                **best
            )
        )
    return 0 if best is not None else 1


if __name__ == "__main__":
    raise SystemExit(main())
