import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke26

open Cuboctahedron

private def generated26ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated26ContributionLabels_length :
    generated26ContributionLabels.length = 14 := by
  rfl

private theorem generated26ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated26ContributionLabels := by
  unfold generated26ContributionLabels
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

private theorem generated26ScheduleLabels :
    TopPairingStepScheduleLabels generated26ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated26ContributionLabels_length generated26ScheduleTrace

private theorem generated26SquareGapTrace :
    TopPairingSquareGapFrom 0 generated26ContributionLabels := by
  unfold generated26ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated26SquareGapLabels :
    TopPairingSquareGapLabels generated26ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated26SquareGapTrace

private theorem generated26LocalAxisTraceOfGeneratedStates
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
      dot (matVec m06 (normalQ Face.tmmm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tmmm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.zp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.zp)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.zm))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels := by
  unfold generated26ContributionLabels
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

def generated26ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.zp
  | ⟨9, _⟩ => Face.zm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated26ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated26ForcedSeq = generated26ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated26ForcedSeq generated26ContributionLabels
  rfl

def generated26Rank : Fin numPairWords :=
  ⟨947437, by decide⟩

private theorem generated26ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated26ForcedSeq) = some generated26Rank := by
  decide

private theorem generated26ForcedSeq_unrank_pairword :
    unrankPairWord generated26Rank = pairWordOfSeq generated26ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated26ForcedSeq)
      generated26Rank).1 generated26ForcedSeq_rank).symm

private theorem generated26ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated26Rank) generated26ForcedSeq := by
  rw [generated26ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated26ForcedSeq

private theorem generated26TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated26Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated26ForcedSeq_unrank_pairword]
  rfl

private theorem generated26CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated26M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated26M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated26M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated26M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated26M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated26M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated26M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated26M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated26M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated26M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated26M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated26M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated26M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated26M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated26V00 : Rat :=
  1

private def generated26V01 : Rat :=
  1

private def generated26V02 : Rat :=
  3

private def generated26V03 : Rat :=
  3

private def generated26V04 : Rat :=
  3

private def generated26V05 : Rat :=
  1

private def generated26V06 : Rat :=
  1

private def generated26V07 : Rat :=
  3

private def generated26V08 : Rat :=
  3

private def generated26V09 : Rat :=
  3

private def generated26V10 : Rat :=
  1

private def generated26V11 : Rat :=
  3

private def generated26V12 : Rat :=
  3

private def generated26V13 : Rat :=
  1

private theorem generated26Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated26V00 := by
  norm_num [generated26V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos00 :
    0 < generated26V00 := by
  norm_num [generated26V00]

private theorem generated26Hnext00 :
    generated26M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated26M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot01 :
    dot (matVec generated26M01 (normalQ Face.ym))
      topPairingLocalAxis = generated26V01 := by
  norm_num [generated26V01, generated26M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos01 :
    0 < generated26V01 := by
  norm_num [generated26V01]

private theorem generated26Hnext01 :
    generated26M02 = matMul generated26M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated26M02, generated26M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot02 :
    dot (matVec generated26M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated26V02 := by
  norm_num [generated26V02, generated26M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos02 :
    0 < generated26V02 := by
  norm_num [generated26V02]

private theorem generated26Hnext02 :
    generated26M03 = matMul generated26M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated26M03, generated26M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot03 :
    dot (matVec generated26M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated26V03 := by
  norm_num [generated26V03, generated26M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos03 :
    0 < generated26V03 := by
  norm_num [generated26V03]

private theorem generated26Hnext03 :
    generated26M04 = matMul generated26M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated26M04, generated26M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot04 :
    dot (matVec generated26M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated26V04 := by
  norm_num [generated26V04, generated26M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos04 :
    0 < generated26V04 := by
  norm_num [generated26V04]

private theorem generated26Hnext04 :
    generated26M05 = matMul generated26M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated26M05, generated26M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot05 :
    dot (matVec generated26M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated26V05 := by
  norm_num [generated26V05, generated26M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos05 :
    0 < generated26V05 := by
  norm_num [generated26V05]

private theorem generated26Hnext05 :
    generated26M06 = matMul generated26M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated26M06, generated26M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot06 :
    dot (matVec generated26M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated26V06 := by
  norm_num [generated26V06, generated26M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos06 :
    0 < generated26V06 := by
  norm_num [generated26V06]

private theorem generated26Hnext06 :
    generated26M07 = matMul generated26M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated26M07, generated26M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot07 :
    dot (matVec generated26M07 (normalQ Face.zp))
      topPairingLocalAxis = generated26V07 := by
  norm_num [generated26V07, generated26M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos07 :
    0 < generated26V07 := by
  norm_num [generated26V07]

private theorem generated26Hnext07 :
    generated26M08 = matMul generated26M07 (reflM (normalQ Face.zp)) := by
  norm_num [generated26M08, generated26M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot08 :
    dot (matVec generated26M08 (normalQ Face.zm))
      topPairingLocalAxis = generated26V08 := by
  norm_num [generated26V08, generated26M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos08 :
    0 < generated26V08 := by
  norm_num [generated26V08]

private theorem generated26Hnext08 :
    generated26M09 = matMul generated26M08 (reflM (normalQ Face.zm)) := by
  norm_num [generated26M09, generated26M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot09 :
    dot (matVec generated26M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated26V09 := by
  norm_num [generated26V09, generated26M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos09 :
    0 < generated26V09 := by
  norm_num [generated26V09]

private theorem generated26Hnext09 :
    generated26M10 = matMul generated26M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated26M10, generated26M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot10 :
    dot (matVec generated26M10 (normalQ Face.yp))
      topPairingLocalAxis = generated26V10 := by
  norm_num [generated26V10, generated26M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos10 :
    0 < generated26V10 := by
  norm_num [generated26V10]

private theorem generated26Hnext10 :
    generated26M11 = matMul generated26M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated26M11, generated26M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot11 :
    dot (matVec generated26M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated26V11 := by
  norm_num [generated26V11, generated26M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos11 :
    0 < generated26V11 := by
  norm_num [generated26V11]

private theorem generated26Hnext11 :
    generated26M12 = matMul generated26M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated26M12, generated26M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot12 :
    dot (matVec generated26M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated26V12 := by
  norm_num [generated26V12, generated26M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos12 :
    0 < generated26V12 := by
  norm_num [generated26V12]

private theorem generated26Hnext12 :
    generated26M13 = matMul generated26M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated26M13, generated26M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26Hdot13 :
    dot (matVec generated26M13 (normalQ Face.xp))
      topPairingLocalAxis = generated26V13 := by
  norm_num [generated26V13, generated26M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated26Hpos13 :
    0 < generated26V13 := by
  norm_num [generated26V13]

private theorem generated26Hnext13 :
    generated26M14 = matMul generated26M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated26M14, generated26M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated26LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels :=
  generated26LocalAxisTraceOfGeneratedStates
    generated26Hdot00
    generated26Hpos00
    generated26Hnext00
    generated26Hdot01
    generated26Hpos01
    generated26Hnext01
    generated26Hdot02
    generated26Hpos02
    generated26Hnext02
    generated26Hdot03
    generated26Hpos03
    generated26Hnext03
    generated26Hdot04
    generated26Hpos04
    generated26Hnext04
    generated26Hdot05
    generated26Hpos05
    generated26Hnext05
    generated26Hdot06
    generated26Hpos06
    generated26Hnext06
    generated26Hdot07
    generated26Hpos07
    generated26Hnext07
    generated26Hdot08
    generated26Hpos08
    generated26Hnext08
    generated26Hdot09
    generated26Hpos09
    generated26Hnext09
    generated26Hdot10
    generated26Hpos10
    generated26Hnext10
    generated26Hdot11
    generated26Hpos11
    generated26Hnext11
    generated26Hdot12
    generated26Hpos12
    generated26Hnext12
    generated26Hdot13
    generated26Hpos13
    generated26Hnext13


theorem generated26ClosedLanguageOfPositiveTemplateTrace
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
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated26ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated26SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated26ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated26ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated26SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated26ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated26SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated26ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated26ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated26ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated26ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated26ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated26ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated26ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated26ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated26LocalAxisTraceConcrete
    canonicalBadFace

theorem generated26ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated26ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated26LocalAxisTraceConcrete
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated26ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated26ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated26LocalAxisTraceConcrete
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated26ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated26ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated26LocalAxisTraceConcrete
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated26ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated26ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated26LocalAxisTraceConcrete
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated26ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated26ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated26ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated26ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated26Rank generated26ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated26Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated26Rank seq badFace :=
  generated26ClosedLanguageForSeqOfGeneratedForcedSeq
    generated26ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated26ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated26Rank generated26ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated26Rank) :
    TopPairingClosedLanguageForSeq generated26Rank seq Face.ym :=
  generated26ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated26CanonicalBadFaceCompatible

theorem generated26ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated26Rank generated26ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated26Rank seq Face.ym :=
  generated26ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated26TopPairingLanguageAtRank

theorem generated26GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke26
