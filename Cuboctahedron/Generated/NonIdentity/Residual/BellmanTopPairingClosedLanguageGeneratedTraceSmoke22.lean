import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke22

open Cuboctahedron

private def generated22ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated22ContributionLabels_length :
    generated22ContributionLabels.length = 14 := by
  rfl

private theorem generated22ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated22ContributionLabels := by
  unfold generated22ContributionLabels
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

private theorem generated22ScheduleLabels :
    TopPairingStepScheduleLabels generated22ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated22ContributionLabels_length generated22ScheduleTrace

private theorem generated22SquareGapTrace :
    TopPairingSquareGapFrom 0 generated22ContributionLabels := by
  unfold generated22ContributionLabels
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

private theorem generated22SquareGapLabels :
    TopPairingSquareGapLabels generated22ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated22SquareGapTrace

private theorem generated22LocalAxisTraceOfGeneratedStates
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
      dot (matVec m07 (normalQ Face.tppp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tppp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels := by
  unfold generated22ContributionLabels
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

def generated22ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated22ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated22ForcedSeq = generated22ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated22ForcedSeq generated22ContributionLabels
  rfl

def generated22Rank : Fin numPairWords :=
  ⟨944197, by decide⟩

private theorem generated22ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated22ForcedSeq) = some generated22Rank := by
  decide

private theorem generated22ForcedSeq_unrank_pairword :
    unrankPairWord generated22Rank = pairWordOfSeq generated22ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated22ForcedSeq)
      generated22Rank).1 generated22ForcedSeq_rank).symm

private theorem generated22ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated22Rank) generated22ForcedSeq := by
  rw [generated22ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated22ForcedSeq

private theorem generated22TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated22Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated22ForcedSeq_unrank_pairword]
  rfl

private theorem generated22CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated22M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated22M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated22M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated22M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated22M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated22M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated22M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated22M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated22M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated22M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated22M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated22M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated22M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated22M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated22V00 : Rat :=
  1

private def generated22V01 : Rat :=
  1

private def generated22V02 : Rat :=
  3

private def generated22V03 : Rat :=
  3

private def generated22V04 : Rat :=
  3

private def generated22V05 : Rat :=
  3

private def generated22V06 : Rat :=
  3

private def generated22V07 : Rat :=
  1

private def generated22V08 : Rat :=
  1

private def generated22V09 : Rat :=
  3

private def generated22V10 : Rat :=
  1

private def generated22V11 : Rat :=
  3

private def generated22V12 : Rat :=
  3

private def generated22V13 : Rat :=
  1

private theorem generated22Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated22V00 := by
  norm_num [generated22V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos00 :
    0 < generated22V00 := by
  norm_num [generated22V00]

private theorem generated22Hnext00 :
    generated22M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated22M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot01 :
    dot (matVec generated22M01 (normalQ Face.ym))
      topPairingLocalAxis = generated22V01 := by
  norm_num [generated22V01, generated22M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos01 :
    0 < generated22V01 := by
  norm_num [generated22V01]

private theorem generated22Hnext01 :
    generated22M02 = matMul generated22M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated22M02, generated22M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot02 :
    dot (matVec generated22M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated22V02 := by
  norm_num [generated22V02, generated22M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos02 :
    0 < generated22V02 := by
  norm_num [generated22V02]

private theorem generated22Hnext02 :
    generated22M03 = matMul generated22M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated22M03, generated22M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot03 :
    dot (matVec generated22M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated22V03 := by
  norm_num [generated22V03, generated22M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos03 :
    0 < generated22V03 := by
  norm_num [generated22V03]

private theorem generated22Hnext03 :
    generated22M04 = matMul generated22M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated22M04, generated22M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot04 :
    dot (matVec generated22M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated22V04 := by
  norm_num [generated22V04, generated22M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos04 :
    0 < generated22V04 := by
  norm_num [generated22V04]

private theorem generated22Hnext04 :
    generated22M05 = matMul generated22M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated22M05, generated22M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot05 :
    dot (matVec generated22M05 (normalQ Face.zp))
      topPairingLocalAxis = generated22V05 := by
  norm_num [generated22V05, generated22M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos05 :
    0 < generated22V05 := by
  norm_num [generated22V05]

private theorem generated22Hnext05 :
    generated22M06 = matMul generated22M05 (reflM (normalQ Face.zp)) := by
  norm_num [generated22M06, generated22M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot06 :
    dot (matVec generated22M06 (normalQ Face.zm))
      topPairingLocalAxis = generated22V06 := by
  norm_num [generated22V06, generated22M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos06 :
    0 < generated22V06 := by
  norm_num [generated22V06]

private theorem generated22Hnext06 :
    generated22M07 = matMul generated22M06 (reflM (normalQ Face.zm)) := by
  norm_num [generated22M07, generated22M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot07 :
    dot (matVec generated22M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated22V07 := by
  norm_num [generated22V07, generated22M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos07 :
    0 < generated22V07 := by
  norm_num [generated22V07]

private theorem generated22Hnext07 :
    generated22M08 = matMul generated22M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated22M08, generated22M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot08 :
    dot (matVec generated22M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated22V08 := by
  norm_num [generated22V08, generated22M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos08 :
    0 < generated22V08 := by
  norm_num [generated22V08]

private theorem generated22Hnext08 :
    generated22M09 = matMul generated22M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated22M09, generated22M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot09 :
    dot (matVec generated22M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated22V09 := by
  norm_num [generated22V09, generated22M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos09 :
    0 < generated22V09 := by
  norm_num [generated22V09]

private theorem generated22Hnext09 :
    generated22M10 = matMul generated22M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated22M10, generated22M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot10 :
    dot (matVec generated22M10 (normalQ Face.yp))
      topPairingLocalAxis = generated22V10 := by
  norm_num [generated22V10, generated22M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos10 :
    0 < generated22V10 := by
  norm_num [generated22V10]

private theorem generated22Hnext10 :
    generated22M11 = matMul generated22M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated22M11, generated22M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot11 :
    dot (matVec generated22M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated22V11 := by
  norm_num [generated22V11, generated22M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos11 :
    0 < generated22V11 := by
  norm_num [generated22V11]

private theorem generated22Hnext11 :
    generated22M12 = matMul generated22M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated22M12, generated22M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot12 :
    dot (matVec generated22M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated22V12 := by
  norm_num [generated22V12, generated22M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos12 :
    0 < generated22V12 := by
  norm_num [generated22V12]

private theorem generated22Hnext12 :
    generated22M13 = matMul generated22M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated22M13, generated22M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22Hdot13 :
    dot (matVec generated22M13 (normalQ Face.xp))
      topPairingLocalAxis = generated22V13 := by
  norm_num [generated22V13, generated22M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated22Hpos13 :
    0 < generated22V13 := by
  norm_num [generated22V13]

private theorem generated22Hnext13 :
    generated22M14 = matMul generated22M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated22M14, generated22M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated22LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels :=
  generated22LocalAxisTraceOfGeneratedStates
    generated22Hdot00
    generated22Hpos00
    generated22Hnext00
    generated22Hdot01
    generated22Hpos01
    generated22Hnext01
    generated22Hdot02
    generated22Hpos02
    generated22Hnext02
    generated22Hdot03
    generated22Hpos03
    generated22Hnext03
    generated22Hdot04
    generated22Hpos04
    generated22Hnext04
    generated22Hdot05
    generated22Hpos05
    generated22Hnext05
    generated22Hdot06
    generated22Hpos06
    generated22Hnext06
    generated22Hdot07
    generated22Hpos07
    generated22Hnext07
    generated22Hdot08
    generated22Hpos08
    generated22Hnext08
    generated22Hdot09
    generated22Hpos09
    generated22Hnext09
    generated22Hdot10
    generated22Hpos10
    generated22Hnext10
    generated22Hdot11
    generated22Hpos11
    generated22Hnext11
    generated22Hdot12
    generated22Hpos12
    generated22Hnext12
    generated22Hdot13
    generated22Hpos13
    generated22Hnext13


theorem generated22ClosedLanguageOfPositiveTemplateTrace
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
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated22ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated22SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated22ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated22ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated22SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated22ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated22SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated22ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated22ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated22ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated22ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated22ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated22ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated22ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated22ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated22LocalAxisTraceConcrete
    canonicalBadFace

theorem generated22ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated22ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated22LocalAxisTraceConcrete
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated22ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated22ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated22LocalAxisTraceConcrete
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated22ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated22ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated22LocalAxisTraceConcrete
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated22ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated22ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated22LocalAxisTraceConcrete
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated22ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated22ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated22ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated22ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated22Rank generated22ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated22Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated22Rank seq badFace :=
  generated22ClosedLanguageForSeqOfGeneratedForcedSeq
    generated22ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated22ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated22Rank generated22ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated22Rank) :
    TopPairingClosedLanguageForSeq generated22Rank seq Face.ym :=
  generated22ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated22CanonicalBadFaceCompatible

theorem generated22ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated22Rank generated22ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated22Rank seq Face.ym :=
  generated22ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated22TopPairingLanguageAtRank

theorem generated22GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke22
