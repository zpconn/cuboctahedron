#!/usr/bin/env python3
"""Emit closed split-suffix provider conversions for depth-11 Bellman classes.

The input is the existing Lean depth-11 graph-state suffix smoke.  This emitter
does not invent proof data: it only packages the already checked
`Depth11ClassNNNStateSSSSSuffix` predicates and
`graphBranchTableSuffixOk_classNNN_stateSSSS` theorems into the newer
`ClosedSplit10MSuffixMarginFamily` and
`ClosedSplit10MExactFinishSuffixMarginFamily` sockets.
"""

from __future__ import annotations

import argparse
import re
from collections import defaultdict
from pathlib import Path


DEFAULT_INPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphStateSuffixSmoke.lean"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke.lean"
)


INDUCTIVE_RE = re.compile(
    r"^inductive Depth11Class(?P<class>\d{3})State(?P<state>\d{4})Suffix\b"
)
THEOREM_RE = re.compile(
    r"^theorem graphBranchTableSuffixOk_class(?P<class>\d{3})_state(?P<state>\d{4})\b"
)


def collect_classes(path: Path) -> dict[str, list[str]]:
    classes: dict[str, set[str]] = defaultdict(set)
    theorem_states: set[tuple[str, str]] = set()
    for line in path.read_text(encoding="utf-8").splitlines():
        if match := INDUCTIVE_RE.match(line):
            classes[match.group("class")].add(match.group("state"))
        if match := THEOREM_RE.match(line):
            theorem_states.add((match.group("class"), match.group("state")))

    missing = sorted(
        (class_id, state)
        for class_id, states in classes.items()
        for state in states
        if (class_id, state) not in theorem_states
    )
    if missing:
        formatted = ", ".join(f"class {class_id} state {state}" for class_id, state in missing)
        raise ValueError(f"missing graphBranchTableSuffixOk theorem(s): {formatted}")

    return {
        class_id: sorted(states, key=int)
        for class_id, states in sorted(classes.items(), key=lambda item: int(item[0]))
    }


def state_nat(state: str) -> str:
    return str(int(state))


def depth_suffix_expr(class_id: str, states: list[str]) -> list[str]:
    lines: list[str] = []
    for index, state in enumerate(states):
        prefix = "  " if index == 0 else "    "
        disj = " ∨" if index + 1 < len(states) else ""
        lines.append(
            f"{prefix}(graph = ({state_nat(state)} : State) ∧ "
            f"Depth11Class{class_id}State{state}Suffix rest){disj}"
        )
    return lines


def emit_depth11_suffix_theorem(class_id: str, states: list[str]) -> list[str]:
    lines = [
        f"theorem graphBranchTableSuffixOk_of_class{class_id}Depth11Suffix",
        "    {rank : Fin numPairWords} {graph : State} {rest : List Face}",
        f"    (hclass : Class{class_id}Depth11Suffix graph rest) :",
        "    GraphBranchTableSuffixOk rank graph rest := by",
    ]
    if len(states) == 1:
        state = states[0]
        lines.extend(
            [
                "  rcases hclass with ⟨hgraphEq, hsuffixClass⟩",
                "  subst graph",
                f"  exact graphBranchTableSuffixOk_class{class_id}_state{state} hsuffixClass",
            ]
        )
        return lines

    current = "hclass"
    for state in states[:-2]:
        branch = f"hstate{state}"
        next_current = f"hclass{state}"
        lines.append(f"  rcases {current} with {branch} | {next_current}")
        lines.extend(emit_state_branch(class_id, state, branch, "  ·"))
        current = next_current

    penultimate, last = states[-2], states[-1]
    lines.append(f"  rcases {current} with hstate{penultimate} | hstate{last}")
    lines.extend(emit_state_branch(class_id, penultimate, f"hstate{penultimate}", "  ·"))
    lines.extend(emit_state_branch(class_id, last, f"hstate{last}", "  ·"))
    return lines


def emit_state_branch(class_id: str, state: str, branch_name: str, bullet: str) -> list[str]:
    return [
        f"{bullet} rcases {branch_name} with ⟨hgraphEq, hsuffixClass⟩",
        "    subst graph",
        f"    exact graphBranchTableSuffixOk_class{class_id}_state{state} hsuffixClass",
    ]


def emit_class(class_id: str, states: list[str]) -> list[str]:
    lines = [
        f"/-- Depth-11 graph-state suffix alternatives for class {class_id}. -/",
        f"def Class{class_id}Depth11Suffix (graph : State) (rest : List Face) : Prop :=",
        *depth_suffix_expr(class_id, states),
        "",
        *emit_depth11_suffix_theorem(class_id, states),
        "",
        f"def Class{class_id}GraphSuffixProducer (rank : Fin numPairWords) : Prop :=",
        "  ∀ face₀ face₁ rest,",
        "    topPairingRankFaceLabels rank =",
        "      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->",
        "    Split10MPrefix4FrontierCons2 face₀ face₁ ->",
        "    ∀ graph₁ gain₁ graph₂ gain₂,",
        "      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =",
        "        some (graph₁, gain₁) ->",
        "      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =",
        "        some (graph₂, gain₂) ->",
        f"      Class{class_id}Depth11Suffix graph₂ rest",
        "",
        f"theorem split10MGraphSuffixProducer_of_class{class_id}",
        "    {rank : Fin numPairWords}",
        f"    (hclass : Class{class_id}GraphSuffixProducer rank) :",
        "    Split10MGraphSuffixProducer rank := by",
        "  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂",
        "    hgraph₁ hgraph₂",
        f"  exact graphBranchTableSuffixOk_of_class{class_id}Depth11Suffix",
        "    (hclass face₀ face₁ rest hlabels hfrontier",
        "      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂)",
        "",
        f"def ClosedClass{class_id}GraphSuffixMarginFamily",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (rank : Fin numPairWords) : Prop :=",
        "  TopPairingClosedLanguageAtRank rank Face.ym ∧",
        f"    Class{class_id}GraphSuffixProducer rank ∧",
        "      Split10MFinalMarginProducer scaledMargin rank",
        "",
        f"theorem closedSplit10MSuffixMarginFamily_of_class{class_id}",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hfamily :",
        f"      ClosedClass{class_id}GraphSuffixMarginFamily scaledMargin rank) :",
        "    ClosedSplit10MSuffixMarginFamily scaledMargin rank := by",
        "  rcases hfamily with ⟨hclosed, hclass, hfinish⟩",
        "  exact",
        "    { closed := hclosed",
        f"      graphSuffix := split10MGraphSuffixProducer_of_class{class_id} hclass",
        "      finalMargin := hfinish }",
        "",
        f"theorem evalLanguageAtRank_of_closedClass{class_id}Family",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hfamily :",
        f"      ClosedClass{class_id}GraphSuffixMarginFamily scaledMargin rank) :",
        "    TopPairingBellmanEvalLanguageAtRank",
        "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
        "      scaledMargin rank Face.ym :=",
        "  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily",
        f"    (closedSplit10MSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
        f"theorem scaledMargin_nonpos_of_closedClass{class_id}Family",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hfamily :",
        f"      ClosedClass{class_id}GraphSuffixMarginFamily scaledMargin rank) :",
        "    scaledMargin rank <= 0 :=",
        "  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily",
        f"    (closedSplit10MSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
        f"def ClosedClass{class_id}ExactFinishSuffixMarginFamily",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (rank : Fin numPairWords)",
        "    (finalState : FaceEvalState)",
        "    (totalGain : Int) : Prop :=",
        "  TopPairingClosedLanguageAtRank rank Face.ym ∧",
        f"    Class{class_id}GraphSuffixProducer rank ∧",
        "      Split10MExactFinishFinalMarginProducer",
        "        scaledMargin rank finalState totalGain",
        "",
        f"theorem closedSplit10MExactFinishSuffixMarginFamily_of_class{class_id}",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalState : FaceEvalState}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactFinishSuffixMarginFamily",
        "        scaledMargin rank finalState totalGain) :",
        "    ClosedSplit10MExactFinishSuffixMarginFamily",
        "      scaledMargin rank finalState totalGain := by",
        "  rcases hfamily with ⟨hclosed, hclass, hexact⟩",
        "  exact",
        "    { closed := hclosed",
        f"      graphSuffix := split10MGraphSuffixProducer_of_class{class_id} hclass",
        "      exactFinalMargin := hexact }",
        "",
        f"theorem evalLanguageAtRank_of_closedClass{class_id}ExactFinishFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalState : FaceEvalState}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactFinishSuffixMarginFamily",
        "        scaledMargin rank finalState totalGain) :",
        "    TopPairingBellmanEvalLanguageAtRank",
        "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
        "      scaledMargin rank Face.ym :=",
        "  evalLanguageAtRank_of_closedExactFinishSuffixMarginFamily",
        f"    (closedSplit10MExactFinishSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
        f"theorem scaledMargin_nonpos_of_closedClass{class_id}ExactFinishFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalState : FaceEvalState}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactFinishSuffixMarginFamily",
        "        scaledMargin rank finalState totalGain) :",
        "    scaledMargin rank <= 0 :=",
        "  scaledMargin_nonpos_of_closedExactFinishSuffixMarginFamily",
        f"    (closedSplit10MExactFinishSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
        f"def ClosedClass{class_id}ExactGraphFinishSuffixMarginFamily",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (rank : Fin numPairWords)",
        "    (finalGraph : State)",
        "    (totalGain : Int) : Prop :=",
        "  TopPairingClosedLanguageAtRank rank Face.ym ∧",
        f"    Class{class_id}GraphSuffixProducer rank ∧",
        "      Split10MExactGraphFinishFinalMarginProducer",
        "        scaledMargin rank finalGraph totalGain",
        "",
        f"theorem closedSplit10MExactGraphFinishSuffixMarginFamily_of_class{class_id}",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalGraph : State}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactGraphFinishSuffixMarginFamily",
        "        scaledMargin rank finalGraph totalGain) :",
        "    ClosedSplit10MExactGraphFinishSuffixMarginFamily",
        "      scaledMargin rank finalGraph totalGain := by",
        "  rcases hfamily with ⟨hclosed, hclass, hexact⟩",
        "  exact",
        "    { closed := hclosed",
        f"      graphSuffix := split10MGraphSuffixProducer_of_class{class_id} hclass",
        "      exactGraphFinalMargin := hexact }",
        "",
        f"theorem evalLanguageAtRank_of_closedClass{class_id}ExactGraphFinishFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalGraph : State}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactGraphFinishSuffixMarginFamily",
        "        scaledMargin rank finalGraph totalGain) :",
        "    TopPairingBellmanEvalLanguageAtRank",
        "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
        "      scaledMargin rank Face.ym :=",
        "  evalLanguageAtRank_of_closedExactGraphFinishSuffixMarginFamily",
        f"    (closedSplit10MExactGraphFinishSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
        f"theorem scaledMargin_nonpos_of_closedClass{class_id}ExactGraphFinishFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    {finalGraph : State}",
        "    {totalGain : Int}",
        "    (hfamily :",
        f"      ClosedClass{class_id}ExactGraphFinishSuffixMarginFamily",
        "        scaledMargin rank finalGraph totalGain) :",
        "    scaledMargin rank <= 0 :=",
        "  scaledMargin_nonpos_of_closedExactGraphFinishSuffixMarginFamily",
        f"    (closedSplit10MExactGraphFinishSuffixMarginFamily_of_class{class_id} hfamily)",
        "",
    ]
    return lines


def emit_module(classes: dict[str, list[str]]) -> str:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedFinalMarginSocket",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke",
        "",
        "/-!",
        "Generated closed split-suffix provider conversions for all depth-11",
        "top-pairing Bellman suffix classes currently exposed by the depth-11",
        "graph-state suffix smoke.",
        "",
        "This module is generated by",
        "`scripts/emit_top_pairing_depth11_closed_provider_smoke.py`.  It packages",
        "already checked depth-11 graph-state suffix predicates into the reusable",
        "`ClosedSplit10MSuffixMarginFamily` and exact-finish sockets.  It does not introduce",
        "selected-prefix covers, sampled ranks, accepted trace ids, exact affine",
        "keys, or raw rank tables.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedFinalMarginSocket",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke",
        "",
    ]
    for class_id, states in classes.items():
        lines.extend(emit_class(class_id, states))
    lines.extend(
        [
            "theorem depth11ClosedProvidersSmoke_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    classes = collect_classes(args.input)
    if not classes:
        raise ValueError(f"no depth-11 suffix classes found in {args.input}")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(emit_module(classes), encoding="utf-8")
    total_states = sum(len(states) for states in classes.values())
    print(
        f"wrote {args.output} with {len(classes)} classes and "
        f"{total_states} graph-state suffix alternatives"
    )


if __name__ == "__main__":
    main()
