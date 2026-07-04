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


def rref_solution(
    rows: list[dict[int, Fraction]],
    rhs: list[Fraction],
    variable_count: int,
) -> list[Fraction] | None:
    """Return one exact solution, setting all free variables to zero."""

    system: list[tuple[dict[int, Fraction], Fraction]] = [
        ({idx: coeff for idx, coeff in row.items() if coeff}, value)
        for row, value in zip(rows, rhs)
    ]
    rank = 0
    pivot_cols: list[int] = []

    while True:
        pivot_row = None
        pivot_col = None
        for i in range(rank, len(system)):
            row, _value = system[i]
            candidates = [
                col for col, coeff in row.items()
                if coeff and col not in pivot_cols
            ]
            if not candidates:
                continue
            col = min(candidates)
            if pivot_col is None or col < pivot_col:
                pivot_col = col
                pivot_row = i
        if pivot_row is None or pivot_col is None:
            break

        system[rank], system[pivot_row] = system[pivot_row], system[rank]
        row, value = system[rank]
        pivot = row[pivot_col]
        row = {
            col: coeff / pivot for col, coeff in row.items()
            if coeff / pivot
        }
        value = value / pivot
        system[rank] = (row, value)

        for i in range(len(system)):
            if i == rank:
                continue
            other_row, other_value = system[i]
            factor = other_row.get(pivot_col, Fraction(0))
            if not factor:
                continue
            new_row = dict(other_row)
            for col, coeff in row.items():
                next_coeff = new_row.get(col, Fraction(0)) - factor * coeff
                if next_coeff:
                    new_row[col] = next_coeff
                else:
                    new_row.pop(col, None)
            system[i] = (new_row, other_value - factor * value)

        pivot_cols.append(pivot_col)
        rank += 1
        if rank == len(system):
            break

    for row, value in system:
        if not row and value:
            return None

    solution = [Fraction(0) for _ in range(variable_count)]
    for i, col in enumerate(pivot_cols):
        _row, value = system[i]
        solution[col] = value
    return solution


def fraction_text(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def fraction_bit_length(value: Fraction) -> int:
    return max(abs(value.numerator).bit_length(), value.denominator.bit_length())


def quotient_report(
    graph: dict[str, Any],
    mode: str,
    include_solution: bool = False,
) -> dict[str, Any]:
    states = {row["index"]: row["key"] for row in graph["states"]}
    labels = {row["index"]: row["key"] for row in graph["labels"]}
    q_by_state = {
        index: quotient_key(mode, key) for index, key in states.items()
    }

    q_state_count = len(set(q_by_state.values()))
    q_edge_keys: dict[tuple[str, int, str], int] = {}
    edge_key_by_var: dict[int, tuple[str, int, str]] = {}
    gauge_var: dict[int, int] = {}
    state_by_gauge_var: dict[int, int] = {}
    variables = 0
    rows: list[dict[int, Fraction]] = []
    rhs: list[Fraction] = []
    grouped_gains: dict[tuple[str, int, str], set[int]] = defaultdict(set)

    for state in sorted(states):
        gauge_var[state] = variables
        state_by_gauge_var[variables] = state
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
                edge_key_by_var[variables] = key
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
    report: dict[str, Any] = {
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
    if include_solution and consistent:
        solution = rref_solution(rows, rhs, variables)
        if solution is not None:
            gauge_rows = []
            for var, state in sorted(state_by_gauge_var.items()):
                value = solution[var]
                gauge_rows.append(
                    {
                        "state": state,
                        "state_key": states[state],
                        "quotient_state": q_by_state[state],
                        "value": fraction_text(value),
                    }
                )
            small_gain_rows = []
            for var, (src_q, label, dst_q) in sorted(edge_key_by_var.items()):
                value = solution[var]
                small_gain_rows.append(
                    {
                        "src": src_q,
                        "label": label,
                        "label_key": labels[label],
                        "dst": dst_q,
                        "value": fraction_text(value),
                    }
                )
            all_values = solution
            report["solution"] = {
                "gauge": gauge_rows,
                "small_gains": small_gain_rows,
                "max_bit_length": max(
                    (fraction_bit_length(value) for value in all_values),
                    default=0,
                ),
                "nonzero_values": sum(1 for value in all_values if value),
                "gauge_count": len(gauge_rows),
                "small_gain_count": len(small_gain_rows),
            }
    return report


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
    best = payload.get("best_consistent")
    solution = (best or {}).get("solution", {})
    if best is not None:
        lines.extend(
            [
                "",
                "## Best Quotient Solution",
                "",
                f"- mode: `{best['mode']}`",
                f"- quotient states: `{best['quotient_states']}`",
                f"- quotient edges: `{best['quotient_edges']}`",
                f"- gauge entries: `{solution.get('gauge_count')}`",
                f"- small-gain entries: `{solution.get('small_gain_count')}`",
                f"- nonzero values: `{solution.get('nonzero_values')}`",
                f"- max rational bit length: `{solution.get('max_bit_length')}`",
                "",
            ]
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
    if best is not None:
        best_with_solution = quotient_report(graph, best["mode"], include_solution=True)
    else:
        best_with_solution = None
    if best_with_solution is not None:
        best = best_with_solution
        quotients = [
            best if row["mode"] == best["mode"] else row
            for row in quotients
        ]
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
