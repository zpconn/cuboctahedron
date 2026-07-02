import Cuboctahedron.Search.TopPairingBellmanObject

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


theorem labels_prefix4
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) := by
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
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) :=
  labels_prefix4 h.schedule h.squareGap h.localAxis

theorem closedObj_prefix4
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) :=
  closedRank_prefix4 obj.closed

theorem labels_prefix5_shard_000
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_000
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inl h0
  · exact Or.inr (Or.inl h1)
  · exact Or.inr (Or.inr (Or.inl h2))

theorem labels_prefix5_shard_001
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_001
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inl h0)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))

theorem labels_prefix5_shard_002
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_002
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))

theorem labels_prefix5_shard_003
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_003
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))

theorem labels_prefix5_shard_004
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_004
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))

theorem labels_prefix5_shard_005
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_005
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))

theorem labels_prefix5_shard_006
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_006
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))

theorem labels_prefix5_shard_007
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f4 rest =>
      cases f4 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix5_lift_007
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (h2)))))))))))))))))))))))

theorem labels_prefix5
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) := by
  rcases labels_prefix4 hs hg ha with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7
  · exact labels_prefix5_lift_000 (labels_prefix5_shard_000 hs hg ha hc h0)
  · exact labels_prefix5_lift_001 (labels_prefix5_shard_001 hs hg ha hc h1)
  · exact labels_prefix5_lift_002 (labels_prefix5_shard_002 hs hg ha hc h2)
  · exact labels_prefix5_lift_003 (labels_prefix5_shard_003 hs hg ha hc h3)
  · exact labels_prefix5_lift_004 (labels_prefix5_shard_004 hs hg ha hc h4)
  · exact labels_prefix5_lift_005 (labels_prefix5_shard_005 hs hg ha hc h5)
  · exact labels_prefix5_lift_006 (labels_prefix5_shard_006 hs hg ha hc h6)
  · exact labels_prefix5_lift_007 (labels_prefix5_shard_007 hs hg ha hc h7)


theorem closedRank_prefix5
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) :=
  labels_prefix5 h.schedule h.squareGap h.localAxis (TopPairingClosedLanguageAtRank.pairCounts h)


theorem closedObj_prefix5
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) :=
  closedRank_prefix5 obj.closed

theorem labels_prefix6_shard_000
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_000
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inl h0
  · exact Or.inr (Or.inl h1)
  · exact Or.inr (Or.inr (Or.inl h2))

theorem labels_prefix6_shard_001
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_001
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inl h0)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))

theorem labels_prefix6_shard_002
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_002
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))

theorem labels_prefix6_shard_003
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_003
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))

theorem labels_prefix6_shard_004
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_004
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))

theorem labels_prefix6_shard_005
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_005
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))

theorem labels_prefix6_shard_006
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_006
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))

theorem labels_prefix6_shard_007
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_007
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))

theorem labels_prefix6_shard_008
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_008
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2 | h3
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h3))))))))))))))))))))))))))

theorem labels_prefix6_shard_009
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_009
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))

theorem labels_prefix6_shard_010
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_010
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_011
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_011
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_012
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_012
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2 | h3
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h3)))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_013
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_013
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_014
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_014
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_015
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_015
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_016
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_016
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_017
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_017
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_018
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_018
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2 | h3
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h3)))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_019
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_019
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_020
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_020
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_021
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_021
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1 | h2
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h2)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_022
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_022
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6_shard_023
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f5 rest =>
      cases f5 <;>
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

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc


theorem labels_prefix6_lift_023
    {labels : List Face} :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) ->
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  intro h
  rcases h with h0 | h1
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (h1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem labels_prefix6
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) := by
  rcases labels_prefix5 hs hg ha hc with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23
  · exact labels_prefix6_lift_000 (labels_prefix6_shard_000 hs hg ha hc h0)
  · exact labels_prefix6_lift_001 (labels_prefix6_shard_001 hs hg ha hc h1)
  · exact labels_prefix6_lift_002 (labels_prefix6_shard_002 hs hg ha hc h2)
  · exact labels_prefix6_lift_003 (labels_prefix6_shard_003 hs hg ha hc h3)
  · exact labels_prefix6_lift_004 (labels_prefix6_shard_004 hs hg ha hc h4)
  · exact labels_prefix6_lift_005 (labels_prefix6_shard_005 hs hg ha hc h5)
  · exact labels_prefix6_lift_006 (labels_prefix6_shard_006 hs hg ha hc h6)
  · exact labels_prefix6_lift_007 (labels_prefix6_shard_007 hs hg ha hc h7)
  · exact labels_prefix6_lift_008 (labels_prefix6_shard_008 hs hg ha hc h8)
  · exact labels_prefix6_lift_009 (labels_prefix6_shard_009 hs hg ha hc h9)
  · exact labels_prefix6_lift_010 (labels_prefix6_shard_010 hs hg ha hc h10)
  · exact labels_prefix6_lift_011 (labels_prefix6_shard_011 hs hg ha hc h11)
  · exact labels_prefix6_lift_012 (labels_prefix6_shard_012 hs hg ha hc h12)
  · exact labels_prefix6_lift_013 (labels_prefix6_shard_013 hs hg ha hc h13)
  · exact labels_prefix6_lift_014 (labels_prefix6_shard_014 hs hg ha hc h14)
  · exact labels_prefix6_lift_015 (labels_prefix6_shard_015 hs hg ha hc h15)
  · exact labels_prefix6_lift_016 (labels_prefix6_shard_016 hs hg ha hc h16)
  · exact labels_prefix6_lift_017 (labels_prefix6_shard_017 hs hg ha hc h17)
  · exact labels_prefix6_lift_018 (labels_prefix6_shard_018 hs hg ha hc h18)
  · exact labels_prefix6_lift_019 (labels_prefix6_shard_019 hs hg ha hc h19)
  · exact labels_prefix6_lift_020 (labels_prefix6_shard_020 hs hg ha hc h20)
  · exact labels_prefix6_lift_021 (labels_prefix6_shard_021 hs hg ha hc h21)
  · exact labels_prefix6_lift_022 (labels_prefix6_shard_022 hs hg ha hc h22)
  · exact labels_prefix6_lift_023 (labels_prefix6_shard_023 hs hg ha hc h23)


theorem closedRank_prefix6
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f) (canonicalSeqOfPairWord (unrankPairWord rank)) = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) :=
  labels_prefix6 h.schedule h.squareGap h.localAxis (TopPairingClosedLanguageAtRank.pairCounts h)


theorem closedObj_prefix6
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj = [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm] ++ rest) :=
  closedRank_prefix6 obj.closed

theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
