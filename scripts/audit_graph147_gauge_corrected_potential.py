#!/usr/bin/env python3
"""Audit graph147 with a gauge-corrected quotient potential.

This is a diagnostic-only script.  It does not emit Lean proof evidence.

The earlier quotient-potential diagnostic fixed every quotient final potential
to zero.  For a cocycle quotient

    raw = small + gauge(dst) - gauge(src),

the natural potential condition is instead a gauge-corrected one.  If a small
potential `U` satisfies

    small + U(dst) <= U(src)
    gauge(final) <= U(final)
    const + U(root) - gauge(root) <= 0,

then the original raw margin is bounded by the same Bellman telescoping
argument.  This script checks that condition for each existing graph147 quotient
mode, using the observed full graph potential as the source of `U`:

    U(qstate) = max { fullPotential(s) + gauge(s) | q(s) = qstate }.

The result tells us whether the current quotient coordinates are viable margin
certificates or only diagnostics.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from profile_graph147_quotient_potential import DEFAULT_MODES  # noqa: E402
from profile_graph183_cocycle_quotients import quotient_report  # noqa: E402


def _as_int(value: str | int) -> int:
    return int(value)


def evaluate_mode(graph: dict[str, Any], mode: str) -> dict[str, Any]:
    report = quotient_report(graph, mode, include_solution=True)
    if not report.get("consistent"):
        return {
            "mode": mode,
            "decision": "inconsistent_edge_quotient",
            "consistent": False,
            "quotient_states": report.get("quotient_states"),
            "interpretation": "Raw gains do not factor through this quotient.",
        }

    q_by_full: dict[int, str] = {}
    gauge: dict[int, int] = {}
    for row in report["solution"]["gauge"]:
        full_state = int(row["state"])
        q_by_full[full_state] = row["quotient_state"]
        gauge[full_state] = _as_int(row["value"])

    small_gain: dict[tuple[str, int, str], int] = {}
    for row in report["solution"]["small_gains"]:
        small_gain[(row["src"], int(row["label"]), row["dst"])] = _as_int(
            row["value"]
        )

    full_potential = {
        int(row["index"]): int(row["potential_scaled"]) for row in graph["states"]
    }
    corrected_potential: dict[str, int] = {}
    for full_state, qstate in q_by_full.items():
        value = full_potential[full_state] + gauge[full_state]
        corrected_potential[qstate] = max(
            corrected_potential.get(qstate, value), value
        )

    edge_failures: list[dict[str, Any]] = []
    for edge in graph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        qsrc = q_by_full[src]
        qdst = q_by_full[dst]
        for label in edge.get("label_indices", []):
            label = int(label)
            small = small_gain[(qsrc, label, qdst)]
            lhs = small + corrected_potential[qdst]
            rhs = corrected_potential[qsrc]
            if lhs > rhs:
                edge_failures.append(
                    {
                        "src": src,
                        "dst": dst,
                        "label": label,
                        "qsrc": qsrc,
                        "qdst": qdst,
                        "lhs": lhs,
                        "rhs": rhs,
                    }
                )

    finals = [int(index) for index in graph["final_indices"]]
    final_failures = [
        {
            "final": final,
            "qfinal": q_by_full[final],
            "gauge": gauge[final],
            "corrected_potential": corrected_potential[q_by_full[final]],
        }
        for final in finals
        if gauge[final] > corrected_potential[q_by_full[final]]
    ]

    roots = [int(index) for index in graph["root_indices"]]
    const = int(graph["const_scaled"])
    root_bounds = [
        {
            "root": root,
            "qroot": q_by_full[root],
            "bound": const + corrected_potential[q_by_full[root]] - gauge[root],
            "corrected_potential": corrected_potential[q_by_full[root]],
            "gauge": gauge[root],
        }
        for root in roots
    ]
    worst_root_bound = max(row["bound"] for row in root_bounds)

    if edge_failures:
        decision = "gauge_corrected_edges_invalid"
        interpretation = (
            "The quotient raw-gain equations are consistent, but the observed "
            "`V + gauge` potential does not validate all small quotient edges."
        )
    elif final_failures:
        decision = "gauge_corrected_finals_invalid"
        interpretation = (
            "The quotient validates edges, but some final gauge obligations are "
            "larger than the corrected final potential."
        )
    elif worst_root_bound <= 0:
        decision = "gauge_corrected_margin_candidate"
        interpretation = (
            "This quotient validates the gauge-corrected Bellman margin bound "
            "on the observed graph.  It is still diagnostic until Lean proves "
            "semantic closed-language membership into the same graph."
        )
    else:
        decision = "gauge_corrected_root_bound_positive"
        interpretation = (
            "The quotient validates local corrected edges/finals, but its root "
            "margin bound is positive."
        )

    return {
        "mode": mode,
        "consistent": True,
        "quotient_states": report.get("quotient_states"),
        "quotient_edge_labels": report.get("quotient_edges"),
        "edge_failure_count": len(edge_failures),
        "first_edge_failure": edge_failures[0] if edge_failures else None,
        "final_failure_count": len(final_failures),
        "root_bounds": root_bounds,
        "worst_root_bound": worst_root_bound,
        "corrected_potential_min": min(corrected_potential.values()),
        "corrected_potential_max": max(corrected_potential.values()),
        "decision": decision,
        "interpretation": interpretation,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Graph147 Gauge-Corrected Potential Audit",
        "",
        "Diagnostic only.  This does not emit Lean evidence.",
        "",
        f"- profile: `{payload['profile']}`",
        f"- decision: `{payload['decision']}`",
        f"- accepted modes: `{', '.join(payload['accepted_modes']) or '<none>'}`",
        "",
        "## Observed Graph",
        "",
    ]
    graph = payload["graph"]
    lines.extend(
        [
            f"- states: `{graph['states']}`",
            f"- edges: `{graph['edges']}`",
            f"- roots: `{graph['roots']}`",
            f"- finals: `{graph['finals']}`",
            f"- const scaled: `{graph['const_scaled']}`",
            f"- root potential bounds: `{graph['root_potential_bounds']}`",
            f"- final potential range: `{graph['final_potential_min']} .. {graph['final_potential_max']}`",
            "",
            "## Mode Table",
            "",
            "| mode | q states | edge failures | final failures | worst root bound | decision |",
            "| --- | ---: | ---: | ---: | ---: | --- |",
        ]
    )
    for row in payload["modes"]:
        lines.append(
            "| `{}` | `{}` | `{}` | `{}` | `{}` | `{}` |".format(
                row["mode"],
                row.get("quotient_states"),
                row.get("edge_failure_count", "n/a"),
                row.get("final_failure_count", "n/a"),
                row.get("worst_root_bound", "n/a"),
                row["decision"],
            )
        )
    lines.extend(
        [
            "",
            "## Interpretation",
            "",
            payload["interpretation"],
            "",
            "The full graph quotient is an observed margin candidate because the",
            "gauge-corrected potential is exactly strong enough to give root bound",
            "`0`.  The coarser existing quotients fail local corrected edge bounds,",
            "so they cannot yet replace the full graph in a production margin",
            "bundle.  The next Lean step remains semantic: prove the closed",
            "top-pairing language evaluates through this deterministic graph, or",
            "add a stronger semantic quotient/segment state.  Do not scale",
            "selected-prefix or sampled-rank membership.",
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
    parser.add_argument("--modes", nargs="*", default=DEFAULT_MODES)
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT
        / "scripts/generated/graph147_gauge_corrected_potential_0_10M.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=ROOT
        / "scripts/generated/graph147_gauge_corrected_potential_0_10M.md",
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    graph = profile["graph"]
    states = {int(row["index"]): int(row["potential_scaled"]) for row in graph["states"]}
    roots = [int(index) for index in graph["root_indices"]]
    finals = [int(index) for index in graph["final_indices"]]

    modes = [evaluate_mode(graph, mode) for mode in args.modes]
    accepted = [
        row["mode"]
        for row in modes
        if row["decision"] == "gauge_corrected_margin_candidate"
    ]
    if accepted == ["full"]:
        decision = "full_graph_margin_candidate_only"
        interpretation = (
            "The observed graph147 Bellman potential plus gauge certifies the "
            "full 970-state graph, but no coarser existing quotient is a valid "
            "margin certificate.  The production path should target semantic "
            "closed-language membership into the deterministic full graph, or "
            "discover a stronger quotient/segment state."
        )
    elif accepted:
        decision = "coarser_margin_candidates_found"
        interpretation = (
            "At least one coarser existing quotient validates the corrected "
            "margin condition.  Prefer the smallest accepted quotient for a "
            "Lean smoke, pending semantic closed-language membership."
        )
    else:
        decision = "no_gauge_corrected_margin_candidate"
        interpretation = (
            "No existing quotient validates the gauge-corrected margin "
            "condition.  Add semantic state or a segment/cocycle algebra before "
            "attempting Lean production."
        )

    payload: dict[str, Any] = {
        "mode": "graph147-gauge-corrected-potential-audit",
        "profile": args.profile.as_posix(),
        "arithmetic": "exact integer/rational diagnostic; not proof evidence",
        "graph": {
            "states": len(graph["states"]),
            "edges": len(graph["edges"]),
            "roots": len(roots),
            "finals": len(finals),
            "const_scaled": int(graph["const_scaled"]),
            "root_potential_bounds": [
                {
                    "root": root,
                    "potential": states[root],
                    "const_plus_potential": int(graph["const_scaled"]) + states[root],
                }
                for root in roots
            ],
            "final_potential_min": min(states[final] for final in finals),
            "final_potential_max": max(states[final] for final in finals),
        },
        "modes": modes,
        "accepted_modes": accepted,
        "decision": decision,
        "interpretation": interpretation,
    }

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(payload))
    print(json.dumps({
        "decision": decision,
        "accepted_modes": accepted,
        "graph": payload["graph"],
    }, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
