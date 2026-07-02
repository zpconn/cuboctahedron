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


def branch_count(prefixes: list[tuple[str, ...]], depth: int) -> int:
    return len({prefix[:depth] for prefix in prefixes})


def summary_payload(
    prefixes4: list[tuple[str, ...]],
    prefixes5: list[tuple[str, ...]],
) -> dict[str, object]:
    return {
        "source": "exact semantic prefix enumerator",
        "depths": {
            "4": {
                "prefix_count": len(prefixes4),
                "prefixes": [list(prefix) for prefix in prefixes4],
            },
            "5": {
                "prefix_count": len(prefixes5),
                "parent_prefix_count": branch_count(prefixes5, 4),
                "prefixes": [list(prefix) for prefix in prefixes5],
            },
        },
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

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

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


def local_split_branch(next_face: str, use_pair_counts: bool = False) -> str:
    pair_count_lines = ""
    if use_pair_counts:
        pair_count_lines = """
        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc"""
    return f"""  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons {next_face} rest =>
      cases {next_face} <;>
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
{pair_count_lines}"""


def render_extension_theorem(
    depth: int,
    theorem_name: str,
    previous_theorem: str,
    previous_count: int,
    prefixes: list[tuple[str, ...]],
) -> str:
    labels = disjunction("labels", prefixes)
    rcases_patterns = " | ".join("h" for _ in range(previous_count))
    next_face = f"f{depth - 1}"
    branch = f"""  · rcases h with ⟨rest2, rfl⟩
    cases rest2 with
    | nil =>
        rcases hs with ⟨hlen, _⟩
        norm_num at hlen
    | cons {next_face} rest =>
        cases {next_face} <;>
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
          try norm_num at ha"""
    branches = "\n".join(branch for _ in range(previous_count))
    return f"""

theorem {theorem_name}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels) :
{labels} := by
  rcases {previous_theorem} hs hg ha with {rcases_patterns}
{branches}
"""


def render_extension_sharded_theorem(
    depth: int,
    theorem_name: str,
    previous_theorem: str,
    parent_prefixes: list[tuple[str, ...]],
    prefixes: list[tuple[str, ...]],
) -> str:
    labels = disjunction("labels", prefixes)
    next_face = f"f{depth - 1}"
    shards = []
    for index, parent in enumerate(parent_prefixes):
        parent_hyp = (
            f"∃ rest : List Face, labels = {lean_face_list(parent)} ++ rest"
        )
        shards.append(
            f"""
theorem {theorem_name}_shard_{index:03d}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : {parent_hyp}) :
{labels} := by
{local_split_branch(next_face, use_pair_counts=True)}
"""
        )
    rcases_patterns = " | ".join(f"h{index}" for index in range(len(parent_prefixes)))
    group_branches = "\n".join(
        f"  · exact {theorem_name}_shard_{index:03d} hs hg ha hc h{index}"
        for index in range(len(parent_prefixes))
    )
    group = f"""
theorem {theorem_name}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
{labels} := by
  rcases {previous_theorem} hs hg ha with {rcases_patterns}
{group_branches}
"""
    return "".join(shards) + group


def render_closed_rank_theorem(
    depth: int,
    labels_theorem: str,
    prefixes: list[tuple[str, ...]],
) -> str:
    rank_subject = (
        "faceLabelsInContributionOrder (fun f : Face => f) "
        "(canonicalSeqOfPairWord (unrankPairWord rank))"
    )
    rank_disjunction = disjunction(rank_subject, prefixes)
    return f"""

theorem closedRank_prefix{depth}
    {{rank : Fin numPairWords}} {{badFace : Face}}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
{rank_disjunction} :=
  {labels_theorem} h.schedule h.squareGap h.localAxis (TopPairingClosedLanguageAtRank.pairCounts h)
"""


def render_closed_obj_theorem(
    depth: int,
    prefixes: list[tuple[str, ...]],
) -> str:
    obj_subject = "TopPairingBellmanObj.labels (fun f : Face => f) obj"
    obj_disjunction = disjunction(obj_subject, prefixes)
    return f"""

theorem closedObj_prefix{depth}
    {{badFace : Face}}
    (obj : TopPairingBellmanObj badFace) :
{obj_disjunction} :=
  closedRank_prefix{depth} obj.closed
"""


def render(prefixes4: list[tuple[str, ...]], prefixes5: list[tuple[str, ...]]) -> str:
    labels4 = disjunction("labels", prefixes4)
    rank4 = disjunction(
        "faceLabelsInContributionOrder (fun f : Face => f) "
        "(canonicalSeqOfPairWord (unrankPairWord rank))",
        prefixes4,
    )
    obj4 = disjunction(
        "TopPairingBellmanObj.labels (fun f : Face => f) obj",
        prefixes4,
    )
    labels5_theorem = render_extension_sharded_theorem(
        5, "labels_prefix5", "labels_prefix4", prefixes4, prefixes5
    )
    rank5_theorem = render_closed_rank_theorem(5, "labels_prefix5", prefixes5)
    obj5_theorem = render_closed_obj_theorem(5, prefixes5)

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
        + labels5_theorem
        + rank5_theorem
        + obj5_theorem
        + STATIC_SUFFIX
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    prefixes4 = enumerate_semantic_prefixes(4)
    prefixes5 = enumerate_semantic_prefixes(5)
    if len(prefixes4) != 8:
        raise RuntimeError(f"expected 8 depth-4 prefixes, got {len(prefixes4)}")
    if len(prefixes5) != 24:
        raise RuntimeError(f"expected 24 depth-5 prefixes, got {len(prefixes5)}")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render(prefixes4, prefixes5))
    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(
        json.dumps(summary_payload(prefixes4, prefixes5), indent=2, sort_keys=True)
        + "\n"
    )
    print(f"wrote {args.output}")
    print(f"wrote {args.summary_json}")


if __name__ == "__main__":
    main()
