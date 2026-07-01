import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke16

open Cuboctahedron

private def generated16ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]

private theorem generated16ContributionLabels_length :
    generated16ContributionLabels.length = 14 := by
  rfl

private theorem generated16ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated16ContributionLabels := by
  unfold generated16ContributionLabels
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

private theorem generated16ScheduleLabels :
    TopPairingStepScheduleLabels generated16ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated16ContributionLabels_length generated16ScheduleTrace

private theorem generated16SquareGapTrace :
    TopPairingSquareGapFrom 0 generated16ContributionLabels := by
  unfold generated16ContributionLabels
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

private theorem generated16SquareGapLabels :
    TopPairingSquareGapLabels generated16ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated16SquareGapTrace

private theorem generated16LocalAxisTraceOfGeneratedStates
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
      dot (matVec m02 (normalQ Face.zm))
        topPairingLocalAxis = v02)
    (hpos02 : 0 < v02)
    (hnext02 :
      m03 = matMul m02 (reflM (normalQ Face.zm)))
    (hdot03 :
      dot (matVec m03 (normalQ Face.tmpp))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.tmpp)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.tppp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tppp)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tpmp))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tpmp)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tppm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tppm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tmmp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tmmp)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tpmm))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tpmm)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.yp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.yp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels := by
  unfold generated16ContributionLabels
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

def generated16ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tpmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | _ => Face.zp

private theorem generated16ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated16ForcedSeq = generated16ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated16ForcedSeq generated16ContributionLabels
  rfl

def generated16Rank : Fin numPairWords :=
  ⟨312761, by decide⟩

private theorem generated16ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated16ForcedSeq) = some generated16Rank := by
  decide

private theorem generated16ForcedSeq_unrank_pairword :
    unrankPairWord generated16Rank = pairWordOfSeq generated16ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated16ForcedSeq)
      generated16Rank).1 generated16ForcedSeq_rank).symm

private theorem generated16ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated16Rank) generated16ForcedSeq := by
  rw [generated16ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated16ForcedSeq

private theorem generated16TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated16Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated16ForcedSeq_unrank_pairword]
  rfl

private theorem generated16CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated16M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated16M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated16M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated16M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (-2/3), m10 := (-2/3), m11 := (-1/3), m12 := (2/3), m20 := (-2/3), m21 := (2/3), m22 := (-1/3) }

private def generated16M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (4/9), m10 := (-4/9), m11 := (-1/9), m12 := (8/9), m20 := (-4/9), m21 := (8/9), m22 := (-1/9) }

private def generated16M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated16M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }

private def generated16M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated16M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (-40/81), m10 := (20/81), m11 := (-65/81), m12 := (-44/81), m20 := (56/81), m21 := (-20/81), m22 := (55/81) }

private def generated16M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated16M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated16M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated16M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated16M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated16V00 : Rat :=
  1

private def generated16V01 : Rat :=
  1

private def generated16V02 : Rat :=
  3

private def generated16V03 : Rat :=
  3

private def generated16V04 : Rat :=
  3

private def generated16V05 : Rat :=
  3

private def generated16V06 : Rat :=
  1

private def generated16V07 : Rat :=
  1

private def generated16V08 : Rat :=
  3

private def generated16V09 : Rat :=
  1

private def generated16V10 : Rat :=
  3

private def generated16V11 : Rat :=
  3

private def generated16V12 : Rat :=
  3

private def generated16V13 : Rat :=
  1

private theorem generated16Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated16V00 := by
  norm_num [generated16V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos00 :
    0 < generated16V00 := by
  norm_num [generated16V00]

private theorem generated16Hnext00 :
    generated16M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated16M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot01 :
    dot (matVec generated16M01 (normalQ Face.ym))
      topPairingLocalAxis = generated16V01 := by
  norm_num [generated16V01, generated16M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos01 :
    0 < generated16V01 := by
  norm_num [generated16V01]

private theorem generated16Hnext01 :
    generated16M02 = matMul generated16M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated16M02, generated16M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot02 :
    dot (matVec generated16M02 (normalQ Face.zm))
      topPairingLocalAxis = generated16V02 := by
  norm_num [generated16V02, generated16M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos02 :
    0 < generated16V02 := by
  norm_num [generated16V02]

private theorem generated16Hnext02 :
    generated16M03 = matMul generated16M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated16M03, generated16M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot03 :
    dot (matVec generated16M03 (normalQ Face.tmpp))
      topPairingLocalAxis = generated16V03 := by
  norm_num [generated16V03, generated16M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos03 :
    0 < generated16V03 := by
  norm_num [generated16V03]

private theorem generated16Hnext03 :
    generated16M04 = matMul generated16M03 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated16M04, generated16M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot04 :
    dot (matVec generated16M04 (normalQ Face.tppp))
      topPairingLocalAxis = generated16V04 := by
  norm_num [generated16V04, generated16M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos04 :
    0 < generated16V04 := by
  norm_num [generated16V04]

private theorem generated16Hnext04 :
    generated16M05 = matMul generated16M04 (reflM (normalQ Face.tppp)) := by
  norm_num [generated16M05, generated16M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot05 :
    dot (matVec generated16M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated16V05 := by
  norm_num [generated16V05, generated16M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos05 :
    0 < generated16V05 := by
  norm_num [generated16V05]

private theorem generated16Hnext05 :
    generated16M06 = matMul generated16M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated16M06, generated16M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot06 :
    dot (matVec generated16M06 (normalQ Face.tppm))
      topPairingLocalAxis = generated16V06 := by
  norm_num [generated16V06, generated16M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos06 :
    0 < generated16V06 := by
  norm_num [generated16V06]

private theorem generated16Hnext06 :
    generated16M07 = matMul generated16M06 (reflM (normalQ Face.tppm)) := by
  norm_num [generated16M07, generated16M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot07 :
    dot (matVec generated16M07 (normalQ Face.tmmp))
      topPairingLocalAxis = generated16V07 := by
  norm_num [generated16V07, generated16M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos07 :
    0 < generated16V07 := by
  norm_num [generated16V07]

private theorem generated16Hnext07 :
    generated16M08 = matMul generated16M07 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated16M08, generated16M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot08 :
    dot (matVec generated16M08 (normalQ Face.tpmm))
      topPairingLocalAxis = generated16V08 := by
  norm_num [generated16V08, generated16M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos08 :
    0 < generated16V08 := by
  norm_num [generated16V08]

private theorem generated16Hnext08 :
    generated16M09 = matMul generated16M08 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated16M09, generated16M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot09 :
    dot (matVec generated16M09 (normalQ Face.yp))
      topPairingLocalAxis = generated16V09 := by
  norm_num [generated16V09, generated16M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos09 :
    0 < generated16V09 := by
  norm_num [generated16V09]

private theorem generated16Hnext09 :
    generated16M10 = matMul generated16M09 (reflM (normalQ Face.yp)) := by
  norm_num [generated16M10, generated16M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot10 :
    dot (matVec generated16M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated16V10 := by
  norm_num [generated16V10, generated16M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos10 :
    0 < generated16V10 := by
  norm_num [generated16V10]

private theorem generated16Hnext10 :
    generated16M11 = matMul generated16M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated16M11, generated16M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot11 :
    dot (matVec generated16M11 (normalQ Face.tmmm))
      topPairingLocalAxis = generated16V11 := by
  norm_num [generated16V11, generated16M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos11 :
    0 < generated16V11 := by
  norm_num [generated16V11]

private theorem generated16Hnext11 :
    generated16M12 = matMul generated16M11 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated16M12, generated16M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot12 :
    dot (matVec generated16M12 (normalQ Face.zp))
      topPairingLocalAxis = generated16V12 := by
  norm_num [generated16V12, generated16M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos12 :
    0 < generated16V12 := by
  norm_num [generated16V12]

private theorem generated16Hnext12 :
    generated16M13 = matMul generated16M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated16M13, generated16M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16Hdot13 :
    dot (matVec generated16M13 (normalQ Face.xp))
      topPairingLocalAxis = generated16V13 := by
  norm_num [generated16V13, generated16M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated16Hpos13 :
    0 < generated16V13 := by
  norm_num [generated16V13]

private theorem generated16Hnext13 :
    generated16M14 = matMul generated16M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated16M14, generated16M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated16LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels :=
  generated16LocalAxisTraceOfGeneratedStates
    generated16Hdot00
    generated16Hpos00
    generated16Hnext00
    generated16Hdot01
    generated16Hpos01
    generated16Hnext01
    generated16Hdot02
    generated16Hpos02
    generated16Hnext02
    generated16Hdot03
    generated16Hpos03
    generated16Hnext03
    generated16Hdot04
    generated16Hpos04
    generated16Hnext04
    generated16Hdot05
    generated16Hpos05
    generated16Hnext05
    generated16Hdot06
    generated16Hpos06
    generated16Hnext06
    generated16Hdot07
    generated16Hpos07
    generated16Hnext07
    generated16Hdot08
    generated16Hpos08
    generated16Hnext08
    generated16Hdot09
    generated16Hpos09
    generated16Hnext09
    generated16Hdot10
    generated16Hpos10
    generated16Hnext10
    generated16Hdot11
    generated16Hpos11
    generated16Hnext11
    generated16Hdot12
    generated16Hpos12
    generated16Hnext12
    generated16Hdot13
    generated16Hpos13
    generated16Hnext13


theorem generated16ClosedLanguageOfPositiveTemplateTrace
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
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated16ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated16SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated16ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated16ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated16SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated16ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated16SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated16ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated16ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated16ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated16ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated16ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated16ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated16ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated16ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated16LocalAxisTraceConcrete
    canonicalBadFace

theorem generated16ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated16ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated16LocalAxisTraceConcrete
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated16ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated16ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated16LocalAxisTraceConcrete
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated16ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated16ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated16LocalAxisTraceConcrete
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated16ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated16ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated16LocalAxisTraceConcrete
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated16ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated16ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated16ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated16ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated16Rank generated16ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated16Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated16Rank seq badFace :=
  generated16ClosedLanguageForSeqOfGeneratedForcedSeq
    generated16ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated16ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated16Rank generated16ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated16Rank) :
    TopPairingClosedLanguageForSeq generated16Rank seq Face.ym :=
  generated16ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated16CanonicalBadFaceCompatible

theorem generated16ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated16Rank generated16ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated16Rank seq Face.ym :=
  generated16ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated16TopPairingLanguageAtRank

theorem generated16GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke16
