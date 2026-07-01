import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke23

open Cuboctahedron

private def generated23ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated23ContributionLabels_length :
    generated23ContributionLabels.length = 14 := by
  rfl

private theorem generated23ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated23ContributionLabels := by
  unfold generated23ContributionLabels
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

private theorem generated23ScheduleLabels :
    TopPairingStepScheduleLabels generated23ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated23ContributionLabels_length generated23ScheduleTrace

private theorem generated23SquareGapTrace :
    TopPairingSquareGapFrom 0 generated23ContributionLabels := by
  unfold generated23ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated23SquareGapLabels :
    TopPairingSquareGapLabels generated23ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated23SquareGapTrace

private theorem generated23LocalAxisTraceOfGeneratedStates
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
      dot (matVec m10 (normalQ Face.tmmp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tmmp)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.tmpp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.tmpp)))
    (hdot12 :
      dot (matVec m12 (normalQ Face.yp))
        topPairingLocalAxis = v12)
    (hpos12 : 0 < v12)
    (hnext12 :
      m13 = matMul m12 (reflM (normalQ Face.yp)))
    (hdot13 :
      dot (matVec m13 (normalQ Face.xp))
        topPairingLocalAxis = v13)
    (hpos13 : 0 < v13)
    (hnext13 :
      m14 = matMul m13 (reflM (normalQ Face.xp)))
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels := by
  unfold generated23ContributionLabels
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

def generated23ForcedSeq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated23ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated23ForcedSeq = generated23ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated23ForcedSeq generated23ContributionLabels
  rfl

def generated23Rank : Fin numPairWords :=
  ⟨944199, by decide⟩

private theorem generated23ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated23ForcedSeq) = some generated23Rank := by
  decide

private theorem generated23ForcedSeq_unrank_pairword :
    unrankPairWord generated23Rank = pairWordOfSeq generated23ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated23ForcedSeq)
      generated23Rank).1 generated23ForcedSeq_rank).symm

private theorem generated23ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated23Rank) generated23ForcedSeq := by
  rw [generated23ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated23ForcedSeq

private theorem generated23TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated23Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated23ForcedSeq_unrank_pairword]
  rfl

private theorem generated23CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated23M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated23M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated23M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated23M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated23M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated23M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated23M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated23M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated23M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated23M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated23M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated23M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated23M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated23M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated23V00 : Rat :=
  1

private def generated23V01 : Rat :=
  1

private def generated23V02 : Rat :=
  3

private def generated23V03 : Rat :=
  3

private def generated23V04 : Rat :=
  3

private def generated23V05 : Rat :=
  3

private def generated23V06 : Rat :=
  3

private def generated23V07 : Rat :=
  1

private def generated23V08 : Rat :=
  1

private def generated23V09 : Rat :=
  3

private def generated23V10 : Rat :=
  3

private def generated23V11 : Rat :=
  3

private def generated23V12 : Rat :=
  1

private def generated23V13 : Rat :=
  1

private theorem generated23Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated23V00 := by
  norm_num [generated23V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos00 :
    0 < generated23V00 := by
  norm_num [generated23V00]

private theorem generated23Hnext00 :
    generated23M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated23M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot01 :
    dot (matVec generated23M01 (normalQ Face.ym))
      topPairingLocalAxis = generated23V01 := by
  norm_num [generated23V01, generated23M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos01 :
    0 < generated23V01 := by
  norm_num [generated23V01]

private theorem generated23Hnext01 :
    generated23M02 = matMul generated23M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated23M02, generated23M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot02 :
    dot (matVec generated23M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated23V02 := by
  norm_num [generated23V02, generated23M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos02 :
    0 < generated23V02 := by
  norm_num [generated23V02]

private theorem generated23Hnext02 :
    generated23M03 = matMul generated23M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated23M03, generated23M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot03 :
    dot (matVec generated23M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated23V03 := by
  norm_num [generated23V03, generated23M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos03 :
    0 < generated23V03 := by
  norm_num [generated23V03]

private theorem generated23Hnext03 :
    generated23M04 = matMul generated23M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated23M04, generated23M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot04 :
    dot (matVec generated23M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated23V04 := by
  norm_num [generated23V04, generated23M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos04 :
    0 < generated23V04 := by
  norm_num [generated23V04]

private theorem generated23Hnext04 :
    generated23M05 = matMul generated23M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated23M05, generated23M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot05 :
    dot (matVec generated23M05 (normalQ Face.zp))
      topPairingLocalAxis = generated23V05 := by
  norm_num [generated23V05, generated23M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos05 :
    0 < generated23V05 := by
  norm_num [generated23V05]

private theorem generated23Hnext05 :
    generated23M06 = matMul generated23M05 (reflM (normalQ Face.zp)) := by
  norm_num [generated23M06, generated23M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot06 :
    dot (matVec generated23M06 (normalQ Face.zm))
      topPairingLocalAxis = generated23V06 := by
  norm_num [generated23V06, generated23M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos06 :
    0 < generated23V06 := by
  norm_num [generated23V06]

private theorem generated23Hnext06 :
    generated23M07 = matMul generated23M06 (reflM (normalQ Face.zm)) := by
  norm_num [generated23M07, generated23M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot07 :
    dot (matVec generated23M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated23V07 := by
  norm_num [generated23V07, generated23M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos07 :
    0 < generated23V07 := by
  norm_num [generated23V07]

private theorem generated23Hnext07 :
    generated23M08 = matMul generated23M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated23M08, generated23M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot08 :
    dot (matVec generated23M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated23V08 := by
  norm_num [generated23V08, generated23M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos08 :
    0 < generated23V08 := by
  norm_num [generated23V08]

private theorem generated23Hnext08 :
    generated23M09 = matMul generated23M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated23M09, generated23M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot09 :
    dot (matVec generated23M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated23V09 := by
  norm_num [generated23V09, generated23M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos09 :
    0 < generated23V09 := by
  norm_num [generated23V09]

private theorem generated23Hnext09 :
    generated23M10 = matMul generated23M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated23M10, generated23M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot10 :
    dot (matVec generated23M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated23V10 := by
  norm_num [generated23V10, generated23M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos10 :
    0 < generated23V10 := by
  norm_num [generated23V10]

private theorem generated23Hnext10 :
    generated23M11 = matMul generated23M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated23M11, generated23M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot11 :
    dot (matVec generated23M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated23V11 := by
  norm_num [generated23V11, generated23M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos11 :
    0 < generated23V11 := by
  norm_num [generated23V11]

private theorem generated23Hnext11 :
    generated23M12 = matMul generated23M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated23M12, generated23M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot12 :
    dot (matVec generated23M12 (normalQ Face.yp))
      topPairingLocalAxis = generated23V12 := by
  norm_num [generated23V12, generated23M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos12 :
    0 < generated23V12 := by
  norm_num [generated23V12]

private theorem generated23Hnext12 :
    generated23M13 = matMul generated23M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated23M13, generated23M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23Hdot13 :
    dot (matVec generated23M13 (normalQ Face.xp))
      topPairingLocalAxis = generated23V13 := by
  norm_num [generated23V13, generated23M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated23Hpos13 :
    0 < generated23V13 := by
  norm_num [generated23V13]

private theorem generated23Hnext13 :
    generated23M14 = matMul generated23M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated23M14, generated23M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated23LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels :=
  generated23LocalAxisTraceOfGeneratedStates
    generated23Hdot00
    generated23Hpos00
    generated23Hnext00
    generated23Hdot01
    generated23Hpos01
    generated23Hnext01
    generated23Hdot02
    generated23Hpos02
    generated23Hnext02
    generated23Hdot03
    generated23Hpos03
    generated23Hnext03
    generated23Hdot04
    generated23Hpos04
    generated23Hnext04
    generated23Hdot05
    generated23Hpos05
    generated23Hnext05
    generated23Hdot06
    generated23Hpos06
    generated23Hnext06
    generated23Hdot07
    generated23Hpos07
    generated23Hnext07
    generated23Hdot08
    generated23Hpos08
    generated23Hnext08
    generated23Hdot09
    generated23Hpos09
    generated23Hnext09
    generated23Hdot10
    generated23Hpos10
    generated23Hnext10
    generated23Hdot11
    generated23Hpos11
    generated23Hnext11
    generated23Hdot12
    generated23Hpos12
    generated23Hnext12
    generated23Hdot13
    generated23Hpos13
    generated23Hnext13


theorem generated23ClosedLanguageOfPositiveTemplateTrace
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
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated23ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated23SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated23ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated23ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated23SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated23ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated23SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated23ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated23ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated23ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated23ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated23ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated23ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated23ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated23ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated23LocalAxisTraceConcrete
    canonicalBadFace

theorem generated23ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated23ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated23LocalAxisTraceConcrete
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated23ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated23ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated23LocalAxisTraceConcrete
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated23ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated23ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated23LocalAxisTraceConcrete
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated23ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated23ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated23LocalAxisTraceConcrete
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated23ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated23ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated23ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated23ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated23Rank generated23ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated23Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated23Rank seq badFace :=
  generated23ClosedLanguageForSeqOfGeneratedForcedSeq
    generated23ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated23ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated23Rank generated23ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated23Rank) :
    TopPairingClosedLanguageForSeq generated23Rank seq Face.ym :=
  generated23ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated23CanonicalBadFaceCompatible

theorem generated23ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated23Rank generated23ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated23Rank seq Face.ym :=
  generated23ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated23TopPairingLanguageAtRank

theorem generated23GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke23
