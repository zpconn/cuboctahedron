import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke18

open Cuboctahedron

private def generated18ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]

private theorem generated18ContributionLabels_length :
    generated18ContributionLabels.length = 14 := by
  rfl

private theorem generated18ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated18ContributionLabels := by
  unfold generated18ContributionLabels
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

private theorem generated18ScheduleLabels :
    TopPairingStepScheduleLabels generated18ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated18ContributionLabels_length generated18ScheduleTrace

private theorem generated18SquareGapTrace :
    TopPairingSquareGapFrom 0 generated18ContributionLabels := by
  unfold generated18ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated18SquareGapLabels :
    TopPairingSquareGapLabels generated18ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated18SquareGapTrace

private theorem generated18LocalAxisTraceOfGeneratedStates
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
      dot (matVec m09 (normalQ Face.tmmm))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tmmm)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tmpm))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tmpm)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.zp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.zp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels := by
  unfold generated18ContributionLabels
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

def generated18ForcedSeq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.zp
  | _ => Face.yp

private theorem generated18ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated18ForcedSeq = generated18ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated18ForcedSeq generated18ContributionLabels
  rfl

def generated18Rank : Fin numPairWords :=
  ⟨312773, by decide⟩

private theorem generated18ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated18ForcedSeq) = some generated18Rank := by
  decide

private theorem generated18ForcedSeq_unrank_pairword :
    unrankPairWord generated18Rank = pairWordOfSeq generated18ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated18ForcedSeq)
      generated18Rank).1 generated18ForcedSeq_rank).symm

private theorem generated18ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated18Rank) generated18ForcedSeq := by
  rw [generated18ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated18ForcedSeq

private theorem generated18TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated18Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated18ForcedSeq_unrank_pairword]
  rfl

private theorem generated18CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated18M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated18M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated18M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated18M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (-2/3), m10 := (-2/3), m11 := (-1/3), m12 := (2/3), m20 := (-2/3), m21 := (2/3), m22 := (-1/3) }

private def generated18M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (4/9), m10 := (-4/9), m11 := (-1/9), m12 := (8/9), m20 := (-4/9), m21 := (8/9), m22 := (-1/9) }

private def generated18M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated18M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }

private def generated18M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated18M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (-40/81), m10 := (20/81), m11 := (-65/81), m12 := (-44/81), m20 := (56/81), m21 := (-20/81), m22 := (55/81) }

private def generated18M10 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (-238/243), m10 := (238/243), m11 := (-17/243), m12 := (46/243), m20 := (-14/243), m21 := (-242/243), m22 := (-17/243) }

private def generated18M11 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (-304/729), m10 := (112/729), m11 := (551/729), m12 := (-464/729), m20 := (-464/729), m21 := (-304/729), m22 := (-473/729) }

private def generated18M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated18M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated18M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated18V00 : Rat :=
  1

private def generated18V01 : Rat :=
  1

private def generated18V02 : Rat :=
  3

private def generated18V03 : Rat :=
  3

private def generated18V04 : Rat :=
  3

private def generated18V05 : Rat :=
  3

private def generated18V06 : Rat :=
  1

private def generated18V07 : Rat :=
  1

private def generated18V08 : Rat :=
  3

private def generated18V09 : Rat :=
  3

private def generated18V10 : Rat :=
  3

private def generated18V11 : Rat :=
  3

private def generated18V12 : Rat :=
  1

private def generated18V13 : Rat :=
  1

private theorem generated18Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated18V00 := by
  norm_num [generated18V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos00 :
    0 < generated18V00 := by
  norm_num [generated18V00]

private theorem generated18Hnext00 :
    generated18M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated18M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot01 :
    dot (matVec generated18M01 (normalQ Face.ym))
      topPairingLocalAxis = generated18V01 := by
  norm_num [generated18V01, generated18M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos01 :
    0 < generated18V01 := by
  norm_num [generated18V01]

private theorem generated18Hnext01 :
    generated18M02 = matMul generated18M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated18M02, generated18M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot02 :
    dot (matVec generated18M02 (normalQ Face.zm))
      topPairingLocalAxis = generated18V02 := by
  norm_num [generated18V02, generated18M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos02 :
    0 < generated18V02 := by
  norm_num [generated18V02]

private theorem generated18Hnext02 :
    generated18M03 = matMul generated18M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated18M03, generated18M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot03 :
    dot (matVec generated18M03 (normalQ Face.tmpp))
      topPairingLocalAxis = generated18V03 := by
  norm_num [generated18V03, generated18M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos03 :
    0 < generated18V03 := by
  norm_num [generated18V03]

private theorem generated18Hnext03 :
    generated18M04 = matMul generated18M03 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated18M04, generated18M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot04 :
    dot (matVec generated18M04 (normalQ Face.tppp))
      topPairingLocalAxis = generated18V04 := by
  norm_num [generated18V04, generated18M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos04 :
    0 < generated18V04 := by
  norm_num [generated18V04]

private theorem generated18Hnext04 :
    generated18M05 = matMul generated18M04 (reflM (normalQ Face.tppp)) := by
  norm_num [generated18M05, generated18M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot05 :
    dot (matVec generated18M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated18V05 := by
  norm_num [generated18V05, generated18M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos05 :
    0 < generated18V05 := by
  norm_num [generated18V05]

private theorem generated18Hnext05 :
    generated18M06 = matMul generated18M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated18M06, generated18M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot06 :
    dot (matVec generated18M06 (normalQ Face.tppm))
      topPairingLocalAxis = generated18V06 := by
  norm_num [generated18V06, generated18M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos06 :
    0 < generated18V06 := by
  norm_num [generated18V06]

private theorem generated18Hnext06 :
    generated18M07 = matMul generated18M06 (reflM (normalQ Face.tppm)) := by
  norm_num [generated18M07, generated18M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot07 :
    dot (matVec generated18M07 (normalQ Face.tmmp))
      topPairingLocalAxis = generated18V07 := by
  norm_num [generated18V07, generated18M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos07 :
    0 < generated18V07 := by
  norm_num [generated18V07]

private theorem generated18Hnext07 :
    generated18M08 = matMul generated18M07 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated18M08, generated18M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot08 :
    dot (matVec generated18M08 (normalQ Face.tpmm))
      topPairingLocalAxis = generated18V08 := by
  norm_num [generated18V08, generated18M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos08 :
    0 < generated18V08 := by
  norm_num [generated18V08]

private theorem generated18Hnext08 :
    generated18M09 = matMul generated18M08 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated18M09, generated18M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot09 :
    dot (matVec generated18M09 (normalQ Face.tmmm))
      topPairingLocalAxis = generated18V09 := by
  norm_num [generated18V09, generated18M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos09 :
    0 < generated18V09 := by
  norm_num [generated18V09]

private theorem generated18Hnext09 :
    generated18M10 = matMul generated18M09 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated18M10, generated18M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot10 :
    dot (matVec generated18M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated18V10 := by
  norm_num [generated18V10, generated18M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos10 :
    0 < generated18V10 := by
  norm_num [generated18V10]

private theorem generated18Hnext10 :
    generated18M11 = matMul generated18M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated18M11, generated18M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot11 :
    dot (matVec generated18M11 (normalQ Face.zp))
      topPairingLocalAxis = generated18V11 := by
  norm_num [generated18V11, generated18M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos11 :
    0 < generated18V11 := by
  norm_num [generated18V11]

private theorem generated18Hnext11 :
    generated18M12 = matMul generated18M11 (reflM (normalQ Face.zp)) := by
  norm_num [generated18M12, generated18M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot12 :
    dot (matVec generated18M12 (normalQ Face.yp))
      topPairingLocalAxis = generated18V12 := by
  norm_num [generated18V12, generated18M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos12 :
    0 < generated18V12 := by
  norm_num [generated18V12]

private theorem generated18Hnext12 :
    generated18M13 = matMul generated18M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated18M13, generated18M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18Hdot13 :
    dot (matVec generated18M13 (normalQ Face.xp))
      topPairingLocalAxis = generated18V13 := by
  norm_num [generated18V13, generated18M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated18Hpos13 :
    0 < generated18V13 := by
  norm_num [generated18V13]

private theorem generated18Hnext13 :
    generated18M14 = matMul generated18M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated18M14, generated18M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated18LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels :=
  generated18LocalAxisTraceOfGeneratedStates
    generated18Hdot00
    generated18Hpos00
    generated18Hnext00
    generated18Hdot01
    generated18Hpos01
    generated18Hnext01
    generated18Hdot02
    generated18Hpos02
    generated18Hnext02
    generated18Hdot03
    generated18Hpos03
    generated18Hnext03
    generated18Hdot04
    generated18Hpos04
    generated18Hnext04
    generated18Hdot05
    generated18Hpos05
    generated18Hnext05
    generated18Hdot06
    generated18Hpos06
    generated18Hnext06
    generated18Hdot07
    generated18Hpos07
    generated18Hnext07
    generated18Hdot08
    generated18Hpos08
    generated18Hnext08
    generated18Hdot09
    generated18Hpos09
    generated18Hnext09
    generated18Hdot10
    generated18Hpos10
    generated18Hnext10
    generated18Hdot11
    generated18Hpos11
    generated18Hnext11
    generated18Hdot12
    generated18Hpos12
    generated18Hnext12
    generated18Hdot13
    generated18Hpos13
    generated18Hnext13


theorem generated18ClosedLanguageOfPositiveTemplateTrace
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
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated18ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated18SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated18ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated18ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated18SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated18ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated18SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated18ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated18ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated18ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated18ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated18ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated18ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated18ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated18ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated18LocalAxisTraceConcrete
    canonicalBadFace

theorem generated18ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated18ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated18LocalAxisTraceConcrete
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated18ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated18ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated18LocalAxisTraceConcrete
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated18ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated18ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated18LocalAxisTraceConcrete
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated18ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated18ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated18LocalAxisTraceConcrete
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated18ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated18ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated18ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated18ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated18Rank generated18ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated18Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated18Rank seq badFace :=
  generated18ClosedLanguageForSeqOfGeneratedForcedSeq
    generated18ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated18ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated18Rank generated18ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated18Rank) :
    TopPairingClosedLanguageForSeq generated18Rank seq Face.ym :=
  generated18ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated18CanonicalBadFaceCompatible

theorem generated18ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated18Rank generated18ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated18Rank seq Face.ym :=
  generated18ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated18TopPairingLanguageAtRank

theorem generated18GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke18
