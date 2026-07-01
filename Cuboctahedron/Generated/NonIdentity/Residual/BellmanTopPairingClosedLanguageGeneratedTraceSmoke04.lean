import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke04

open Cuboctahedron

private def generated04ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp, Face.zm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated04ContributionLabels_length :
    generated04ContributionLabels.length = 14 := by
  rfl

private theorem generated04ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated04ContributionLabels := by
  unfold generated04ContributionLabels
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

private theorem generated04ScheduleLabels :
    TopPairingStepScheduleLabels generated04ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated04ContributionLabels_length generated04ScheduleTrace

private theorem generated04SquareGapTrace :
    TopPairingSquareGapFrom 0 generated04ContributionLabels := by
  unfold generated04ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated04SquareGapLabels :
    TopPairingSquareGapLabels generated04ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated04SquareGapTrace

private theorem generated04LocalAxisTraceOfGeneratedStates
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
      dot (matVec m02 (normalQ Face.yp))
        topPairingLocalAxis = v02)
    (hpos02 : 0 < v02)
    (hnext02 :
      m03 = matMul m02 (reflM (normalQ Face.yp)))
    (hdot03 :
      dot (matVec m03 (normalQ Face.tmmm))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.tmmm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.tpmm))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tpmm)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.zp))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.zp)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.zm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.zm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tppm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tppm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tpmp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tpmp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tmpm))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tmpm)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tppp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tppp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels := by
  unfold generated04ContributionLabels
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

def generated04ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated04ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated04ForcedSeq = generated04ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated04ForcedSeq generated04ContributionLabels
  rfl

def generated04Rank : Fin numPairWords :=
  ⟨40387, by decide⟩

private theorem generated04ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated04ForcedSeq) = some generated04Rank := by
  decide

private theorem generated04ForcedSeq_unrank_pairword :
    unrankPairWord generated04Rank = pairWordOfSeq generated04ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated04ForcedSeq)
      generated04Rank).1 generated04ForcedSeq_rank).symm

private theorem generated04ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated04Rank) generated04ForcedSeq := by
  rw [generated04ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated04ForcedSeq

private theorem generated04TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated04Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated04ForcedSeq_unrank_pairword]
  rfl

private theorem generated04CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated04M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated04M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated04M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated04M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated04M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated04M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }

private def generated04M07 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated04M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated04M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated04M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated04M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated04M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated04M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated04M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated04V00 : Rat :=
  1

private def generated04V01 : Rat :=
  1

private def generated04V02 : Rat :=
  1

private def generated04V03 : Rat :=
  3

private def generated04V04 : Rat :=
  3

private def generated04V05 : Rat :=
  1

private def generated04V06 : Rat :=
  1

private def generated04V07 : Rat :=
  3

private def generated04V08 : Rat :=
  1

private def generated04V09 : Rat :=
  1

private def generated04V10 : Rat :=
  3

private def generated04V11 : Rat :=
  3

private def generated04V12 : Rat :=
  3

private def generated04V13 : Rat :=
  1

private theorem generated04Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated04V00 := by
  norm_num [generated04V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos00 :
    0 < generated04V00 := by
  norm_num [generated04V00]

private theorem generated04Hnext00 :
    generated04M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated04M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot01 :
    dot (matVec generated04M01 (normalQ Face.ym))
      topPairingLocalAxis = generated04V01 := by
  norm_num [generated04V01, generated04M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos01 :
    0 < generated04V01 := by
  norm_num [generated04V01]

private theorem generated04Hnext01 :
    generated04M02 = matMul generated04M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated04M02, generated04M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot02 :
    dot (matVec generated04M02 (normalQ Face.yp))
      topPairingLocalAxis = generated04V02 := by
  norm_num [generated04V02, generated04M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos02 :
    0 < generated04V02 := by
  norm_num [generated04V02]

private theorem generated04Hnext02 :
    generated04M03 = matMul generated04M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated04M03, generated04M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot03 :
    dot (matVec generated04M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated04V03 := by
  norm_num [generated04V03, generated04M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos03 :
    0 < generated04V03 := by
  norm_num [generated04V03]

private theorem generated04Hnext03 :
    generated04M04 = matMul generated04M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated04M04, generated04M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot04 :
    dot (matVec generated04M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated04V04 := by
  norm_num [generated04V04, generated04M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos04 :
    0 < generated04V04 := by
  norm_num [generated04V04]

private theorem generated04Hnext04 :
    generated04M05 = matMul generated04M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated04M05, generated04M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot05 :
    dot (matVec generated04M05 (normalQ Face.zp))
      topPairingLocalAxis = generated04V05 := by
  norm_num [generated04V05, generated04M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos05 :
    0 < generated04V05 := by
  norm_num [generated04V05]

private theorem generated04Hnext05 :
    generated04M06 = matMul generated04M05 (reflM (normalQ Face.zp)) := by
  norm_num [generated04M06, generated04M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot06 :
    dot (matVec generated04M06 (normalQ Face.zm))
      topPairingLocalAxis = generated04V06 := by
  norm_num [generated04V06, generated04M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos06 :
    0 < generated04V06 := by
  norm_num [generated04V06]

private theorem generated04Hnext06 :
    generated04M07 = matMul generated04M06 (reflM (normalQ Face.zm)) := by
  norm_num [generated04M07, generated04M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot07 :
    dot (matVec generated04M07 (normalQ Face.tppm))
      topPairingLocalAxis = generated04V07 := by
  norm_num [generated04V07, generated04M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos07 :
    0 < generated04V07 := by
  norm_num [generated04V07]

private theorem generated04Hnext07 :
    generated04M08 = matMul generated04M07 (reflM (normalQ Face.tppm)) := by
  norm_num [generated04M08, generated04M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot08 :
    dot (matVec generated04M08 (normalQ Face.tpmp))
      topPairingLocalAxis = generated04V08 := by
  norm_num [generated04V08, generated04M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos08 :
    0 < generated04V08 := by
  norm_num [generated04V08]

private theorem generated04Hnext08 :
    generated04M09 = matMul generated04M08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated04M09, generated04M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot09 :
    dot (matVec generated04M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated04V09 := by
  norm_num [generated04V09, generated04M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos09 :
    0 < generated04V09 := by
  norm_num [generated04V09]

private theorem generated04Hnext09 :
    generated04M10 = matMul generated04M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated04M10, generated04M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot10 :
    dot (matVec generated04M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated04V10 := by
  norm_num [generated04V10, generated04M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos10 :
    0 < generated04V10 := by
  norm_num [generated04V10]

private theorem generated04Hnext10 :
    generated04M11 = matMul generated04M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated04M11, generated04M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot11 :
    dot (matVec generated04M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated04V11 := by
  norm_num [generated04V11, generated04M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos11 :
    0 < generated04V11 := by
  norm_num [generated04V11]

private theorem generated04Hnext11 :
    generated04M12 = matMul generated04M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated04M12, generated04M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot12 :
    dot (matVec generated04M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated04V12 := by
  norm_num [generated04V12, generated04M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos12 :
    0 < generated04V12 := by
  norm_num [generated04V12]

private theorem generated04Hnext12 :
    generated04M13 = matMul generated04M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated04M13, generated04M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04Hdot13 :
    dot (matVec generated04M13 (normalQ Face.xp))
      topPairingLocalAxis = generated04V13 := by
  norm_num [generated04V13, generated04M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated04Hpos13 :
    0 < generated04V13 := by
  norm_num [generated04V13]

private theorem generated04Hnext13 :
    generated04M14 = matMul generated04M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated04M14, generated04M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated04LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels :=
  generated04LocalAxisTraceOfGeneratedStates
    generated04Hdot00
    generated04Hpos00
    generated04Hnext00
    generated04Hdot01
    generated04Hpos01
    generated04Hnext01
    generated04Hdot02
    generated04Hpos02
    generated04Hnext02
    generated04Hdot03
    generated04Hpos03
    generated04Hnext03
    generated04Hdot04
    generated04Hpos04
    generated04Hnext04
    generated04Hdot05
    generated04Hpos05
    generated04Hnext05
    generated04Hdot06
    generated04Hpos06
    generated04Hnext06
    generated04Hdot07
    generated04Hpos07
    generated04Hnext07
    generated04Hdot08
    generated04Hpos08
    generated04Hnext08
    generated04Hdot09
    generated04Hpos09
    generated04Hnext09
    generated04Hdot10
    generated04Hpos10
    generated04Hnext10
    generated04Hdot11
    generated04Hpos11
    generated04Hnext11
    generated04Hdot12
    generated04Hpos12
    generated04Hnext12
    generated04Hdot13
    generated04Hpos13
    generated04Hnext13


theorem generated04ClosedLanguageOfPositiveTemplateTrace
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
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated04ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated04SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated04ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated04ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated04SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated04ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated04SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated04ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated04ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated04ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated04ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated04ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated04ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated04ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated04ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated04LocalAxisTraceConcrete
    canonicalBadFace

theorem generated04ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated04ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated04LocalAxisTraceConcrete
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated04ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated04ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated04LocalAxisTraceConcrete
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated04ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated04ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated04LocalAxisTraceConcrete
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated04ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated04ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated04LocalAxisTraceConcrete
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated04ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated04ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated04ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated04ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated04Rank generated04ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated04Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated04Rank seq badFace :=
  generated04ClosedLanguageForSeqOfGeneratedForcedSeq
    generated04ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated04ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated04Rank generated04ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated04Rank) :
    TopPairingClosedLanguageForSeq generated04Rank seq Face.ym :=
  generated04ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated04CanonicalBadFaceCompatible

theorem generated04ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated04Rank generated04ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated04Rank seq Face.ym :=
  generated04ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated04TopPairingLanguageAtRank

theorem generated04GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke04
