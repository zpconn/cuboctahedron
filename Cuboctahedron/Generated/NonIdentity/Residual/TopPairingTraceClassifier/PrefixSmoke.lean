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
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) \/
    (∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) :=
  labels_prefix4 h.schedule h.squareGap h.localAxis

theorem closedObj_prefix4
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.tmpm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.yp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.yp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest) \/
    (∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        [Face.xm, Face.ym, Face.zm, Face.zp] ++ rest) :=
  closedRank_prefix4 obj.closed

theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
