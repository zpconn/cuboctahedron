import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke33

open Cuboctahedron

private def generated33ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated33ContributionLabels_length :
    generated33ContributionLabels.length = 14 := by
  rfl

private theorem generated33ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated33ContributionLabels := by
  unfold generated33ContributionLabels
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

private theorem generated33ScheduleLabels :
    TopPairingStepScheduleLabels generated33ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated33ContributionLabels_length generated33ScheduleTrace

private theorem generated33SquareGapTrace :
    TopPairingSquareGapFrom 0 generated33ContributionLabels := by
  unfold generated33ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated33SquareGapLabels :
    TopPairingSquareGapLabels generated33ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated33SquareGapTrace

private theorem generated33LocalAxisTraceOfGeneratedStates
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels := by
  unfold generated33ContributionLabels
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

def generated33ForcedSeq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated33ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated33ForcedSeq = generated33ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated33ForcedSeq generated33ContributionLabels
  rfl

def generated33Rank : Fin numPairWords :=
  ⟨947601, by decide⟩

private theorem generated33ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated33ForcedSeq) = some generated33Rank := by
  decide

private theorem generated33ForcedSeq_unrank_pairword :
    unrankPairWord generated33Rank = pairWordOfSeq generated33ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated33ForcedSeq)
      generated33Rank).1 generated33ForcedSeq_rank).symm

private theorem generated33ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated33Rank) generated33ForcedSeq := by
  rw [generated33ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated33ForcedSeq

private theorem generated33TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated33Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated33ForcedSeq_unrank_pairword]
  rfl

private theorem generated33CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated33M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated33M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated33M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated33M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated33M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated33M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated33M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated33M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated33M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (-40/81), m10 := (20/81), m11 := (-65/81), m12 := (-44/81), m20 := (56/81), m21 := (-20/81), m22 := (55/81) }

private def generated33M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated33M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated33M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated33M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated33M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated33V00 : Rat :=
  1

private def generated33V01 : Rat :=
  1

private def generated33V02 : Rat :=
  3

private def generated33V03 : Rat :=
  3

private def generated33V04 : Rat :=
  3

private def generated33V05 : Rat :=
  1

private def generated33V06 : Rat :=
  1

private def generated33V07 : Rat :=
  3

private def generated33V08 : Rat :=
  1

private def generated33V09 : Rat :=
  1

private def generated33V10 : Rat :=
  3

private def generated33V11 : Rat :=
  3

private def generated33V12 : Rat :=
  1

private def generated33V13 : Rat :=
  1

private theorem generated33Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated33V00 := by
  norm_num [generated33V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos00 :
    0 < generated33V00 := by
  norm_num [generated33V00]

private theorem generated33Hnext00 :
    generated33M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated33M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot01 :
    dot (matVec generated33M01 (normalQ Face.ym))
      topPairingLocalAxis = generated33V01 := by
  norm_num [generated33V01, generated33M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos01 :
    0 < generated33V01 := by
  norm_num [generated33V01]

private theorem generated33Hnext01 :
    generated33M02 = matMul generated33M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated33M02, generated33M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot02 :
    dot (matVec generated33M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated33V02 := by
  norm_num [generated33V02, generated33M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos02 :
    0 < generated33V02 := by
  norm_num [generated33V02]

private theorem generated33Hnext02 :
    generated33M03 = matMul generated33M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated33M03, generated33M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot03 :
    dot (matVec generated33M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated33V03 := by
  norm_num [generated33V03, generated33M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos03 :
    0 < generated33V03 := by
  norm_num [generated33V03]

private theorem generated33Hnext03 :
    generated33M04 = matMul generated33M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated33M04, generated33M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot04 :
    dot (matVec generated33M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated33V04 := by
  norm_num [generated33V04, generated33M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos04 :
    0 < generated33V04 := by
  norm_num [generated33V04]

private theorem generated33Hnext04 :
    generated33M05 = matMul generated33M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated33M05, generated33M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot05 :
    dot (matVec generated33M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated33V05 := by
  norm_num [generated33V05, generated33M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos05 :
    0 < generated33V05 := by
  norm_num [generated33V05]

private theorem generated33Hnext05 :
    generated33M06 = matMul generated33M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated33M06, generated33M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot06 :
    dot (matVec generated33M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated33V06 := by
  norm_num [generated33V06, generated33M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos06 :
    0 < generated33V06 := by
  norm_num [generated33V06]

private theorem generated33Hnext06 :
    generated33M07 = matMul generated33M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated33M07, generated33M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot07 :
    dot (matVec generated33M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated33V07 := by
  norm_num [generated33V07, generated33M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos07 :
    0 < generated33V07 := by
  norm_num [generated33V07]

private theorem generated33Hnext07 :
    generated33M08 = matMul generated33M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated33M08, generated33M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot08 :
    dot (matVec generated33M08 (normalQ Face.zp))
      topPairingLocalAxis = generated33V08 := by
  norm_num [generated33V08, generated33M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos08 :
    0 < generated33V08 := by
  norm_num [generated33V08]

private theorem generated33Hnext08 :
    generated33M09 = matMul generated33M08 (reflM (normalQ Face.zp)) := by
  norm_num [generated33M09, generated33M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot09 :
    dot (matVec generated33M09 (normalQ Face.zm))
      topPairingLocalAxis = generated33V09 := by
  norm_num [generated33V09, generated33M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos09 :
    0 < generated33V09 := by
  norm_num [generated33V09]

private theorem generated33Hnext09 :
    generated33M10 = matMul generated33M09 (reflM (normalQ Face.zm)) := by
  norm_num [generated33M10, generated33M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot10 :
    dot (matVec generated33M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated33V10 := by
  norm_num [generated33V10, generated33M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos10 :
    0 < generated33V10 := by
  norm_num [generated33V10]

private theorem generated33Hnext10 :
    generated33M11 = matMul generated33M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated33M11, generated33M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot11 :
    dot (matVec generated33M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated33V11 := by
  norm_num [generated33V11, generated33M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos11 :
    0 < generated33V11 := by
  norm_num [generated33V11]

private theorem generated33Hnext11 :
    generated33M12 = matMul generated33M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated33M12, generated33M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot12 :
    dot (matVec generated33M12 (normalQ Face.yp))
      topPairingLocalAxis = generated33V12 := by
  norm_num [generated33V12, generated33M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos12 :
    0 < generated33V12 := by
  norm_num [generated33V12]

private theorem generated33Hnext12 :
    generated33M13 = matMul generated33M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated33M13, generated33M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33Hdot13 :
    dot (matVec generated33M13 (normalQ Face.xp))
      topPairingLocalAxis = generated33V13 := by
  norm_num [generated33V13, generated33M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated33Hpos13 :
    0 < generated33V13 := by
  norm_num [generated33V13]

private theorem generated33Hnext13 :
    generated33M14 = matMul generated33M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated33M14, generated33M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated33LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels :=
  generated33LocalAxisTraceOfGeneratedStates
    generated33Hdot00
    generated33Hpos00
    generated33Hnext00
    generated33Hdot01
    generated33Hpos01
    generated33Hnext01
    generated33Hdot02
    generated33Hpos02
    generated33Hnext02
    generated33Hdot03
    generated33Hpos03
    generated33Hnext03
    generated33Hdot04
    generated33Hpos04
    generated33Hnext04
    generated33Hdot05
    generated33Hpos05
    generated33Hnext05
    generated33Hdot06
    generated33Hpos06
    generated33Hnext06
    generated33Hdot07
    generated33Hpos07
    generated33Hnext07
    generated33Hdot08
    generated33Hpos08
    generated33Hnext08
    generated33Hdot09
    generated33Hpos09
    generated33Hnext09
    generated33Hdot10
    generated33Hpos10
    generated33Hnext10
    generated33Hdot11
    generated33Hpos11
    generated33Hnext11
    generated33Hdot12
    generated33Hpos12
    generated33Hnext12
    generated33Hdot13
    generated33Hpos13
    generated33Hnext13


theorem generated33ClosedLanguageOfPositiveTemplateTrace
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
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated33ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated33SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated33ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated33ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated33SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated33ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated33SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated33ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated33ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated33ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated33ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated33ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated33ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated33ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated33ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated33LocalAxisTraceConcrete
    canonicalBadFace

theorem generated33ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated33ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated33LocalAxisTraceConcrete
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated33ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated33ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated33LocalAxisTraceConcrete
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated33ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated33ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated33LocalAxisTraceConcrete
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated33ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated33ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated33LocalAxisTraceConcrete
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated33ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated33ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated33ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated33ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated33Rank generated33ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated33Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated33Rank seq badFace :=
  generated33ClosedLanguageForSeqOfGeneratedForcedSeq
    generated33ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated33ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated33Rank generated33ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated33Rank) :
    TopPairingClosedLanguageForSeq generated33Rank seq Face.ym :=
  generated33ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated33CanonicalBadFaceCompatible

theorem generated33ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated33Rank generated33ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated33Rank seq Face.ym :=
  generated33ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated33TopPairingLanguageAtRank

theorem generated33GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke33
