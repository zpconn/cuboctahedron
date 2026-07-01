import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke24

open Cuboctahedron

private def generated24ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated24ContributionLabels_length :
    generated24ContributionLabels.length = 14 := by
  rfl

private theorem generated24ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated24ContributionLabels := by
  unfold generated24ContributionLabels
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

private theorem generated24ScheduleLabels :
    TopPairingStepScheduleLabels generated24ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated24ContributionLabels_length generated24ScheduleTrace

private theorem generated24SquareGapTrace :
    TopPairingSquareGapFrom 0 generated24ContributionLabels := by
  unfold generated24ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated24SquareGapLabels :
    TopPairingSquareGapLabels generated24ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated24SquareGapTrace

private theorem generated24LocalAxisTraceOfGeneratedStates
    {m01 m02 m03 m04 m05 m06 m07 m08 m09 m10 m11 m12 m13 m14 : Mat3 Rat}
    {v00 v01 v02 v03 v04 v05 v06 v07 v08 v09 v10 v11 v12 v13 : Rat}
    (hdot00 :
      dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
        topPairingLocalAxis = v00)
    (hpos00 : 0 < v00)
    (hnext00 :
      m01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)))
    (hdot01 :
      dot (matVec m01 (normalQ Face.ym))
        topPairingLocalAxis = v01)
    (hpos01 : 0 < v01)
    (hnext01 :
      m02 = matMul m01 (reflM (normalQ Face.ym)))
    (hdot02 :
      dot (matVec m02 (normalQ Face.tmpm))
        topPairingLocalAxis = v02)
    (hpos02 : 0 < v02)
    (hnext02 :
      m03 = matMul m02 (reflM (normalQ Face.tmpm)))
    (hdot03 :
      dot (matVec m03 (normalQ Face.tppm))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.tppm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.tpmm))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tpmm)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tppp))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tppp)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.zp))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.zp)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.zm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.zm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tmmm))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tmmm)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tpmp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tpmp)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.yp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.yp)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.tmpp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.tmpp)))
    (hdot12 :
      dot (matVec m12 (normalQ Face.tmmp))
        topPairingLocalAxis = v12)
    (hpos12 : 0 < v12)
    (hnext12 :
      m13 = matMul m12 (reflM (normalQ Face.tmmp)))
    (hdot13 :
      dot (matVec m13 (normalQ Face.xp))
        topPairingLocalAxis = v13)
    (hpos13 : 0 < v13)
    (hnext13 :
      m14 = matMul m13 (reflM (normalQ Face.xp)))
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels := by
  unfold generated24ContributionLabels
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

def generated24ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.zm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated24ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated24ForcedSeq = generated24ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated24ForcedSeq generated24ContributionLabels
  rfl

def generated24Rank : Fin numPairWords :=
  ⟨946777, by decide⟩

private theorem generated24ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated24ForcedSeq) = some generated24Rank := by
  decide

private theorem generated24ForcedSeq_unrank_pairword :
    unrankPairWord generated24Rank = pairWordOfSeq generated24ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated24ForcedSeq)
      generated24Rank).1 generated24ForcedSeq_rank).symm

private theorem generated24ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated24Rank) generated24ForcedSeq := by
  rw [generated24ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated24ForcedSeq

private theorem generated24TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated24Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated24ForcedSeq_unrank_pairword]
  rfl

private theorem generated24CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated24M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated24M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated24M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated24M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated24M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated24M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated24M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }

private def generated24M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated24M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated24M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated24M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated24M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated24M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated24M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated24V00 : Rat :=
  1

private def generated24V01 : Rat :=
  1

private def generated24V02 : Rat :=
  3

private def generated24V03 : Rat :=
  3

private def generated24V04 : Rat :=
  3

private def generated24V05 : Rat :=
  1

private def generated24V06 : Rat :=
  (7/3)

private def generated24V07 : Rat :=
  (7/3)

private def generated24V08 : Rat :=
  1

private def generated24V09 : Rat :=
  3

private def generated24V10 : Rat :=
  1

private def generated24V11 : Rat :=
  3

private def generated24V12 : Rat :=
  3

private def generated24V13 : Rat :=
  1

private theorem generated24Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated24V00 := by
  norm_num [generated24V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos00 :
    0 < generated24V00 := by
  norm_num [generated24V00]

private theorem generated24Hnext00 :
    generated24M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated24M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot01 :
    dot (matVec generated24M01 (normalQ Face.ym))
      topPairingLocalAxis = generated24V01 := by
  norm_num [generated24V01, generated24M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos01 :
    0 < generated24V01 := by
  norm_num [generated24V01]

private theorem generated24Hnext01 :
    generated24M02 = matMul generated24M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated24M02, generated24M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot02 :
    dot (matVec generated24M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated24V02 := by
  norm_num [generated24V02, generated24M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos02 :
    0 < generated24V02 := by
  norm_num [generated24V02]

private theorem generated24Hnext02 :
    generated24M03 = matMul generated24M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated24M03, generated24M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot03 :
    dot (matVec generated24M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated24V03 := by
  norm_num [generated24V03, generated24M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos03 :
    0 < generated24V03 := by
  norm_num [generated24V03]

private theorem generated24Hnext03 :
    generated24M04 = matMul generated24M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated24M04, generated24M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot04 :
    dot (matVec generated24M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated24V04 := by
  norm_num [generated24V04, generated24M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos04 :
    0 < generated24V04 := by
  norm_num [generated24V04]

private theorem generated24Hnext04 :
    generated24M05 = matMul generated24M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated24M05, generated24M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot05 :
    dot (matVec generated24M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated24V05 := by
  norm_num [generated24V05, generated24M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos05 :
    0 < generated24V05 := by
  norm_num [generated24V05]

private theorem generated24Hnext05 :
    generated24M06 = matMul generated24M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated24M06, generated24M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot06 :
    dot (matVec generated24M06 (normalQ Face.zp))
      topPairingLocalAxis = generated24V06 := by
  norm_num [generated24V06, generated24M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos06 :
    0 < generated24V06 := by
  norm_num [generated24V06]

private theorem generated24Hnext06 :
    generated24M07 = matMul generated24M06 (reflM (normalQ Face.zp)) := by
  norm_num [generated24M07, generated24M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot07 :
    dot (matVec generated24M07 (normalQ Face.zm))
      topPairingLocalAxis = generated24V07 := by
  norm_num [generated24V07, generated24M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos07 :
    0 < generated24V07 := by
  norm_num [generated24V07]

private theorem generated24Hnext07 :
    generated24M08 = matMul generated24M07 (reflM (normalQ Face.zm)) := by
  norm_num [generated24M08, generated24M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot08 :
    dot (matVec generated24M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated24V08 := by
  norm_num [generated24V08, generated24M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos08 :
    0 < generated24V08 := by
  norm_num [generated24V08]

private theorem generated24Hnext08 :
    generated24M09 = matMul generated24M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated24M09, generated24M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot09 :
    dot (matVec generated24M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated24V09 := by
  norm_num [generated24V09, generated24M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos09 :
    0 < generated24V09 := by
  norm_num [generated24V09]

private theorem generated24Hnext09 :
    generated24M10 = matMul generated24M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated24M10, generated24M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot10 :
    dot (matVec generated24M10 (normalQ Face.yp))
      topPairingLocalAxis = generated24V10 := by
  norm_num [generated24V10, generated24M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos10 :
    0 < generated24V10 := by
  norm_num [generated24V10]

private theorem generated24Hnext10 :
    generated24M11 = matMul generated24M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated24M11, generated24M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot11 :
    dot (matVec generated24M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated24V11 := by
  norm_num [generated24V11, generated24M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos11 :
    0 < generated24V11 := by
  norm_num [generated24V11]

private theorem generated24Hnext11 :
    generated24M12 = matMul generated24M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated24M12, generated24M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot12 :
    dot (matVec generated24M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated24V12 := by
  norm_num [generated24V12, generated24M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos12 :
    0 < generated24V12 := by
  norm_num [generated24V12]

private theorem generated24Hnext12 :
    generated24M13 = matMul generated24M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated24M13, generated24M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24Hdot13 :
    dot (matVec generated24M13 (normalQ Face.xp))
      topPairingLocalAxis = generated24V13 := by
  norm_num [generated24V13, generated24M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated24Hpos13 :
    0 < generated24V13 := by
  norm_num [generated24V13]

private theorem generated24Hnext13 :
    generated24M14 = matMul generated24M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated24M14, generated24M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated24LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels :=
  generated24LocalAxisTraceOfGeneratedStates
    generated24Hdot00
    generated24Hpos00
    generated24Hnext00
    generated24Hdot01
    generated24Hpos01
    generated24Hnext01
    generated24Hdot02
    generated24Hpos02
    generated24Hnext02
    generated24Hdot03
    generated24Hpos03
    generated24Hnext03
    generated24Hdot04
    generated24Hpos04
    generated24Hnext04
    generated24Hdot05
    generated24Hpos05
    generated24Hnext05
    generated24Hdot06
    generated24Hpos06
    generated24Hnext06
    generated24Hdot07
    generated24Hpos07
    generated24Hnext07
    generated24Hdot08
    generated24Hpos08
    generated24Hnext08
    generated24Hdot09
    generated24Hpos09
    generated24Hnext09
    generated24Hdot10
    generated24Hpos10
    generated24Hnext10
    generated24Hdot11
    generated24Hpos11
    generated24Hnext11
    generated24Hdot12
    generated24Hpos12
    generated24Hnext12
    generated24Hdot13
    generated24Hpos13
    generated24Hnext13


theorem generated24ClosedLanguageOfPositiveTemplateTrace
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
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated24ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated24SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated24ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated24ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated24SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated24ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated24SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated24ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated24ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated24ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated24ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated24ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated24ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated24ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated24ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated24LocalAxisTraceConcrete
    canonicalBadFace

theorem generated24ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated24ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated24LocalAxisTraceConcrete
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated24ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated24ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated24LocalAxisTraceConcrete
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated24ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated24ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated24LocalAxisTraceConcrete
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated24ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated24ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated24LocalAxisTraceConcrete
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated24ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated24ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated24ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated24ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated24Rank generated24ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated24Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated24Rank seq badFace :=
  generated24ClosedLanguageForSeqOfGeneratedForcedSeq
    generated24ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated24ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated24Rank generated24ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated24Rank) :
    TopPairingClosedLanguageForSeq generated24Rank seq Face.ym :=
  generated24ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated24CanonicalBadFaceCompatible

theorem generated24ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated24Rank generated24ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated24Rank seq Face.ym :=
  generated24ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated24TopPairingLanguageAtRank

theorem generated24GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke24
