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

theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
