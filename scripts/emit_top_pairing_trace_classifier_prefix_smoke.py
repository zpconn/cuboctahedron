#!/usr/bin/env python3
"""Emit the first top-pairing trace-classifier generated smoke module.

This small emitter is deliberately modest: it regenerates the production-shaped
prefix smoke that consumes semantic closed-language membership and proves the
first deterministic face-label prefixes.  It establishes the
file/layout/template surface for later state-DAG classifier shards without
introducing sampled rank or path evidence.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import audit_top_pairing_closed_graph_acceptance as audit


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/PrefixSmoke.lean"
)
DEFAULT_SUMMARY = (
    ROOT / "scripts/generated/top_pairing_trace_classifier_prefix_smoke_summary.json"
)


def lean_face(face: str) -> str:
    return f"Face.{face}"


def lean_face_list(prefix: tuple[str, ...]) -> str:
    return "[" + ", ".join(lean_face(face) for face in prefix) + "]"


def enumerate_semantic_prefixes(depth: int) -> list[tuple[str, ...]]:
    """Enumerate accepted semantic prefixes up to `depth`.

    This mirrors the exact front-door state used by
    `profile_top_pairing_trace_state_dag.py`: schedule, remaining pair counts,
    square-gap state, local-axis positivity, and triangular cancellation stack.
    It is diagnostic/generative only; Lean still proves the emitted theorem from
    the corresponding semantic predicates.
    """

    prefixes: list[tuple[str, ...]] = []

    def dfs(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: audit.StackState,
        labels: tuple[str, ...],
    ) -> None:
        if step == depth:
            prefixes.append(labels)
            return

        for face in audit.ALLOWED_AT_STEP[step]:
            pair = audit.PAIR_OF_FACE[face]
            if step < 13:
                if counts.get(pair, 0) <= 0:
                    continue
            elif face != "xp":
                continue

            next_square_gap = square_gap
            if audit.is_square_pair(pair):
                if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                    continue
            else:
                next_square_gap += 1

            n = tuple(audit.Fraction(x) for x in audit.NORMAL[face])
            if audit.dot(audit.mat_vec(linear, n), audit.AXIS) <= 0:
                continue
            next_linear = audit.mat_mul(linear, audit.REFL[face])

            next_counts = counts
            next_stack = stack_state
            if step < 13:
                next_counts = dict(counts)
                next_counts[pair] -= 1
                if pair in audit.TRI_OF_PAIR:
                    next_stack = audit.stack_push(stack_state, audit.TRI_OF_PAIR[pair])
                    if next_stack.shadow_len > 8:
                        continue

            dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_stack,
                labels + (face,),
            )

    dfs(
        0,
        dict(audit.REMAINING_COUNTS),
        0,
        audit.MAT_ID,
        audit.INITIAL_STACK,
        (),
    )
    return prefixes


def disjunction(subject: str, prefixes: list[tuple[str, ...]]) -> str:
    parts = [
        f"    (∃ rest : List Face,\n"
        f"      {subject} = {lean_face_list(prefix)} ++ rest)"
        for prefix in prefixes
    ]
    return " \\/\n".join(parts)


def summary_payload(prefixes: list[tuple[str, ...]]) -> dict[str, object]:
    return {
        "source": "exact semantic prefix enumerator",
        "depth": 4,
        "prefix_count": len(prefixes),
        "prefixes": [list(prefix) for prefix in prefixes],
        "semantic_components": [
            "TopPairingStepScheduleLabels",
            "TopPairingSquareGapLabels",
            "TopPairingLocalAxisLabels",
            "remaining pair counts",
            "triangular cancellation stack shadow bound",
        ],
        "sampled_rank_or_path_data": False,
    }


STATIC_PREFIX = r"""import Cuboctahedron.Search.TopPairingBellmanObject

/-!
First generated-shape smoke for the top-pairing closed trace classifier.

The full classifier should prove that a semantic closed top-pairing object has
one of the two accepted closed face traces.  This file checks the intended
proof surface on the first deterministic prefix: it consumes only
`TopPairingClosedLanguageAtRank` / `TopPairingBellmanObj` facts and introduces
no sampled rank or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

open Cuboctahedron

theorem closedRank_prefix_xm_ym
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    ∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        Face.xm :: Face.ym :: rest :=
  topPairingStepScheduleLabels_prefix_xm_ym h.schedule

theorem closedObj_prefix_xm_ym
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    ∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        Face.xm :: Face.ym :: rest :=
  closedRank_prefix_xm_ym obj.closed

theorem closedRank_prefix3
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    (∃ rest : List Face,
        faceLabelsInContributionOrder (fun f : Face => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: Face.tmpm :: rest) \/
      (∃ rest : List Face,
        faceLabelsInContributionOrder (fun f : Face => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: Face.yp :: rest) \/
        (∃ rest : List Face,
          faceLabelsInContributionOrder (fun f : Face => f)
              (canonicalSeqOfPairWord (unrankPairWord rank)) =
            Face.xm :: Face.ym :: Face.zm :: rest) :=
  topPairingStepScheduleLabels_prefix3 h.schedule

theorem closedObj_prefix3
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
        TopPairingBellmanObj.labels (fun f : Face => f) obj =
          Face.xm :: Face.ym :: Face.tmpm :: rest) \/
      (∃ rest : List Face,
        TopPairingBellmanObj.labels (fun f : Face => f) obj =
          Face.xm :: Face.ym :: Face.yp :: rest) \/
        (∃ rest : List Face,
          TopPairingBellmanObj.labels (fun f : Face => f) obj =
            Face.xm :: Face.ym :: Face.zm :: rest) :=
  closedRank_prefix3 obj.closed
"""


STATIC_SUFFIX = r"""
theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
"""


def render(prefixes4: list[tuple[str, ...]]) -> str:
    labels4 = disjunction("labels", prefixes4)
    rank_subject = (
        "faceLabelsInContributionOrder (fun f : Face => f) "
        "(canonicalSeqOfPairWord (unrankPairWord rank))"
    )
    rank4 = disjunction(rank_subject, prefixes4)
    obj_subject = "TopPairingBellmanObj.labels (fun f : Face => f) obj"
    obj4 = disjunction(obj_subject, prefixes4)

    return (
        STATIC_PREFIX
        + f"""

theorem labels_prefix4
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels) :
{labels4} := by
  rcases topPairingStepScheduleLabels_prefix3 hs with h | h | h
  · rcases h with ⟨rest2, rfl⟩
    cases rest2 with
    | nil =>
        rcases hs with ⟨hlen, _⟩
        norm_num at hlen
    | cons f3 rest =>
        cases f3 <;>
          try simp
        all_goals
          unfold TopPairingStepScheduleLabels at hs
          unfold TopPairingSquareGapLabels at hg
          unfold TopPairingLocalAxisLabels at ha
          simp [TopPairingStepScheduleFrom, TopPairingSquareGapFrom,
            topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
            isSquarePair, pairOfFace, TopPairingLocalAxisFrom,
            TopPairingLocalAxisAllows, normalQ, topPairingLocalAxis, matId,
            matVec, dot, matMul, reflM, matSub, scalarMat, outer] at hs hg ha ⊢
          try norm_num at ha
  · rcases h with ⟨rest2, rfl⟩
    cases rest2 with
    | nil =>
        rcases hs with ⟨hlen, _⟩
        norm_num at hlen
    | cons f3 rest =>
        cases f3 <;>
          try simp
        all_goals
          unfold TopPairingStepScheduleLabels at hs
          unfold TopPairingSquareGapLabels at hg
          unfold TopPairingLocalAxisLabels at ha
          simp [TopPairingStepScheduleFrom, TopPairingSquareGapFrom,
            topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
            isSquarePair, pairOfFace, TopPairingLocalAxisFrom,
            TopPairingLocalAxisAllows, normalQ, topPairingLocalAxis, matId,
            matVec, dot, matMul, reflM, matSub, scalarMat, outer] at hs hg ha ⊢
          try norm_num at ha
  · rcases h with ⟨rest2, rfl⟩
    cases rest2 with
    | nil =>
        rcases hs with ⟨hlen, _⟩
        norm_num at hlen
    | cons f3 rest =>
        cases f3 <;>
          try simp
        all_goals
          unfold TopPairingStepScheduleLabels at hs
          unfold TopPairingSquareGapLabels at hg
          unfold TopPairingLocalAxisLabels at ha
          simp [TopPairingStepScheduleFrom, TopPairingSquareGapFrom,
            topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
            isSquarePair, pairOfFace, TopPairingLocalAxisFrom,
            TopPairingLocalAxisAllows, normalQ, topPairingLocalAxis, matId,
            matVec, dot, matMul, reflM, matSub, scalarMat, outer] at hs hg ha ⊢
          try norm_num at ha

theorem closedRank_prefix4
    {{rank : Fin numPairWords}} {{badFace : Face}}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
{rank4} :=
  labels_prefix4 h.schedule h.squareGap h.localAxis

theorem closedObj_prefix4
    {{badFace : Face}}
    (obj : TopPairingBellmanObj badFace) :
{obj4} :=
  closedRank_prefix4 obj.closed
"""
        + STATIC_SUFFIX
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    prefixes4 = enumerate_semantic_prefixes(4)
    if len(prefixes4) != 8:
        raise RuntimeError(f"expected 8 depth-4 prefixes, got {len(prefixes4)}")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render(prefixes4))
    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(
        json.dumps(summary_payload(prefixes4), indent=2, sort_keys=True) + "\n"
    )
    print(f"wrote {args.output}")
    print(f"wrote {args.summary_json}")


if __name__ == "__main__":
    main()
