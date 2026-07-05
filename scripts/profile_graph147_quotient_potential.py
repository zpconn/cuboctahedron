#!/usr/bin/env python3
"""Profile whether graph147 cocycle quotients prove a margin bound.

The edge-equation quotient checks that every observed raw gain factors as

    raw = small + gauge(dst) - gauge(src).

That is not yet a Bellman margin certificate.  A production quotient margin
route also needs a small-state potential `W` whose edge inequalities are valid
and whose root/gauge bound is nonpositive for all accepted finals.

This profiler evaluates each existing quotient mode from
`profile_graph183_cocycle_quotients.py`, computes an exact quotient solution,
derives the least DAG potential with `W(final) = 0`, and reports whether the
worst root/gauge bound is nonpositive.  It is diagnostic only; it emits no
proof evidence.
"""

from __future__ import annotations

import argparse
import json
import re
from fractions import Fraction
from pathlib import Path
from typing import Any

from profile_graph183_cocycle_quotients import quotient_report


ROOT = Path(__file__).resolve().parents[1]

DEFAULT_MODES = [
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
]


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


def evaluate_mode(graph: dict[str, Any], mode: str) -> dict[str, Any]:
    report = quotient_report(graph, mode, include_solution=True)
    if not report.get("consistent"):
        return {
            **report,
            "decision": "inconsistent_edge_quotient",
            "interpretation": "The raw gains do not factor through this quotient.",
        }
    if "solution" not in report:
        return {
            **report,
            "decision": "no_solution_emitted",
            "interpretation": "The quotient was consistent but no solution was emitted.",
        }

    q_by_full: dict[int, str] = {}
    gauge: dict[int, int] = {}
    for row in report["solution"]["gauge"]:
        full_state = int(row["state"])
        q_by_full[full_state] = row["quotient_state"]
        gauge[full_state] = int_fraction(row["value"])

    small_gain: dict[tuple[str, int, str], int] = {}
    for row in report["solution"]["small_gains"]:
        small_gain[(row["src"], int(row["label"]), row["dst"])] = int_fraction(
            row["value"]
        )

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
            "The quotient potential validates all quotient edges and the worst "
            "root/gauge margin bound is nonpositive.  This quotient is a "
            "candidate for Lean emission, pending semantic membership."
        )
    else:
        decision = "edge_quotient_not_margin_complete"
        interpretation = (
            "The quotient validates local edge equations, but it is too coarse "
            "as a margin certificate: the least quotient potential has a "
            "positive worst root/gauge bound."
        )

    return {
        **report,
        "full_edge_equations": len(expanded_edges),
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
        "potential_max_bit_length": max(
            abs(value).bit_length() for value in potential.values()
        ),
        "decision": decision,
        "interpretation": interpretation,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Graph147 Quotient Potential Diagnostic",
        "",
        "Diagnostic only.  This does not emit Lean evidence.",
        "",
        f"- profile: `{payload['profile']}`",
        f"- decision: `{payload['decision']}`",
        f"- selected mode: `{payload['selected_mode']}`",
        f"- accepted modes: `{', '.join(payload['accepted_modes']) or '<none>'}`",
        "",
        "## Mode Table",
        "",
        "| mode | consistent | q states | q edges | edge-valid | worst bound | decision |",
        "| --- | --- | ---: | ---: | --- | ---: | --- |",
    ]
    for row in payload["modes"]:
        lines.append(
            "| `{}` | `{}` | `{}` | `{}` | `{}` | `{}` | `{}` |".format(
                row["mode"],
                row.get("consistent"),
                row.get("quotient_states"),
                row.get("quotient_edge_labels", row.get("quotient_edges")),
                row.get("quotient_potential_edge_valid", "n/a"),
                row.get("worst_root_gauge_bound", "n/a"),
                row["decision"],
            )
        )
    selected = payload["selected"]
    lines.extend(
        [
            "",
            "## Selected Mode",
            "",
            f"- mode: `{selected['mode']}`",
            f"- quotient states: `{selected['quotient_states']}`",
            f"- quotient edge labels: `{selected.get('quotient_edge_labels')}`",
            f"- quotient finals: `{selected.get('quotient_finals')}`",
            f"- U = fullPotential + gauge collision classes: `{selected.get('u_collision_classes')}`",
            f"- quotient potential edge-valid: `{selected.get('quotient_potential_edge_valid')}`",
            f"- quotient potential root value: `{selected.get('root_potential')}`",
            f"- root gauge: `{selected.get('root_gauge')}`",
            f"- final gauge range: `{selected.get('final_gauge_min')} .. {selected.get('final_gauge_max')}`",
            f"- worst root/gauge bound: `{selected.get('worst_root_gauge_bound')}`",
            "",
            "Interpretation:",
            "",
            payload["interpretation"],
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT
        / "scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json",
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
    parser.add_argument("--modes", nargs="*", default=DEFAULT_MODES)
    parser.add_argument("--selected-mode", default="step-stack")
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    graph = profile["graph"]
    mode_reports = [evaluate_mode(graph, mode) for mode in args.modes]
    accepted = [
        row for row in mode_reports
        if row["decision"] == "quotient_margin_candidate"
    ]
    selected_candidates = [
        row for row in mode_reports if row["mode"] == args.selected_mode
    ]
    if not selected_candidates:
        raise ValueError(f"selected mode was not evaluated: {args.selected_mode}")
    selected = selected_candidates[0]

    best = min(
        accepted,
        key=lambda row: (
            int(row["quotient_edge_labels"]),
            int(row["quotient_states"]),
            row["mode"],
        ),
        default=None,
    )
    if best is not None:
        decision = "quotient_margin_candidates_found"
        interpretation = (
            "At least one existing quotient mode has a valid quotient potential "
            "and nonpositive root/gauge bound.  The smallest accepted mode is "
            f"`{best['mode']}`; it is a candidate for Lean emission, pending "
            "semantic closed-language membership."
        )
    else:
        decision = "no_existing_quotient_margin_candidate"
        interpretation = (
            "No existing quotient mode simultaneously validates quotient edges "
            "and proves a nonpositive root/gauge margin bound.  The current "
            "quotient coordinates are diagnostic only; graph147 needs a "
            "stronger semantic state, cancellation/segment algebra, or new "
            "cocycle quotient."
        )

    payload: dict[str, Any] = {
        "mode": "graph147-cocycle-quotient-potential-diagnostic",
        "profile": args.profile.as_posix(),
        "arithmetic": "exact rational/integer diagnostic; not proof evidence",
        "modes": mode_reports,
        "accepted_modes": [row["mode"] for row in accepted],
        "best_margin_candidate": best,
        "selected_mode": selected["mode"],
        "selected": selected,
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
