import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke32

open Cuboctahedron

private def generated32ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated32ContributionLabels_length :
    generated32ContributionLabels.length = 14 := by
  rfl

private theorem generated32ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated32ContributionLabels := by
  unfold generated32ContributionLabels
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

private theorem generated32ScheduleLabels :
    TopPairingStepScheduleLabels generated32ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated32ContributionLabels_length generated32ScheduleTrace

private theorem generated32SquareGapTrace :
    TopPairingSquareGapFrom 0 generated32ContributionLabels := by
  unfold generated32ContributionLabels
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

private theorem generated32SquareGapLabels :
    TopPairingSquareGapLabels generated32ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated32SquareGapTrace

private theorem generated32LocalAxisTraceOfGeneratedStates
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
      dot (matVec m07 (normalQ Face.tpmp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tpmp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels := by
  unfold generated32ContributionLabels
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

def generated32ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.zp
  | ⟨10, _⟩ => Face.zm
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated32ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated32ForcedSeq = generated32ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated32ForcedSeq generated32ContributionLabels
  rfl

def generated32Rank : Fin numPairWords :=
  ⟨947599, by decide⟩

private theorem generated32ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated32ForcedSeq) = some generated32Rank := by
  decide

private theorem generated32ForcedSeq_unrank_pairword :
    unrankPairWord generated32Rank = pairWordOfSeq generated32ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated32ForcedSeq)
      generated32Rank).1 generated32ForcedSeq_rank).symm

private theorem generated32ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated32Rank) generated32ForcedSeq := by
  rw [generated32ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated32ForcedSeq

private theorem generated32TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated32Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated32ForcedSeq_unrank_pairword]
  rfl

private theorem generated32CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated32M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated32M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated32M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated32M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated32M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated32M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated32M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated32M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated32M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (-40/81), m10 := (20/81), m11 := (-65/81), m12 := (-44/81), m20 := (56/81), m21 := (-20/81), m22 := (55/81) }

private def generated32M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated32M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated32M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated32M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated32M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated32V00 : Rat :=
  1

private def generated32V01 : Rat :=
  1

private def generated32V02 : Rat :=
  3

private def generated32V03 : Rat :=
  3

private def generated32V04 : Rat :=
  3

private def generated32V05 : Rat :=
  1

private def generated32V06 : Rat :=
  1

private def generated32V07 : Rat :=
  3

private def generated32V08 : Rat :=
  1

private def generated32V09 : Rat :=
  1

private def generated32V10 : Rat :=
  1

private def generated32V11 : Rat :=
  3

private def generated32V12 : Rat :=
  3

private def generated32V13 : Rat :=
  1

private theorem generated32Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated32V00 := by
  norm_num [generated32V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos00 :
    0 < generated32V00 := by
  norm_num [generated32V00]

private theorem generated32Hnext00 :
    generated32M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated32M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot01 :
    dot (matVec generated32M01 (normalQ Face.ym))
      topPairingLocalAxis = generated32V01 := by
  norm_num [generated32V01, generated32M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos01 :
    0 < generated32V01 := by
  norm_num [generated32V01]

private theorem generated32Hnext01 :
    generated32M02 = matMul generated32M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated32M02, generated32M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot02 :
    dot (matVec generated32M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated32V02 := by
  norm_num [generated32V02, generated32M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos02 :
    0 < generated32V02 := by
  norm_num [generated32V02]

private theorem generated32Hnext02 :
    generated32M03 = matMul generated32M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated32M03, generated32M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot03 :
    dot (matVec generated32M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated32V03 := by
  norm_num [generated32V03, generated32M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos03 :
    0 < generated32V03 := by
  norm_num [generated32V03]

private theorem generated32Hnext03 :
    generated32M04 = matMul generated32M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated32M04, generated32M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot04 :
    dot (matVec generated32M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated32V04 := by
  norm_num [generated32V04, generated32M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos04 :
    0 < generated32V04 := by
  norm_num [generated32V04]

private theorem generated32Hnext04 :
    generated32M05 = matMul generated32M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated32M05, generated32M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot05 :
    dot (matVec generated32M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated32V05 := by
  norm_num [generated32V05, generated32M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos05 :
    0 < generated32V05 := by
  norm_num [generated32V05]

private theorem generated32Hnext05 :
    generated32M06 = matMul generated32M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated32M06, generated32M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot06 :
    dot (matVec generated32M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated32V06 := by
  norm_num [generated32V06, generated32M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos06 :
    0 < generated32V06 := by
  norm_num [generated32V06]

private theorem generated32Hnext06 :
    generated32M07 = matMul generated32M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated32M07, generated32M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot07 :
    dot (matVec generated32M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated32V07 := by
  norm_num [generated32V07, generated32M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos07 :
    0 < generated32V07 := by
  norm_num [generated32V07]

private theorem generated32Hnext07 :
    generated32M08 = matMul generated32M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated32M08, generated32M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot08 :
    dot (matVec generated32M08 (normalQ Face.zp))
      topPairingLocalAxis = generated32V08 := by
  norm_num [generated32V08, generated32M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos08 :
    0 < generated32V08 := by
  norm_num [generated32V08]

private theorem generated32Hnext08 :
    generated32M09 = matMul generated32M08 (reflM (normalQ Face.zp)) := by
  norm_num [generated32M09, generated32M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot09 :
    dot (matVec generated32M09 (normalQ Face.zm))
      topPairingLocalAxis = generated32V09 := by
  norm_num [generated32V09, generated32M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos09 :
    0 < generated32V09 := by
  norm_num [generated32V09]

private theorem generated32Hnext09 :
    generated32M10 = matMul generated32M09 (reflM (normalQ Face.zm)) := by
  norm_num [generated32M10, generated32M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot10 :
    dot (matVec generated32M10 (normalQ Face.yp))
      topPairingLocalAxis = generated32V10 := by
  norm_num [generated32V10, generated32M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos10 :
    0 < generated32V10 := by
  norm_num [generated32V10]

private theorem generated32Hnext10 :
    generated32M11 = matMul generated32M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated32M11, generated32M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot11 :
    dot (matVec generated32M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated32V11 := by
  norm_num [generated32V11, generated32M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos11 :
    0 < generated32V11 := by
  norm_num [generated32V11]

private theorem generated32Hnext11 :
    generated32M12 = matMul generated32M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated32M12, generated32M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot12 :
    dot (matVec generated32M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated32V12 := by
  norm_num [generated32V12, generated32M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos12 :
    0 < generated32V12 := by
  norm_num [generated32V12]

private theorem generated32Hnext12 :
    generated32M13 = matMul generated32M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated32M13, generated32M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32Hdot13 :
    dot (matVec generated32M13 (normalQ Face.xp))
      topPairingLocalAxis = generated32V13 := by
  norm_num [generated32V13, generated32M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated32Hpos13 :
    0 < generated32V13 := by
  norm_num [generated32V13]

private theorem generated32Hnext13 :
    generated32M14 = matMul generated32M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated32M14, generated32M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated32LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels :=
  generated32LocalAxisTraceOfGeneratedStates
    generated32Hdot00
    generated32Hpos00
    generated32Hnext00
    generated32Hdot01
    generated32Hpos01
    generated32Hnext01
    generated32Hdot02
    generated32Hpos02
    generated32Hnext02
    generated32Hdot03
    generated32Hpos03
    generated32Hnext03
    generated32Hdot04
    generated32Hpos04
    generated32Hnext04
    generated32Hdot05
    generated32Hpos05
    generated32Hnext05
    generated32Hdot06
    generated32Hpos06
    generated32Hnext06
    generated32Hdot07
    generated32Hpos07
    generated32Hnext07
    generated32Hdot08
    generated32Hpos08
    generated32Hnext08
    generated32Hdot09
    generated32Hpos09
    generated32Hnext09
    generated32Hdot10
    generated32Hpos10
    generated32Hnext10
    generated32Hdot11
    generated32Hpos11
    generated32Hnext11
    generated32Hdot12
    generated32Hpos12
    generated32Hnext12
    generated32Hdot13
    generated32Hpos13
    generated32Hnext13


theorem generated32ClosedLanguageOfPositiveTemplateTrace
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
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated32ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated32SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated32ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated32ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated32SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated32ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated32SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated32ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated32ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated32ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated32ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated32ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated32ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated32ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated32ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated32LocalAxisTraceConcrete
    canonicalBadFace

theorem generated32ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated32ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated32LocalAxisTraceConcrete
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated32ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated32ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated32LocalAxisTraceConcrete
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated32ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated32ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated32LocalAxisTraceConcrete
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated32ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated32ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated32LocalAxisTraceConcrete
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated32ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated32ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated32ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated32ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated32Rank generated32ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated32Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated32Rank seq badFace :=
  generated32ClosedLanguageForSeqOfGeneratedForcedSeq
    generated32ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated32ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated32Rank generated32ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated32Rank) :
    TopPairingClosedLanguageForSeq generated32Rank seq Face.ym :=
  generated32ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated32CanonicalBadFaceCompatible

theorem generated32ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated32Rank generated32ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated32Rank seq Face.ym :=
  generated32ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated32TopPairingLanguageAtRank

theorem generated32GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke32
