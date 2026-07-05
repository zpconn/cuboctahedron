#!/usr/bin/env python3
"""Emit the tiny graph183 accepted-branch quotient module.

This is the production-sized sibling of
`emit_graph183_cocycle_quotient_smoke.py`.  It reads the exact graph183 margin
profile and quotient solution, extracts only the 14-edge accepted branch, and
emits the small Lean module consumed by the graph183 quotient-margin socket.

The generated Lean checks only:

* each accepted-branch raw gain equals `gauge(dst) - gauge(src)`;
* the accepted-branch raw-gain sum is `194 + -542`.

It deliberately does not emit the full 229-edge quotient table.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from emit_graph183_cocycle_quotient_smoke import (
    ROOT,
    find_graph183_accepted_path_class,
    lean_int,
    load_expanded_edges,
    parse_int_fraction,
)


def fin_cases_def(name: str, count_name: str, values: list[int]) -> list[str]:
    lines = [f"def {name} : Fin {count_name} -> Int"]
    for idx, value in enumerate(values):
        lines.append(f"  | \u27e8{idx}, _\u27e9 => {lean_int(value)}")
    lines.append(f"  | _ => {lean_int(0)}")
    lines.append("")
    return lines


def fin_term(idx: int) -> str:
    return f"\u27e8{idx}, by decide\u27e9"


def nested_int_sum(terms: list[str]) -> str:
    total = "(0 : Int)"
    for term in reversed(terms):
        total = f"{term} + ({total})"
    return total


def nested_int_sum_lines(terms: list[str], indent: str = "  ") -> list[str]:
    if not terms:
        return [indent + "(0 : Int)"]
    lines = [indent + terms[0] + " +"]
    for term in terms[1:-1]:
        lines.append(indent + "  (" + term + " +")
    if len(terms) > 1:
        closing = ")" * (len(terms) - 1)
        lines.append(indent + "  (" + terms[-1] + " + (0 : Int)" + closing)
    return lines


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT
        / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json",
    )
    parser.add_argument(
        "--quotient",
        type=Path,
        default=ROOT / "scripts/generated/graph183_cocycle_quotients_0_1M.json",
    )
    parser.add_argument(
        "--out",
        type=Path,
        default=ROOT
        / "Cuboctahedron/Generated/NonIdentity/Residual/"
        / "BellmanTopPairingGraph183AcceptedBranchQuotient.lean",
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    quotient = json.loads(args.quotient.read_text())
    best = quotient["best_consistent"]
    if not best.get("consistent"):
        raise ValueError("best quotient is not consistent")
    if best.get("mode") != "step-par":
        raise ValueError(f"unexpected quotient mode: {best.get('mode')}")

    edges = load_expanded_edges(profile)
    accepted_path_class = find_graph183_accepted_path_class(profile)
    accepted_edge_indices = [int(idx) for idx in accepted_path_class["edge_indices"]]
    accepted_label_indices = [
        int(idx) for idx in accepted_path_class["label_indices"]
    ]
    if len(accepted_edge_indices) != 14:
        raise ValueError("expected a 14-edge graph183 accepted branch")

    gauges = {
        int(row["state"]): parse_int_fraction(row["value"])
        for row in best["solution"]["gauge"]
    }
    quotient_keys = sorted({row["quotient_state"] for row in best["solution"]["gauge"]})
    quotient_id = {key: idx for idx, key in enumerate(quotient_keys)}
    q_by_state = {
        int(row["state"]): quotient_id[row["quotient_state"]]
        for row in best["solution"]["gauge"]
    }
    small_gain_by_key = {
        (row["src"], int(row["label"]), row["dst"]): parse_int_fraction(row["value"])
        for row in best["solution"]["small_gains"]
    }

    raw_gain: list[int] = []
    gauge_src: list[int] = []
    gauge_dst: list[int] = []
    for edge_idx, label_idx in zip(
        accepted_edge_indices, accepted_label_indices, strict=True
    ):
        edge = edges[edge_idx]
        if edge["label"] != label_idx:
            raise ValueError("accepted branch edge/label mismatch")
        src = int(edge["src"])
        dst = int(edge["dst"])
        raw = int(edge["raw_gain"])
        src_key = profile["graph"]["states"][src]["key"]
        dst_key = profile["graph"]["states"][dst]["key"]
        qsrc_key = quotient_keys[q_by_state[src]]
        qdst_key = quotient_keys[q_by_state[dst]]
        small_key = (qsrc_key, int(edge["label"]), qdst_key)
        small = small_gain_by_key.get(small_key)
        if small is None:
            raise ValueError(
                f"missing small gain for edge {edge_idx}: "
                f"src={src_key}; dst={dst_key}; key={small_key}"
            )
        if small != 0:
            raise ValueError(
                f"accepted branch edge {edge_idx} has nonzero small gain {small}"
            )
        if raw != gauges[dst] - gauges[src]:
            raise ValueError(
                f"local equation failed at accepted edge {edge_idx}: "
                f"{raw} != {gauges[dst]} - {gauges[src]}"
            )
        raw_gain.append(raw)
        gauge_src.append(gauges[src])
        gauge_dst.append(gauges[dst])

    if sum(raw_gain) != -348:
        raise ValueError("accepted branch raw gain should be 194 + -542 = -348")

    raw_terms = [
        f"acceptedRawGain {fin_term(idx)}" for idx in range(len(raw_gain))
    ]
    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "/-!",
        "Tiny graph183 accepted-branch quotient facts.",
        "",
        "This generated module replaces the quotient-margin socket's dependency",
        "on the diagnostic 229-edge quotient smoke.  It checks only the 14",
        "accepted-branch edge gains used by the graph183 margin carrier.  It is",
        "not coverage evidence by itself.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient",
        "",
        "open Cuboctahedron",
        "",
        "def acceptedEdgeCount : Nat := 14",
        "",
    ]
    lines.extend(fin_cases_def("acceptedRawGain", "acceptedEdgeCount", raw_gain))
    lines.extend(fin_cases_def("acceptedGaugeSrc", "acceptedEdgeCount", gauge_src))
    lines.extend(fin_cases_def("acceptedGaugeDst", "acceptedEdgeCount", gauge_dst))
    lines.extend(
        [
            "theorem acceptedLocalEquation (i : Fin acceptedEdgeCount) :",
            "    acceptedRawGain i = acceptedGaugeDst i - acceptedGaugeSrc i := by",
            "  fin_cases i <;> decide",
            "",
            "def graph183AcceptedBranchRawGain : Int :=",
            *nested_int_sum_lines(raw_terms),
            "",
            "theorem graph183AcceptedBranchRawGain_contract :",
            "    graph183AcceptedBranchRawGain = ((194 : Int) + (-542 : Int)) := by",
            "  decide",
            "",
            "theorem graph183AcceptedBranchLocalEquationsChecked : True := by",
            f"  have h := acceptedLocalEquation {fin_term(0)}",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient",
            "",
        ]
    )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lines))
    print(f"wrote {args.out.resolve().relative_to(ROOT)}")
    print(f"accepted_edges={len(accepted_edge_indices)} raw_gain={sum(raw_gain)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
