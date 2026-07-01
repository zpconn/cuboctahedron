import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke35

open Cuboctahedron

private def generated35ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]

private theorem generated35ContributionLabels_length :
    generated35ContributionLabels.length = 14 := by
  rfl

private theorem generated35ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated35ContributionLabels := by
  unfold generated35ContributionLabels
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

private theorem generated35ScheduleLabels :
    TopPairingStepScheduleLabels generated35ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated35ContributionLabels_length generated35ScheduleTrace

private theorem generated35SquareGapTrace :
    TopPairingSquareGapFrom 0 generated35ContributionLabels := by
  unfold generated35ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated35SquareGapLabels :
    TopPairingSquareGapLabels generated35ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated35SquareGapTrace

private theorem generated35LocalAxisTraceOfGeneratedStates
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
      dot (matVec m08 (normalQ Face.tmmp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tmmp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels := by
  unfold generated35ContributionLabels
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

def generated35ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | _ => Face.zp

private theorem generated35ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated35ForcedSeq = generated35ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated35ForcedSeq generated35ContributionLabels
  rfl

def generated35Rank : Fin numPairWords :=
  ⟨947626, by decide⟩

private theorem generated35ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated35ForcedSeq) = some generated35Rank := by
  decide

private theorem generated35ForcedSeq_unrank_pairword :
    unrankPairWord generated35Rank = pairWordOfSeq generated35ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated35ForcedSeq)
      generated35Rank).1 generated35ForcedSeq_rank).symm

private theorem generated35ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated35Rank) generated35ForcedSeq := by
  rw [generated35ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated35ForcedSeq

private theorem generated35TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated35Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated35ForcedSeq_unrank_pairword]
  rfl

private theorem generated35CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated35M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated35M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated35M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated35M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated35M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated35M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated35M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated35M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated35M09 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated35M10 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated35M11 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (-304/729), m10 := (112/729), m11 := (551/729), m12 := (-464/729), m20 := (-464/729), m21 := (-304/729), m22 := (-473/729) }

private def generated35M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated35M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated35M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated35V00 : Rat :=
  1

private def generated35V01 : Rat :=
  1

private def generated35V02 : Rat :=
  3

private def generated35V03 : Rat :=
  3

private def generated35V04 : Rat :=
  3

private def generated35V05 : Rat :=
  1

private def generated35V06 : Rat :=
  1

private def generated35V07 : Rat :=
  3

private def generated35V08 : Rat :=
  3

private def generated35V09 : Rat :=
  3

private def generated35V10 : Rat :=
  3

private def generated35V11 : Rat :=
  1

private def generated35V12 : Rat :=
  3

private def generated35V13 : Rat :=
  1

private theorem generated35Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated35V00 := by
  norm_num [generated35V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos00 :
    0 < generated35V00 := by
  norm_num [generated35V00]

private theorem generated35Hnext00 :
    generated35M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated35M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot01 :
    dot (matVec generated35M01 (normalQ Face.ym))
      topPairingLocalAxis = generated35V01 := by
  norm_num [generated35V01, generated35M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos01 :
    0 < generated35V01 := by
  norm_num [generated35V01]

private theorem generated35Hnext01 :
    generated35M02 = matMul generated35M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated35M02, generated35M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot02 :
    dot (matVec generated35M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated35V02 := by
  norm_num [generated35V02, generated35M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos02 :
    0 < generated35V02 := by
  norm_num [generated35V02]

private theorem generated35Hnext02 :
    generated35M03 = matMul generated35M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated35M03, generated35M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot03 :
    dot (matVec generated35M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated35V03 := by
  norm_num [generated35V03, generated35M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos03 :
    0 < generated35V03 := by
  norm_num [generated35V03]

private theorem generated35Hnext03 :
    generated35M04 = matMul generated35M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated35M04, generated35M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot04 :
    dot (matVec generated35M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated35V04 := by
  norm_num [generated35V04, generated35M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos04 :
    0 < generated35V04 := by
  norm_num [generated35V04]

private theorem generated35Hnext04 :
    generated35M05 = matMul generated35M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated35M05, generated35M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot05 :
    dot (matVec generated35M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated35V05 := by
  norm_num [generated35V05, generated35M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos05 :
    0 < generated35V05 := by
  norm_num [generated35V05]

private theorem generated35Hnext05 :
    generated35M06 = matMul generated35M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated35M06, generated35M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot06 :
    dot (matVec generated35M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated35V06 := by
  norm_num [generated35V06, generated35M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos06 :
    0 < generated35V06 := by
  norm_num [generated35V06]

private theorem generated35Hnext06 :
    generated35M07 = matMul generated35M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated35M07, generated35M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot07 :
    dot (matVec generated35M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated35V07 := by
  norm_num [generated35V07, generated35M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos07 :
    0 < generated35V07 := by
  norm_num [generated35V07]

private theorem generated35Hnext07 :
    generated35M08 = matMul generated35M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated35M08, generated35M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot08 :
    dot (matVec generated35M08 (normalQ Face.tmmp))
      topPairingLocalAxis = generated35V08 := by
  norm_num [generated35V08, generated35M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos08 :
    0 < generated35V08 := by
  norm_num [generated35V08]

private theorem generated35Hnext08 :
    generated35M09 = matMul generated35M08 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated35M09, generated35M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot09 :
    dot (matVec generated35M09 (normalQ Face.tmpp))
      topPairingLocalAxis = generated35V09 := by
  norm_num [generated35V09, generated35M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos09 :
    0 < generated35V09 := by
  norm_num [generated35V09]

private theorem generated35Hnext09 :
    generated35M10 = matMul generated35M09 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated35M10, generated35M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot10 :
    dot (matVec generated35M10 (normalQ Face.zm))
      topPairingLocalAxis = generated35V10 := by
  norm_num [generated35V10, generated35M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos10 :
    0 < generated35V10 := by
  norm_num [generated35V10]

private theorem generated35Hnext10 :
    generated35M11 = matMul generated35M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated35M11, generated35M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot11 :
    dot (matVec generated35M11 (normalQ Face.yp))
      topPairingLocalAxis = generated35V11 := by
  norm_num [generated35V11, generated35M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos11 :
    0 < generated35V11 := by
  norm_num [generated35V11]

private theorem generated35Hnext11 :
    generated35M12 = matMul generated35M11 (reflM (normalQ Face.yp)) := by
  norm_num [generated35M12, generated35M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot12 :
    dot (matVec generated35M12 (normalQ Face.zp))
      topPairingLocalAxis = generated35V12 := by
  norm_num [generated35V12, generated35M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos12 :
    0 < generated35V12 := by
  norm_num [generated35V12]

private theorem generated35Hnext12 :
    generated35M13 = matMul generated35M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated35M13, generated35M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35Hdot13 :
    dot (matVec generated35M13 (normalQ Face.xp))
      topPairingLocalAxis = generated35V13 := by
  norm_num [generated35V13, generated35M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated35Hpos13 :
    0 < generated35V13 := by
  norm_num [generated35V13]

private theorem generated35Hnext13 :
    generated35M14 = matMul generated35M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated35M14, generated35M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated35LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels :=
  generated35LocalAxisTraceOfGeneratedStates
    generated35Hdot00
    generated35Hpos00
    generated35Hnext00
    generated35Hdot01
    generated35Hpos01
    generated35Hnext01
    generated35Hdot02
    generated35Hpos02
    generated35Hnext02
    generated35Hdot03
    generated35Hpos03
    generated35Hnext03
    generated35Hdot04
    generated35Hpos04
    generated35Hnext04
    generated35Hdot05
    generated35Hpos05
    generated35Hnext05
    generated35Hdot06
    generated35Hpos06
    generated35Hnext06
    generated35Hdot07
    generated35Hpos07
    generated35Hnext07
    generated35Hdot08
    generated35Hpos08
    generated35Hnext08
    generated35Hdot09
    generated35Hpos09
    generated35Hnext09
    generated35Hdot10
    generated35Hpos10
    generated35Hnext10
    generated35Hdot11
    generated35Hpos11
    generated35Hnext11
    generated35Hdot12
    generated35Hpos12
    generated35Hnext12
    generated35Hdot13
    generated35Hpos13
    generated35Hnext13


theorem generated35ClosedLanguageOfPositiveTemplateTrace
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
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated35ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated35SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated35ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated35ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated35SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated35ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated35SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated35ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated35ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated35ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated35ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated35ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated35ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated35ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated35ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated35LocalAxisTraceConcrete
    canonicalBadFace

theorem generated35ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated35ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated35LocalAxisTraceConcrete
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated35ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated35ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated35LocalAxisTraceConcrete
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated35ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated35ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated35LocalAxisTraceConcrete
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated35ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated35ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated35LocalAxisTraceConcrete
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated35ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated35ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated35ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated35ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated35Rank generated35ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated35Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated35Rank seq badFace :=
  generated35ClosedLanguageForSeqOfGeneratedForcedSeq
    generated35ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated35ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated35Rank generated35ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated35Rank) :
    TopPairingClosedLanguageForSeq generated35Rank seq Face.ym :=
  generated35ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated35CanonicalBadFaceCompatible

theorem generated35ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated35Rank generated35ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated35Rank seq Face.ym :=
  generated35ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated35TopPairingLanguageAtRank

theorem generated35GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke35
