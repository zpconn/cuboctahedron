import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Tiny constructor-surface smoke for the closed top-pairing Bellman language.

The rejected concrete smoke tried to prove sampled memberships by reducing the
entire semantic language.  This file validates the intended generated shape
instead: a generated shard supplies explicit proofs of each component, and the
closed-language theorem is assembled without any global `Decidable` instances
or whole-language Boolean reduction.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke

open Cuboctahedron

theorem closedLanguageOfGeneratedFields
    {rank : Fin numPairWords} {badFace : Face}
    (cancellation :
      TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation schedule squareGap localAxis canonicalBadFace

theorem closedLanguageOfGeneratedTraces
    {rank : Fin numPairWords} {badFace : Face}
    (cancellation :
      TopPairingLanguageAtRank rank)
    (scheduleLength :
      (faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14)
    (scheduleTrace :
      TopPairingStepScheduleFrom 0
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGapTrace :
      TopPairingSquareGapFrom 0
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat)
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (topPairingStepScheduleLabels_ofFrom scheduleLength scheduleTrace)
    (topPairingSquareGapLabels_ofFrom squareGapTrace)
    (topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

private def sampleContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm,
    Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem sampleContributionLabels_length :
    sampleContributionLabels.length = 14 := by
  rfl

private theorem sampleScheduleTrace :
    TopPairingStepScheduleFrom 0 sampleContributionLabels := by
  unfold sampleContributionLabels
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  apply topPairingStepScheduleFrom_cons
  · simp [topPairingAllowedFacesAtStep]
  exact topPairingStepScheduleFrom_nil

private theorem sampleScheduleLabels :
    TopPairingStepScheduleLabels sampleContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    sampleContributionLabels_length sampleScheduleTrace

private theorem sampleSquareGapTrace :
    TopPairingSquareGapFrom 0 sampleContributionLabels := by
  unfold sampleContributionLabels
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem sampleSquareGapLabels :
    TopPairingSquareGapLabels sampleContributionLabels :=
  topPairingSquareGapLabels_ofFrom sampleSquareGapTrace

private theorem sampleLocalAxisTraceOfGeneratedStates
    {m01 m02 m03 m04 m05 m06 m07 : Mat3 Rat}
    {m08 m09 m10 m11 m12 m13 m14 : Mat3 Rat}
    {v00 v01 v02 v03 v04 v05 v06 : Rat}
    {v07 v08 v09 v10 v11 v12 v13 : Rat}
    (hdot00 :
      dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
        topPairingLocalAxis = v00)
    (hpos00 : 0 < v00)
    (hnext00 : m01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)))
    (hdot01 :
      dot (matVec m01 (normalQ Face.ym)) topPairingLocalAxis = v01)
    (hpos01 : 0 < v01)
    (hnext01 : m02 = matMul m01 (reflM (normalQ Face.ym)))
    (hdot02 :
      dot (matVec m02 (normalQ Face.yp)) topPairingLocalAxis = v02)
    (hpos02 : 0 < v02)
    (hnext02 : m03 = matMul m02 (reflM (normalQ Face.yp)))
    (hdot03 :
      dot (matVec m03 (normalQ Face.zm)) topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 : m04 = matMul m03 (reflM (normalQ Face.zm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.zp)) topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 : m05 = matMul m04 (reflM (normalQ Face.zp)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tmmm)) topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 : m06 = matMul m05 (reflM (normalQ Face.tmmm)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmm)) topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 : m07 = matMul m06 (reflM (normalQ Face.tpmm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tppm)) topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 : m08 = matMul m07 (reflM (normalQ Face.tppm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tpmp)) topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 : m09 = matMul m08 (reflM (normalQ Face.tpmp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tmpm)) topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 : m10 = matMul m09 (reflM (normalQ Face.tmpm)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tppp)) topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 : m11 = matMul m10 (reflM (normalQ Face.tppp)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.tmpp)) topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 : m12 = matMul m11 (reflM (normalQ Face.tmpp)))
    (hdot12 :
      dot (matVec m12 (normalQ Face.tmmp)) topPairingLocalAxis = v12)
    (hpos12 : 0 < v12)
    (hnext12 : m13 = matMul m12 (reflM (normalQ Face.tmmp)))
    (hdot13 :
      dot (matVec m13 (normalQ Face.xp)) topPairingLocalAxis = v13)
    (hpos13 : 0 < v13)
    (hnext13 : m14 = matMul m13 (reflM (normalQ Face.xp))) :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) sampleContributionLabels := by
  unfold sampleContributionLabels
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot00 hpos00
  · exact hnext00
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot01 hpos01
  · exact hnext01
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot02 hpos02
  · exact hnext02
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot03 hpos03
  · exact hnext03
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot04 hpos04
  · exact hnext04
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot05 hpos05
  · exact hnext05
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot06 hpos06
  · exact hnext06
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot07 hpos07
  · exact hnext07
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot08 hpos08
  · exact hnext08
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot09 hpos09
  · exact hnext09
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot10 hpos10
  · exact hnext10
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot11 hpos11
  · exact hnext11
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot12 hpos12
  · exact hnext12
  apply topPairingLocalAxisFrom_cons_next
  · exact topPairingLocalAxisAllows_of_dot_eq hdot13 hpos13
  · exact hnext13
  exact topPairingLocalAxisFrom_nil

theorem closedLanguageOfLiteralTrace
    {rank : Fin numPairWords} {badFace : Face}
    (hlabels :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
          sampleContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) sampleContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [hlabels]
      exact sampleScheduleLabels)
    (by
      rw [hlabels]
      exact sampleSquareGapLabels)
    (by
      rw [hlabels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem closedLanguageOfPositiveTemplateTrace
    {rank : Fin numPairWords} {badFace : Face}
    {template : Step14 -> Face}
    (template_matches :
      PairWordMatchesSeq (unrankPairWord rank) template)
    (template_start :
      template 0 = Face.xp)
    (template_positive :
      forall i : Step14, positiveSignOfFace (template i) = true)
    (template_labels :
      faceLabelsInContributionOrder (fun f => f) template =
        sampleContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) sampleContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  closedLanguageOfLiteralTrace
    (faceLabelsInContributionOrder_eq_of_positive_template
      template_matches template_start template_positive template_labels)
    cancellation localAxisTrace canonicalBadFace

theorem closedLanguageFieldSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke
