#!/usr/bin/env python3
"""Plan the next Bellman/potential pivot action from cached diagnostics.

This is untrusted planning infrastructure.  It emits no Lean evidence and does
not certify mathematical coverage.  The goal is to keep the nonidentity
Bellman work aligned with the current strategy:

* use semantic Bellman/potential families, not certificate packing;
* keep graph/potential payloads below terminal theorem surfaces;
* use cocycle-gauge or cancellation-summary refinement only when the Bellman
  state/action metrics say the current family is not ready to scale.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


def read_json(path: Path | None) -> dict[str, Any] | None:
    if path is None:
        return None
    return json.loads(path.read_text())


def int_or_none(value: Any) -> int | None:
    if value is None:
        return None
    try:
        return int(value)
    except (TypeError, ValueError):
        return None


def bool_or_none(value: Any) -> bool | None:
    if value is None:
        return None
    return bool(value)


def gate_passes(gate: dict[str, Any] | None) -> bool:
    if gate is None:
        return False
    checks = gate.get("checks", [])
    hard_checks = [
        row for row in checks
        if row.get("name") != "exact_path_classes_not_family_coordinate"
    ]
    return bool(hard_checks) and all(bool(row.get("passed")) for row in hard_checks)


def gate_exact_path_warning(gate: dict[str, Any] | None) -> bool:
    if gate is None:
        return True
    for row in gate.get("checks", []):
        if row.get("name") == "exact_path_classes_not_family_coordinate":
            return not bool(row.get("passed"))
    return True


def split_boundary_passes(split: dict[str, Any] | None) -> bool:
    return split_audit_status(split) == "passed"


def split_audit_status(split: dict[str, Any] | None) -> str | None:
    if not split:
        return None
    status = split.get("status")
    if status is None and isinstance(split.get("decision"), dict):
        status = split["decision"].get("status")
    if status is None:
        return None
    return str(status)


def route_is_ready(route: dict[str, Any] | None) -> bool:
    return bool(route and route.get("decision") == "candidate-next-lean-family-smoke")


def best_coarsening_summary(path_coarsening: dict[str, Any] | None) -> dict[str, Any] | None:
    if path_coarsening is None:
        return None
    summaries = path_coarsening.get("summaries", [])
    if not summaries:
        return None
    return min(
        summaries,
        key=lambda row: (
            int(row.get("group_count", 10**18)),
            -int(row.get("max_group_size", 0)),
            int(row.get("max_margin_spread", 10**18)),
            str(row.get("mode", "")),
        ),
    )


def build_payload(
    *,
    production_gate: dict[str, Any] | None,
    route_profile: dict[str, Any] | None,
    split_audit: dict[str, Any] | None,
    path_coarsening: dict[str, Any] | None,
) -> dict[str, Any]:
    metrics = (production_gate or {}).get("metrics", {})
    route_graph = (route_profile or {}).get("graph", {})
    transition = (route_profile or {}).get("transition_language", {})
    best_coarse = best_coarsening_summary(path_coarsening)

    hard_gate_ok = gate_passes(production_gate)
    exact_path_warning = gate_exact_path_warning(production_gate)
    split_ok = split_boundary_passes(split_audit)
    route_ok = route_is_ready(route_profile)

    if not hard_gate_ok:
        decision = "refine-bellman-state-before-lean"
        next_action = (
            "Do not emit or scale Lean shards.  The Bellman production gates do "
            "not pass, so first refine the semantic state key, split the family, "
            "or try cocycle-gauge/cancellation-summary preprocessing."
        )
    elif not route_ok:
        decision = "finish-transition-language-closure"
        next_action = (
            "The numerical Bellman gates pass, but the route profile is not a "
            "closed semantic language.  Run/repair closure and missing-transition "
            "audits before generating more Lean."
        )
    elif not split_ok:
        decision = "repair-split-boundary"
        next_action = (
            "The family route is promising, but the graph/terminal split boundary "
            "audit is not passing.  Fix the emitter boundary before scaling."
        )
    elif exact_path_warning:
        decision = "implement-semantic-membership-then-scale"
        next_action = (
            "Proceed with the Bellman/potential route, but do not use exact path "
            "classes as the family coordinate.  Implement the semantic "
            "object-family membership theorem for the closed transition language, "
            "using cocycle-gauge/cancellation-summary refinement only if the next "
            "larger windows show state or transition growth near the gates."
        )
    else:
        decision = "scale-split-emitter"
        next_action = (
            "The Bellman gates, semantic route, and split boundary all pass with "
            "no exact-path warning.  Scale split graph/terminal/root emission to "
            "the next bounded family window."
        )

    return {
        "mode": "bellman-pivot-next-action-plan",
        "arithmetic": "untrusted diagnostic aggregation only; no Lean evidence",
        "inputs": {
            "production_gate_decision": (production_gate or {}).get("decision"),
            "route_profile_decision": (route_profile or {}).get("decision"),
            "split_audit_status": split_audit_status(split_audit),
            "path_coarsening_decision": (path_coarsening or {}).get("decision"),
        },
        "metrics": {
            "matched": int_or_none(metrics.get("matched")),
            "paths": int_or_none(metrics.get("paths")),
            "states": int_or_none(metrics.get("states") or route_graph.get("state_count")),
            "edges": int_or_none(metrics.get("edges") or route_graph.get("edge_count")),
            "path_class_count": int_or_none(
                metrics.get("path_class_count") or route_graph.get("path_class_count")
            ),
            "exact_path_class_ratio": metrics.get("exact_path_class_ratio"),
            "scaled_bit_length": int_or_none(metrics.get("scaled_bit_length")),
            "fraction_bit_length": int_or_none(metrics.get("fraction_bit_length")),
            "transition_closed_after_bad_face": bool_or_none(
                transition.get("closed_after_canonical_bad_face")
            ),
            "split_graph_positive_mentions": int_or_none(
                (split_audit or {}).get("graph_positive_mentions")
            ),
            "split_terminal_positive_payloads": int_or_none(
                (split_audit or {}).get("terminal_positive_payloads")
            ),
        },
        "best_path_coarsening": best_coarse,
        "checks": {
            "hard_gate_ok": hard_gate_ok,
            "exact_path_warning": exact_path_warning,
            "semantic_route_ready": route_ok,
            "split_boundary_ok": split_ok,
        },
        "decision": decision,
        "next_action": next_action,
        "ordered_followups": [
            "Implement semantic object-family membership for the closed Bellman language.",
            "Run the same planner on the next larger exact Bellman window before any broad Lean build.",
            "If states/edges or exact-path ratios grow too fast, profile cocycle-gauge preconditioning.",
            "If gauge is weak, profile cancellation-summary DAG bounds for the same family.",
            "Only after terminal families are real, assemble StateKilled/root coverage.",
        ],
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    metrics = payload["metrics"]
    checks = payload["checks"]
    lines = [
        "# Bellman Pivot Next-Action Plan",
        "",
        "Untrusted diagnostic aggregation.  This file is not Lean proof evidence.",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["next_action"],
        "",
        "## Checks",
        "",
        "| Check | Value |",
        "| --- | --- |",
    ]
    for key, value in checks.items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend(["", "## Metrics", "", "| Metric | Value |", "| --- | ---: |"])
    for key, value in metrics.items():
        lines.append(f"| `{key}` | `{value}` |")
    best = payload.get("best_path_coarsening")
    if best is not None:
        lines.extend([
            "",
            "## Best Cached Path Coarsening",
            "",
            "| Field | Value |",
            "| --- | --- |",
            f"| `mode` | `{best.get('mode')}` |",
            f"| `group_count` | `{best.get('group_count')}` |",
            f"| `max_group_size` | `{best.get('max_group_size')}` |",
            f"| `max_margin_spread` | `{best.get('max_margin_spread')}` |",
        ])
    lines.extend(["", "## Ordered Follow-Ups", ""])
    for item in payload["ordered_followups"]:
        lines.append(f"- {item}")
    lines.append("")
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--production-gate", type=Path)
    parser.add_argument("--route-profile", type=Path)
    parser.add_argument("--split-audit", type=Path)
    parser.add_argument("--path-coarsening", type=Path)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", "--md", type=Path, required=True)
    args = parser.parse_args()

    payload = build_payload(
        production_gate=read_json(args.production_gate),
        route_profile=read_json(args.route_profile),
        split_audit=read_json(args.split_audit),
        path_coarsening=read_json(args.path_coarsening),
    )
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.markdown)
    print(json.dumps({
        "decision": payload["decision"],
        "checks": payload["checks"],
        "metrics": payload["metrics"],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
