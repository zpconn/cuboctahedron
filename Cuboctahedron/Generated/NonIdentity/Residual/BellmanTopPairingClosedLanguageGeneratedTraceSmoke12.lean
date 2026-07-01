import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke12

open Cuboctahedron

private def generated12ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]

private theorem generated12ContributionLabels_length :
    generated12ContributionLabels.length = 14 := by
  rfl

private theorem generated12ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated12ContributionLabels := by
  unfold generated12ContributionLabels
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

private theorem generated12ScheduleLabels :
    TopPairingStepScheduleLabels generated12ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated12ContributionLabels_length generated12ScheduleTrace

private theorem generated12SquareGapTrace :
    TopPairingSquareGapFrom 0 generated12ContributionLabels := by
  unfold generated12ContributionLabels
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

private theorem generated12SquareGapLabels :
    TopPairingSquareGapLabels generated12ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated12SquareGapTrace

private theorem generated12LocalAxisTraceOfGeneratedStates
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
      dot (matVec m03 (normalQ Face.yp))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.yp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels := by
  unfold generated12ContributionLabels
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

def generated12ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.yp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.tpmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | _ => Face.zp

private theorem generated12ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated12ForcedSeq = generated12ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated12ForcedSeq generated12ContributionLabels
  rfl

def generated12Rank : Fin numPairWords :=
  ⟨124013, by decide⟩

private theorem generated12ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated12ForcedSeq) = some generated12Rank := by
  decide

private theorem generated12ForcedSeq_unrank_pairword :
    unrankPairWord generated12Rank = pairWordOfSeq generated12ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated12ForcedSeq)
      generated12Rank).1 generated12ForcedSeq_rank).symm

private theorem generated12ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated12Rank) generated12ForcedSeq := by
  rw [generated12ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated12ForcedSeq

private theorem generated12TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated12Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated12ForcedSeq_unrank_pairword]
  rfl

private theorem generated12CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated12M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated12M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated12M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated12M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated12M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }

private def generated12M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }

private def generated12M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated12M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }

private def generated12M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated12M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated12M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated12M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated12M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated12M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated12V00 : Rat :=
  1

private def generated12V01 : Rat :=
  1

private def generated12V02 : Rat :=
  3

private def generated12V03 : Rat :=
  1

private def generated12V04 : Rat :=
  3

private def generated12V05 : Rat :=
  3

private def generated12V06 : Rat :=
  3

private def generated12V07 : Rat :=
  1

private def generated12V08 : Rat :=
  1

private def generated12V09 : Rat :=
  3

private def generated12V10 : Rat :=
  3

private def generated12V11 : Rat :=
  3

private def generated12V12 : Rat :=
  3

private def generated12V13 : Rat :=
  1

private theorem generated12Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated12V00 := by
  norm_num [generated12V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos00 :
    0 < generated12V00 := by
  norm_num [generated12V00]

private theorem generated12Hnext00 :
    generated12M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated12M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot01 :
    dot (matVec generated12M01 (normalQ Face.ym))
      topPairingLocalAxis = generated12V01 := by
  norm_num [generated12V01, generated12M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos01 :
    0 < generated12V01 := by
  norm_num [generated12V01]

private theorem generated12Hnext01 :
    generated12M02 = matMul generated12M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated12M02, generated12M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot02 :
    dot (matVec generated12M02 (normalQ Face.zm))
      topPairingLocalAxis = generated12V02 := by
  norm_num [generated12V02, generated12M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos02 :
    0 < generated12V02 := by
  norm_num [generated12V02]

private theorem generated12Hnext02 :
    generated12M03 = matMul generated12M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated12M03, generated12M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot03 :
    dot (matVec generated12M03 (normalQ Face.yp))
      topPairingLocalAxis = generated12V03 := by
  norm_num [generated12V03, generated12M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos03 :
    0 < generated12V03 := by
  norm_num [generated12V03]

private theorem generated12Hnext03 :
    generated12M04 = matMul generated12M03 (reflM (normalQ Face.yp)) := by
  norm_num [generated12M04, generated12M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot04 :
    dot (matVec generated12M04 (normalQ Face.tmmp))
      topPairingLocalAxis = generated12V04 := by
  norm_num [generated12V04, generated12M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos04 :
    0 < generated12V04 := by
  norm_num [generated12V04]

private theorem generated12Hnext04 :
    generated12M05 = matMul generated12M04 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated12M05, generated12M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot05 :
    dot (matVec generated12M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated12V05 := by
  norm_num [generated12V05, generated12M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos05 :
    0 < generated12V05 := by
  norm_num [generated12V05]

private theorem generated12Hnext05 :
    generated12M06 = matMul generated12M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated12M06, generated12M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot06 :
    dot (matVec generated12M06 (normalQ Face.tppp))
      topPairingLocalAxis = generated12V06 := by
  norm_num [generated12V06, generated12M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos06 :
    0 < generated12V06 := by
  norm_num [generated12V06]

private theorem generated12Hnext06 :
    generated12M07 = matMul generated12M06 (reflM (normalQ Face.tppp)) := by
  norm_num [generated12M07, generated12M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot07 :
    dot (matVec generated12M07 (normalQ Face.tpmm))
      topPairingLocalAxis = generated12V07 := by
  norm_num [generated12V07, generated12M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos07 :
    0 < generated12V07 := by
  norm_num [generated12V07]

private theorem generated12Hnext07 :
    generated12M08 = matMul generated12M07 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated12M08, generated12M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot08 :
    dot (matVec generated12M08 (normalQ Face.tmpp))
      topPairingLocalAxis = generated12V08 := by
  norm_num [generated12V08, generated12M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos08 :
    0 < generated12V08 := by
  norm_num [generated12V08]

private theorem generated12Hnext08 :
    generated12M09 = matMul generated12M08 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated12M09, generated12M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot09 :
    dot (matVec generated12M09 (normalQ Face.tppm))
      topPairingLocalAxis = generated12V09 := by
  norm_num [generated12V09, generated12M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos09 :
    0 < generated12V09 := by
  norm_num [generated12V09]

private theorem generated12Hnext09 :
    generated12M10 = matMul generated12M09 (reflM (normalQ Face.tppm)) := by
  norm_num [generated12M10, generated12M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot10 :
    dot (matVec generated12M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated12V10 := by
  norm_num [generated12V10, generated12M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos10 :
    0 < generated12V10 := by
  norm_num [generated12V10]

private theorem generated12Hnext10 :
    generated12M11 = matMul generated12M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated12M11, generated12M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot11 :
    dot (matVec generated12M11 (normalQ Face.tmmm))
      topPairingLocalAxis = generated12V11 := by
  norm_num [generated12V11, generated12M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos11 :
    0 < generated12V11 := by
  norm_num [generated12V11]

private theorem generated12Hnext11 :
    generated12M12 = matMul generated12M11 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated12M12, generated12M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot12 :
    dot (matVec generated12M12 (normalQ Face.zp))
      topPairingLocalAxis = generated12V12 := by
  norm_num [generated12V12, generated12M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos12 :
    0 < generated12V12 := by
  norm_num [generated12V12]

private theorem generated12Hnext12 :
    generated12M13 = matMul generated12M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated12M13, generated12M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12Hdot13 :
    dot (matVec generated12M13 (normalQ Face.xp))
      topPairingLocalAxis = generated12V13 := by
  norm_num [generated12V13, generated12M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated12Hpos13 :
    0 < generated12V13 := by
  norm_num [generated12V13]

private theorem generated12Hnext13 :
    generated12M14 = matMul generated12M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated12M14, generated12M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated12LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels :=
  generated12LocalAxisTraceOfGeneratedStates
    generated12Hdot00
    generated12Hpos00
    generated12Hnext00
    generated12Hdot01
    generated12Hpos01
    generated12Hnext01
    generated12Hdot02
    generated12Hpos02
    generated12Hnext02
    generated12Hdot03
    generated12Hpos03
    generated12Hnext03
    generated12Hdot04
    generated12Hpos04
    generated12Hnext04
    generated12Hdot05
    generated12Hpos05
    generated12Hnext05
    generated12Hdot06
    generated12Hpos06
    generated12Hnext06
    generated12Hdot07
    generated12Hpos07
    generated12Hnext07
    generated12Hdot08
    generated12Hpos08
    generated12Hnext08
    generated12Hdot09
    generated12Hpos09
    generated12Hnext09
    generated12Hdot10
    generated12Hpos10
    generated12Hnext10
    generated12Hdot11
    generated12Hpos11
    generated12Hnext11
    generated12Hdot12
    generated12Hpos12
    generated12Hnext12
    generated12Hdot13
    generated12Hpos13
    generated12Hnext13


theorem generated12ClosedLanguageOfPositiveTemplateTrace
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
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated12ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated12SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated12ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated12ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated12SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated12ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated12SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated12ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated12ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated12ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated12ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated12ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated12ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated12ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated12ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated12LocalAxisTraceConcrete
    canonicalBadFace

theorem generated12ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated12ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated12LocalAxisTraceConcrete
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated12ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated12ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated12LocalAxisTraceConcrete
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated12ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated12ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated12LocalAxisTraceConcrete
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated12ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated12ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated12LocalAxisTraceConcrete
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated12ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated12ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated12ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated12ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated12Rank generated12ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated12Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated12Rank seq badFace :=
  generated12ClosedLanguageForSeqOfGeneratedForcedSeq
    generated12ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated12ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated12Rank generated12ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated12Rank) :
    TopPairingClosedLanguageForSeq generated12Rank seq Face.ym :=
  generated12ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated12CanonicalBadFaceCompatible

theorem generated12ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated12Rank generated12ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated12Rank seq Face.ym :=
  generated12ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated12TopPairingLanguageAtRank

theorem generated12GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke12
