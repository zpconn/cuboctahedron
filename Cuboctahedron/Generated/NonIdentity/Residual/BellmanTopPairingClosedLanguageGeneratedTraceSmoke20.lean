import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke20

open Cuboctahedron

private def generated20ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated20ContributionLabels_length :
    generated20ContributionLabels.length = 14 := by
  rfl

private theorem generated20ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated20ContributionLabels := by
  unfold generated20ContributionLabels
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

private theorem generated20ScheduleLabels :
    TopPairingStepScheduleLabels generated20ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated20ContributionLabels_length generated20ScheduleTrace

private theorem generated20SquareGapTrace :
    TopPairingSquareGapFrom 0 generated20ContributionLabels := by
  unfold generated20ContributionLabels
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

private theorem generated20SquareGapLabels :
    TopPairingSquareGapLabels generated20ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated20SquareGapTrace

private theorem generated20LocalAxisTraceOfGeneratedStates
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
      dot (matVec m04 (normalQ Face.zp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.zp)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.zm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.zm)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tpmm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels := by
  unfold generated20ContributionLabels
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

def generated20ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated20ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated20ForcedSeq = generated20ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated20ForcedSeq generated20ContributionLabels
  rfl

def generated20Rank : Fin numPairWords :=
  ⟨914497, by decide⟩

private theorem generated20ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated20ForcedSeq) = some generated20Rank := by
  decide

private theorem generated20ForcedSeq_unrank_pairword :
    unrankPairWord generated20Rank = pairWordOfSeq generated20ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated20ForcedSeq)
      generated20Rank).1 generated20ForcedSeq_rank).symm

private theorem generated20ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated20Rank) generated20ForcedSeq := by
  rw [generated20ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated20ForcedSeq

private theorem generated20TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated20Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated20ForcedSeq_unrank_pairword]
  rfl

private theorem generated20CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated20M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated20M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated20M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated20M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated20M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (4/9), m10 := (-4/9), m11 := (-1/9), m12 := (8/9), m20 := (-4/9), m21 := (8/9), m22 := (-1/9) }

private def generated20M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated20M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated20M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated20M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated20M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated20M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated20M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated20M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated20M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated20V00 : Rat :=
  1

private def generated20V01 : Rat :=
  1

private def generated20V02 : Rat :=
  3

private def generated20V03 : Rat :=
  3

private def generated20V04 : Rat :=
  1

private def generated20V05 : Rat :=
  1

private def generated20V06 : Rat :=
  3

private def generated20V07 : Rat :=
  1

private def generated20V08 : Rat :=
  1

private def generated20V09 : Rat :=
  3

private def generated20V10 : Rat :=
  1

private def generated20V11 : Rat :=
  3

private def generated20V12 : Rat :=
  3

private def generated20V13 : Rat :=
  1

private theorem generated20Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated20V00 := by
  norm_num [generated20V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos00 :
    0 < generated20V00 := by
  norm_num [generated20V00]

private theorem generated20Hnext00 :
    generated20M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated20M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot01 :
    dot (matVec generated20M01 (normalQ Face.ym))
      topPairingLocalAxis = generated20V01 := by
  norm_num [generated20V01, generated20M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos01 :
    0 < generated20V01 := by
  norm_num [generated20V01]

private theorem generated20Hnext01 :
    generated20M02 = matMul generated20M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated20M02, generated20M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot02 :
    dot (matVec generated20M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated20V02 := by
  norm_num [generated20V02, generated20M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos02 :
    0 < generated20V02 := by
  norm_num [generated20V02]

private theorem generated20Hnext02 :
    generated20M03 = matMul generated20M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated20M03, generated20M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot03 :
    dot (matVec generated20M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated20V03 := by
  norm_num [generated20V03, generated20M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos03 :
    0 < generated20V03 := by
  norm_num [generated20V03]

private theorem generated20Hnext03 :
    generated20M04 = matMul generated20M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated20M04, generated20M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot04 :
    dot (matVec generated20M04 (normalQ Face.zp))
      topPairingLocalAxis = generated20V04 := by
  norm_num [generated20V04, generated20M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos04 :
    0 < generated20V04 := by
  norm_num [generated20V04]

private theorem generated20Hnext04 :
    generated20M05 = matMul generated20M04 (reflM (normalQ Face.zp)) := by
  norm_num [generated20M05, generated20M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot05 :
    dot (matVec generated20M05 (normalQ Face.zm))
      topPairingLocalAxis = generated20V05 := by
  norm_num [generated20V05, generated20M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos05 :
    0 < generated20V05 := by
  norm_num [generated20V05]

private theorem generated20Hnext05 :
    generated20M06 = matMul generated20M05 (reflM (normalQ Face.zm)) := by
  norm_num [generated20M06, generated20M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot06 :
    dot (matVec generated20M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated20V06 := by
  norm_num [generated20V06, generated20M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos06 :
    0 < generated20V06 := by
  norm_num [generated20V06]

private theorem generated20Hnext06 :
    generated20M07 = matMul generated20M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated20M07, generated20M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot07 :
    dot (matVec generated20M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated20V07 := by
  norm_num [generated20V07, generated20M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos07 :
    0 < generated20V07 := by
  norm_num [generated20V07]

private theorem generated20Hnext07 :
    generated20M08 = matMul generated20M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated20M08, generated20M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot08 :
    dot (matVec generated20M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated20V08 := by
  norm_num [generated20V08, generated20M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos08 :
    0 < generated20V08 := by
  norm_num [generated20V08]

private theorem generated20Hnext08 :
    generated20M09 = matMul generated20M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated20M09, generated20M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot09 :
    dot (matVec generated20M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated20V09 := by
  norm_num [generated20V09, generated20M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos09 :
    0 < generated20V09 := by
  norm_num [generated20V09]

private theorem generated20Hnext09 :
    generated20M10 = matMul generated20M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated20M10, generated20M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot10 :
    dot (matVec generated20M10 (normalQ Face.yp))
      topPairingLocalAxis = generated20V10 := by
  norm_num [generated20V10, generated20M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos10 :
    0 < generated20V10 := by
  norm_num [generated20V10]

private theorem generated20Hnext10 :
    generated20M11 = matMul generated20M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated20M11, generated20M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot11 :
    dot (matVec generated20M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated20V11 := by
  norm_num [generated20V11, generated20M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos11 :
    0 < generated20V11 := by
  norm_num [generated20V11]

private theorem generated20Hnext11 :
    generated20M12 = matMul generated20M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated20M12, generated20M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot12 :
    dot (matVec generated20M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated20V12 := by
  norm_num [generated20V12, generated20M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos12 :
    0 < generated20V12 := by
  norm_num [generated20V12]

private theorem generated20Hnext12 :
    generated20M13 = matMul generated20M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated20M13, generated20M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20Hdot13 :
    dot (matVec generated20M13 (normalQ Face.xp))
      topPairingLocalAxis = generated20V13 := by
  norm_num [generated20V13, generated20M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated20Hpos13 :
    0 < generated20V13 := by
  norm_num [generated20V13]

private theorem generated20Hnext13 :
    generated20M14 = matMul generated20M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated20M14, generated20M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated20LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels :=
  generated20LocalAxisTraceOfGeneratedStates
    generated20Hdot00
    generated20Hpos00
    generated20Hnext00
    generated20Hdot01
    generated20Hpos01
    generated20Hnext01
    generated20Hdot02
    generated20Hpos02
    generated20Hnext02
    generated20Hdot03
    generated20Hpos03
    generated20Hnext03
    generated20Hdot04
    generated20Hpos04
    generated20Hnext04
    generated20Hdot05
    generated20Hpos05
    generated20Hnext05
    generated20Hdot06
    generated20Hpos06
    generated20Hnext06
    generated20Hdot07
    generated20Hpos07
    generated20Hnext07
    generated20Hdot08
    generated20Hpos08
    generated20Hnext08
    generated20Hdot09
    generated20Hpos09
    generated20Hnext09
    generated20Hdot10
    generated20Hpos10
    generated20Hnext10
    generated20Hdot11
    generated20Hpos11
    generated20Hnext11
    generated20Hdot12
    generated20Hpos12
    generated20Hnext12
    generated20Hdot13
    generated20Hpos13
    generated20Hnext13


theorem generated20ClosedLanguageOfPositiveTemplateTrace
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
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated20ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated20SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated20ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated20ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated20SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated20ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated20SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated20ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated20ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated20ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated20ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated20ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated20ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated20ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated20ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated20LocalAxisTraceConcrete
    canonicalBadFace

theorem generated20ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated20ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated20LocalAxisTraceConcrete
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated20ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated20ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated20LocalAxisTraceConcrete
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated20ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated20ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated20LocalAxisTraceConcrete
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated20ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated20ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated20LocalAxisTraceConcrete
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated20ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated20ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated20ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated20ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated20Rank generated20ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated20Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated20Rank seq badFace :=
  generated20ClosedLanguageForSeqOfGeneratedForcedSeq
    generated20ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated20ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated20Rank generated20ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated20Rank) :
    TopPairingClosedLanguageForSeq generated20Rank seq Face.ym :=
  generated20ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated20CanonicalBadFaceCompatible

theorem generated20ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated20Rank generated20ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated20Rank seq Face.ym :=
  generated20ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated20TopPairingLanguageAtRank

theorem generated20GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke20
