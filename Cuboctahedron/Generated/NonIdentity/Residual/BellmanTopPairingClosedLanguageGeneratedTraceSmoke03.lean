import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke03

open Cuboctahedron

private def generated03ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.zp, Face.tmmp, Face.xp]

private theorem generated03ContributionLabels_length :
    generated03ContributionLabels.length = 14 := by
  rfl

private theorem generated03ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated03ContributionLabels := by
  unfold generated03ContributionLabels
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

private theorem generated03ScheduleLabels :
    TopPairingStepScheduleLabels generated03ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated03ContributionLabels_length generated03ScheduleTrace

private theorem generated03SquareGapTrace :
    TopPairingSquareGapFrom 0 generated03ContributionLabels := by
  unfold generated03ContributionLabels
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
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated03SquareGapLabels :
    TopPairingSquareGapLabels generated03ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated03SquareGapTrace

private theorem generated03LocalAxisTraceOfGeneratedStates
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
      dot (matVec m05 (normalQ Face.tpmp))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tpmp)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tppp))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tppp)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tpmm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tpmm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tmpp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tmpp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tppm))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tppm)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tmpm))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tmpm)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.zp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.zp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels := by
  unfold generated03ContributionLabels
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

def generated03ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tpmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.zp
  | _ => Face.tmmp

private theorem generated03ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated03ForcedSeq = generated03ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated03ForcedSeq generated03ContributionLabels
  rfl

def generated03Rank : Fin numPairWords :=
  ⟨25555, by decide⟩

private theorem generated03ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated03ForcedSeq) = some generated03Rank := by
  decide

private theorem generated03ForcedSeq_unrank_pairword :
    unrankPairWord generated03Rank = pairWordOfSeq generated03ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated03ForcedSeq)
      generated03Rank).1 generated03ForcedSeq_rank).symm

private theorem generated03ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated03Rank) generated03ForcedSeq := by
  rw [generated03ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated03ForcedSeq

private theorem generated03TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated03Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated03ForcedSeq_unrank_pairword]
  rfl

private theorem generated03CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated03M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated03M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated03M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated03M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated03M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }

private def generated03M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }

private def generated03M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated03M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }

private def generated03M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated03M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated03M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated03M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated03M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated03M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated03V00 : Rat :=
  1

private def generated03V01 : Rat :=
  1

private def generated03V02 : Rat :=
  1

private def generated03V03 : Rat :=
  3

private def generated03V04 : Rat :=
  1

private def generated03V05 : Rat :=
  3

private def generated03V06 : Rat :=
  3

private def generated03V07 : Rat :=
  1

private def generated03V08 : Rat :=
  1

private def generated03V09 : Rat :=
  3

private def generated03V10 : Rat :=
  3

private def generated03V11 : Rat :=
  1

private def generated03V12 : Rat :=
  3

private def generated03V13 : Rat :=
  1

private theorem generated03Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated03V00 := by
  norm_num [generated03V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos00 :
    0 < generated03V00 := by
  norm_num [generated03V00]

private theorem generated03Hnext00 :
    generated03M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated03M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot01 :
    dot (matVec generated03M01 (normalQ Face.ym))
      topPairingLocalAxis = generated03V01 := by
  norm_num [generated03V01, generated03M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos01 :
    0 < generated03V01 := by
  norm_num [generated03V01]

private theorem generated03Hnext01 :
    generated03M02 = matMul generated03M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated03M02, generated03M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot02 :
    dot (matVec generated03M02 (normalQ Face.yp))
      topPairingLocalAxis = generated03V02 := by
  norm_num [generated03V02, generated03M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos02 :
    0 < generated03V02 := by
  norm_num [generated03V02]

private theorem generated03Hnext02 :
    generated03M03 = matMul generated03M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated03M03, generated03M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot03 :
    dot (matVec generated03M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated03V03 := by
  norm_num [generated03V03, generated03M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos03 :
    0 < generated03V03 := by
  norm_num [generated03V03]

private theorem generated03Hnext03 :
    generated03M04 = matMul generated03M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated03M04, generated03M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot04 :
    dot (matVec generated03M04 (normalQ Face.zm))
      topPairingLocalAxis = generated03V04 := by
  norm_num [generated03V04, generated03M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos04 :
    0 < generated03V04 := by
  norm_num [generated03V04]

private theorem generated03Hnext04 :
    generated03M05 = matMul generated03M04 (reflM (normalQ Face.zm)) := by
  norm_num [generated03M05, generated03M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot05 :
    dot (matVec generated03M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated03V05 := by
  norm_num [generated03V05, generated03M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos05 :
    0 < generated03V05 := by
  norm_num [generated03V05]

private theorem generated03Hnext05 :
    generated03M06 = matMul generated03M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated03M06, generated03M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot06 :
    dot (matVec generated03M06 (normalQ Face.tppp))
      topPairingLocalAxis = generated03V06 := by
  norm_num [generated03V06, generated03M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos06 :
    0 < generated03V06 := by
  norm_num [generated03V06]

private theorem generated03Hnext06 :
    generated03M07 = matMul generated03M06 (reflM (normalQ Face.tppp)) := by
  norm_num [generated03M07, generated03M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot07 :
    dot (matVec generated03M07 (normalQ Face.tpmm))
      topPairingLocalAxis = generated03V07 := by
  norm_num [generated03V07, generated03M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos07 :
    0 < generated03V07 := by
  norm_num [generated03V07]

private theorem generated03Hnext07 :
    generated03M08 = matMul generated03M07 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated03M08, generated03M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot08 :
    dot (matVec generated03M08 (normalQ Face.tmpp))
      topPairingLocalAxis = generated03V08 := by
  norm_num [generated03V08, generated03M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos08 :
    0 < generated03V08 := by
  norm_num [generated03V08]

private theorem generated03Hnext08 :
    generated03M09 = matMul generated03M08 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated03M09, generated03M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot09 :
    dot (matVec generated03M09 (normalQ Face.tppm))
      topPairingLocalAxis = generated03V09 := by
  norm_num [generated03V09, generated03M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos09 :
    0 < generated03V09 := by
  norm_num [generated03V09]

private theorem generated03Hnext09 :
    generated03M10 = matMul generated03M09 (reflM (normalQ Face.tppm)) := by
  norm_num [generated03M10, generated03M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot10 :
    dot (matVec generated03M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated03V10 := by
  norm_num [generated03V10, generated03M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos10 :
    0 < generated03V10 := by
  norm_num [generated03V10]

private theorem generated03Hnext10 :
    generated03M11 = matMul generated03M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated03M11, generated03M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot11 :
    dot (matVec generated03M11 (normalQ Face.zp))
      topPairingLocalAxis = generated03V11 := by
  norm_num [generated03V11, generated03M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos11 :
    0 < generated03V11 := by
  norm_num [generated03V11]

private theorem generated03Hnext11 :
    generated03M12 = matMul generated03M11 (reflM (normalQ Face.zp)) := by
  norm_num [generated03M12, generated03M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot12 :
    dot (matVec generated03M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated03V12 := by
  norm_num [generated03V12, generated03M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos12 :
    0 < generated03V12 := by
  norm_num [generated03V12]

private theorem generated03Hnext12 :
    generated03M13 = matMul generated03M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated03M13, generated03M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03Hdot13 :
    dot (matVec generated03M13 (normalQ Face.xp))
      topPairingLocalAxis = generated03V13 := by
  norm_num [generated03V13, generated03M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated03Hpos13 :
    0 < generated03V13 := by
  norm_num [generated03V13]

private theorem generated03Hnext13 :
    generated03M14 = matMul generated03M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated03M14, generated03M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated03LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels :=
  generated03LocalAxisTraceOfGeneratedStates
    generated03Hdot00
    generated03Hpos00
    generated03Hnext00
    generated03Hdot01
    generated03Hpos01
    generated03Hnext01
    generated03Hdot02
    generated03Hpos02
    generated03Hnext02
    generated03Hdot03
    generated03Hpos03
    generated03Hnext03
    generated03Hdot04
    generated03Hpos04
    generated03Hnext04
    generated03Hdot05
    generated03Hpos05
    generated03Hnext05
    generated03Hdot06
    generated03Hpos06
    generated03Hnext06
    generated03Hdot07
    generated03Hpos07
    generated03Hnext07
    generated03Hdot08
    generated03Hpos08
    generated03Hnext08
    generated03Hdot09
    generated03Hpos09
    generated03Hnext09
    generated03Hdot10
    generated03Hpos10
    generated03Hnext10
    generated03Hdot11
    generated03Hpos11
    generated03Hnext11
    generated03Hdot12
    generated03Hpos12
    generated03Hnext12
    generated03Hdot13
    generated03Hpos13
    generated03Hnext13


theorem generated03ClosedLanguageOfPositiveTemplateTrace
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
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated03ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated03SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated03ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated03ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated03SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated03ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated03SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated03ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated03ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated03ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated03ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated03ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated03ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated03ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated03ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated03LocalAxisTraceConcrete
    canonicalBadFace

theorem generated03ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated03ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated03LocalAxisTraceConcrete
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated03ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated03ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated03LocalAxisTraceConcrete
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated03ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated03ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated03LocalAxisTraceConcrete
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated03ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated03ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated03LocalAxisTraceConcrete
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated03ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated03ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated03ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated03ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated03Rank generated03ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated03Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated03Rank seq badFace :=
  generated03ClosedLanguageForSeqOfGeneratedForcedSeq
    generated03ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated03ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated03Rank generated03ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated03Rank) :
    TopPairingClosedLanguageForSeq generated03Rank seq Face.ym :=
  generated03ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated03CanonicalBadFaceCompatible

theorem generated03ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated03Rank generated03ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated03Rank seq Face.ym :=
  generated03ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated03TopPairingLanguageAtRank

theorem generated03GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke03
