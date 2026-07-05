#!/usr/bin/env python3
"""Profile whether the graph147 cocycle quotient also proves a margin bound.

The edge-equation quotient checks that every observed raw gain factors as

    raw = small + gauge(dst) - gauge(src).

That is not yet a Bellman margin certificate.  To be a complete quotient
margin route, the quotient graph also needs a small-state potential `W` whose
edge inequalities are valid and whose root/gauge bound is nonpositive for all
accepted finals.

This profiler computes the least DAG potential with `W(final) = 0`, checks all
quotient edge inequalities, and reports the worst root/gauge margin bound.
It is diagnostic only; it emits no proof evidence.
"""

from __future__ import annotations

import argparse
import json
import re
from fractions import Fraction
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]


def int_fraction(text: str) -> int:
    value = Fraction(text)
    if value.denominator != 1:
        raise ValueError(f"expected integer value, got {text}")
    return int(value)


def step_of_quotient_state(key: str) -> int:
    match = re.search(r"step=(\d+)", key)
    if match is None:
        raise ValueError(f"quotient state has no step field: {key}")
    return int(match.group(1))


def render_markdown(payload: dict[str, Any]) -> str:
    return "\n".join(
        [
            "# Graph147 Quotient Potential Diagnostic",
            "",
            "Diagnostic only.  This does not emit Lean evidence.",
            "",
            f"- profile: `{payload['profile']}`",
            f"- quotient: `{payload['quotient']}`",
            f"- quotient mode: `{payload['quotient_mode']}`",
            f"- full states: `{payload['full_states']}`",
            f"- full edge-label equations: `{payload['full_edge_equations']}`",
            f"- quotient states: `{payload['quotient_states']}`",
            f"- quotient edge labels: `{payload['quotient_edge_labels']}`",
            f"- quotient finals: `{payload['quotient_finals']}`",
            f"- U = fullPotential + gauge collision classes: `{payload['u_collision_classes']}`",
            f"- quotient potential edge-valid: `{payload['quotient_potential_edge_valid']}`",
            f"- quotient potential root value: `{payload['root_potential']}`",
            f"- root gauge: `{payload['root_gauge']}`",
            f"- final gauge range: `{payload['final_gauge_min']} .. {payload['final_gauge_max']}`",
            f"- worst root/gauge bound: `{payload['worst_root_gauge_bound']}`",
            f"- decision: `{payload['decision']}`",
            "",
            "Interpretation:",
            "",
            payload["interpretation"],
            "",
        ]
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT
        / "scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json",
    )
    parser.add_argument(
        "--quotient",
        type=Path,
        default=ROOT / "scripts/generated/graph147_cocycle_quotients_0_10M.json",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT / "scripts/generated/graph147_cocycle_quotient_potential_0_10M.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=ROOT / "scripts/generated/graph147_cocycle_quotient_potential_0_10M.md",
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    quotient_doc = json.loads(args.quotient.read_text())
    best = quotient_doc["best_consistent"]
    if not best.get("consistent"):
        raise ValueError("best quotient is not consistent")
    if best.get("mode") != "step-stack":
        raise ValueError(f"unexpected quotient mode: {best.get('mode')}")

    q_by_full: dict[int, str] = {}
    gauge: dict[int, int] = {}
    for row in best["solution"]["gauge"]:
        full_state = int(row["state"])
        q_by_full[full_state] = row["quotient_state"]
        gauge[full_state] = int_fraction(row["value"])

    small_gain: dict[tuple[str, int, str], int] = {}
    for row in best["solution"]["small_gains"]:
        small_gain[(row["src"], int(row["label"]), row["dst"])] = int_fraction(
            row["value"]
        )

    graph = profile["graph"]
    states = {int(row["index"]): row for row in graph["states"]}
    full_potential = {
        int(row["index"]): int(row["potential_scaled"]) for row in graph["states"]
    }

    expanded_edges: list[tuple[str, str, int, int, int, int]] = []
    for edge in graph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        raw = int(edge["gain_scaled"])
        for label in edge.get("label_indices", []):
            label = int(label)
            qsrc = q_by_full[src]
            qdst = q_by_full[dst]
            small = small_gain[(qsrc, label, qdst)]
            if raw != small + gauge[dst] - gauge[src]:
                raise ValueError(f"quotient equation failed for edge {src}->{dst}")
            expanded_edges.append((qsrc, qdst, label, small, src, dst))

    qstates = sorted(
        {qsrc for qsrc, *_ in expanded_edges}
        | {qdst for _, qdst, *_ in expanded_edges},
        key=lambda key: (step_of_quotient_state(key), key),
    )
    final_full = [int(index) for index in graph["final_indices"]]
    qfinals = {q_by_full[index] for index in final_full}
    root_full = [int(index) for index in graph["root_indices"]]

    # Least DAG potential for the quotient graph with all final states at 0.
    potential: dict[str, int] = {state: 0 for state in qfinals}
    for qstate in sorted(qstates, key=step_of_quotient_state, reverse=True):
        values = [0] if qstate in qfinals else []
        for qsrc, qdst, _label, small, _src, _dst in expanded_edges:
            if qsrc == qstate:
                if qdst not in potential:
                    raise ValueError(f"quotient successor missing potential: {qdst}")
                values.append(small + potential[qdst])
        if values:
            potential[qstate] = max(values)

    missing = [state for state in qstates if state not in potential]
    if missing:
        raise ValueError(f"missing quotient potentials: {missing[:5]}")

    edge_failures = [
        {
            "src": qsrc,
            "dst": qdst,
            "label": label,
            "small_gain": small,
            "src_potential": potential[qsrc],
            "dst_potential": potential[qdst],
        }
        for qsrc, qdst, label, small, _src, _dst in expanded_edges
        if small + potential[qdst] > potential[qsrc]
    ]

    u_classes: dict[str, set[int]] = {}
    for full_state, qstate in q_by_full.items():
        u_classes.setdefault(qstate, set()).add(
            full_potential[full_state] + gauge[full_state]
        )
    u_collision_classes = sum(1 for values in u_classes.values() if len(values) > 1)

    const = int(graph["const_scaled"])
    root_bounds = []
    for root in root_full:
        qroot = q_by_full[root]
        for final in final_full:
            root_bounds.append(
                {
                    "root": root,
                    "final": final,
                    "bound": const
                    + potential[qroot]
                    + gauge[final]
                    - gauge[root],
                }
            )
    worst = max(root_bounds, key=lambda row: int(row["bound"]))
    final_gauges = [gauge[index] for index in final_full]
    root = root_full[0]
    qroot = q_by_full[root]

    if edge_failures:
        decision = "quotient_potential_invalid"
        interpretation = (
            "The quotient edge equations are consistent, but the derived "
            "quotient potential does not validate all quotient edge bounds."
        )
    elif int(worst["bound"]) <= 0:
        decision = "quotient_margin_candidate"
        interpretation = (
            "The current quotient potential validates all quotient edges and "
            "the worst root/gauge margin bound is nonpositive.  This quotient "
            "is a candidate for Lean emission, pending semantic membership."
        )
    else:
        decision = "edge_quotient_not_margin_complete"
        interpretation = (
            "The current step-stack quotient validates local edge equations, "
            "but it is too coarse as a margin certificate: the least quotient "
            "potential has a positive worst root/gauge bound.  Do not treat "
            "this quotient as production margin evidence without a stronger "
            "semantic state, cancellation/segment algebra, or different "
            "cocycle quotient."
        )

    payload: dict[str, Any] = {
        "mode": "graph147-cocycle-quotient-potential-diagnostic",
        "profile": args.profile.as_posix(),
        "quotient": args.quotient.as_posix(),
        "quotient_mode": best["mode"],
        "full_states": len(states),
        "full_edge_equations": len(expanded_edges),
        "quotient_states": len(qstates),
        "quotient_edge_labels": len(
            {(qsrc, label, qdst) for qsrc, qdst, label, *_ in expanded_edges}
        ),
        "quotient_finals": len(qfinals),
        "u_collision_classes": u_collision_classes,
        "quotient_potential_edge_valid": not edge_failures,
        "edge_failure_count": len(edge_failures),
        "root_state": root,
        "root_quotient_state": qroot,
        "root_potential": potential[qroot],
        "root_gauge": gauge[root],
        "final_gauge_min": min(final_gauges),
        "final_gauge_max": max(final_gauges),
        "worst_root_gauge_bound": int(worst["bound"]),
        "worst_root_gauge_example": worst,
        "potential_min": min(potential.values()),
        "potential_max": max(potential.values()),
        "potential_max_bit_length": max(abs(value).bit_length() for value in potential.values()),
        "decision": decision,
        "interpretation": interpretation,
    }

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
