import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01

open Cuboctahedron

private def generated01ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]

private theorem generated01ContributionLabels_length :
    generated01ContributionLabels.length = 14 := by
  rfl

private theorem generated01ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated01ContributionLabels := by
  unfold generated01ContributionLabels
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

private theorem generated01ScheduleLabels :
    TopPairingStepScheduleLabels generated01ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated01ContributionLabels_length generated01ScheduleTrace

private theorem generated01SquareGapTrace :
    TopPairingSquareGapFrom 0 generated01ContributionLabels := by
  unfold generated01ContributionLabels
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
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

private theorem generated01SquareGapLabels :
    TopPairingSquareGapLabels generated01ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated01SquareGapTrace

private theorem generated01LocalAxisTraceOfGeneratedStates
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
      dot (matVec m03 (normalQ Face.zm))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.zm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.tmmp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tmmp)))
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
      dot (matVec m11 (normalQ Face.tmmm))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.tmmm)))
    (hdot12 :
      dot (matVec m12 (normalQ Face.zp))
        topPairingLocalAxis = v12)
    (hpos12 : 0 < v12)
    (hnext12 :
      m13 = matMul m12 (reflM (normalQ Face.zp)))
    (hdot13 :
      dot (matVec m13 (normalQ Face.xp))
        topPairingLocalAxis = v13)
    (hpos13 : 0 < v13)
    (hnext13 :
      m14 = matMul m13 (reflM (normalQ Face.xp)))
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels := by
  unfold generated01ContributionLabels
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

def generated01ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.tpmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | _ => Face.zp

private theorem generated01ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated01ForcedSeq = generated01ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated01ForcedSeq generated01ContributionLabels
  rfl

def generated01Rank : Fin numPairWords :=
  ⟨10613, by decide⟩

private theorem generated01ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated01ForcedSeq) = some generated01Rank := by
  decide

private theorem generated01ForcedSeq_unrank_pairword :
    unrankPairWord generated01Rank = pairWordOfSeq generated01ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated01ForcedSeq)
      generated01Rank).1 generated01ForcedSeq_rank).symm

private theorem generated01ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated01Rank) generated01ForcedSeq := by
  rw [generated01ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated01ForcedSeq

private theorem generated01TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated01Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated01ForcedSeq_unrank_pairword]
  rfl

private theorem generated01CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated01M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated01M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated01M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated01M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated01M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }

private def generated01M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }

private def generated01M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated01M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }

private def generated01M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated01M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated01M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated01M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated01M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated01M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated01V00 : Rat :=
  1

private def generated01V01 : Rat :=
  1

private def generated01V02 : Rat :=
  1

private def generated01V03 : Rat :=
  3

private def generated01V04 : Rat :=
  3

private def generated01V05 : Rat :=
  3

private def generated01V06 : Rat :=
  3

private def generated01V07 : Rat :=
  1

private def generated01V08 : Rat :=
  1

private def generated01V09 : Rat :=
  3

private def generated01V10 : Rat :=
  3

private def generated01V11 : Rat :=
  3

private def generated01V12 : Rat :=
  3

private def generated01V13 : Rat :=
  1

private theorem generated01Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated01V00 := by
  norm_num [generated01V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos00 :
    0 < generated01V00 := by
  norm_num [generated01V00]

private theorem generated01Hnext00 :
    generated01M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated01M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot01 :
    dot (matVec generated01M01 (normalQ Face.ym))
      topPairingLocalAxis = generated01V01 := by
  norm_num [generated01V01, generated01M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos01 :
    0 < generated01V01 := by
  norm_num [generated01V01]

private theorem generated01Hnext01 :
    generated01M02 = matMul generated01M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated01M02, generated01M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot02 :
    dot (matVec generated01M02 (normalQ Face.yp))
      topPairingLocalAxis = generated01V02 := by
  norm_num [generated01V02, generated01M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos02 :
    0 < generated01V02 := by
  norm_num [generated01V02]

private theorem generated01Hnext02 :
    generated01M03 = matMul generated01M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated01M03, generated01M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot03 :
    dot (matVec generated01M03 (normalQ Face.zm))
      topPairingLocalAxis = generated01V03 := by
  norm_num [generated01V03, generated01M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos03 :
    0 < generated01V03 := by
  norm_num [generated01V03]

private theorem generated01Hnext03 :
    generated01M04 = matMul generated01M03 (reflM (normalQ Face.zm)) := by
  norm_num [generated01M04, generated01M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot04 :
    dot (matVec generated01M04 (normalQ Face.tmmp))
      topPairingLocalAxis = generated01V04 := by
  norm_num [generated01V04, generated01M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos04 :
    0 < generated01V04 := by
  norm_num [generated01V04]

private theorem generated01Hnext04 :
    generated01M05 = matMul generated01M04 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated01M05, generated01M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot05 :
    dot (matVec generated01M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated01V05 := by
  norm_num [generated01V05, generated01M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos05 :
    0 < generated01V05 := by
  norm_num [generated01V05]

private theorem generated01Hnext05 :
    generated01M06 = matMul generated01M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated01M06, generated01M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot06 :
    dot (matVec generated01M06 (normalQ Face.tppp))
      topPairingLocalAxis = generated01V06 := by
  norm_num [generated01V06, generated01M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos06 :
    0 < generated01V06 := by
  norm_num [generated01V06]

private theorem generated01Hnext06 :
    generated01M07 = matMul generated01M06 (reflM (normalQ Face.tppp)) := by
  norm_num [generated01M07, generated01M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot07 :
    dot (matVec generated01M07 (normalQ Face.tpmm))
      topPairingLocalAxis = generated01V07 := by
  norm_num [generated01V07, generated01M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos07 :
    0 < generated01V07 := by
  norm_num [generated01V07]

private theorem generated01Hnext07 :
    generated01M08 = matMul generated01M07 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated01M08, generated01M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot08 :
    dot (matVec generated01M08 (normalQ Face.tmpp))
      topPairingLocalAxis = generated01V08 := by
  norm_num [generated01V08, generated01M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos08 :
    0 < generated01V08 := by
  norm_num [generated01V08]

private theorem generated01Hnext08 :
    generated01M09 = matMul generated01M08 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated01M09, generated01M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot09 :
    dot (matVec generated01M09 (normalQ Face.tppm))
      topPairingLocalAxis = generated01V09 := by
  norm_num [generated01V09, generated01M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos09 :
    0 < generated01V09 := by
  norm_num [generated01V09]

private theorem generated01Hnext09 :
    generated01M10 = matMul generated01M09 (reflM (normalQ Face.tppm)) := by
  norm_num [generated01M10, generated01M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot10 :
    dot (matVec generated01M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated01V10 := by
  norm_num [generated01V10, generated01M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos10 :
    0 < generated01V10 := by
  norm_num [generated01V10]

private theorem generated01Hnext10 :
    generated01M11 = matMul generated01M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated01M11, generated01M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot11 :
    dot (matVec generated01M11 (normalQ Face.tmmm))
      topPairingLocalAxis = generated01V11 := by
  norm_num [generated01V11, generated01M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos11 :
    0 < generated01V11 := by
  norm_num [generated01V11]

private theorem generated01Hnext11 :
    generated01M12 = matMul generated01M11 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated01M12, generated01M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot12 :
    dot (matVec generated01M12 (normalQ Face.zp))
      topPairingLocalAxis = generated01V12 := by
  norm_num [generated01V12, generated01M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos12 :
    0 < generated01V12 := by
  norm_num [generated01V12]

private theorem generated01Hnext12 :
    generated01M13 = matMul generated01M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated01M13, generated01M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01Hdot13 :
    dot (matVec generated01M13 (normalQ Face.xp))
      topPairingLocalAxis = generated01V13 := by
  norm_num [generated01V13, generated01M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated01Hpos13 :
    0 < generated01V13 := by
  norm_num [generated01V13]

private theorem generated01Hnext13 :
    generated01M14 = matMul generated01M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated01M14, generated01M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated01LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels :=
  generated01LocalAxisTraceOfGeneratedStates
    generated01Hdot00
    generated01Hpos00
    generated01Hnext00
    generated01Hdot01
    generated01Hpos01
    generated01Hnext01
    generated01Hdot02
    generated01Hpos02
    generated01Hnext02
    generated01Hdot03
    generated01Hpos03
    generated01Hnext03
    generated01Hdot04
    generated01Hpos04
    generated01Hnext04
    generated01Hdot05
    generated01Hpos05
    generated01Hnext05
    generated01Hdot06
    generated01Hpos06
    generated01Hnext06
    generated01Hdot07
    generated01Hpos07
    generated01Hnext07
    generated01Hdot08
    generated01Hpos08
    generated01Hnext08
    generated01Hdot09
    generated01Hpos09
    generated01Hnext09
    generated01Hdot10
    generated01Hpos10
    generated01Hnext10
    generated01Hdot11
    generated01Hpos11
    generated01Hnext11
    generated01Hdot12
    generated01Hpos12
    generated01Hnext12
    generated01Hdot13
    generated01Hpos13
    generated01Hnext13


theorem generated01ClosedLanguageOfPositiveTemplateTrace
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
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated01ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated01SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated01ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated01ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated01SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated01ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated01SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated01ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated01ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated01ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated01ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated01ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated01ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated01ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated01ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated01LocalAxisTraceConcrete
    canonicalBadFace

theorem generated01ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated01ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated01LocalAxisTraceConcrete
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated01ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated01ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated01LocalAxisTraceConcrete
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated01ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated01ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated01LocalAxisTraceConcrete
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated01ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated01ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated01LocalAxisTraceConcrete
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated01ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated01ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated01ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated01ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated01Rank generated01ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated01Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated01Rank seq badFace :=
  generated01ClosedLanguageForSeqOfGeneratedForcedSeq
    generated01ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated01ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated01Rank generated01ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated01Rank) :
    TopPairingClosedLanguageForSeq generated01Rank seq Face.ym :=
  generated01ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated01CanonicalBadFaceCompatible

theorem generated01ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated01Rank generated01ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated01Rank seq Face.ym :=
  generated01ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated01TopPairingLanguageAtRank

theorem generated01GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01
