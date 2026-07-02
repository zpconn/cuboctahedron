#!/usr/bin/env python3
"""Emit the depth-11 graph-state suffix socket for top-pairing Bellman.

The generated socket is proof architecture, not final coverage.  It packages a
small graph path predicate with the already checked depth-11 suffix providers:

  semantic producer -> graph path to depth-11 state + suffix predicate
  socket            -> Split10MGraphSuffixProducer

This is the theorem boundary the production semantic bridge should target.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SMOKE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphStateSuffixSmoke.lean"
)
OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphStateSuffixSocket.lean"
)

NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSocket"
)
SMOKE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingDepth11GraphStateSuffixSmoke"
)
BASE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphEvalSplit10MSmoke.Base"
)
BRANCH_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke"
)
SUFFIX_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingBranchTableSuffixSplit10MSmoke"
)
BRIDGE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedSuffixSplit10MBridge"
)


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def provider_rows(smoke_text: str) -> list[dict[str, str | int]]:
    predicates = re.findall(
        r"inductive (Depth11Class(\d{3})State(\d{4})Suffix) : List Face -> Prop",
        smoke_text,
    )
    theorems = {
        (cls, state): name
        for name, cls, state in re.findall(
            r"theorem (graphBranchTableSuffixOk_class(\d{3})_state(\d{4}))",
            smoke_text,
        )
    }
    rows: list[dict[str, str | int]] = []
    for pred, cls, state in predicates:
        theorem = theorems.get((cls, state))
        if theorem is None:
            raise RuntimeError(f"missing theorem for class {cls} state {state}")
        rows.append(
            {
                "predicate": pred,
                "class": int(cls),
                "state": int(state),
                "theorem": theorem,
                "ctor": f"class{cls}_state{state}",
            }
        )
    return rows


def emit(rows: list[dict[str, str | int]]) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge",
        "",
        "/-!",
        "Generated depth-11 graph-state suffix socket for top-pairing Bellman.",
        "",
        "This module is the reusable bridge shape for the next semantic",
        "state-machine producer.  It does not prove that a closed rank reaches a",
        "depth-11 state; instead it states exactly what such a producer must",
        "return: a graph path from the split-10M prefix frontier to a depth-11",
        "graph state, plus one of the checked depth-11 graph-state suffix",
        "predicates.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        f"namespace {NS}",
        "",
        "open Cuboctahedron",
        f"open {BASE_NS}",
        f"open {BRANCH_NS}",
        f"open {SUFFIX_NS}",
        f"open {BRIDGE_NS}",
        f"open {SMOKE_NS}",
        "",
        "/-- Graph branch-table path with an explicit final graph state. -/",
        "inductive GraphPathTo (rank : Fin numPairWords) :",
        "    State -> List Face -> State -> Prop",
        "  | nil (graph : State) : GraphPathTo rank graph [] graph",
        "  | graph {graph : State} {face : Face} {rest : List Face}",
        "      {final : State}",
        "      (hbranch : StrengthenedBranchTable graph face BranchKind.graph)",
        "      (hrest :",
        "        ∀ graphNext gain,",
        "          graphSmokeNext graph (smokeLabelOfFace face) =",
        "            some (graphNext, gain) ->",
        "          GraphPathTo rank graphNext rest final) :",
        "      GraphPathTo rank graph (face :: rest) final",
        "",
        "/-- The checked depth-11 suffix predicates, indexed by graph state. -/",
        "inductive Depth11ObservedGraphStateSuffixOk : State -> List Face -> Prop",
    ]
    for row in rows:
        lines.append(
            f"  | {row['ctor']} {{rest : List Face}} "
            f"(h : {row['predicate']} rest) : "
            f"Depth11ObservedGraphStateSuffixOk ({row['state']} : State) rest"
        )
    lines.extend(
        [
            "",
            f"def depth11ObservedGraphStateSuffixProviderCount : Nat := {len(rows)}",
            "",
            "theorem depth11ObservedGraphStateSuffixProviderCount_audit :",
            f"    depth11ObservedGraphStateSuffixProviderCount = {len(rows)} := by",
            "  decide",
            "",
            "theorem graphBranchTableSuffixOk_of_depth11Observed",
            "    {rank : Fin numPairWords} {graph : State} {rest : List Face}",
            "    (h : Depth11ObservedGraphStateSuffixOk graph rest) :",
            "    GraphBranchTableSuffixOk rank graph rest := by",
            "  cases h with",
        ]
    )
    for row in rows:
        lines.append(
            f"  | {row['ctor']} h => exact {row['theorem']} h"
        )
    lines.extend(
        [
            "",
            "theorem graphBranchTableSuffixOk_of_graphPathTo_append",
            "    {rank : Fin numPairWords} {graph mid : State}",
            "    {pre suffix : List Face}",
            "    (hpath : GraphPathTo rank graph pre mid)",
            "    (hsuffix : GraphBranchTableSuffixOk rank mid suffix) :",
            "    GraphBranchTableSuffixOk rank graph (pre ++ suffix) := by",
            "  induction hpath with",
            "  | nil graph =>",
            "      simpa using hsuffix",
            "  | graph hbranch hrest ih =>",
            "      simp [List.cons_append]",
            "      refine GraphBranchTableSuffixOk.graph hbranch ?_",
            "      intro graphNext gain hgraph",
            "      exact ih graphNext gain hgraph hsuffix",
            "",
            "theorem graphBranchTableSuffixOk_of_graphPathTo_depth11Observed",
            "    {rank : Fin numPairWords} {graph mid : State}",
            "    {pre suffix : List Face}",
            "    (hpath : GraphPathTo rank graph pre mid)",
            "    (hsuffix : Depth11ObservedGraphStateSuffixOk mid suffix) :",
            "    GraphBranchTableSuffixOk rank graph (pre ++ suffix) :=",
            "  graphBranchTableSuffixOk_of_graphPathTo_append hpath",
            "    (graphBranchTableSuffixOk_of_depth11Observed hsuffix)",
            "",
            "/--",
            "Production target for the semantic depth-11 bridge.",
            "",
            "A future generated theorem should prove this predicate from",
            "`TopPairingStrengthenedClosedLanguageAtRank` using target-cursor,",
            "schedule, pair-count, local-axis, and tri-source state facts.  It is",
            "not allowed to use sampled ranks or selected-prefix trace ids as the",
            "main membership coordinate.",
            "-/",
            "def Split10MDepth11GraphPathProducer (rank : Fin numPairWords) : Prop :=",
            "  ∀ face₀ face₁ rest,",
            "    topPairingRankFaceLabels rank =",
            "      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->",
            "    Split10MPrefix4FrontierCons2 face₀ face₁ ->",
            "    ∀ graph₁ gain₁ graph₂ gain₂,",
            "      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =",
            "        some (graph₁, gain₁) ->",
            "      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =",
            "        some (graph₂, gain₂) ->",
            "      ∃ pre suffix depth11,",
            "        rest = pre ++ suffix ∧",
            "          GraphPathTo rank graph₂ pre depth11 ∧",
            "            Depth11ObservedGraphStateSuffixOk depth11 suffix",
            "",
            "theorem split10MGraphSuffixProducer_of_depth11GraphPathProducer",
            "    {rank : Fin numPairWords}",
            "    (hproducer : Split10MDepth11GraphPathProducer rank) :",
            "    Split10MGraphSuffixProducer rank := by",
            "  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂",
            "    hgraph₁ hgraph₂",
            "  rcases hproducer face₀ face₁ rest hlabels hfrontier",
            "      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂ with",
            "    ⟨pre, suffix, depth11, hrest, hpath, hsuffix⟩",
            "  subst rest",
            "  exact graphBranchTableSuffixOk_of_graphPathTo_depth11Observed",
            "    hpath hsuffix",
            "",
            "theorem depth11GraphStateSuffixSocket_builds : True := by",
            "  exact True.intro",
            "",
            f"end {NS}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=SMOKE)
    parser.add_argument("--output", type=Path, default=OUT)
    args = parser.parse_args()

    rows = provider_rows(read(args.input))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(emit(rows), encoding="utf-8")
    print(f"wrote {rel(args.output)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
