import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke27

open Cuboctahedron

private def generated27ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated27ContributionLabels_length :
    generated27ContributionLabels.length = 14 := by
  rfl

private theorem generated27ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated27ContributionLabels := by
  unfold generated27ContributionLabels
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

private theorem generated27ScheduleLabels :
    TopPairingStepScheduleLabels generated27ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated27ContributionLabels_length generated27ScheduleTrace

private theorem generated27SquareGapTrace :
    TopPairingSquareGapFrom 0 generated27ContributionLabels := by
  unfold generated27ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated27SquareGapLabels :
    TopPairingSquareGapLabels generated27ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated27SquareGapTrace

private theorem generated27LocalAxisTraceOfGeneratedStates
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
      dot (matVec m07 (normalQ Face.zp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.zp)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.zm))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.zm)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tpmp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tpmp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels := by
  unfold generated27ContributionLabels
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

def generated27ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.zp
  | ⟨9, _⟩ => Face.zm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated27ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated27ForcedSeq = generated27ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated27ForcedSeq generated27ContributionLabels
  rfl

def generated27Rank : Fin numPairWords :=
  ⟨947439, by decide⟩

private theorem generated27ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated27ForcedSeq) = some generated27Rank := by
  decide

private theorem generated27ForcedSeq_unrank_pairword :
    unrankPairWord generated27Rank = pairWordOfSeq generated27ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated27ForcedSeq)
      generated27Rank).1 generated27ForcedSeq_rank).symm

private theorem generated27ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated27Rank) generated27ForcedSeq := by
  rw [generated27ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated27ForcedSeq

private theorem generated27TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated27Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated27ForcedSeq_unrank_pairword]
  rfl

private theorem generated27CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated27M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated27M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated27M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated27M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated27M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated27M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated27M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated27M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (-2/27), m10 := (-22/27), m11 := (7/27), m12 := (14/27), m20 := (14/27), m21 := (-2/27), m22 := (23/27) }

private def generated27M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated27M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated27M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated27M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated27M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated27M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated27V00 : Rat :=
  1

private def generated27V01 : Rat :=
  1

private def generated27V02 : Rat :=
  3

private def generated27V03 : Rat :=
  3

private def generated27V04 : Rat :=
  3

private def generated27V05 : Rat :=
  1

private def generated27V06 : Rat :=
  1

private def generated27V07 : Rat :=
  3

private def generated27V08 : Rat :=
  3

private def generated27V09 : Rat :=
  3

private def generated27V10 : Rat :=
  3

private def generated27V11 : Rat :=
  3

private def generated27V12 : Rat :=
  1

private def generated27V13 : Rat :=
  1

private theorem generated27Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated27V00 := by
  norm_num [generated27V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos00 :
    0 < generated27V00 := by
  norm_num [generated27V00]

private theorem generated27Hnext00 :
    generated27M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated27M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot01 :
    dot (matVec generated27M01 (normalQ Face.ym))
      topPairingLocalAxis = generated27V01 := by
  norm_num [generated27V01, generated27M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos01 :
    0 < generated27V01 := by
  norm_num [generated27V01]

private theorem generated27Hnext01 :
    generated27M02 = matMul generated27M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated27M02, generated27M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot02 :
    dot (matVec generated27M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated27V02 := by
  norm_num [generated27V02, generated27M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos02 :
    0 < generated27V02 := by
  norm_num [generated27V02]

private theorem generated27Hnext02 :
    generated27M03 = matMul generated27M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated27M03, generated27M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot03 :
    dot (matVec generated27M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated27V03 := by
  norm_num [generated27V03, generated27M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos03 :
    0 < generated27V03 := by
  norm_num [generated27V03]

private theorem generated27Hnext03 :
    generated27M04 = matMul generated27M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated27M04, generated27M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot04 :
    dot (matVec generated27M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated27V04 := by
  norm_num [generated27V04, generated27M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos04 :
    0 < generated27V04 := by
  norm_num [generated27V04]

private theorem generated27Hnext04 :
    generated27M05 = matMul generated27M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated27M05, generated27M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot05 :
    dot (matVec generated27M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated27V05 := by
  norm_num [generated27V05, generated27M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos05 :
    0 < generated27V05 := by
  norm_num [generated27V05]

private theorem generated27Hnext05 :
    generated27M06 = matMul generated27M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated27M06, generated27M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot06 :
    dot (matVec generated27M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated27V06 := by
  norm_num [generated27V06, generated27M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos06 :
    0 < generated27V06 := by
  norm_num [generated27V06]

private theorem generated27Hnext06 :
    generated27M07 = matMul generated27M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated27M07, generated27M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot07 :
    dot (matVec generated27M07 (normalQ Face.zp))
      topPairingLocalAxis = generated27V07 := by
  norm_num [generated27V07, generated27M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos07 :
    0 < generated27V07 := by
  norm_num [generated27V07]

private theorem generated27Hnext07 :
    generated27M08 = matMul generated27M07 (reflM (normalQ Face.zp)) := by
  norm_num [generated27M08, generated27M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot08 :
    dot (matVec generated27M08 (normalQ Face.zm))
      topPairingLocalAxis = generated27V08 := by
  norm_num [generated27V08, generated27M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos08 :
    0 < generated27V08 := by
  norm_num [generated27V08]

private theorem generated27Hnext08 :
    generated27M09 = matMul generated27M08 (reflM (normalQ Face.zm)) := by
  norm_num [generated27M09, generated27M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot09 :
    dot (matVec generated27M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated27V09 := by
  norm_num [generated27V09, generated27M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos09 :
    0 < generated27V09 := by
  norm_num [generated27V09]

private theorem generated27Hnext09 :
    generated27M10 = matMul generated27M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated27M10, generated27M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot10 :
    dot (matVec generated27M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated27V10 := by
  norm_num [generated27V10, generated27M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos10 :
    0 < generated27V10 := by
  norm_num [generated27V10]

private theorem generated27Hnext10 :
    generated27M11 = matMul generated27M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated27M11, generated27M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot11 :
    dot (matVec generated27M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated27V11 := by
  norm_num [generated27V11, generated27M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos11 :
    0 < generated27V11 := by
  norm_num [generated27V11]

private theorem generated27Hnext11 :
    generated27M12 = matMul generated27M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated27M12, generated27M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot12 :
    dot (matVec generated27M12 (normalQ Face.yp))
      topPairingLocalAxis = generated27V12 := by
  norm_num [generated27V12, generated27M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos12 :
    0 < generated27V12 := by
  norm_num [generated27V12]

private theorem generated27Hnext12 :
    generated27M13 = matMul generated27M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated27M13, generated27M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27Hdot13 :
    dot (matVec generated27M13 (normalQ Face.xp))
      topPairingLocalAxis = generated27V13 := by
  norm_num [generated27V13, generated27M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated27Hpos13 :
    0 < generated27V13 := by
  norm_num [generated27V13]

private theorem generated27Hnext13 :
    generated27M14 = matMul generated27M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated27M14, generated27M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated27LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels :=
  generated27LocalAxisTraceOfGeneratedStates
    generated27Hdot00
    generated27Hpos00
    generated27Hnext00
    generated27Hdot01
    generated27Hpos01
    generated27Hnext01
    generated27Hdot02
    generated27Hpos02
    generated27Hnext02
    generated27Hdot03
    generated27Hpos03
    generated27Hnext03
    generated27Hdot04
    generated27Hpos04
    generated27Hnext04
    generated27Hdot05
    generated27Hpos05
    generated27Hnext05
    generated27Hdot06
    generated27Hpos06
    generated27Hnext06
    generated27Hdot07
    generated27Hpos07
    generated27Hnext07
    generated27Hdot08
    generated27Hpos08
    generated27Hnext08
    generated27Hdot09
    generated27Hpos09
    generated27Hnext09
    generated27Hdot10
    generated27Hpos10
    generated27Hnext10
    generated27Hdot11
    generated27Hpos11
    generated27Hnext11
    generated27Hdot12
    generated27Hpos12
    generated27Hnext12
    generated27Hdot13
    generated27Hpos13
    generated27Hnext13


theorem generated27ClosedLanguageOfPositiveTemplateTrace
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
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated27ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated27SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated27ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated27ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated27SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated27ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated27SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated27ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated27ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated27ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated27ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated27ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated27ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated27ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated27ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated27LocalAxisTraceConcrete
    canonicalBadFace

theorem generated27ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated27ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated27LocalAxisTraceConcrete
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated27ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated27ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated27LocalAxisTraceConcrete
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated27ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated27ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated27LocalAxisTraceConcrete
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated27ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated27ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated27LocalAxisTraceConcrete
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated27ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated27ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated27ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated27ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated27Rank generated27ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated27Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated27Rank seq badFace :=
  generated27ClosedLanguageForSeqOfGeneratedForcedSeq
    generated27ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated27ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated27Rank generated27ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated27Rank) :
    TopPairingClosedLanguageForSeq generated27Rank seq Face.ym :=
  generated27ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated27CanonicalBadFaceCompatible

theorem generated27ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated27Rank generated27ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated27Rank seq Face.ym :=
  generated27ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated27TopPairingLanguageAtRank

theorem generated27GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke27
