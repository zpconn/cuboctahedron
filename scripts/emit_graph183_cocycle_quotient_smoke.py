#!/usr/bin/env python3
"""Emit a small Lean smoke for the graph183 cocycle quotient.

This is a diagnostic/proof-shape module, not production coverage.  It turns the
exact quotient solution found by `profile_graph183_cocycle_quotients.py` into a
Lean-checked local theorem:

    rawGain = smallGain + gauge(dst) - gauge(src)

for every observed graph183 edge, then applies the generic
`BellmanLabelStepRun.quotient_of_step_gain_eq` theorem to one bounded edge.
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
        raise ValueError(f"expected an integer solution value, got {text}")
    return int(value)


def lean_int(value: int) -> str:
    return f"({value} : Int)"


def lean_nat(value: int) -> str:
    return f"({value} : Nat)"


def fin_cases_def(name: str, edge_count: int, values: list[int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Fin edgeCount -> {codomain}"]
    for idx, value in enumerate(values):
        rendered = lean_int(value) if codomain == "Int" else lean_nat(value)
        lines.append(f"  | \u27e8{idx}, _\u27e9 => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def nat_cases_def(name: str, values: dict[int, int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Nat -> {codomain}"]
    for key in sorted(values):
        value = values[key]
        rendered = lean_int(value) if codomain == "Int" else lean_nat(value)
        lines.append(f"  | {key} => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def load_expanded_edges(profile: dict) -> list[dict]:
    edges = []
    for edge in profile["graph"]["edges"]:
        label_indices = edge.get("label_indices", [])
        if not label_indices:
            raise ValueError(f"edge without label_indices: {edge}")
        for label in label_indices:
            edges.append(
                {
                    "src": int(edge["src"]),
                    "dst": int(edge["dst"]),
                    "label": int(label),
                    "raw_gain": int(edge["gain_scaled"]),
                }
            )
    return edges


def nested_int_sum(terms: list[str]) -> str:
    total = "(0 : Int)"
    for term in reversed(terms):
        total = f"{term} + ({total})"
    return total


def find_graph183_accepted_path_class(profile: dict) -> dict:
    """Find the profile path class matching the graph183 accepted branch.

    The branch is the Lean socket's
    `graph183AcceptedBranchLabels`:

      [xm, ym, tmpm, zm, zp, tppm, tpmm,
       tppp, tmmm, tpmp, yp, tmpp, tmmp, xp]
    """

    label_key_to_index = {
        row["key"]: int(row["index"]) for row in profile["graph"]["labels"]
    }
    accepted_label_keys = [
        "face=xm|pair=x",
        "face=ym|pair=y",
        "face=tmpm|pair=d1m1",
        "face=zm|pair=z",
        "face=zp|pair=z",
        "face=tppm|pair=d11m",
        "face=tpmm|pair=dm11",
        "face=tppp|pair=d111",
        "face=tmmm|pair=d111",
        "face=tpmp|pair=d1m1",
        "face=yp|pair=y",
        "face=tmpp|pair=dm11",
        "face=tmmp|pair=d11m",
        "face=xp|pair=x",
    ]
    accepted_labels = [label_key_to_index[key] for key in accepted_label_keys]
    matches = [
        cls
        for cls in profile["graph"]["path_classes"]
        if cls["label_indices"] == accepted_labels
    ]
    if len(matches) != 1:
        raise ValueError(
            f"expected one graph183 accepted branch path class, found {len(matches)}"
        )
    match = matches[0]
    if int(match["margin_scaled"]) != -172:
        raise ValueError(
            f"unexpected accepted branch margin: {match['margin_scaled']}"
        )
    return match


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json",
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
        / "BellmanTopPairingGraph183CocycleQuotientSmoke.lean",
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
    edge_count = len(edges)
    state_count = int(profile["graph"]["state_count"])
    accepted_path_class = find_graph183_accepted_path_class(profile)
    accepted_edge_indices = [int(idx) for idx in accepted_path_class["edge_indices"]]
    accepted_label_indices = [int(idx) for idx in accepted_path_class["label_indices"]]
    if len(accepted_edge_indices) != 14:
        raise ValueError("expected a 14-edge graph183 accepted branch")
    if sum(edges[idx]["raw_gain"] for idx in accepted_edge_indices) != -348:
        raise ValueError("accepted branch raw gain should be 194 + -542 = -348")
    for edge_idx, label_idx in zip(accepted_edge_indices, accepted_label_indices, strict=True):
        if edges[edge_idx]["label"] != label_idx:
            raise ValueError("accepted branch edge/label mismatch")

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

    full_src = [edge["src"] for edge in edges]
    full_dst = [edge["dst"] for edge in edges]
    edge_label = [edge["label"] for edge in edges]
    raw_gain = [edge["raw_gain"] for edge in edges]
    small_gain = []
    for edge in edges:
        src_key = profile["graph"]["states"][edge["src"]]["key"]
        dst_key = profile["graph"]["states"][edge["dst"]]["key"]
        qsrc = q_by_state[edge["src"]]
        qdst = q_by_state[edge["dst"]]
        # Verify the key shape expected by the quotient file.  The quotient
        # profile stores keys as "step=<n>|par=<bits>".
        qsrc_key = quotient_keys[qsrc]
        qdst_key = quotient_keys[qdst]
        key = (qsrc_key, edge["label"], qdst_key)
        if key not in small_gain_by_key:
            raise ValueError(
                f"missing small gain for edge {edge}; src={src_key}; dst={dst_key}; key={key}"
            )
        small_gain.append(small_gain_by_key[key])

    for idx, edge in enumerate(edges):
        lhs = edge["raw_gain"]
        rhs = small_gain[idx] + gauges[edge["dst"]] - gauges[edge["src"]]
        if lhs != rhs:
            raise ValueError(f"local equation failed at edge {idx}: {lhs} != {rhs}")

    lines: list[str] = []
    lines.extend(
        [
            "import Cuboctahedron.Search.BellmanPotential",
            "",
            "/-!",
            "Lean smoke for the graph183 cocycle quotient.",
            "",
            "This file is diagnostic, not generated coverage.  It checks the",
            "`step-par` quotient solution for the graph183 margin profile and",
            "exercises `BellmanLabelStepRun.quotient_of_step_gain_eq` on one",
            "bounded edge.  Production should replace selected-prefix membership",
            "with a semantic closed-language-to-evaluator theorem.",
            "-/",
            "",
            "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientSmoke",
            "",
            "open Cuboctahedron",
            "",
            f"private def edgeCount : Nat := {edge_count}",
            f"private def stateCount : Nat := {state_count}",
            f"private def quotientStateCount : Nat := {len(quotient_keys)}",
            "private def acceptedEdgeCount : Nat := 14",
            "",
        ]
    )
    lines.extend(fin_cases_def("fullSrc", edge_count, full_src, "Nat"))
    lines.extend(fin_cases_def("fullDst", edge_count, full_dst, "Nat"))
    lines.extend(fin_cases_def("edgeLabel", edge_count, edge_label, "Nat"))
    lines.extend(fin_cases_def("rawGain", edge_count, raw_gain, "Int"))
    lines.extend(fin_cases_def("smallGain", edge_count, small_gain, "Int"))
    lines.extend(nat_cases_def("q", q_by_state, "Nat"))
    lines.extend(nat_cases_def("gauge", gauges, "Int"))

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
            "theorem graph183QuotientStep",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : FullStep s label t gain) :",
            "    exists smallGainValue,",
            "      SmallStep (q s) label (q t) smallGainValue /\\",
            "        gain = smallGainValue + gauge t - gauge s := by",
            "  rcases hstep with \u27e8i, hs, hlabel, ht, hgain\u27e9",
            "  subst s",
            "  subst label",
            "  subst t",
            "  subst gain",
            "  refine \u27e8smallGain i, ?_, ?_\u27e9",
            "  · exact \u27e8i, rfl, rfl, rfl, rfl\u27e9",
            "  · exact localEquation i",
            "",
            "private def firstEdge : Fin edgeCount := \u27e80, by decide\u27e9",
            "",
            "private theorem firstFullRun :",
            "    BellmanLabelStepRun FullStep",
            "      (fullSrc firstEdge) (fullDst firstEdge)",
            "      [edgeLabel firstEdge] (rawGain firstEdge) := by",
            "  have hstep :",
            "      FullStep (fullSrc firstEdge) (edgeLabel firstEdge)",
            "        (fullDst firstEdge) (rawGain firstEdge) :=",
            "    \u27e8firstEdge, rfl, rfl, rfl, rfl\u27e9",
            "  exact BellmanLabelStepRun.cons hstep",
            "    (BellmanLabelStepRun.nil (fullDst firstEdge))",
            "",
            "theorem graph183QuotientOneStepSmoke :",
            "    exists smallGainValue,",
            "      BellmanLabelStepRun SmallStep",
            "        (q (fullSrc firstEdge)) (q (fullDst firstEdge))",
            "        [edgeLabel firstEdge] smallGainValue /\\",
            "      rawGain firstEdge =",
            "        smallGainValue + gauge (fullDst firstEdge) - gauge (fullSrc firstEdge) :=",
            "  BellmanLabelStepRun.quotient_of_step_gain_eq",
            "    graph183QuotientStep firstFullRun",
            "",
            "/-- The bounded graph183 accepted branch from the diagnostic profile. -/",
        ]
    )

    for pos, edge_idx in enumerate(accepted_edge_indices):
        lines.append(
            f"private def acceptedEdge{pos} : Fin edgeCount := \u27e8{edge_idx}, by decide\u27e9"
        )
    lines.append("")

    accepted_edge_terms = [f"acceptedEdge{idx}" for idx in range(len(accepted_edge_indices))]
    labels_expr = ", ".join(f"edgeLabel {edge}" for edge in accepted_edge_terms)
    lines.extend(
        [
            f"private def acceptedBranchLabels : List Nat := [{labels_expr}]",
            "def graph183AcceptedBranchRawGain : Int :=",
            "  " + nested_int_sum([f"rawGain {edge}" for edge in accepted_edge_terms]),
            "",
        ]
    )

    for pos, edge in enumerate(accepted_edge_terms):
        lines.extend(
            [
                f"private theorem acceptedStep{pos} :",
                f"    FullStep (fullSrc {edge}) (edgeLabel {edge})",
                f"      (fullDst {edge}) (rawGain {edge}) :=",
                f"  \u27e8{edge}, rfl, rfl, rfl, rfl\u27e9",
                "",
            ]
        )

    run = f"BellmanLabelStepRun.nil (fullDst {accepted_edge_terms[-1]})"
    for pos in reversed(range(len(accepted_edge_terms))):
        run = f"BellmanLabelStepRun.cons acceptedStep{pos} ({run})"
    lines.extend(
        [
            "private theorem acceptedBranchFullRun :",
            "    BellmanLabelStepRun FullStep",
            f"      (fullSrc {accepted_edge_terms[0]}) (fullDst {accepted_edge_terms[-1]})",
            "      acceptedBranchLabels graph183AcceptedBranchRawGain := by",
            "  unfold acceptedBranchLabels graph183AcceptedBranchRawGain",
            f"  exact {run}",
            "",
            "theorem graph183AcceptedBranchRawGain_contract :",
            "    graph183AcceptedBranchRawGain = ((194 : Int) + (-542 : Int)) := by",
            "  decide",
            "",
            "theorem graph183QuotientAcceptedBranchSmoke :",
            "    exists smallGainValue,",
            "      BellmanLabelStepRun SmallStep",
            f"        (q (fullSrc {accepted_edge_terms[0]}))",
            f"        (q (fullDst {accepted_edge_terms[-1]}))",
            "        acceptedBranchLabels smallGainValue /\\",
            "      graph183AcceptedBranchRawGain =",
            f"        smallGainValue + gauge (fullDst {accepted_edge_terms[-1]}) -",
            f"          gauge (fullSrc {accepted_edge_terms[0]}) :=",
            "  BellmanLabelStepRun.quotient_of_step_gain_eq",
            "    graph183QuotientStep acceptedBranchFullRun",
            "",
            "theorem graph183LocalEquationsChecked : True := by",
            "  have h := localEquation firstEdge",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientSmoke",
            "",
        ]
    )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lines))
    print(f"wrote {args.out.relative_to(ROOT)}")
    print(f"edges={edge_count} states={state_count} quotient_states={len(quotient_keys)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
