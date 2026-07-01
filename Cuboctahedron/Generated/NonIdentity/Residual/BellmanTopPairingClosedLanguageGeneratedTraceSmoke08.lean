import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke08

open Cuboctahedron

private def generated08ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated08ContributionLabels_length :
    generated08ContributionLabels.length = 14 := by
  rfl

private theorem generated08ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated08ContributionLabels := by
  unfold generated08ContributionLabels
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

private theorem generated08ScheduleLabels :
    TopPairingStepScheduleLabels generated08ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated08ContributionLabels_length generated08ScheduleTrace

private theorem generated08SquareGapTrace :
    TopPairingSquareGapFrom 0 generated08ContributionLabels := by
  unfold generated08ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated08SquareGapLabels :
    TopPairingSquareGapLabels generated08ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated08SquareGapTrace

private theorem generated08LocalAxisTraceOfGeneratedStates
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
      dot (matVec m08 (normalQ Face.tppp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tppp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.zp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.zp)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.zm))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels := by
  unfold generated08ContributionLabels
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

def generated08ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated08ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated08ForcedSeq = generated08ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated08ForcedSeq generated08ContributionLabels
  rfl

def generated08Rank : Fin numPairWords :=
  ⟨43195, by decide⟩

private theorem generated08ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated08ForcedSeq) = some generated08Rank := by
  decide

private theorem generated08ForcedSeq_unrank_pairword :
    unrankPairWord generated08Rank = pairWordOfSeq generated08ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated08ForcedSeq)
      generated08Rank).1 generated08ForcedSeq_rank).symm

private theorem generated08ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated08Rank) generated08ForcedSeq := by
  rw [generated08ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated08ForcedSeq

private theorem generated08TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated08Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated08ForcedSeq_unrank_pairword]
  rfl

private theorem generated08CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated08M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated08M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated08M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated08M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated08M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated08M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated08M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated08M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated08M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated08M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated08M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated08M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated08M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated08M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated08V00 : Rat :=
  1

private def generated08V01 : Rat :=
  1

private def generated08V02 : Rat :=
  1

private def generated08V03 : Rat :=
  3

private def generated08V04 : Rat :=
  3

private def generated08V05 : Rat :=
  3

private def generated08V06 : Rat :=
  1

private def generated08V07 : Rat :=
  1

private def generated08V08 : Rat :=
  3

private def generated08V09 : Rat :=
  1

private def generated08V10 : Rat :=
  1

private def generated08V11 : Rat :=
  3

private def generated08V12 : Rat :=
  3

private def generated08V13 : Rat :=
  1

private theorem generated08Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated08V00 := by
  norm_num [generated08V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos00 :
    0 < generated08V00 := by
  norm_num [generated08V00]

private theorem generated08Hnext00 :
    generated08M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated08M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot01 :
    dot (matVec generated08M01 (normalQ Face.ym))
      topPairingLocalAxis = generated08V01 := by
  norm_num [generated08V01, generated08M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos01 :
    0 < generated08V01 := by
  norm_num [generated08V01]

private theorem generated08Hnext01 :
    generated08M02 = matMul generated08M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated08M02, generated08M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot02 :
    dot (matVec generated08M02 (normalQ Face.yp))
      topPairingLocalAxis = generated08V02 := by
  norm_num [generated08V02, generated08M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos02 :
    0 < generated08V02 := by
  norm_num [generated08V02]

private theorem generated08Hnext02 :
    generated08M03 = matMul generated08M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated08M03, generated08M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot03 :
    dot (matVec generated08M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated08V03 := by
  norm_num [generated08V03, generated08M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos03 :
    0 < generated08V03 := by
  norm_num [generated08V03]

private theorem generated08Hnext03 :
    generated08M04 = matMul generated08M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated08M04, generated08M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot04 :
    dot (matVec generated08M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated08V04 := by
  norm_num [generated08V04, generated08M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos04 :
    0 < generated08V04 := by
  norm_num [generated08V04]

private theorem generated08Hnext04 :
    generated08M05 = matMul generated08M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated08M05, generated08M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot05 :
    dot (matVec generated08M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated08V05 := by
  norm_num [generated08V05, generated08M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos05 :
    0 < generated08V05 := by
  norm_num [generated08V05]

private theorem generated08Hnext05 :
    generated08M06 = matMul generated08M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated08M06, generated08M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot06 :
    dot (matVec generated08M06 (normalQ Face.tpmp))
      topPairingLocalAxis = generated08V06 := by
  norm_num [generated08V06, generated08M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos06 :
    0 < generated08V06 := by
  norm_num [generated08V06]

private theorem generated08Hnext06 :
    generated08M07 = matMul generated08M06 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated08M07, generated08M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot07 :
    dot (matVec generated08M07 (normalQ Face.tmpm))
      topPairingLocalAxis = generated08V07 := by
  norm_num [generated08V07, generated08M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos07 :
    0 < generated08V07 := by
  norm_num [generated08V07]

private theorem generated08Hnext07 :
    generated08M08 = matMul generated08M07 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated08M08, generated08M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot08 :
    dot (matVec generated08M08 (normalQ Face.tppp))
      topPairingLocalAxis = generated08V08 := by
  norm_num [generated08V08, generated08M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos08 :
    0 < generated08V08 := by
  norm_num [generated08V08]

private theorem generated08Hnext08 :
    generated08M09 = matMul generated08M08 (reflM (normalQ Face.tppp)) := by
  norm_num [generated08M09, generated08M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot09 :
    dot (matVec generated08M09 (normalQ Face.zp))
      topPairingLocalAxis = generated08V09 := by
  norm_num [generated08V09, generated08M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos09 :
    0 < generated08V09 := by
  norm_num [generated08V09]

private theorem generated08Hnext09 :
    generated08M10 = matMul generated08M09 (reflM (normalQ Face.zp)) := by
  norm_num [generated08M10, generated08M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot10 :
    dot (matVec generated08M10 (normalQ Face.zm))
      topPairingLocalAxis = generated08V10 := by
  norm_num [generated08V10, generated08M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos10 :
    0 < generated08V10 := by
  norm_num [generated08V10]

private theorem generated08Hnext10 :
    generated08M11 = matMul generated08M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated08M11, generated08M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot11 :
    dot (matVec generated08M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated08V11 := by
  norm_num [generated08V11, generated08M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos11 :
    0 < generated08V11 := by
  norm_num [generated08V11]

private theorem generated08Hnext11 :
    generated08M12 = matMul generated08M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated08M12, generated08M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot12 :
    dot (matVec generated08M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated08V12 := by
  norm_num [generated08V12, generated08M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos12 :
    0 < generated08V12 := by
  norm_num [generated08V12]

private theorem generated08Hnext12 :
    generated08M13 = matMul generated08M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated08M13, generated08M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08Hdot13 :
    dot (matVec generated08M13 (normalQ Face.xp))
      topPairingLocalAxis = generated08V13 := by
  norm_num [generated08V13, generated08M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated08Hpos13 :
    0 < generated08V13 := by
  norm_num [generated08V13]

private theorem generated08Hnext13 :
    generated08M14 = matMul generated08M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated08M14, generated08M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated08LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels :=
  generated08LocalAxisTraceOfGeneratedStates
    generated08Hdot00
    generated08Hpos00
    generated08Hnext00
    generated08Hdot01
    generated08Hpos01
    generated08Hnext01
    generated08Hdot02
    generated08Hpos02
    generated08Hnext02
    generated08Hdot03
    generated08Hpos03
    generated08Hnext03
    generated08Hdot04
    generated08Hpos04
    generated08Hnext04
    generated08Hdot05
    generated08Hpos05
    generated08Hnext05
    generated08Hdot06
    generated08Hpos06
    generated08Hnext06
    generated08Hdot07
    generated08Hpos07
    generated08Hnext07
    generated08Hdot08
    generated08Hpos08
    generated08Hnext08
    generated08Hdot09
    generated08Hpos09
    generated08Hnext09
    generated08Hdot10
    generated08Hpos10
    generated08Hnext10
    generated08Hdot11
    generated08Hpos11
    generated08Hnext11
    generated08Hdot12
    generated08Hpos12
    generated08Hnext12
    generated08Hdot13
    generated08Hpos13
    generated08Hnext13


theorem generated08ClosedLanguageOfPositiveTemplateTrace
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
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated08ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated08SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated08ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated08ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated08SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated08ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated08SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated08ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated08ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated08ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated08ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated08ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated08ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated08ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated08ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated08LocalAxisTraceConcrete
    canonicalBadFace

theorem generated08ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated08ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated08LocalAxisTraceConcrete
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated08ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated08ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated08LocalAxisTraceConcrete
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated08ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated08ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated08LocalAxisTraceConcrete
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated08ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated08ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated08LocalAxisTraceConcrete
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated08ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated08ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated08ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated08ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated08Rank generated08ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated08Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated08Rank seq badFace :=
  generated08ClosedLanguageForSeqOfGeneratedForcedSeq
    generated08ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated08ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated08Rank generated08ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated08Rank) :
    TopPairingClosedLanguageForSeq generated08Rank seq Face.ym :=
  generated08ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated08CanonicalBadFaceCompatible

theorem generated08ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated08Rank generated08ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated08Rank seq Face.ym :=
  generated08ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated08TopPairingLanguageAtRank

theorem generated08GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke08
