#!/usr/bin/env python3
"""Emit a tiny Lean smoke for the graph221 object cocycle quotient.

This generated Lean module is diagnostic, not coverage evidence.  It checks
the local cocycle equations selected by
`profile_graph221_object_cocycle_quotient.py` and exercises the generic
`BellmanLabelStepRun.quotient_of_step_gain_eq` theorem on the three observed
graph221 suffix branches.

The production theorem still has to replace these observed paths with a
semantic proof over `Graph221ZmTmppSplit10MRootMarginObj`.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import json
from pathlib import Path
import sys
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from emit_graph183_cocycle_quotient_smoke import (  # noqa: E402
    fin_cases_def,
    nat_cases_def,
    nested_int_sum,
    parse_int_fraction,
)
from profile_graph221_object_cocycle_quotient import (  # noqa: E402
    graph221_subgraph,
)


DEFAULT_PROFILE = (
    ROOT
    / "scripts/generated/"
    / "nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json"
)
DEFAULT_QUOTIENT = ROOT / "scripts/generated/graph221_object_cocycle_quotient.json"
DEFAULT_OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph221ObjectCocycleQuotientSmoke.lean"
)


BRANCH_NAMES = {
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "tmmm",
        "tmpm",
        "yp",
        "zp",
        "xp",
    ): ("029", -376, -200),
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "tmmm",
        "tmpm",
        "zp",
        "yp",
        "xp",
    ): ("030", -376, -200),
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "yp",
        "tmpm",
        "tmmm",
        "zp",
        "xp",
    ): ("031", -596, -420),
}


def lean_int(value: int) -> str:
    return f"({value} : Int)"


def lean_nat(value: int) -> str:
    return f"({value} : Nat)"


def render_branch(
    suffix: str,
    edge_terms: list[str],
    raw_gain: int,
    bound: int,
) -> list[str]:
    labels_expr = ", ".join(f"edgeLabel {edge}" for edge in edge_terms)
    lines = [
        f"private def branch{suffix}Labels : List Nat := [{labels_expr}]",
        f"def graph221Branch{suffix}RawGain : Int :=",
        "  " + nested_int_sum([f"rawGain {edge}" for edge in edge_terms]),
        "",
    ]
    for pos, edge in enumerate(edge_terms):
        lines.extend(
            [
                f"private theorem branch{suffix}Step{pos} :",
                f"    FullStep (fullSrc {edge}) (edgeLabel {edge})",
                f"      (fullDst {edge}) (rawGain {edge}) :=",
                f"  ⟨{edge}, rfl, rfl, rfl, rfl⟩",
                "",
            ]
        )
    run = f"BellmanLabelStepRun.nil (fullDst {edge_terms[-1]})"
    for pos in reversed(range(len(edge_terms))):
        run = f"BellmanLabelStepRun.cons branch{suffix}Step{pos} ({run})"
    lines.extend(
        [
            f"private theorem branch{suffix}FullRun :",
            "    BellmanLabelStepRun FullStep",
            f"      (fullSrc {edge_terms[0]}) (fullDst {edge_terms[-1]})",
            f"      branch{suffix}Labels graph221Branch{suffix}RawGain := by",
            f"  unfold branch{suffix}Labels graph221Branch{suffix}RawGain",
            f"  exact {run}",
            "",
            f"theorem graph221Branch{suffix}RawGain_contract :",
            f"    graph221Branch{suffix}RawGain = {lean_int(raw_gain)} := by",
            "  decide",
            "",
            f"theorem graph221Branch{suffix}MarginBound_contract :",
            f"    (176 : Int) + graph221Branch{suffix}RawGain = {lean_int(bound)} := by",
            "  decide",
            "",
            f"theorem graph221QuotientBranch{suffix}Smoke :",
            "    exists smallGainValue,",
            "      BellmanLabelStepRun SmallStep",
            f"        (q (fullSrc {edge_terms[0]}))",
            f"        (q (fullDst {edge_terms[-1]}))",
            f"        branch{suffix}Labels smallGainValue /\\",
            f"      graph221Branch{suffix}RawGain =",
            f"        smallGainValue + gauge (fullDst {edge_terms[-1]}) -",
            f"          gauge (fullSrc {edge_terms[0]}) :=",
            "  BellmanLabelStepRun.quotient_of_step_gain_eq",
            f"    graph221QuotientStep branch{suffix}FullRun",
            "",
        ]
    )
    return lines


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--quotient", type=Path, default=DEFAULT_QUOTIENT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    quotient = json.loads(args.quotient.read_text())
    best = quotient["best_consistent"]
    if not best or not best.get("consistent"):
        raise ValueError("graph221 quotient has no consistent best solution")
    if best.get("mode") != "step-stack":
        raise ValueError(f"unexpected graph221 quotient mode: {best.get('mode')}")

    subgraph, classes = graph221_subgraph(profile)
    edge_key_to_idx: dict[tuple[int, int], int] = {}
    for idx, edge in enumerate(subgraph["edges"]):
        label = int(edge["label_indices"][0])
        edge_key_to_idx[(int(edge["source_edge_index"]), label)] = idx

    states = {int(row["index"]): row["key"] for row in subgraph["states"]}
    gauge_rows = best["solution"]["gauge"]
    gauge_by_state = {
        int(row["state"]): parse_int_fraction(row["value"])
        for row in gauge_rows
    }
    quotient_keys = sorted({row["quotient_state"] for row in gauge_rows})
    quotient_id = {key: idx for idx, key in enumerate(quotient_keys)}
    q_by_state = {
        int(row["state"]): quotient_id[row["quotient_state"]]
        for row in gauge_rows
    }
    small_gain_by_key = {
        (row["src"], int(row["label"]), row["dst"]): parse_int_fraction(row["value"])
        for row in best["solution"]["small_gains"]
    }

    full_src: list[int] = []
    full_dst: list[int] = []
    edge_label: list[int] = []
    raw_gain: list[int] = []
    small_gain: list[int] = []
    for edge in subgraph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        label = int(edge["label_indices"][0])
        gain = int(edge["gain_scaled"])
        qsrc_key = next(
            row["quotient_state"] for row in gauge_rows if int(row["state"]) == src
        )
        qdst_key = next(
            row["quotient_state"] for row in gauge_rows if int(row["state"]) == dst
        )
        key = (qsrc_key, label, qdst_key)
        if key not in small_gain_by_key:
            raise ValueError(f"missing small gain for edge {edge}; key={key}")
        sgain = small_gain_by_key[key]
        if gain != sgain + gauge_by_state[dst] - gauge_by_state[src]:
            raise ValueError(f"local equation failed for edge {edge}")
        full_src.append(src)
        full_dst.append(dst)
        edge_label.append(label)
        raw_gain.append(gain)
        small_gain.append(sgain)

    branches: dict[str, dict[str, Any]] = {}
    for cls in classes:
        faces = tuple(cls["faces"])
        if faces not in BRANCH_NAMES:
            raise ValueError(f"unrecognized graph221 branch faces: {faces}")
        suffix, expected_raw, expected_bound = BRANCH_NAMES[faces]
        edge_rows: list[int] = []
        for edge_index, label_index in zip(
            cls["edge_indices"], cls["label_indices"], strict=True
        ):
            edge_rows.append(edge_key_to_idx[(edge_index, label_index)])
        actual_raw = sum(raw_gain[idx] for idx in edge_rows)
        if actual_raw != expected_raw:
            raise ValueError(
                f"branch {suffix} raw gain mismatch: {actual_raw} != {expected_raw}"
            )
        if 176 + actual_raw != expected_bound:
            raise ValueError(f"branch {suffix} margin bound mismatch")
        branches[suffix] = {
            "edge_rows": edge_rows,
            "raw_gain": expected_raw,
            "bound": expected_bound,
        }
    if sorted(branches) != ["029", "030", "031"]:
        raise ValueError(f"missing graph221 branches: {sorted(branches)}")

    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "/-!",
        "Lean smoke for the graph221 object cocycle quotient.",
        "",
        "This file is diagnostic, not generated coverage.  It checks the",
        "`step-stack` quotient solution selected by",
        "`profile_graph221_object_cocycle_quotient.py` and exercises",
        "`BellmanLabelStepRun.quotient_of_step_gain_eq` on the three observed",
        "graph221 suffix branches.  Production still needs semantic",
        "`Graph221ZmTmppSplit10MRootMarginObj` membership.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221ObjectCocycleQuotientSmoke",
        "",
        "open Cuboctahedron",
        "",
        f"private def edgeCount : Nat := {len(subgraph['edges'])}",
        f"private def stateCount : Nat := {len(states)}",
        f"private def quotientStateCount : Nat := {len(quotient_keys)}",
        "",
    ]
    lines.extend(fin_cases_def("fullSrc", len(subgraph["edges"]), full_src, "Nat"))
    lines.extend(fin_cases_def("fullDst", len(subgraph["edges"]), full_dst, "Nat"))
    lines.extend(fin_cases_def("edgeLabel", len(subgraph["edges"]), edge_label, "Nat"))
    lines.extend(fin_cases_def("rawGain", len(subgraph["edges"]), raw_gain, "Int"))
    lines.extend(fin_cases_def("smallGain", len(subgraph["edges"]), small_gain, "Int"))
    lines.extend(nat_cases_def("q", q_by_state, "Nat"))
    lines.extend(nat_cases_def("gauge", gauge_by_state, "Int"))
    lines.extend(
        [
            "private def FullStep (s label t : Nat) (gain : Int) : Prop :=",
            "  exists i : Fin edgeCount,",
            "    fullSrc i = s /\\ edgeLabel i = label /\\",
            "      fullDst i = t /\\ rawGain i = gain",
            "",
            "private def SmallStep (s label t : Nat) (gain : Int) : Prop :=",
            "  exists i : Fin edgeCount,",
            "    q (fullSrc i) = s /\\ edgeLabel i = label /\\",
            "      q (fullDst i) = t /\\ smallGain i = gain",
            "",
            "private theorem localEquation (i : Fin edgeCount) :",
            "    rawGain i = smallGain i + gauge (fullDst i) - gauge (fullSrc i) := by",
            "  fin_cases i <;> decide",
            "",
            "theorem graph221QuotientStep",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : FullStep s label t gain) :",
            "    exists smallGainValue,",
            "      SmallStep (q s) label (q t) smallGainValue /\\",
            "        gain = smallGainValue + gauge t - gauge s := by",
            "  rcases hstep with ⟨i, hs, hlabel, ht, hgain⟩",
            "  subst s",
            "  subst label",
            "  subst t",
            "  subst gain",
            "  refine ⟨smallGain i, ?_, ?_⟩",
            "  · exact ⟨i, rfl, rfl, rfl, rfl⟩",
            "  · exact localEquation i",
            "",
        ]
    )

    for suffix in ["029", "030", "031"]:
        edge_terms = []
        for pos, edge_idx in enumerate(branches[suffix]["edge_rows"]):
            name = f"branch{suffix}Edge{pos}"
            lines.append(
                f"private def {name} : Fin edgeCount := ⟨{edge_idx}, by decide⟩"
            )
            edge_terms.append(name)
        lines.append("")
        lines.extend(
            render_branch(
                suffix,
                edge_terms,
                int(branches[suffix]["raw_gain"]),
                int(branches[suffix]["bound"]),
            )
        )

    lines.extend(
        [
            "theorem graph221LocalEquationsChecked : True := by",
            "  have h : rawGain ⟨0, by decide⟩ =",
            "      smallGain ⟨0, by decide⟩ + gauge (fullDst ⟨0, by decide⟩) -",
            "        gauge (fullSrc ⟨0, by decide⟩) := localEquation ⟨0, by decide⟩",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221ObjectCocycleQuotientSmoke",
            "",
        ]
    )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lines))
    print(args.out.relative_to(ROOT))
    print(
        json.dumps(
            {
                "edges": len(subgraph["edges"]),
                "states": len(states),
                "quotient_states": len(quotient_keys),
                "branches": {
                    key: {
                        "raw_gain": value["raw_gain"],
                        "bound": value["bound"],
                    }
                    for key, value in sorted(branches.items())
                },
            },
            indent=2,
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
