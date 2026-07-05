#!/usr/bin/env python3
"""Emit a bounded Lean smoke for the graph147 cocycle quotient.

This is diagnostic/proof-shape evidence, not production coverage.  It checks
the cocycle quotient equation on the two graph147 path classes observed in the
10M top-pairing profile:

  [xm, ym, yp, zm, ...]
  [xm, ym, zm, yp, ...]

The full graph147 producer still needs a semantic closed-language margin
theorem.  This smoke only verifies that the small `step-stack` quotient found
by the exact profiler is compatible with representative graph147 branches.
"""

from __future__ import annotations

import argparse
import json
from fractions import Fraction
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def parse_int_fraction(text: str) -> int:
    value = Fraction(text)
    if value.denominator != 1:
        raise ValueError(f"expected integer solution value, got {text}")
    return int(value)


def lean_int(value: int) -> str:
    return f"({value} : Int)"


def lean_nat(value: int) -> str:
    return f"({value} : Nat)"


def nested_int_sum(terms: list[str]) -> str:
    total = "(0 : Int)"
    for term in reversed(terms):
        total = f"{term} + ({total})"
    return total


def cases_def(name: str, values: list[int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Fin edgeCount -> {codomain}"]
    for idx, value in enumerate(values):
        rendered = lean_int(value) if codomain == "Int" else lean_nat(value)
        lines.append(f"  | ⟨{idx}, _⟩ => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def nat_cases_def(name: str, values: dict[int, int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Nat -> {codomain}"]
    for key in sorted(values):
        rendered = lean_int(values[key]) if codomain == "Int" else lean_nat(values[key])
        lines.append(f"  | {key} => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def quotient_ids(best: dict) -> tuple[dict[int, int], dict[int, int], dict[tuple[str, int, str], int]]:
    quotient_keys = sorted({row["quotient_state"] for row in best["solution"]["gauge"]})
    quotient_id = {key: idx for idx, key in enumerate(quotient_keys)}
    q_by_state = {
        int(row["state"]): quotient_id[row["quotient_state"]]
        for row in best["solution"]["gauge"]
    }
    gauge = {
        int(row["state"]): parse_int_fraction(row["value"])
        for row in best["solution"]["gauge"]
    }
    small_gain_by_key = {
        (row["src"], int(row["label"]), row["dst"]): parse_int_fraction(row["value"])
        for row in best["solution"]["small_gains"]
    }
    return q_by_state, gauge, small_gain_by_key


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
        "--out",
        type=Path,
        default=ROOT
        / "Cuboctahedron/Generated/NonIdentity/Residual/"
        / "BellmanTopPairingGraph147CocycleQuotientBranchSmoke.lean",
    )
    parser.add_argument("--yp-zm-class", type=int, default=0)
    parser.add_argument("--zm-yp-class", type=int, default=11)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    quotient = json.loads(args.quotient.read_text())
    best = quotient["best_consistent"]
    if not best.get("consistent"):
        raise ValueError("best graph147 quotient is not consistent")
    if best.get("mode") != "step-stack":
        raise ValueError(f"unexpected quotient mode: {best.get('mode')}")

    graph = profile["graph"]
    labels = {int(row["index"]): row["key"] for row in graph["labels"]}
    q_by_state, gauge, small_gain_by_key = quotient_ids(best)

    branch_specs = [
        ("ypZm", int(args.yp_zm_class), [8, 10, 11, 12]),
        ("zmYp", int(args.zm_yp_class), [8, 10, 12, 11]),
    ]
    selected_edges: list[dict] = []
    branch_ranges: dict[str, list[int]] = {}
    expected_total_gain = -552
    expected_const_plus_gain = -376
    const_scaled = int(graph["const_scaled"])
    if const_scaled != 176:
        raise ValueError(f"unexpected graph const: {const_scaled}")

    for branch_name, class_index, expected_prefix in branch_specs:
        cls = graph["path_classes"][class_index]
        if cls["label_indices"][:4] != expected_prefix:
            raise ValueError(
                f"class {class_index} has wrong prefix: {cls['label_indices'][:4]}"
            )
        total_gain = sum(int(graph["edges"][idx]["gain_scaled"]) for idx in cls["edge_indices"])
        if total_gain != expected_total_gain:
            raise ValueError(f"class {class_index} total gain {total_gain}")
        if const_scaled + total_gain != expected_const_plus_gain:
            raise ValueError(f"class {class_index} margin bound mismatch")
        start = len(selected_edges)
        for edge_idx, label_idx in zip(cls["edge_indices"], cls["label_indices"], strict=True):
            edge = graph["edges"][edge_idx]
            if edge.get("label_indices") != [label_idx]:
                raise ValueError("edge label mismatch")
            src = int(edge["src"])
            dst = int(edge["dst"])
            src_q = q_by_state[src]
            dst_q = q_by_state[dst]
            qsrc_key = best["solution"]["gauge"][0]["quotient_state"]
            # Use the concrete quotient-state strings from q_by_state by
            # re-reading the solution rows; this avoids relying on ids in JSON.
            src_q_key = next(
                row["quotient_state"]
                for row in best["solution"]["gauge"]
                if int(row["state"]) == src
            )
            dst_q_key = next(
                row["quotient_state"]
                for row in best["solution"]["gauge"]
                if int(row["state"]) == dst
            )
            del qsrc_key
            key = (src_q_key, int(label_idx), dst_q_key)
            if key not in small_gain_by_key:
                raise ValueError(f"missing small gain key {key}")
            small_gain = small_gain_by_key[key]
            raw_gain = int(edge["gain_scaled"])
            lhs = raw_gain
            rhs = small_gain + gauge[dst] - gauge[src]
            if lhs != rhs:
                raise ValueError(f"local quotient equation failed: {lhs} != {rhs}")
            selected_edges.append(
                {
                    "full_src": src,
                    "full_dst": dst,
                    "label": int(label_idx),
                    "raw_gain": raw_gain,
                    "small_gain": small_gain,
                    "edge_idx": int(edge_idx),
                    "label_key": labels[int(label_idx)],
                    "branch": branch_name,
                }
            )
        branch_ranges[branch_name] = list(range(start, len(selected_edges)))

    full_src = [row["full_src"] for row in selected_edges]
    full_dst = [row["full_dst"] for row in selected_edges]
    edge_label = [row["label"] for row in selected_edges]
    raw_gain = [row["raw_gain"] for row in selected_edges]
    small_gain = [row["small_gain"] for row in selected_edges]
    used_states = sorted(set(full_src + full_dst))
    q_used = {state: q_by_state[state] for state in used_states}
    gauge_used = {state: gauge[state] for state in used_states}

    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "/-!",
        "Bounded Lean smoke for the graph147 cocycle quotient.",
        "",
        "This file is diagnostic, not generated coverage.  It checks the",
        "`step-stack` cocycle quotient on the two representative graph147",
        "branches observed in the 10M top-pairing profile.  The production",
        "proof still needs a semantic `StrengthenedGraph147RootMarginBundle`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147CocycleQuotientBranchSmoke",
        "",
        "open Cuboctahedron",
        "",
        f"private def edgeCount : Nat := {len(selected_edges)}",
        "",
    ]
    lines.extend(cases_def("fullSrc", full_src, "Nat"))
    lines.extend(cases_def("fullDst", full_dst, "Nat"))
    lines.extend(cases_def("edgeLabel", edge_label, "Nat"))
    lines.extend(cases_def("rawGain", raw_gain, "Int"))
    lines.extend(cases_def("smallGain", small_gain, "Int"))
    lines.extend(nat_cases_def("q", q_used, "Nat"))
    lines.extend(nat_cases_def("gauge", gauge_used, "Int"))
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
            "theorem graph147QuotientStep",
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

    def emit_branch(branch_name: str, theorem_prefix: str) -> None:
        indices = branch_ranges[branch_name]
        for pos, idx in enumerate(indices):
            lines.append(
                f"private def {theorem_prefix}Edge{pos} : Fin edgeCount := ⟨{idx}, by decide⟩"
            )
        lines.append("")
        edge_terms = [f"{theorem_prefix}Edge{idx}" for idx in range(len(indices))]
        labels_expr = ", ".join(f"edgeLabel {edge}" for edge in edge_terms)
        raw_expr = nested_int_sum([f"rawGain {edge}" for edge in edge_terms])
        lines.extend(
            [
                f"private def {theorem_prefix}BranchLabels : List Nat := [{labels_expr}]",
                f"def graph147{theorem_prefix}BranchRawGain : Int :=",
                f"  {raw_expr}",
                "",
            ]
        )
        for pos, edge in enumerate(edge_terms):
            lines.extend(
                [
                    f"private theorem {theorem_prefix}Step{pos} :",
                    f"    FullStep (fullSrc {edge}) (edgeLabel {edge})",
                    f"      (fullDst {edge}) (rawGain {edge}) :=",
                    f"  ⟨{edge}, rfl, rfl, rfl, rfl⟩",
                    "",
                ]
            )
        run = f"BellmanLabelStepRun.nil (fullDst {edge_terms[-1]})"
        for pos in reversed(range(len(edge_terms))):
            run = f"BellmanLabelStepRun.cons {theorem_prefix}Step{pos} ({run})"
        lines.extend(
            [
                f"private theorem {theorem_prefix}BranchFullRun :",
                "    BellmanLabelStepRun FullStep",
                f"      (fullSrc {edge_terms[0]}) (fullDst {edge_terms[-1]})",
                f"      {theorem_prefix}BranchLabels graph147{theorem_prefix}BranchRawGain := by",
                f"  unfold {theorem_prefix}BranchLabels graph147{theorem_prefix}BranchRawGain",
                f"  exact {run}",
                "",
                f"theorem graph147{theorem_prefix}BranchRawGain_contract :",
                f"    graph147{theorem_prefix}BranchRawGain = ({expected_total_gain} : Int) := by",
                "  decide",
                "",
                f"theorem graph147{theorem_prefix}BranchMargin_contract :",
                f"    (176 : Int) + graph147{theorem_prefix}BranchRawGain =",
                f"      ({expected_const_plus_gain} : Int) := by",
                "  decide",
                "",
                f"theorem graph147{theorem_prefix}QuotientBranchSmoke :",
                "    exists smallGainValue,",
                "      BellmanLabelStepRun SmallStep",
                f"        (q (fullSrc {edge_terms[0]}))",
                f"        (q (fullDst {edge_terms[-1]}))",
                f"        {theorem_prefix}BranchLabels smallGainValue /\\",
                f"      graph147{theorem_prefix}BranchRawGain =",
                f"        smallGainValue + gauge (fullDst {edge_terms[-1]}) -",
                f"          gauge (fullSrc {edge_terms[0]}) :=",
                "  BellmanLabelStepRun.quotient_of_step_gain_eq",
                f"    graph147QuotientStep {theorem_prefix}BranchFullRun",
                "",
            ]
        )

    emit_branch("ypZm", "YpZm")
    emit_branch("zmYp", "ZmYp")
    lines.extend(
        [
            "theorem graph147CocycleQuotientBranchSmoke_builds : True := by",
            "  have h0 := graph147YpZmBranchMargin_contract",
            "  have h1 := graph147ZmYpBranchMargin_contract",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147CocycleQuotientBranchSmoke",
            "",
        ]
    )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lines))
    print(f"wrote {args.out.relative_to(ROOT)}")
    print(
        f"branches=2 edges={len(selected_edges)} quotient_mode={best['mode']} "
        f"max_bit_length={best['solution']['max_bit_length']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
