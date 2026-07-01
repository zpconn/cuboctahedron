import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke17

open Cuboctahedron

private def generated17ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]

private theorem generated17ContributionLabels_length :
    generated17ContributionLabels.length = 14 := by
  rfl

private theorem generated17ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated17ContributionLabels := by
  unfold generated17ContributionLabels
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

private theorem generated17ScheduleLabels :
    TopPairingStepScheduleLabels generated17ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated17ContributionLabels_length generated17ScheduleTrace

private theorem generated17SquareGapTrace :
    TopPairingSquareGapFrom 0 generated17ContributionLabels := by
  unfold generated17ContributionLabels
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

private theorem generated17SquareGapLabels :
    TopPairingSquareGapLabels generated17ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated17SquareGapTrace

private theorem generated17LocalAxisTraceOfGeneratedStates
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
      dot (matVec m11 (normalQ Face.yp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.yp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels := by
  unfold generated17ContributionLabels
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

def generated17ForcedSeq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.yp
  | _ => Face.zp

private theorem generated17ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated17ForcedSeq = generated17ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated17ForcedSeq generated17ContributionLabels
  rfl

def generated17Rank : Fin numPairWords :=
  ⟨312772, by decide⟩

private theorem generated17ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated17ForcedSeq) = some generated17Rank := by
  decide

private theorem generated17ForcedSeq_unrank_pairword :
    unrankPairWord generated17Rank = pairWordOfSeq generated17ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated17ForcedSeq)
      generated17Rank).1 generated17ForcedSeq_rank).symm

private theorem generated17ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated17Rank) generated17ForcedSeq := by
  rw [generated17ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated17ForcedSeq

private theorem generated17TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated17Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated17ForcedSeq_unrank_pairword]
  rfl

private theorem generated17CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated17M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated17M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated17M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated17M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (-2/3), m10 := (-2/3), m11 := (-1/3), m12 := (2/3), m20 := (-2/3), m21 := (2/3), m22 := (-1/3) }

private def generated17M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (4/9), m10 := (-4/9), m11 := (-1/9), m12 := (8/9), m20 := (-4/9), m21 := (8/9), m22 := (-1/9) }

private def generated17M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated17M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }

private def generated17M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated17M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (-40/81), m10 := (20/81), m11 := (-65/81), m12 := (-44/81), m20 := (56/81), m21 := (-20/81), m22 := (55/81) }

private def generated17M10 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (-238/243), m10 := (238/243), m11 := (-17/243), m12 := (46/243), m20 := (-14/243), m21 := (-242/243), m22 := (-17/243) }

private def generated17M11 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (-304/729), m10 := (112/729), m11 := (551/729), m12 := (-464/729), m20 := (-464/729), m21 := (-304/729), m22 := (-473/729) }

private def generated17M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated17M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated17M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated17V00 : Rat :=
  1

private def generated17V01 : Rat :=
  1

private def generated17V02 : Rat :=
  3

private def generated17V03 : Rat :=
  3

private def generated17V04 : Rat :=
  3

private def generated17V05 : Rat :=
  3

private def generated17V06 : Rat :=
  1

private def generated17V07 : Rat :=
  1

private def generated17V08 : Rat :=
  3

private def generated17V09 : Rat :=
  3

private def generated17V10 : Rat :=
  3

private def generated17V11 : Rat :=
  1

private def generated17V12 : Rat :=
  3

private def generated17V13 : Rat :=
  1

private theorem generated17Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated17V00 := by
  norm_num [generated17V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos00 :
    0 < generated17V00 := by
  norm_num [generated17V00]

private theorem generated17Hnext00 :
    generated17M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated17M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot01 :
    dot (matVec generated17M01 (normalQ Face.ym))
      topPairingLocalAxis = generated17V01 := by
  norm_num [generated17V01, generated17M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos01 :
    0 < generated17V01 := by
  norm_num [generated17V01]

private theorem generated17Hnext01 :
    generated17M02 = matMul generated17M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated17M02, generated17M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot02 :
    dot (matVec generated17M02 (normalQ Face.zm))
      topPairingLocalAxis = generated17V02 := by
  norm_num [generated17V02, generated17M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos02 :
    0 < generated17V02 := by
  norm_num [generated17V02]

private theorem generated17Hnext02 :
    generated17M03 = matMul generated17M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated17M03, generated17M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot03 :
    dot (matVec generated17M03 (normalQ Face.tmpp))
      topPairingLocalAxis = generated17V03 := by
  norm_num [generated17V03, generated17M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos03 :
    0 < generated17V03 := by
  norm_num [generated17V03]

private theorem generated17Hnext03 :
    generated17M04 = matMul generated17M03 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated17M04, generated17M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot04 :
    dot (matVec generated17M04 (normalQ Face.tppp))
      topPairingLocalAxis = generated17V04 := by
  norm_num [generated17V04, generated17M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos04 :
    0 < generated17V04 := by
  norm_num [generated17V04]

private theorem generated17Hnext04 :
    generated17M05 = matMul generated17M04 (reflM (normalQ Face.tppp)) := by
  norm_num [generated17M05, generated17M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot05 :
    dot (matVec generated17M05 (normalQ Face.tpmp))
      topPairingLocalAxis = generated17V05 := by
  norm_num [generated17V05, generated17M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos05 :
    0 < generated17V05 := by
  norm_num [generated17V05]

private theorem generated17Hnext05 :
    generated17M06 = matMul generated17M05 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated17M06, generated17M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot06 :
    dot (matVec generated17M06 (normalQ Face.tppm))
      topPairingLocalAxis = generated17V06 := by
  norm_num [generated17V06, generated17M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos06 :
    0 < generated17V06 := by
  norm_num [generated17V06]

private theorem generated17Hnext06 :
    generated17M07 = matMul generated17M06 (reflM (normalQ Face.tppm)) := by
  norm_num [generated17M07, generated17M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot07 :
    dot (matVec generated17M07 (normalQ Face.tmmp))
      topPairingLocalAxis = generated17V07 := by
  norm_num [generated17V07, generated17M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos07 :
    0 < generated17V07 := by
  norm_num [generated17V07]

private theorem generated17Hnext07 :
    generated17M08 = matMul generated17M07 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated17M08, generated17M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot08 :
    dot (matVec generated17M08 (normalQ Face.tpmm))
      topPairingLocalAxis = generated17V08 := by
  norm_num [generated17V08, generated17M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos08 :
    0 < generated17V08 := by
  norm_num [generated17V08]

private theorem generated17Hnext08 :
    generated17M09 = matMul generated17M08 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated17M09, generated17M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot09 :
    dot (matVec generated17M09 (normalQ Face.tmmm))
      topPairingLocalAxis = generated17V09 := by
  norm_num [generated17V09, generated17M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos09 :
    0 < generated17V09 := by
  norm_num [generated17V09]

private theorem generated17Hnext09 :
    generated17M10 = matMul generated17M09 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated17M10, generated17M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot10 :
    dot (matVec generated17M10 (normalQ Face.tmpm))
      topPairingLocalAxis = generated17V10 := by
  norm_num [generated17V10, generated17M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos10 :
    0 < generated17V10 := by
  norm_num [generated17V10]

private theorem generated17Hnext10 :
    generated17M11 = matMul generated17M10 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated17M11, generated17M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot11 :
    dot (matVec generated17M11 (normalQ Face.yp))
      topPairingLocalAxis = generated17V11 := by
  norm_num [generated17V11, generated17M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos11 :
    0 < generated17V11 := by
  norm_num [generated17V11]

private theorem generated17Hnext11 :
    generated17M12 = matMul generated17M11 (reflM (normalQ Face.yp)) := by
  norm_num [generated17M12, generated17M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot12 :
    dot (matVec generated17M12 (normalQ Face.zp))
      topPairingLocalAxis = generated17V12 := by
  norm_num [generated17V12, generated17M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos12 :
    0 < generated17V12 := by
  norm_num [generated17V12]

private theorem generated17Hnext12 :
    generated17M13 = matMul generated17M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated17M13, generated17M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17Hdot13 :
    dot (matVec generated17M13 (normalQ Face.xp))
      topPairingLocalAxis = generated17V13 := by
  norm_num [generated17V13, generated17M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated17Hpos13 :
    0 < generated17V13 := by
  norm_num [generated17V13]

private theorem generated17Hnext13 :
    generated17M14 = matMul generated17M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated17M14, generated17M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated17LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels :=
  generated17LocalAxisTraceOfGeneratedStates
    generated17Hdot00
    generated17Hpos00
    generated17Hnext00
    generated17Hdot01
    generated17Hpos01
    generated17Hnext01
    generated17Hdot02
    generated17Hpos02
    generated17Hnext02
    generated17Hdot03
    generated17Hpos03
    generated17Hnext03
    generated17Hdot04
    generated17Hpos04
    generated17Hnext04
    generated17Hdot05
    generated17Hpos05
    generated17Hnext05
    generated17Hdot06
    generated17Hpos06
    generated17Hnext06
    generated17Hdot07
    generated17Hpos07
    generated17Hnext07
    generated17Hdot08
    generated17Hpos08
    generated17Hnext08
    generated17Hdot09
    generated17Hpos09
    generated17Hnext09
    generated17Hdot10
    generated17Hpos10
    generated17Hnext10
    generated17Hdot11
    generated17Hpos11
    generated17Hnext11
    generated17Hdot12
    generated17Hpos12
    generated17Hnext12
    generated17Hdot13
    generated17Hpos13
    generated17Hnext13


theorem generated17ClosedLanguageOfPositiveTemplateTrace
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
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated17ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated17SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated17ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated17ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated17SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated17ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated17SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated17ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated17ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated17ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated17ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated17ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated17ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated17ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated17ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated17LocalAxisTraceConcrete
    canonicalBadFace

theorem generated17ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated17ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated17LocalAxisTraceConcrete
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated17ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated17ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated17LocalAxisTraceConcrete
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated17ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated17ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated17LocalAxisTraceConcrete
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated17ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated17ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated17LocalAxisTraceConcrete
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated17ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated17ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated17ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated17ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated17Rank generated17ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated17Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated17Rank seq badFace :=
  generated17ClosedLanguageForSeqOfGeneratedForcedSeq
    generated17ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated17ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated17Rank generated17ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated17Rank) :
    TopPairingClosedLanguageForSeq generated17Rank seq Face.ym :=
  generated17ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated17CanonicalBadFaceCompatible

theorem generated17ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated17Rank generated17ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated17Rank seq Face.ym :=
  generated17ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated17TopPairingLanguageAtRank

theorem generated17GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke17
