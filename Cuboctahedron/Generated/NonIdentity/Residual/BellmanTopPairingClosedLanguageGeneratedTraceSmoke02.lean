import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke02

open Cuboctahedron

private def generated02ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated02ContributionLabels_length :
    generated02ContributionLabels.length = 14 := by
  rfl

private theorem generated02ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated02ContributionLabels := by
  unfold generated02ContributionLabels
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

private theorem generated02ScheduleLabels :
    TopPairingStepScheduleLabels generated02ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated02ContributionLabels_length generated02ScheduleTrace

private theorem generated02SquareGapTrace :
    TopPairingSquareGapFrom 0 generated02ContributionLabels := by
  unfold generated02ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated02SquareGapLabels :
    TopPairingSquareGapLabels generated02ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated02SquareGapTrace

private theorem generated02LocalAxisTraceOfGeneratedStates
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
      dot (matVec m04 (normalQ Face.zm))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.zm)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.zp))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.zp)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tpmm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels := by
  unfold generated02ContributionLabels
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

def generated02ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated02ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated02ForcedSeq = generated02ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated02ForcedSeq generated02ContributionLabels
  rfl

def generated02Rank : Fin numPairWords :=
  ⟨23197, by decide⟩

private theorem generated02ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated02ForcedSeq) = some generated02Rank := by
  decide

private theorem generated02ForcedSeq_unrank_pairword :
    unrankPairWord generated02Rank = pairWordOfSeq generated02ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated02ForcedSeq)
      generated02Rank).1 generated02ForcedSeq_rank).symm

private theorem generated02ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated02Rank) generated02ForcedSeq := by
  rw [generated02ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated02ForcedSeq

private theorem generated02TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated02Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated02ForcedSeq_unrank_pairword]
  rfl

private theorem generated02CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated02M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated02M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated02M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated02M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated02M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }

private def generated02M06 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated02M07 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated02M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated02M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated02M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated02M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated02M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated02M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated02M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated02V00 : Rat :=
  1

private def generated02V01 : Rat :=
  1

private def generated02V02 : Rat :=
  1

private def generated02V03 : Rat :=
  3

private def generated02V04 : Rat :=
  1

private def generated02V05 : Rat :=
  1

private def generated02V06 : Rat :=
  3

private def generated02V07 : Rat :=
  3

private def generated02V08 : Rat :=
  1

private def generated02V09 : Rat :=
  1

private def generated02V10 : Rat :=
  3

private def generated02V11 : Rat :=
  3

private def generated02V12 : Rat :=
  3

private def generated02V13 : Rat :=
  1

private theorem generated02Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated02V00 := by
  norm_num [generated02V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos00 :
    0 < generated02V00 := by
  norm_num [generated02V00]

private theorem generated02Hnext00 :
    generated02M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated02M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot01 :
    dot (matVec generated02M01 (normalQ Face.ym))
      topPairingLocalAxis = generated02V01 := by
  norm_num [generated02V01, generated02M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos01 :
    0 < generated02V01 := by
  norm_num [generated02V01]

private theorem generated02Hnext01 :
    generated02M02 = matMul generated02M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated02M02, generated02M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot02 :
    dot (matVec generated02M02 (normalQ Face.yp))
      topPairingLocalAxis = generated02V02 := by
  norm_num [generated02V02, generated02M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos02 :
    0 < generated02V02 := by
  norm_num [generated02V02]

private theorem generated02Hnext02 :
    generated02M03 = matMul generated02M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated02M03, generated02M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot03 :
    dot (matVec generated02M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated02V03 := by
  norm_num [generated02V03, generated02M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos03 :
    0 < generated02V03 := by
  norm_num [generated02V03]

private theorem generated02Hnext03 :
    generated02M04 = matMul generated02M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated02M04, generated02M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot04 :
    dot (matVec generated02M04 (normalQ Face.zm))
      topPairingLocalAxis = generated02V04 := by
  norm_num [generated02V04, generated02M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos04 :
    0 < generated02V04 := by
  norm_num [generated02V04]

private theorem generated02Hnext04 :
    generated02M05 = matMul generated02M04 (reflM (normalQ Face.zm)) := by
  norm_num [generated02M05, generated02M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot05 :
    dot (matVec generated02M05 (normalQ Face.zp))
      topPairingLocalAxis = generated02V05 := by
  norm_num [generated02V05, generated02M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos05 :
    0 < generated02V05 := by
  norm_num [generated02V05]

private theorem generated02Hnext05 :
    generated02M06 = matMul generated02M05 (reflM (normalQ Face.zp)) := by
  norm_num [generated02M06, generated02M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot06 :
    dot (matVec generated02M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated02V06 := by
  norm_num [generated02V06, generated02M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos06 :
    0 < generated02V06 := by
  norm_num [generated02V06]

private theorem generated02Hnext06 :
    generated02M07 = matMul generated02M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated02M07, generated02M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot07 :
    dot (matVec generated02M07 (normalQ Face.tppm))
      topPairingLocalAxis = generated02V07 := by
  norm_num [generated02V07, generated02M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos07 :
    0 < generated02V07 := by
  norm_num [generated02V07]

private theorem generated02Hnext07 :
    generated02M08 = matMul generated02M07 (reflM (normalQ Face.tppm)) := by
  norm_num [generated02M08, generated02M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot08 :
    dot (matVec generated02M08 (normalQ Face.tpmp))
      topPairingLocalAxis = generated02V08 := by
  norm_num [generated02V08, generated02M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos08 :
    0 < generated02V08 := by
  norm_num [generated02V08]

private theorem generated02Hnext08 :
    generated02M09 = matMul generated02M08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated02M09, generated02M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot09 :
    dot (matVec generated02M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated02V09 := by
  norm_num [generated02V09, generated02M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos09 :
    0 < generated02V09 := by
  norm_num [generated02V09]

private theorem generated02Hnext09 :
    generated02M10 = matMul generated02M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated02M10, generated02M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot10 :
    dot (matVec generated02M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated02V10 := by
  norm_num [generated02V10, generated02M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos10 :
    0 < generated02V10 := by
  norm_num [generated02V10]

private theorem generated02Hnext10 :
    generated02M11 = matMul generated02M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated02M11, generated02M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot11 :
    dot (matVec generated02M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated02V11 := by
  norm_num [generated02V11, generated02M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos11 :
    0 < generated02V11 := by
  norm_num [generated02V11]

private theorem generated02Hnext11 :
    generated02M12 = matMul generated02M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated02M12, generated02M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot12 :
    dot (matVec generated02M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated02V12 := by
  norm_num [generated02V12, generated02M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos12 :
    0 < generated02V12 := by
  norm_num [generated02V12]

private theorem generated02Hnext12 :
    generated02M13 = matMul generated02M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated02M13, generated02M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02Hdot13 :
    dot (matVec generated02M13 (normalQ Face.xp))
      topPairingLocalAxis = generated02V13 := by
  norm_num [generated02V13, generated02M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated02Hpos13 :
    0 < generated02V13 := by
  norm_num [generated02V13]

private theorem generated02Hnext13 :
    generated02M14 = matMul generated02M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated02M14, generated02M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated02LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels :=
  generated02LocalAxisTraceOfGeneratedStates
    generated02Hdot00
    generated02Hpos00
    generated02Hnext00
    generated02Hdot01
    generated02Hpos01
    generated02Hnext01
    generated02Hdot02
    generated02Hpos02
    generated02Hnext02
    generated02Hdot03
    generated02Hpos03
    generated02Hnext03
    generated02Hdot04
    generated02Hpos04
    generated02Hnext04
    generated02Hdot05
    generated02Hpos05
    generated02Hnext05
    generated02Hdot06
    generated02Hpos06
    generated02Hnext06
    generated02Hdot07
    generated02Hpos07
    generated02Hnext07
    generated02Hdot08
    generated02Hpos08
    generated02Hnext08
    generated02Hdot09
    generated02Hpos09
    generated02Hnext09
    generated02Hdot10
    generated02Hpos10
    generated02Hnext10
    generated02Hdot11
    generated02Hpos11
    generated02Hnext11
    generated02Hdot12
    generated02Hpos12
    generated02Hnext12
    generated02Hdot13
    generated02Hpos13
    generated02Hnext13


theorem generated02ClosedLanguageOfPositiveTemplateTrace
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
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated02ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated02SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated02ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated02ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated02SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated02ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated02SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated02ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated02ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated02ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated02ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated02ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated02ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated02ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated02ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated02LocalAxisTraceConcrete
    canonicalBadFace

theorem generated02ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated02ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated02LocalAxisTraceConcrete
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated02ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated02ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated02LocalAxisTraceConcrete
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated02ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated02ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated02LocalAxisTraceConcrete
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated02ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated02ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated02LocalAxisTraceConcrete
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated02ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated02ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated02ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated02ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated02Rank generated02ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated02Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated02Rank seq badFace :=
  generated02ClosedLanguageForSeqOfGeneratedForcedSeq
    generated02ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated02ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated02Rank generated02ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated02Rank) :
    TopPairingClosedLanguageForSeq generated02Rank seq Face.ym :=
  generated02ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated02CanonicalBadFaceCompatible

theorem generated02ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated02Rank generated02ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated02Rank seq Face.ym :=
  generated02ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated02TopPairingLanguageAtRank

theorem generated02GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke02
