import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke07

open Cuboctahedron

private def generated07ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.zp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated07ContributionLabels_length :
    generated07ContributionLabels.length = 14 := by
  rfl

private theorem generated07ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated07ContributionLabels := by
  unfold generated07ContributionLabels
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

private theorem generated07ScheduleLabels :
    TopPairingStepScheduleLabels generated07ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated07ContributionLabels_length generated07ScheduleTrace

private theorem generated07SquareGapTrace :
    TopPairingSquareGapFrom 0 generated07ContributionLabels := by
  unfold generated07ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated07SquareGapLabels :
    TopPairingSquareGapLabels generated07ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated07SquareGapTrace

private theorem generated07LocalAxisTraceOfGeneratedStates
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
      dot (matVec m05 (normalQ Face.tppm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tppm)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmp))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tpmp)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tmpm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tmpm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.zp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.zp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.zm))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels := by
  unfold generated07ContributionLabels
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

def generated07ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.zp
  | ⟨10, _⟩ => Face.zm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated07ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated07ForcedSeq = generated07ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated07ForcedSeq generated07ContributionLabels
  rfl

def generated07Rank : Fin numPairWords :=
  ⟨43171, by decide⟩

private theorem generated07ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated07ForcedSeq) = some generated07Rank := by
  decide

private theorem generated07ForcedSeq_unrank_pairword :
    unrankPairWord generated07Rank = pairWordOfSeq generated07ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated07ForcedSeq)
      generated07Rank).1 generated07ForcedSeq_rank).symm

private theorem generated07ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated07Rank) generated07ForcedSeq := by
  rw [generated07ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated07ForcedSeq

private theorem generated07TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated07Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated07ForcedSeq_unrank_pairword]
  rfl

private theorem generated07CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated07M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated07M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated07M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated07M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated07M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated07M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated07M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated07M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated07M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated07M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated07M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated07M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated07M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated07M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated07V00 : Rat :=
  1

private def generated07V01 : Rat :=
  1

private def generated07V02 : Rat :=
  1

private def generated07V03 : Rat :=
  3

private def generated07V04 : Rat :=
  3

private def generated07V05 : Rat :=
  3

private def generated07V06 : Rat :=
  1

private def generated07V07 : Rat :=
  1

private def generated07V08 : Rat :=
  3

private def generated07V09 : Rat :=
  3

private def generated07V10 : Rat :=
  3

private def generated07V11 : Rat :=
  3

private def generated07V12 : Rat :=
  3

private def generated07V13 : Rat :=
  1

private theorem generated07Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated07V00 := by
  norm_num [generated07V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos00 :
    0 < generated07V00 := by
  norm_num [generated07V00]

private theorem generated07Hnext00 :
    generated07M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated07M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot01 :
    dot (matVec generated07M01 (normalQ Face.ym))
      topPairingLocalAxis = generated07V01 := by
  norm_num [generated07V01, generated07M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos01 :
    0 < generated07V01 := by
  norm_num [generated07V01]

private theorem generated07Hnext01 :
    generated07M02 = matMul generated07M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated07M02, generated07M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot02 :
    dot (matVec generated07M02 (normalQ Face.yp))
      topPairingLocalAxis = generated07V02 := by
  norm_num [generated07V02, generated07M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos02 :
    0 < generated07V02 := by
  norm_num [generated07V02]

private theorem generated07Hnext02 :
    generated07M03 = matMul generated07M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated07M03, generated07M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot03 :
    dot (matVec generated07M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated07V03 := by
  norm_num [generated07V03, generated07M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos03 :
    0 < generated07V03 := by
  norm_num [generated07V03]

private theorem generated07Hnext03 :
    generated07M04 = matMul generated07M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated07M04, generated07M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot04 :
    dot (matVec generated07M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated07V04 := by
  norm_num [generated07V04, generated07M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos04 :
    0 < generated07V04 := by
  norm_num [generated07V04]

private theorem generated07Hnext04 :
    generated07M05 = matMul generated07M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated07M05, generated07M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot05 :
    dot (matVec generated07M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated07V05 := by
  norm_num [generated07V05, generated07M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos05 :
    0 < generated07V05 := by
  norm_num [generated07V05]

private theorem generated07Hnext05 :
    generated07M06 = matMul generated07M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated07M06, generated07M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot06 :
    dot (matVec generated07M06 (normalQ Face.tpmp))
      topPairingLocalAxis = generated07V06 := by
  norm_num [generated07V06, generated07M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos06 :
    0 < generated07V06 := by
  norm_num [generated07V06]

private theorem generated07Hnext06 :
    generated07M07 = matMul generated07M06 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated07M07, generated07M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot07 :
    dot (matVec generated07M07 (normalQ Face.tmpm))
      topPairingLocalAxis = generated07V07 := by
  norm_num [generated07V07, generated07M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos07 :
    0 < generated07V07 := by
  norm_num [generated07V07]

private theorem generated07Hnext07 :
    generated07M08 = matMul generated07M07 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated07M08, generated07M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot08 :
    dot (matVec generated07M08 (normalQ Face.zp))
      topPairingLocalAxis = generated07V08 := by
  norm_num [generated07V08, generated07M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos08 :
    0 < generated07V08 := by
  norm_num [generated07V08]

private theorem generated07Hnext08 :
    generated07M09 = matMul generated07M08 (reflM (normalQ Face.zp)) := by
  norm_num [generated07M09, generated07M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot09 :
    dot (matVec generated07M09 (normalQ Face.zm))
      topPairingLocalAxis = generated07V09 := by
  norm_num [generated07V09, generated07M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos09 :
    0 < generated07V09 := by
  norm_num [generated07V09]

private theorem generated07Hnext09 :
    generated07M10 = matMul generated07M09 (reflM (normalQ Face.zm)) := by
  norm_num [generated07M10, generated07M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot10 :
    dot (matVec generated07M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated07V10 := by
  norm_num [generated07V10, generated07M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos10 :
    0 < generated07V10 := by
  norm_num [generated07V10]

private theorem generated07Hnext10 :
    generated07M11 = matMul generated07M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated07M11, generated07M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot11 :
    dot (matVec generated07M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated07V11 := by
  norm_num [generated07V11, generated07M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos11 :
    0 < generated07V11 := by
  norm_num [generated07V11]

private theorem generated07Hnext11 :
    generated07M12 = matMul generated07M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated07M12, generated07M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot12 :
    dot (matVec generated07M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated07V12 := by
  norm_num [generated07V12, generated07M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos12 :
    0 < generated07V12 := by
  norm_num [generated07V12]

private theorem generated07Hnext12 :
    generated07M13 = matMul generated07M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated07M13, generated07M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07Hdot13 :
    dot (matVec generated07M13 (normalQ Face.xp))
      topPairingLocalAxis = generated07V13 := by
  norm_num [generated07V13, generated07M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated07Hpos13 :
    0 < generated07V13 := by
  norm_num [generated07V13]

private theorem generated07Hnext13 :
    generated07M14 = matMul generated07M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated07M14, generated07M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated07LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels :=
  generated07LocalAxisTraceOfGeneratedStates
    generated07Hdot00
    generated07Hpos00
    generated07Hnext00
    generated07Hdot01
    generated07Hpos01
    generated07Hnext01
    generated07Hdot02
    generated07Hpos02
    generated07Hnext02
    generated07Hdot03
    generated07Hpos03
    generated07Hnext03
    generated07Hdot04
    generated07Hpos04
    generated07Hnext04
    generated07Hdot05
    generated07Hpos05
    generated07Hnext05
    generated07Hdot06
    generated07Hpos06
    generated07Hnext06
    generated07Hdot07
    generated07Hpos07
    generated07Hnext07
    generated07Hdot08
    generated07Hpos08
    generated07Hnext08
    generated07Hdot09
    generated07Hpos09
    generated07Hnext09
    generated07Hdot10
    generated07Hpos10
    generated07Hnext10
    generated07Hdot11
    generated07Hpos11
    generated07Hnext11
    generated07Hdot12
    generated07Hpos12
    generated07Hnext12
    generated07Hdot13
    generated07Hpos13
    generated07Hnext13


theorem generated07ClosedLanguageOfPositiveTemplateTrace
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
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated07ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated07SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated07ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated07ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated07SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated07ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated07SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated07ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated07ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated07ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated07ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated07ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated07ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated07ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated07ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated07LocalAxisTraceConcrete
    canonicalBadFace

theorem generated07ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated07ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated07LocalAxisTraceConcrete
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated07ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated07ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated07LocalAxisTraceConcrete
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated07ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated07ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated07LocalAxisTraceConcrete
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated07ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated07ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated07LocalAxisTraceConcrete
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated07ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated07ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated07ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated07ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated07Rank generated07ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated07Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated07Rank seq badFace :=
  generated07ClosedLanguageForSeqOfGeneratedForcedSeq
    generated07ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated07ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated07Rank generated07ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated07Rank) :
    TopPairingClosedLanguageForSeq generated07Rank seq Face.ym :=
  generated07ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated07CanonicalBadFaceCompatible

theorem generated07ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated07Rank generated07ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated07Rank seq Face.ym :=
  generated07ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated07TopPairingLanguageAtRank

theorem generated07GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke07
