#!/usr/bin/env python3
"""Audit Bellman graph artifacts against production-emission gates.

This is untrusted diagnostic infrastructure.  It reads a Bellman profile JSON
artifact and reports whether the observed graph is small enough to be a
candidate semantic Bellman family.  Lean must still check any generated proof.

The audit deliberately treats exact path classes as diagnostic only.  A graph
can pass the numerical Bellman gates while still needing a real
holonomy/cancellation-language membership theorem before production emission.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


def _get_int(payload: dict[str, Any], *path: str, default: int = 0) -> int:
    obj: Any = payload
    for key in path:
        if not isinstance(obj, dict) or key not in obj:
            return default
        obj = obj[key]
    if obj is None:
        return default
    return int(obj)


def _get_bool(payload: dict[str, Any], *path: str, default: bool = False) -> bool:
    obj: Any = payload
    for key in path:
        if not isinstance(obj, dict) or key not in obj:
            return default
        obj = obj[key]
    return bool(obj)


def _bit_length(value: int) -> int:
    return abs(value).bit_length()


def audit(
    input_path: Path,
    *,
    max_states: int,
    max_edges: int,
    max_scaled_bits: int,
    max_fraction_bits: int,
    max_exact_path_class_ratio: float,
) -> dict[str, Any]:
    payload = json.loads(input_path.read_text())
    counts = payload.get("counts", {})
    bellman = payload.get("bellman", {})
    graph = payload.get("graph", {})

    matched = _get_int(payload, "counts", "matched")
    paths = _get_int(payload, "counts", "paths")
    states = _get_int(payload, "counts", "states")
    edges = _get_int(payload, "counts", "edges")
    final_states = _get_int(payload, "counts", "final_states")
    root_states = _get_int(payload, "counts", "root_states")
    path_class_count = int(graph.get("path_class_count") or len(graph.get("path_classes", [])))
    scale = int(bellman.get("scale") or graph.get("scale") or 1)
    scaled_bits = max(
        _get_int(payload, "bellman", "scaled_potential_bit_length"),
        _bit_length(scale),
    )
    fraction_bits = max(
        _get_int(payload, "bellman", "gain_fraction_bit_length"),
        _get_int(payload, "bellman", "potential_fraction_bit_length"),
    )
    proves_observed = _get_bool(payload, "bellman", "proves_observed_nonpositive")
    bounded = _get_bool(payload, "bellman", "bounded_fixed_point")
    exact_path_ratio = (path_class_count / paths) if paths else 0.0

    checks = [
        {
            "name": "observed_margin_bound",
            "passed": proves_observed,
            "detail": "Bellman max_const + root_bound is nonpositive on the observed artifact.",
        },
        {
            "name": "acyclic_or_bounded_fixed_point",
            "passed": bounded,
            "detail": "The profile solver did not detect a cycle in the chosen state abstraction.",
        },
        {
            "name": "state_count_gate",
            "passed": states <= max_states,
            "detail": f"states={states}, gate={max_states}",
        },
        {
            "name": "edge_count_gate",
            "passed": edges <= max_edges,
            "detail": f"edges={edges}, gate={max_edges}",
        },
        {
            "name": "scaled_integer_bit_gate",
            "passed": scaled_bits <= max_scaled_bits,
            "detail": f"scaled_bits={scaled_bits}, gate={max_scaled_bits}",
        },
        {
            "name": "fraction_bit_gate",
            "passed": fraction_bits <= max_fraction_bits,
            "detail": f"fraction_bits={fraction_bits}, gate={max_fraction_bits}",
        },
        {
            "name": "exact_path_classes_not_family_coordinate",
            "passed": exact_path_ratio <= max_exact_path_class_ratio,
            "detail": (
                f"path_classes={path_class_count}, paths={paths}, "
                f"ratio={exact_path_ratio:.4f}, warning_gate={max_exact_path_class_ratio:.4f}"
            ),
        },
    ]
    hard_pass = all(
        check["passed"]
        for check in checks
        if check["name"] != "exact_path_classes_not_family_coordinate"
    )
    exact_path_warning = not checks[-1]["passed"]
    if hard_pass and not exact_path_warning:
        decision = "candidate-production-family"
        recommendation = (
            "Proceed to a semantic holonomy/cancellation membership theorem for this "
            "Bellman graph.  Keep potential data private and export only killed coverage."
        )
    elif hard_pass:
        decision = "candidate-needs-coarser-membership"
        recommendation = (
            "The numerical Bellman gates pass, but exact path classes are too close "
            "to singleton coverage.  Do not emit exact-path families; prove a coarser "
            "holonomy/cancellation-language membership theorem or add gauge/summary "
            "coordinates first."
        )
    else:
        decision = "reject-refine-state"
        recommendation = (
            "Do not emit this graph as production evidence.  Refine the state key, "
            "try cocycle gauge preconditioning, or split the family before Lean emission."
        )

    return {
        "mode": "bellman-production-gate-audit",
        "input": str(input_path),
        "gates": {
            "max_states": max_states,
            "max_edges": max_edges,
            "max_scaled_bits": max_scaled_bits,
            "max_fraction_bits": max_fraction_bits,
            "max_exact_path_class_ratio": max_exact_path_class_ratio,
        },
        "metrics": {
            "matched": matched,
            "paths": paths,
            "states": states,
            "edges": edges,
            "root_states": root_states,
            "final_states": final_states,
            "path_class_count": path_class_count,
            "exact_path_class_ratio": exact_path_ratio,
            "scale_bit_length": _bit_length(scale),
            "scaled_bit_length": scaled_bits,
            "fraction_bit_length": fraction_bits,
            "proves_observed_nonpositive": proves_observed,
            "bounded_fixed_point": bounded,
            "max_margin_bound": bellman.get("max_margin_bound"),
            "root_bound": bellman.get("root_bound"),
            "max_const": bellman.get("max_const"),
        },
        "checks": checks,
        "decision": decision,
        "recommendation": recommendation,
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    metrics = payload["metrics"]
    lines: list[str] = [
        "# Bellman Production Gate Audit",
        "",
        f"Input: `{payload['input']}`",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Gates",
        "",
        "| Gate | Value |",
        "| --- | ---: |",
    ]
    for key, value in payload["gates"].items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend([
        "",
        "## Metrics",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ])
    for key, value in metrics.items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend([
        "",
        "## Checks",
        "",
        "| Check | Passed | Detail |",
        "| --- | --- | --- |",
    ])
    for check in payload["checks"]:
        passed = "yes" if check["passed"] else "no"
        lines.append(f"| `{check['name']}` | `{passed}` | {check['detail']} |")
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    parser.add_argument("--max-states", type=int, default=10_000)
    parser.add_argument("--max-edges", type=int, default=100_000)
    parser.add_argument("--max-scaled-bits", type=int, default=256)
    parser.add_argument("--max-fraction-bits", type=int, default=256)
    parser.add_argument(
        "--max-exact-path-class-ratio",
        type=float,
        default=0.25,
        help="Warning gate only: exact path classes should not be the final family coordinate.",
    )
    args = parser.parse_args()

    payload = audit(
        args.input,
        max_states=args.max_states,
        max_edges=args.max_edges,
        max_scaled_bits=args.max_scaled_bits,
        max_fraction_bits=args.max_fraction_bits,
        max_exact_path_class_ratio=args.max_exact_path_class_ratio,
    )
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_markdown(payload, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
