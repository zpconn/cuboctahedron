#!/usr/bin/env python3
"""Emit direct mapped layer-4 graph-finish composition facts.

This is the lightweight replacement for the old graph-exact finish wrapper
path.  It composes:

* the first-four graph prefix steps;
* lightweight class-NNN graph suffix producers;
* lightweight class-NNN suffix graph-eval facts;
* a class-local margin-bound predicate.

The output targets `Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily`
directly and does not import the old closed/final-margin provider modules.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path

from emit_top_pairing_depth11_graph_exact_finish_smoke import PREFIX_HELPERS


DEFAULT_CLASSES_INPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphSuffixClasses.lean"
)

CLASS_RE = re.compile(r"^def Class(?P<class>\d{3})Depth11Suffix\b")
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11Layer4MappedFinish.lean"
)


BRANCHES = [
    {
        "name": "tmpm_tppm",
        "face0": "tmpm",
        "face1": "tppm",
        "frontier": "Or.inl ⟨rfl, Or.inl rfl⟩",
        "graph1": 618,
        "gain1": -124,
        "graph2": 635,
        "gain2": 96,
        "total_prefix_gain": 2,
        "prefix_helper": "graphEval_prefix_tmpm_tppm",
    },
    {
        "name": "tmpm_zm",
        "face0": "tmpm",
        "face1": "zm",
        "frontier": "Or.inl ⟨rfl, Or.inr rfl⟩",
        "graph1": 618,
        "gain1": -124,
        "graph2": 631,
        "gain2": 114,
        "total_prefix_gain": 20,
        "prefix_helper": "graphEval_prefix_tmpm_zm",
    },
    {
        "name": "yp_tmmm",
        "face0": "yp",
        "face1": "tmmm",
        "frontier": "Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩)",
        "graph1": 615,
        "gain1": -73,
        "graph2": 627,
        "gain2": -124,
        "total_prefix_gain": -167,
        "prefix_helper": "graphEval_prefix_yp_tmmm",
    },
    {
        "name": "yp_zm",
        "face0": "yp",
        "face1": "zm",
        "frontier": "Or.inr (Or.inl ⟨rfl, Or.inr rfl⟩)",
        "graph1": 615,
        "gain1": -73,
        "graph2": 625,
        "gain2": -10,
        "total_prefix_gain": -53,
        "prefix_helper": "graphEval_prefix_yp_zm",
    },
    {
        "name": "zm_tmpp",
        "face0": "zm",
        "face1": "tmpp",
        "frontier": "Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩)",
        "graph1": 616,
        "gain1": -10,
        "graph2": 632,
        "gain2": -124,
        "total_prefix_gain": -104,
        "prefix_helper": "graphEval_prefix_zm_tmpp",
    },
    {
        "name": "zm_yp",
        "face0": "zm",
        "face1": "yp",
        "frontier": "Or.inr (Or.inr ⟨rfl, Or.inr (Or.inl rfl)⟩)",
        "graph1": 616,
        "gain1": -10,
        "graph2": 625,
        "gain2": -73,
        "total_prefix_gain": -53,
        "prefix_helper": "graphEval_prefix_zm_yp",
    },
    {
        "name": "zm_zp",
        "face0": "zm",
        "face1": "zp",
        "frontier": "Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩)",
        "graph1": 616,
        "gain1": -10,
        "graph2": 628,
        "gain2": -10,
        "total_prefix_gain": 10,
        "prefix_helper": "graphEval_prefix_zm_zp",
    },
]


def int_lit(value: int) -> str:
    return f"({value} : Int)"


def parse_classes(path: Path) -> list[str]:
    classes: list[str] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if match := CLASS_RE.match(line):
            classes.append(match.group("class"))
    if not classes:
        raise ValueError(f"no ClassNNNDepth11Suffix definitions found in {path}")
    return sorted(set(classes), key=int)


def emit_margin_bound_def(class_id: str) -> str:
    return f"""
def Class{class_id}ExactGraphFinishMarginBound
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∀ finalGraph totalGain,
    evalLabelStepFn graphSmokeNext rootState
      ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finalGraph, totalGain) ->
      scaledMargin rank <= (176 : Int) + totalGain
"""


def emit_class_theorem(class_id: str) -> str:
    branch_cases = []
    for branch in BRANCHES:
        face0 = branch["face0"]
        face1 = branch["face1"]
        graph1 = branch["graph1"]
        graph2 = branch["graph2"]
        gain1 = branch["gain1"]
        gain2 = branch["gain2"]
        total_prefix_gain = branch["total_prefix_gain"]
        total_gain = f"{int_lit(total_prefix_gain)} + suffixGain"
        branch_cases.append(
            f"""
    · subst face₁
      have hsuffixClass :
        Class{class_id}Depth11Suffix ({graph2} : State) rest :=
        hclass Face.{face0} Face.{face1} rest hlabels
          ({branch["frontier"]})
          ({graph1} : State) {int_lit(gain1)}
          ({graph2} : State) {int_lit(gain2)}
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
        evalLabelStepFn graphSmokeNext rootState
          ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
            some (finalGraph, {total_gain}) := by
        rw [hlabels]
        exact {branch["prefix_helper"]} hsuffixEval
      exact ⟨finalGraph, {total_gain},
        {{ closed := hclosed
          eval_eq := hfull
          final_nonneg :=
            finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
          margin_bound := hmargin finalGraph ({total_gain}) hfull }}⟩
""".rstrip()
        )
    # The seven semantic branches are encoded as a nested disjunction.  A direct
    # cases proof is more stable than a large all-faces simp.
    return (
        f"""
theorem mappedLayer4Result_of_class{class_id}
    {{scaledMargin : Fin numPairWords -> Int}}
    {{rank : Fin numPairWords}}
    {{face₀ face₁ : Face}} {{rest : List Face}}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class{class_id}GraphSuffixProducer rank)
    (hmargin :
      Class{class_id}ExactGraphFinishMarginBound scaledMargin rank)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁) :
    Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank := by
  have hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rcases hfrontier with htmpm | hyp | hzm
  · rcases htmpm with ⟨rfl, htppm | hface₁⟩
{branch_cases[0]}
{branch_cases[1]}
  · rcases hyp with ⟨rfl, htmmm | hface₁⟩
{branch_cases[2]}
{branch_cases[3]}
  · rcases hzm with ⟨rfl, htmpp | hyp | hzp⟩
{branch_cases[4]}
{branch_cases[5]}
{branch_cases[6]}
"""
        .strip()
    )


def emit_case_inductive(classes: list[str]) -> str:
    constructors = []
    for class_id in classes:
        constructors.append(
            f"""  | class{class_id}
      (hclass : Class{class_id}GraphSuffixProducer rank)
      (hmargin : Class{class_id}ExactGraphFinishMarginBound scaledMargin rank)"""
        )
    return (
        """
inductive Depth11Layer4MappedClassCase
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop
"""
        + "\n".join(constructors)
    )


def emit_case_adapter(classes: list[str]) -> str:
    cases = []
    for class_id in classes:
        cases.append(
            f"""  | class{class_id} hclass hmargin =>
      exact mappedLayer4Result_of_class{class_id}
        hclosed hclass hmargin hprefix hfrontier"""
        )
    return (
        """
theorem mappedLayer4Result_of_mappedClassCase
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hcase : Depth11Layer4MappedClassCase scaledMargin rank)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁) :
    Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank := by
  cases hcase with
"""
        + "\n".join(cases)
    )


def emit_portfolio_structure() -> str:
    fields = []
    for branch in BRANCHES:
        fields.append(
            f"""  {branch["name"]} :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.{branch["face0"]} Face.{branch["face1"]} rest ->
          Depth11Layer4MappedClassCase scaledMargin rank"""
        )
    return (
        """
structure Depth11Layer4SevenBranchMappedPortfolioAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
"""
        + "\n".join(fields)
    )


def emit_portfolio_adapter() -> str:
    fields = []
    for branch in BRANCHES:
        fields.append(
            f"""  {branch["name"]} := by
    intro rank hclosed rest hprefix
    exact mappedLayer4Result_of_mappedClassCase hclosed
      (hfamily.{branch["name"]} rank hclosed rest hprefix)
      hprefix ({branch["frontier"]})"""
        )
    return (
        """
theorem mappedSevenBranchClassifier_of_mappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin) :
    Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily scaledMargin where
"""
        + "\n".join(fields)
        + """

theorem split10MGraphExactEvalAllFamily_of_layer4MappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin :=
  split10MGraphExactEvalAllFamily_of_mappedLayer4SevenBranchClassifier
    (mappedSevenBranchClassifier_of_mappedPortfolio hfamily)

theorem closedToEvalGate_of_layer4MappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin) :
    Split10MClosedToEvalGate scaledMargin :=
  closedToEvalGate_of_split10MGraphExactEvalAllFamily
    (split10MGraphExactEvalAllFamily_of_layer4MappedPortfolio hfamily)

theorem scaledMargin_nonpos_of_layer4MappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_mappedLayer4SevenBranchClassifier
    (mappedSevenBranchClassifier_of_mappedPortfolio hfamily)
    hclosed
"""
    )


def emit_module(classes: list[str]) -> str:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixProducers",
        "",
        "/-!",
        "Direct mapped layer-4 graph-finish composition facts.",
        "",
        "This module is generated by",
        "`scripts/emit_top_pairing_depth11_layer4_mapped_finish.py`.  It uses",
        "the lightweight suffix class/producer split and targets",
        "`Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily` directly.  It",
        "does not import the old graph-exact finish wrapper, closed final-margin",
        "socket, semantic state DAG closed-provider bundle, or terminal trace",
        "classifier shards.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixClasses",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixProducers",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket",
        "",
        PREFIX_HELPERS.strip(),
        "",
    ]
    for class_id in classes:
        lines.append(emit_margin_bound_def(class_id).strip())
        lines.append("")
        lines.append(emit_class_theorem(class_id))
        lines.append("")
    lines.append(emit_case_inductive(classes))
    lines.append("")
    lines.append(emit_case_adapter(classes))
    lines.append("")
    lines.append(emit_portfolio_structure())
    lines.append("")
    lines.append(emit_portfolio_adapter())
    lines.extend(
        [
            "",
            "theorem depth11Layer4MappedFinish_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--classes-input", type=Path, default=DEFAULT_CLASSES_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    classes = parse_classes(args.classes_input)
    args.output.write_text(emit_module(classes), encoding="utf-8")
    print(
        f"wrote {args.output} with {len(classes)} classes: "
        + ", ".join(classes)
    )


if __name__ == "__main__":
    main()
