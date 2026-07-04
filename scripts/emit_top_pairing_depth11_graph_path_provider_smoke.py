#!/usr/bin/env python3
"""Emit all-class depth-11 graph-path provider smoke.

This bounded emitter bridges the existing generated depth-11 closed-provider
suffix alternatives to the newer graph-state-indexed suffix socket.  It is not
full coverage: it proves that the current observed class/state suffix evidence
can satisfy the production-shaped `Split10MDepth11GraphPathProducer` boundary
without selected-prefix ids, sampled ranks, or accepted trace ids.
"""

from __future__ import annotations

import re
from collections import defaultdict
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphStateSuffixSocket.lean"
)
OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticStateDAGDepth11GraphPathProvidersSmoke.lean"
)

NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingSemanticStateDAGDepth11GraphPathProvidersSmoke"
)
PROVIDERS_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke"
)
SOCKET_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSocket"
)
BASE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphEvalSplit10MSmoke.Base"
)
EVAL_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedEvalLanguage"
)
CLOSED_SUFFIX_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedSplitSuffixProducerSocket"
)
SPLIT_SUFFIX_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedSuffixSplit10MBridge"
)
TRANSDUCER_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedTransducerProducerSocket"
)
ACCEPTED_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.Accepted"
)


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def state_suffix_ctor(cls: str, state: str) -> str:
    return f"class{cls}_state{state}"


def parse_rows() -> dict[str, list[dict[str, str]]]:
    text = SOCKET.read_text(encoding="utf-8")
    rows: dict[str, list[dict[str, str]]] = defaultdict(list)
    pattern = re.compile(
        r"\|\s+class(?P<class>\d{3})_state(?P<state>\d{4})\s+"
        r"\{rest : List Face\}\s+\(h : "
        r"Depth11Class(?P=class)State(?P=state)Suffix rest\)"
    )
    for match in pattern.finditer(text):
        cls = match.group("class")
        state = match.group("state")
        rows[cls].append(
            {
                "class": cls,
                "state": state,
                "short_state": str(int(state)),
                "hname": f"hstate{state}",
                "ctor": state_suffix_ctor(cls, state),
            }
        )
    if not rows:
        raise RuntimeError(f"no depth-11 graph-state suffix rows found in {rel(SOCKET)}")
    return dict(sorted((cls, vals) for cls, vals in rows.items()))


def emit_handle(row: dict[str, str], indent: str = "  ") -> list[str]:
    return [
        f"{indent}rcases {row['hname']} with ⟨hgraphEq, hsuffixClass⟩",
        f"{indent}subst graph",
        f"{indent}exact Depth11ObservedGraphStateSuffixOk.{row['ctor']} hsuffixClass",
    ]


def emit_depth11_observed_converter(cls: str, rows: list[dict[str, str]]) -> list[str]:
    lines = [
        f"theorem depth11Observed_of_class{cls}Depth11Suffix",
        "    {graph : State} {rest : List Face}",
        f"    (hclass : Class{cls}Depth11Suffix graph rest) :",
        "    Depth11ObservedGraphStateSuffixOk graph rest := by",
    ]
    if len(rows) == 1:
        only = rows[0]
        lines.extend(emit_handle({**only, "hname": "hclass"}))
    else:
        for idx, row in enumerate(rows[:-1]):
            if idx == len(rows) - 2:
                last = rows[-1]
                lines.append(
                    f"  rcases hclass with {row['hname']} | {last['hname']}"
                )
                lines.append("  · " + emit_handle(row, "")[0])
                for subline in emit_handle(row, "")[1:]:
                    lines.append("    " + subline)
                lines.append("  · " + emit_handle(last, "")[0])
                for subline in emit_handle(last, "")[1:]:
                    lines.append("    " + subline)
            else:
                lines.append(f"  rcases hclass with {row['hname']} | hclass")
                lines.append("  · " + emit_handle(row, "")[0])
                for subline in emit_handle(row, "")[1:]:
                    lines.append("    " + subline)
    lines.append("")
    return lines


def emit_class_producer(cls: str) -> list[str]:
    return [
        f"theorem split10MDepth11GraphPathProducer_of_class{cls}",
        "    {rank : Fin numPairWords}",
        f"    (hclass : Class{cls}GraphSuffixProducer rank) :",
        "    Split10MDepth11GraphPathProducer rank := by",
        "  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂",
        "    hgraph₁ hgraph₂",
        "  have hdepth :",
        f"      Class{cls}Depth11Suffix graph₂ rest :=",
        "    hclass face₀ face₁ rest hlabels hfrontier",
        "      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂",
        "  refine ⟨[], rest, graph₂, ?_, ?_, ?_⟩",
        "  · simp",
        "  · exact GraphPathTo.nil (rank := rank) graph₂",
        f"  · exact depth11Observed_of_class{cls}Depth11Suffix hdepth",
        "",
        f"theorem split10MGraphSuffixProducer_of_class{cls}GraphPath",
        "    {rank : Fin numPairWords}",
        f"    (hclass : Class{cls}GraphSuffixProducer rank) :",
        "    Split10MGraphSuffixProducer rank :=",
        "  split10MGraphSuffixProducer_of_depth11GraphPathProducer",
        f"    (split10MDepth11GraphPathProducer_of_class{cls} hclass)",
        "",
    ]


def emit(classes: dict[str, list[dict[str, str]]]) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket",
        "",
        "/-!",
        "Generated all-class depth-11 graph-path provider smoke.",
        "",
        "This bounded module routes the existing depth-11 closed-provider suffix",
        "classes through the graph-state-indexed `Split10MDepth11GraphPathProducer`",
        "socket.  It is still smoke evidence, not final coverage: the premises are",
        "class-local graph suffix producers.  The important property is that the",
        "bridge carries the Bellman graph state explicitly and does not use sampled",
        "ranks, selected prefixes, accepted trace ids, exact affine RHS keys, or raw",
        "rank tables.",
        "",
        f"Generated by `{rel(Path(__file__))}`.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        f"namespace {NS}",
        "",
        "open Cuboctahedron",
        f"open {BASE_NS}",
        f"open {EVAL_NS}",
        f"open {SPLIT_SUFFIX_NS}",
        f"open {SOCKET_NS}",
        f"open {CLOSED_SUFFIX_NS}",
        f"open {TRANSDUCER_NS}",
        f"open {PROVIDERS_NS}",
        f"open {ACCEPTED_NS}",
        "",
    ]

    for cls, rows in classes.items():
        lines.extend(emit_depth11_observed_converter(cls, rows))
        lines.extend(emit_class_producer(cls))

    lines.extend(
        [
            "/-- All currently observed depth-11 graph-path class cases. -/",
            "inductive Depth11GraphPathClassCase (rank : Fin numPairWords) : Prop",
        ]
    )
    for cls in classes:
        lines.append(
            f"  | class{cls} (h : Class{cls}GraphSuffixProducer rank) : "
            "Depth11GraphPathClassCase rank"
        )
    lines.extend(
        [
            "",
            "theorem split10MDepth11GraphPathProducer_of_depth11GraphPathClassCase",
            "    {rank : Fin numPairWords}",
            "    (hcase : Depth11GraphPathClassCase rank) :",
            "    Split10MDepth11GraphPathProducer rank := by",
            "  cases hcase with",
        ]
    )
    for cls in classes:
        lines.append(
            f"  | class{cls} h => exact split10MDepth11GraphPathProducer_of_class{cls} h"
        )
    lines.extend(
        [
            "",
            "theorem split10MGraphSuffixProducer_of_depth11GraphPathClassCase",
            "    {rank : Fin numPairWords}",
            "    (hcase : Depth11GraphPathClassCase rank) :",
            "    Split10MGraphSuffixProducer rank :=",
            "  split10MGraphSuffixProducer_of_depth11GraphPathProducer",
            "    (split10MDepth11GraphPathProducer_of_depth11GraphPathClassCase hcase)",
            "",
            "/-- Closed margin family routed through the graph-path provider socket. -/",
            "def ClosedDepth11GraphPathMarginFamily",
            "    (scaledMargin : Fin numPairWords -> Int)",
            "    (rank : Fin numPairWords) : Prop :=",
            "  TopPairingClosedLanguageAtRank rank Face.ym ∧",
            "    Depth11GraphPathClassCase rank ∧",
            "      Split10MFinalMarginProducer scaledMargin rank",
            "",
            "theorem closedSplit10MSuffixMarginFamily_of_depth11GraphPath",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    {rank : Fin numPairWords}",
            "    (hfamily : ClosedDepth11GraphPathMarginFamily scaledMargin rank) :",
            "    ClosedSplit10MSuffixMarginFamily scaledMargin rank := by",
            "  rcases hfamily with ⟨hclosed, hcase, hfinish⟩",
            "  exact",
            "    { closed := hclosed",
            "      graphSuffix :=",
            "        split10MGraphSuffixProducer_of_depth11GraphPathClassCase hcase",
            "      finalMargin := hfinish }",
            "",
            "theorem evalLanguageAtRank_of_closedDepth11GraphPathFamily",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    {rank : Fin numPairWords}",
            "    (hfamily : ClosedDepth11GraphPathMarginFamily scaledMargin rank) :",
            "    TopPairingBellmanEvalLanguageAtRank",
            "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
            "      scaledMargin rank Face.ym :=",
            "  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily",
            "    (closedSplit10MSuffixMarginFamily_of_depth11GraphPath hfamily)",
            "",
            "theorem scaledMargin_nonpos_of_closedDepth11GraphPathFamily",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    {rank : Fin numPairWords}",
            "    (hfamily : ClosedDepth11GraphPathMarginFamily scaledMargin rank) :",
            "    scaledMargin rank <= 0 :=",
            "  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily",
            "    (closedSplit10MSuffixMarginFamily_of_depth11GraphPath hfamily)",
            "",
            "/-- Strengthened sequence/bad-face package routed through graph-path cases. -/",
            "def Depth11GraphPathSequenceBadFace",
            "    (scaledMargin : Fin numPairWords -> Int)",
            "    (rank : Fin numPairWords) (badFace : Face) : Prop :=",
            "  AcceptedSequenceBadFaceAtRank rank badFace ∧",
            "    TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧",
            "      Depth11GraphPathClassCase rank ∧",
            "        Split10MFinalMarginProducer scaledMargin rank",
            "",
            "theorem depth11GraphPathSequenceBadFace_extract",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    {rank : Fin numPairWords}",
            "    (hcase : Depth11GraphPathSequenceBadFace scaledMargin rank Face.ym) :",
            "    AcceptedSequenceBadFaceAtRank rank Face.ym ∧",
            "      TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧",
            "        Split10MGraphSuffixProducer rank ∧",
            "          Split10MFinalMarginProducer scaledMargin rank := by",
            "  rcases hcase with ⟨hbad, hterminal, hcase, hfinal⟩",
            "  exact ⟨hbad, hterminal,",
            "    split10MGraphSuffixProducer_of_depth11GraphPathClassCase hcase,",
            "    hfinal⟩",
            "",
            "theorem closedTransducerProducer_of_depth11GraphPathSequenceBadFace",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    {rank : Fin numPairWords}",
            "    (hstrengthened :",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        (Depth11GraphPathSequenceBadFace scaledMargin) rank Face.ym) :",
            "    StrengthenedClosedTransducerProducer scaledMargin rank := by",
            "  rcases hstrengthened.sequenceBadFace_ok with",
            "    ⟨hbad, hterminal, hcase, hfinal⟩",
            "  exact",
            "    { strengthened :=",
            "        TopPairingStrengthenedClosedLanguageAtRank.ofComponents",
            "          hstrengthened.closed hstrengthened.actualFaceOmni hbad",
            "      terminalOk := hterminal",
            "      depth11GraphPath :=",
            "        split10MDepth11GraphPathProducer_of_depth11GraphPathClassCase hcase",
            "      finalMargin := hfinal }",
            "",
            "theorem closedTransducerProducerAll_of_depth11GraphPathSequenceBadFace",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    (hclass :",
            "      ∀ rank,",
            "        TopPairingStrengthenedClosedLanguageAtRank",
            "          AcceptedSequenceBadFaceAtRank rank Face.ym ->",
            "        TopPairingStrengthenedClosedLanguageAtRank",
            "          (Depth11GraphPathSequenceBadFace scaledMargin) rank Face.ym) :",
            "    StrengthenedClosedTransducerProducerAll scaledMargin where",
            "  family := by",
            "    intro rank hstrengthened",
            "    exact closedTransducerProducer_of_depth11GraphPathSequenceBadFace",
            "      (hclass rank hstrengthened)",
            "",
            "theorem scaledMargin_nonpos_of_depth11GraphPathSequenceBadFaceAll",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    (hclass :",
            "      ∀ rank,",
            "        TopPairingStrengthenedClosedLanguageAtRank",
            "          AcceptedSequenceBadFaceAtRank rank Face.ym ->",
            "        TopPairingStrengthenedClosedLanguageAtRank",
            "          (Depth11GraphPathSequenceBadFace scaledMargin) rank Face.ym)",
            "    {rank : Fin numPairWords}",
            "    (hstrengthened :",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym) :",
            "    scaledMargin rank <= 0 :=",
            "  scaledMargin_nonpos_of_closedTransducerProducerAll",
            "    (closedTransducerProducerAll_of_depth11GraphPathSequenceBadFace hclass)",
            "    hstrengthened",
            "",
            "/--",
            "Split producer portfolio for the remaining production gap.",
            "",
            "A production semantic state-DAG emitter should prove these three",
            "fields from closed target-cursor/schedule/square-gap/local-axis/",
            "tri-source state.  This surface deliberately keeps graph-path",
            "classification separate from terminal classification and final-margin",
            "evidence.",
            "-/",
            "structure Depth11GraphPathPortfolioAll",
            "    (scaledMargin : Fin numPairWords -> Int) : Prop where",
            "  terminal :",
            "    ∀ rank,",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
            "      TerminalOkTraceLabels (topPairingRankFaceLabels rank)",
            "  classCase :",
            "    ∀ rank,",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
            "      Depth11GraphPathClassCase rank",
            "  finalMargin :",
            "    ∀ rank,",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
            "      Split10MFinalMarginProducer scaledMargin rank",
            "",
            "theorem closedTransducerProducerAll_of_depth11GraphPathPortfolioAll",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    (hportfolio : Depth11GraphPathPortfolioAll scaledMargin) :",
            "    StrengthenedClosedTransducerProducerAll scaledMargin where",
            "  family := by",
            "    intro rank hstrengthened",
            "    exact",
            "      { strengthened := hstrengthened",
            "        terminalOk := hportfolio.terminal rank hstrengthened",
            "        depth11GraphPath :=",
            "          split10MDepth11GraphPathProducer_of_depth11GraphPathClassCase",
            "            (hportfolio.classCase rank hstrengthened)",
            "        finalMargin := hportfolio.finalMargin rank hstrengthened }",
            "",
            "theorem scaledMargin_nonpos_of_depth11GraphPathPortfolioAll",
            "    {scaledMargin : Fin numPairWords -> Int}",
            "    (hportfolio : Depth11GraphPathPortfolioAll scaledMargin)",
            "    {rank : Fin numPairWords}",
            "    (hstrengthened :",
            "      TopPairingStrengthenedClosedLanguageAtRank",
            "        AcceptedSequenceBadFaceAtRank rank Face.ym) :",
            "    scaledMargin rank <= 0 :=",
            "  scaledMargin_nonpos_of_closedTransducerProducerAll",
            "    (closedTransducerProducerAll_of_depth11GraphPathPortfolioAll hportfolio)",
            "    hstrengthened",
            "",
            f"def depth11GraphPathProviderClassCount : Nat := {len(classes)}",
            "def depth11GraphPathProviderStateCount : Nat := "
            f"{sum(len(rows) for rows in classes.values())}",
            "",
            "theorem depth11GraphPathProviderClassCount_audit :",
            f"    depth11GraphPathProviderClassCount = {len(classes)} := by",
            "  decide",
            "",
            "theorem depth11GraphPathProviderStateCount_audit :",
            "    depth11GraphPathProviderStateCount = "
            f"{sum(len(rows) for rows in classes.values())} := by",
            "  decide",
            "",
            "theorem depth11GraphPathProvidersSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {NS}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    classes = parse_rows()
    OUT.write_text(emit(classes), encoding="utf-8")
    print(f"wrote {rel(OUT)}")
    print(
        "classes="
        f"{len(classes)} states={sum(len(rows) for rows in classes.values())}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
