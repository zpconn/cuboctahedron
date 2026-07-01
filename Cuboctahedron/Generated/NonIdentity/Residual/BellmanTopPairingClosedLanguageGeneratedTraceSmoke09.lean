import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke09

open Cuboctahedron

private def generated09ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]

private theorem generated09ContributionLabels_length :
    generated09ContributionLabels.length = 14 := by
  rfl

private theorem generated09ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated09ContributionLabels := by
  unfold generated09ContributionLabels
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

private theorem generated09ScheduleLabels :
    TopPairingStepScheduleLabels generated09ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated09ContributionLabels_length generated09ScheduleTrace

private theorem generated09SquareGapTrace :
    TopPairingSquareGapFrom 0 generated09ContributionLabels := by
  unfold generated09ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  apply topPairingSquareGapFrom_cons_tri
  · rfl
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated09SquareGapLabels :
    TopPairingSquareGapLabels generated09ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated09SquareGapTrace

private theorem generated09LocalAxisTraceOfGeneratedStates
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
      dot (matVec m09 (normalQ Face.tmpp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tmpp)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.zm))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.zm)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.zp))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.zp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels := by
  unfold generated09ContributionLabels
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

def generated09ForcedSeq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.zp
  | _ => Face.tmmp

private theorem generated09ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated09ForcedSeq = generated09ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated09ForcedSeq generated09ContributionLabels
  rfl

def generated09Rank : Fin numPairWords :=
  ⟨43203, by decide⟩

private theorem generated09ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated09ForcedSeq) = some generated09Rank := by
  decide

private theorem generated09ForcedSeq_unrank_pairword :
    unrankPairWord generated09Rank = pairWordOfSeq generated09ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated09ForcedSeq)
      generated09Rank).1 generated09ForcedSeq_rank).symm

private theorem generated09ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated09Rank) generated09ForcedSeq := by
  rw [generated09ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated09ForcedSeq

private theorem generated09TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated09Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated09ForcedSeq_unrank_pairword]
  rfl

private theorem generated09CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated09M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated09M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated09M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated09M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated09M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated09M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated09M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated09M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated09M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated09M10 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated09M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated09M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated09M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated09M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated09V00 : Rat :=
  1

private def generated09V01 : Rat :=
  1

private def generated09V02 : Rat :=
  1

private def generated09V03 : Rat :=
  3

private def generated09V04 : Rat :=
  3

private def generated09V05 : Rat :=
  3

private def generated09V06 : Rat :=
  1

private def generated09V07 : Rat :=
  1

private def generated09V08 : Rat :=
  3

private def generated09V09 : Rat :=
  3

private def generated09V10 : Rat :=
  1

private def generated09V11 : Rat :=
  1

private def generated09V12 : Rat :=
  3

private def generated09V13 : Rat :=
  1

private theorem generated09Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated09V00 := by
  norm_num [generated09V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos00 :
    0 < generated09V00 := by
  norm_num [generated09V00]

private theorem generated09Hnext00 :
    generated09M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated09M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot01 :
    dot (matVec generated09M01 (normalQ Face.ym))
      topPairingLocalAxis = generated09V01 := by
  norm_num [generated09V01, generated09M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos01 :
    0 < generated09V01 := by
  norm_num [generated09V01]

private theorem generated09Hnext01 :
    generated09M02 = matMul generated09M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated09M02, generated09M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot02 :
    dot (matVec generated09M02 (normalQ Face.yp))
      topPairingLocalAxis = generated09V02 := by
  norm_num [generated09V02, generated09M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos02 :
    0 < generated09V02 := by
  norm_num [generated09V02]

private theorem generated09Hnext02 :
    generated09M03 = matMul generated09M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated09M03, generated09M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot03 :
    dot (matVec generated09M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated09V03 := by
  norm_num [generated09V03, generated09M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos03 :
    0 < generated09V03 := by
  norm_num [generated09V03]

private theorem generated09Hnext03 :
    generated09M04 = matMul generated09M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated09M04, generated09M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot04 :
    dot (matVec generated09M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated09V04 := by
  norm_num [generated09V04, generated09M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos04 :
    0 < generated09V04 := by
  norm_num [generated09V04]

private theorem generated09Hnext04 :
    generated09M05 = matMul generated09M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated09M05, generated09M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot05 :
    dot (matVec generated09M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated09V05 := by
  norm_num [generated09V05, generated09M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos05 :
    0 < generated09V05 := by
  norm_num [generated09V05]

private theorem generated09Hnext05 :
    generated09M06 = matMul generated09M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated09M06, generated09M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot06 :
    dot (matVec generated09M06 (normalQ Face.tpmp))
      topPairingLocalAxis = generated09V06 := by
  norm_num [generated09V06, generated09M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos06 :
    0 < generated09V06 := by
  norm_num [generated09V06]

private theorem generated09Hnext06 :
    generated09M07 = matMul generated09M06 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated09M07, generated09M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot07 :
    dot (matVec generated09M07 (normalQ Face.tmpm))
      topPairingLocalAxis = generated09V07 := by
  norm_num [generated09V07, generated09M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos07 :
    0 < generated09V07 := by
  norm_num [generated09V07]

private theorem generated09Hnext07 :
    generated09M08 = matMul generated09M07 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated09M08, generated09M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot08 :
    dot (matVec generated09M08 (normalQ Face.tppp))
      topPairingLocalAxis = generated09V08 := by
  norm_num [generated09V08, generated09M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos08 :
    0 < generated09V08 := by
  norm_num [generated09V08]

private theorem generated09Hnext08 :
    generated09M09 = matMul generated09M08 (reflM (normalQ Face.tppp)) := by
  norm_num [generated09M09, generated09M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot09 :
    dot (matVec generated09M09 (normalQ Face.tmpp))
      topPairingLocalAxis = generated09V09 := by
  norm_num [generated09V09, generated09M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos09 :
    0 < generated09V09 := by
  norm_num [generated09V09]

private theorem generated09Hnext09 :
    generated09M10 = matMul generated09M09 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated09M10, generated09M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot10 :
    dot (matVec generated09M10 (normalQ Face.zm))
      topPairingLocalAxis = generated09V10 := by
  norm_num [generated09V10, generated09M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos10 :
    0 < generated09V10 := by
  norm_num [generated09V10]

private theorem generated09Hnext10 :
    generated09M11 = matMul generated09M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated09M11, generated09M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot11 :
    dot (matVec generated09M11 (normalQ Face.zp))
      topPairingLocalAxis = generated09V11 := by
  norm_num [generated09V11, generated09M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos11 :
    0 < generated09V11 := by
  norm_num [generated09V11]

private theorem generated09Hnext11 :
    generated09M12 = matMul generated09M11 (reflM (normalQ Face.zp)) := by
  norm_num [generated09M12, generated09M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot12 :
    dot (matVec generated09M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated09V12 := by
  norm_num [generated09V12, generated09M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos12 :
    0 < generated09V12 := by
  norm_num [generated09V12]

private theorem generated09Hnext12 :
    generated09M13 = matMul generated09M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated09M13, generated09M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09Hdot13 :
    dot (matVec generated09M13 (normalQ Face.xp))
      topPairingLocalAxis = generated09V13 := by
  norm_num [generated09V13, generated09M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated09Hpos13 :
    0 < generated09V13 := by
  norm_num [generated09V13]

private theorem generated09Hnext13 :
    generated09M14 = matMul generated09M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated09M14, generated09M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated09LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels :=
  generated09LocalAxisTraceOfGeneratedStates
    generated09Hdot00
    generated09Hpos00
    generated09Hnext00
    generated09Hdot01
    generated09Hpos01
    generated09Hnext01
    generated09Hdot02
    generated09Hpos02
    generated09Hnext02
    generated09Hdot03
    generated09Hpos03
    generated09Hnext03
    generated09Hdot04
    generated09Hpos04
    generated09Hnext04
    generated09Hdot05
    generated09Hpos05
    generated09Hnext05
    generated09Hdot06
    generated09Hpos06
    generated09Hnext06
    generated09Hdot07
    generated09Hpos07
    generated09Hnext07
    generated09Hdot08
    generated09Hpos08
    generated09Hnext08
    generated09Hdot09
    generated09Hpos09
    generated09Hnext09
    generated09Hdot10
    generated09Hpos10
    generated09Hnext10
    generated09Hdot11
    generated09Hpos11
    generated09Hnext11
    generated09Hdot12
    generated09Hpos12
    generated09Hnext12
    generated09Hdot13
    generated09Hpos13
    generated09Hnext13


theorem generated09ClosedLanguageOfPositiveTemplateTrace
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
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated09ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated09SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated09ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated09ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated09SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated09ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated09SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated09ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated09ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated09ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated09ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated09ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated09ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated09ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated09ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated09LocalAxisTraceConcrete
    canonicalBadFace

theorem generated09ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated09ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated09LocalAxisTraceConcrete
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated09ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated09ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated09LocalAxisTraceConcrete
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated09ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated09ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated09LocalAxisTraceConcrete
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated09ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated09ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated09LocalAxisTraceConcrete
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated09ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated09ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated09ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated09ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated09Rank generated09ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated09Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated09Rank seq badFace :=
  generated09ClosedLanguageForSeqOfGeneratedForcedSeq
    generated09ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated09ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated09Rank generated09ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated09Rank) :
    TopPairingClosedLanguageForSeq generated09Rank seq Face.ym :=
  generated09ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated09CanonicalBadFaceCompatible

theorem generated09ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated09Rank generated09ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated09Rank seq Face.ym :=
  generated09ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated09TopPairingLanguageAtRank

theorem generated09GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke09
